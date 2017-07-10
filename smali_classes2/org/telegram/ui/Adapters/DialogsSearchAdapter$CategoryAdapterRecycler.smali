.class Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "DialogsSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoryAdapterRecycler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V
    .registers 2

    .prologue
    .line 101
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    .param p2, "x1"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 150
    sget-object v0, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 3
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 12
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 121
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/HintDialogCell;

    .line 123
    .local v0, "cell":Lorg/telegram/ui/Cells/HintDialogCell;
    sget-object v7, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    .line 124
    .local v5, "peer":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 125
    .local v2, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    const/4 v1, 0x0

    .line 126
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    const/4 v6, 0x0

    .line 127
    .local v6, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v3, 0x0

    .line 128
    .local v3, "did":I
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v7, :cond_46

    .line 129
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 130
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    .line 138
    :cond_2e
    :goto_2e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Cells/HintDialogCell;->setTag(Ljava/lang/Object;)V

    .line 139
    const-string v4, ""

    .line 140
    .local v4, "name":Ljava/lang/String;
    if-eqz v6, :cond_7e

    .line 141
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v7, v8}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 145
    :cond_41
    :goto_41
    const/4 v7, 0x1

    invoke-virtual {v0, v3, v7, v4}, Lorg/telegram/ui/Cells/HintDialogCell;->setDialog(IZLjava/lang/CharSequence;)V

    .line 146
    return-void

    .line 131
    .end local v4    # "name":Ljava/lang/String;
    :cond_46
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v7, :cond_62

    .line 132
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v3, v7

    .line 133
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    goto :goto_2e

    .line 134
    :cond_62
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v7, :cond_2e

    .line 135
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v3, v7

    .line 136
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    goto :goto_2e

    .line 142
    .restart local v4    # "name":Ljava/lang/String;
    :cond_7e
    if-eqz v1, :cond_41

    .line 143
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_41
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 109
    new-instance v0, Lorg/telegram/ui/Cells/HintDialogCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    # getter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$000(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/HintDialogCell;-><init>(Landroid/content/Context;)V

    .line 110
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/high16 v2, 0x42a00000    # 80.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public setIndex(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 104
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;->notifyDataSetChanged()V

    .line 105
    return-void
.end method
