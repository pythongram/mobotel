.class Lorg/telegram/ui/CommonGroupsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "CommonGroupsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CommonGroupsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/CommonGroupsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/CommonGroupsActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 192
    iput-object p1, p0, Lorg/telegram/ui/CommonGroupsActivity$ListAdapter;->this$0:Lorg/telegram/ui/CommonGroupsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 193
    iput-object p2, p0, Lorg/telegram/ui/CommonGroupsActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 194
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 3

    .prologue
    .line 203
    iget-object v1, p0, Lorg/telegram/ui/CommonGroupsActivity$ListAdapter;->this$0:Lorg/telegram/ui/CommonGroupsActivity;

    # getter for: Lorg/telegram/ui/CommonGroupsActivity;->chats:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/CommonGroupsActivity;->access$000(Lorg/telegram/ui/CommonGroupsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 204
    .local v0, "count":I
    iget-object v1, p0, Lorg/telegram/ui/CommonGroupsActivity$ListAdapter;->this$0:Lorg/telegram/ui/CommonGroupsActivity;

    # getter for: Lorg/telegram/ui/CommonGroupsActivity;->chats:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/CommonGroupsActivity;->access$000(Lorg/telegram/ui/CommonGroupsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_22

    .line 205
    add-int/lit8 v0, v0, 0x1

    .line 206
    iget-object v1, p0, Lorg/telegram/ui/CommonGroupsActivity$ListAdapter;->this$0:Lorg/telegram/ui/CommonGroupsActivity;

    # getter for: Lorg/telegram/ui/CommonGroupsActivity;->endReached:Z
    invoke-static {v1}, Lorg/telegram/ui/CommonGroupsActivity;->access$300(Lorg/telegram/ui/CommonGroupsActivity;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 207
    add-int/lit8 v0, v0, 0x1

    .line 210
    :cond_22
    return v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 246
    iget-object v0, p0, Lorg/telegram/ui/CommonGroupsActivity$ListAdapter;->this$0:Lorg/telegram/ui/CommonGroupsActivity;

    # getter for: Lorg/telegram/ui/CommonGroupsActivity;->chats:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/CommonGroupsActivity;->access$000(Lorg/telegram/ui/CommonGroupsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_e

    .line 247
    const/4 v0, 0x0

    .line 251
    :goto_d
    return v0

    .line 248
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/CommonGroupsActivity$ListAdapter;->this$0:Lorg/telegram/ui/CommonGroupsActivity;

    # getter for: Lorg/telegram/ui/CommonGroupsActivity;->endReached:Z
    invoke-static {v0}, Lorg/telegram/ui/CommonGroupsActivity;->access$300(Lorg/telegram/ui/CommonGroupsActivity;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lorg/telegram/ui/CommonGroupsActivity$ListAdapter;->this$0:Lorg/telegram/ui/CommonGroupsActivity;

    # getter for: Lorg/telegram/ui/CommonGroupsActivity;->chats:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/CommonGroupsActivity;->access$000(Lorg/telegram/ui/CommonGroupsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_24

    .line 249
    const/4 v0, 0x1

    goto :goto_d

    .line 251
    :cond_24
    const/4 v0, 0x2

    goto :goto_d
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 4
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 198
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/CommonGroupsActivity$ListAdapter;->this$0:Lorg/telegram/ui/CommonGroupsActivity;

    # getter for: Lorg/telegram/ui/CommonGroupsActivity;->chats:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/CommonGroupsActivity;->access$000(Lorg/telegram/ui/CommonGroupsActivity;)Ljava/util/ArrayList;

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
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 236
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-nez v3, :cond_36

    .line 237
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/ProfileSearchCell;

    .line 238
    .local v0, "cell":Lorg/telegram/ui/Cells/ProfileSearchCell;
    iget-object v3, p0, Lorg/telegram/ui/CommonGroupsActivity$ListAdapter;->this$0:Lorg/telegram/ui/CommonGroupsActivity;

    # getter for: Lorg/telegram/ui/CommonGroupsActivity;->chats:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/CommonGroupsActivity;->access$000(Lorg/telegram/ui/CommonGroupsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    move-object v3, v2

    move-object v4, v2

    .line 239
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setData(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 240
    iget-object v2, p0, Lorg/telegram/ui/CommonGroupsActivity$ListAdapter;->this$0:Lorg/telegram/ui/CommonGroupsActivity;

    # getter for: Lorg/telegram/ui/CommonGroupsActivity;->chats:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/CommonGroupsActivity;->access$000(Lorg/telegram/ui/CommonGroupsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p2, v2, :cond_33

    iget-object v2, p0, Lorg/telegram/ui/CommonGroupsActivity$ListAdapter;->this$0:Lorg/telegram/ui/CommonGroupsActivity;

    # getter for: Lorg/telegram/ui/CommonGroupsActivity;->endReached:Z
    invoke-static {v2}, Lorg/telegram/ui/CommonGroupsActivity;->access$300(Lorg/telegram/ui/CommonGroupsActivity;)Z

    move-result v2

    if-nez v2, :cond_34

    :cond_33
    const/4 v5, 0x1

    :cond_34
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    .line 242
    .end local v0    # "cell":Lorg/telegram/ui/Cells/ProfileSearchCell;
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_36
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 216
    packed-switch p2, :pswitch_data_40

    .line 227
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v1, p0, Lorg/telegram/ui/CommonGroupsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 228
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/CommonGroupsActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0200d7

    const-string v3, "windowBackgroundGrayShadow"

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    :goto_18
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 218
    .end local v0    # "view":Landroid/view/View;
    :pswitch_1e
    new-instance v0, Lorg/telegram/ui/Cells/ProfileSearchCell;

    iget-object v1, p0, Lorg/telegram/ui/CommonGroupsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ProfileSearchCell;-><init>(Landroid/content/Context;)V

    .line 219
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_18

    .line 222
    .end local v0    # "view":Landroid/view/View;
    :pswitch_2f
    new-instance v0, Lorg/telegram/ui/Cells/LoadingCell;

    iget-object v1, p0, Lorg/telegram/ui/CommonGroupsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/LoadingCell;-><init>(Landroid/content/Context;)V

    .line 223
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_18

    .line 216
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_2f
    .end packed-switch
.end method
