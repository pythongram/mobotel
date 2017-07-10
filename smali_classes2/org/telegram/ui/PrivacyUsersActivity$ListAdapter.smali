.class Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "PrivacyUsersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PrivacyUsersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/PrivacyUsersActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PrivacyUsersActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 227
    iput-object p1, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 228
    iput-object p2, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 229
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    # getter for: Lorg/telegram/ui/PrivacyUsersActivity;->uidArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/PrivacyUsersActivity;->access$200(Lorg/telegram/ui/PrivacyUsersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 239
    const/4 v0, 0x0

    .line 241
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    # getter for: Lorg/telegram/ui/PrivacyUsersActivity;->uidArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/PrivacyUsersActivity;->access$200(Lorg/telegram/ui/PrivacyUsersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 270
    iget-object v0, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    # getter for: Lorg/telegram/ui/PrivacyUsersActivity;->uidArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/PrivacyUsersActivity;->access$200(Lorg/telegram/ui/PrivacyUsersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_e

    .line 271
    const/4 v0, 0x1

    .line 273
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 4
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 233
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    # getter for: Lorg/telegram/ui/PrivacyUsersActivity;->uidArray:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/PrivacyUsersActivity;->access$200(Lorg/telegram/ui/PrivacyUsersActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 9
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 262
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    if-nez v1, :cond_4c

    .line 263
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v1, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    # getter for: Lorg/telegram/ui/PrivacyUsersActivity;->uidArray:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/PrivacyUsersActivity;->access$200(Lorg/telegram/ui/PrivacyUsersActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 264
    .local v0, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/UserCell;

    const/4 v3, 0x0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v2, :cond_4d

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4d

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_48
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v2, v4}, Lorg/telegram/ui/Cells/UserCell;->setData(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 266
    .end local v0    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_4c
    return-void

    .line 264
    .restart local v0    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_4d
    const-string v2, "NumberUnknown"

    const v4, 0x7f0703d3

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_48
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v3, 0x0

    .line 247
    packed-switch p2, :pswitch_data_2a

    .line 253
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoCell;

    iget-object v1, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextInfoCell;-><init>(Landroid/content/Context;)V

    .local v0, "view":Landroid/view/View;
    move-object v1, v0

    .line 254
    check-cast v1, Lorg/telegram/ui/Cells/TextInfoCell;

    const-string v2, "RemoveFromListText"

    const v3, 0x7f07047b

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoCell;->setText(Ljava/lang/String;)V

    .line 257
    :goto_1a
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 249
    .end local v0    # "view":Landroid/view/View;
    :pswitch_20
    new-instance v0, Lorg/telegram/ui/Cells/UserCell;

    iget-object v1, p0, Lorg/telegram/ui/PrivacyUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3, v3}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZ)V

    .line 250
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_1a

    .line 247
    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_20
    .end packed-switch
.end method
