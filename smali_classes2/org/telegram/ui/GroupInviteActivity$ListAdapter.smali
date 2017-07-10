.class Lorg/telegram/ui/GroupInviteActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "GroupInviteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/GroupInviteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/GroupInviteActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/GroupInviteActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 245
    iput-object p1, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 246
    iput-object p2, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 247
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    # getter for: Lorg/telegram/ui/GroupInviteActivity;->loading:Z
    invoke-static {v0}, Lorg/telegram/ui/GroupInviteActivity;->access$600(Lorg/telegram/ui/GroupInviteActivity;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    # getter for: Lorg/telegram/ui/GroupInviteActivity;->rowCount:I
    invoke-static {v0}, Lorg/telegram/ui/GroupInviteActivity;->access$800(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v0

    goto :goto_9
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 317
    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    # getter for: Lorg/telegram/ui/GroupInviteActivity;->copyLinkRow:I
    invoke-static {v1}, Lorg/telegram/ui/GroupInviteActivity;->access$000(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v1

    if-eq p1, v1, :cond_19

    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    # getter for: Lorg/telegram/ui/GroupInviteActivity;->shareLinkRow:I
    invoke-static {v1}, Lorg/telegram/ui/GroupInviteActivity;->access$300(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v1

    if-eq p1, v1, :cond_19

    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    # getter for: Lorg/telegram/ui/GroupInviteActivity;->revokeLinkRow:I
    invoke-static {v1}, Lorg/telegram/ui/GroupInviteActivity;->access$400(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1a

    .line 324
    :cond_19
    :goto_19
    return v0

    .line 319
    :cond_1a
    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    # getter for: Lorg/telegram/ui/GroupInviteActivity;->shadowRow:I
    invoke-static {v1}, Lorg/telegram/ui/GroupInviteActivity;->access$900(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2a

    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    # getter for: Lorg/telegram/ui/GroupInviteActivity;->linkInfoRow:I
    invoke-static {v1}, Lorg/telegram/ui/GroupInviteActivity;->access$1000(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v1

    if-ne p1, v1, :cond_2c

    .line 320
    :cond_2a
    const/4 v0, 0x1

    goto :goto_19

    .line 321
    :cond_2c
    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    # getter for: Lorg/telegram/ui/GroupInviteActivity;->linkRow:I
    invoke-static {v1}, Lorg/telegram/ui/GroupInviteActivity;->access$100(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v1

    if-ne p1, v1, :cond_19

    .line 322
    const/4 v0, 0x2

    goto :goto_19
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 4
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 251
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 252
    .local v0, "position":I
    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    # getter for: Lorg/telegram/ui/GroupInviteActivity;->revokeLinkRow:I
    invoke-static {v1}, Lorg/telegram/ui/GroupInviteActivity;->access$400(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v1

    if-eq v0, v1, :cond_24

    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    # getter for: Lorg/telegram/ui/GroupInviteActivity;->copyLinkRow:I
    invoke-static {v1}, Lorg/telegram/ui/GroupInviteActivity;->access$000(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v1

    if-eq v0, v1, :cond_24

    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    # getter for: Lorg/telegram/ui/GroupInviteActivity;->shareLinkRow:I
    invoke-static {v1}, Lorg/telegram/ui/GroupInviteActivity;->access$300(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v1

    if-eq v0, v1, :cond_24

    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    # getter for: Lorg/telegram/ui/GroupInviteActivity;->linkRow:I
    invoke-static {v1}, Lorg/telegram/ui/GroupInviteActivity;->access$100(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v1

    if-ne v0, v1, :cond_26

    :cond_24
    const/4 v1, 0x1

    :goto_25
    return v1

    :cond_26
    const/4 v1, 0x0

    goto :goto_25
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 11
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 282
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    packed-switch v4, :pswitch_data_d6

    .line 313
    :cond_9
    :goto_9
    return-void

    .line 284
    :pswitch_a
    iget-object v3, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 285
    .local v3, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v4, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    # getter for: Lorg/telegram/ui/GroupInviteActivity;->copyLinkRow:I
    invoke-static {v4}, Lorg/telegram/ui/GroupInviteActivity;->access$000(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v4

    if-ne p2, v4, :cond_23

    .line 286
    const-string v4, "CopyLink"

    const v5, 0x7f07019b

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto :goto_9

    .line 287
    :cond_23
    iget-object v4, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    # getter for: Lorg/telegram/ui/GroupInviteActivity;->shareLinkRow:I
    invoke-static {v4}, Lorg/telegram/ui/GroupInviteActivity;->access$300(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v4

    if-ne p2, v4, :cond_38

    .line 288
    const-string v4, "ShareLink"

    const v5, 0x7f0704ff

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto :goto_9

    .line 289
    :cond_38
    iget-object v4, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    # getter for: Lorg/telegram/ui/GroupInviteActivity;->revokeLinkRow:I
    invoke-static {v4}, Lorg/telegram/ui/GroupInviteActivity;->access$400(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v4

    if-ne p2, v4, :cond_9

    .line 290
    const-string v4, "RevokeLink"

    const v5, 0x7f0704a7

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto :goto_9

    .line 294
    .end local v3    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :pswitch_4d
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 295
    .local v1, "privacyCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    iget-object v4, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    # getter for: Lorg/telegram/ui/GroupInviteActivity;->shadowRow:I
    invoke-static {v4}, Lorg/telegram/ui/GroupInviteActivity;->access$900(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v4

    if-ne p2, v4, :cond_6d

    .line 296
    const-string v4, ""

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v4, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0200d7

    const-string v6, "windowBackgroundGrayShadow"

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    .line 298
    :cond_6d
    iget-object v4, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    # getter for: Lorg/telegram/ui/GroupInviteActivity;->linkInfoRow:I
    invoke-static {v4}, Lorg/telegram/ui/GroupInviteActivity;->access$1000(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v4

    if-ne p2, v4, :cond_9

    .line 299
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    # getter for: Lorg/telegram/ui/GroupInviteActivity;->chat_id:I
    invoke-static {v5}, Lorg/telegram/ui/GroupInviteActivity;->access$1100(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 300
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_ad

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v4, :cond_ad

    .line 301
    const-string v4, "ChannelLinkInfo"

    const v5, 0x7f07012d

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 305
    :goto_9d
    iget-object v4, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0200d6

    const-string v6, "windowBackgroundGrayShadow"

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 303
    :cond_ad
    const-string v4, "LinkInfo"

    const v5, 0x7f0702e2

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9d

    .line 309
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v1    # "privacyCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    :pswitch_ba
    iget-object v2, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/TextBlockCell;

    .line 310
    .local v2, "textBlockCell":Lorg/telegram/ui/Cells/TextBlockCell;
    iget-object v4, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    # getter for: Lorg/telegram/ui/GroupInviteActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    invoke-static {v4}, Lorg/telegram/ui/GroupInviteActivity;->access$200(Lorg/telegram/ui/GroupInviteActivity;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-result-object v4

    if-eqz v4, :cond_d3

    iget-object v4, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    # getter for: Lorg/telegram/ui/GroupInviteActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    invoke-static {v4}, Lorg/telegram/ui/GroupInviteActivity;->access$200(Lorg/telegram/ui/GroupInviteActivity;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->link:Ljava/lang/String;

    :goto_ce
    invoke-virtual {v2, v4, v6}, Lorg/telegram/ui/Cells/TextBlockCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_9

    :cond_d3
    const-string v4, "error"

    goto :goto_ce

    .line 282
    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_a
        :pswitch_4d
        :pswitch_ba
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 263
    packed-switch p2, :pswitch_data_32

    .line 273
    new-instance v0, Lorg/telegram/ui/Cells/TextBlockCell;

    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextBlockCell;-><init>(Landroid/content/Context;)V

    .line 274
    .local v0, "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 277
    :goto_13
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 265
    .end local v0    # "view":Landroid/view/View;
    :pswitch_19
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 266
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_13

    .line 269
    .end local v0    # "view":Landroid/view/View;
    :pswitch_2a
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 270
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_13

    .line 263
    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_19
        :pswitch_2a
    .end packed-switch
.end method
