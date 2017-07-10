.class public Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "FavoriteMessagesAdapter.java"


# instance fields
.field private dbHelper:Lorg/telegram/SQLite/DBHelper;

.field dialogsIdArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;->dialogsIdArray:Ljava/util/ArrayList;

    .line 23
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;->mContext:Landroid/content/Context;

    .line 24
    new-instance v0, Lorg/telegram/SQLite/DBHelper;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/SQLite/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;->dbHelper:Lorg/telegram/SQLite/DBHelper;

    .line 25
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;->getFavoriteMessagesArray()V

    .line 26
    return-void
.end method

.method private getFavoriteMessagesArray()V
    .registers 3

    .prologue
    .line 29
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;->dialogsIdArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 30
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;->dbHelper:Lorg/telegram/SQLite/DBHelper;

    invoke-virtual {v0}, Lorg/telegram/SQLite/DBHelper;->open()V

    .line 32
    :try_start_a
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;->dialogsIdArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;->dbHelper:Lorg/telegram/SQLite/DBHelper;

    invoke-virtual {v1}, Lorg/telegram/SQLite/DBHelper;->getAllFMDialogs()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_1b

    .line 34
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;->dbHelper:Lorg/telegram/SQLite/DBHelper;

    invoke-virtual {v0}, Lorg/telegram/SQLite/DBHelper;->close()V

    .line 36
    return-void

    .line 34
    :catchall_1b
    move-exception v0

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;->dbHelper:Lorg/telegram/SQLite/DBHelper;

    invoke-virtual {v1}, Lorg/telegram/SQLite/DBHelper;->close()V

    throw v0
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Integer;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;->dialogsIdArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;->dialogsIdArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 3
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public notifyDataSetChanged()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;->getFavoriteMessagesArray()V

    .line 41
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;->notifyDataSetChanged()V

    .line 42
    return-void
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 16
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 62
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 63
    .local v0, "documentCell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    const/4 v1, 0x0

    .line 64
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;->dialogsIdArray:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 65
    .local v8, "did":I
    move v11, v8

    .line 66
    .local v11, "lower_id":I
    shr-int/lit8 v10, v8, 0x20

    .line 67
    .local v10, "high_id":I
    if-lez v11, :cond_58

    .line 68
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v12

    .line 69
    .local v12, "u":Lorg/telegram/tgnet/TLRPC$User;
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, v12, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .end local v12    # "u":Lorg/telegram/tgnet/TLRPC$User;
    :goto_2a
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;->dbHelper:Lorg/telegram/SQLite/DBHelper;

    invoke-virtual {v2}, Lorg/telegram/SQLite/DBHelper;->open()V

    .line 83
    :try_start_2f
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;->dbHelper:Lorg/telegram/SQLite/DBHelper;

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;->dialogsIdArray:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lorg/telegram/SQLite/DBHelper;->getDialogFMsCount(J)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_45
    .catchall {:try_start_2f .. :try_end_45} :catchall_8d

    move-result v7

    .line 85
    .local v7, "count":I
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;->dbHelper:Lorg/telegram/SQLite/DBHelper;

    invoke-virtual {v2}, Lorg/telegram/SQLite/DBHelper;->close()V

    .line 87
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f020112

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setTextAndValueAndTypeAndThumb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    return-void

    .line 71
    .end local v7    # "count":I
    :cond_58
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v9

    .line 72
    .local v9, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-eqz v9, :cond_7d

    .line 73
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v3, v9, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v12

    .line 74
    .restart local v12    # "u":Lorg/telegram/tgnet/TLRPC$User;
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, v12, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    goto :goto_2a

    .line 76
    .end local v12    # "u":Lorg/telegram/tgnet/TLRPC$User;
    :cond_7d
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-int v3, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    .line 77
    .local v6, "c":Lorg/telegram/tgnet/TLRPC$Chat;
    iget-object v1, v6, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_2a

    .line 85
    .end local v6    # "c":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v9    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    :catchall_8d
    move-exception v2

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;->dbHelper:Lorg/telegram/SQLite/DBHelper;

    invoke-virtual {v3}, Lorg/telegram/SQLite/DBHelper;->close()V

    throw v2
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 55
    new-instance v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/SharedDocumentCell;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
