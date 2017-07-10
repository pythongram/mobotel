.class Lorg/telegram/ui/SetAdminsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SetAdminsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SetAdminsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/SetAdminsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/SetAdminsActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 368
    iput-object p1, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 369
    iput-object p2, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 370
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 388
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->rowCount:I
    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$1600(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 451
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->allAdminsRow:I
    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$1400(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_a

    .line 452
    const/4 v0, 0x0

    .line 456
    :goto_9
    return v0

    .line 453
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->allAdminsInfoRow:I
    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$1700(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->usersEndRow:I
    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$800(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1c

    .line 454
    :cond_1a
    const/4 v0, 0x1

    goto :goto_9

    .line 456
    :cond_1c
    const/4 v0, 0x2

    goto :goto_9
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 7
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v2, 0x1

    .line 374
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    .line 375
    .local v1, "position":I
    iget-object v3, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->allAdminsRow:I
    invoke-static {v3}, Lorg/telegram/ui/SetAdminsActivity;->access$1400(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v3

    if-ne v1, v3, :cond_e

    .line 383
    :cond_d
    :goto_d
    return v2

    .line 377
    :cond_e
    iget-object v3, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->usersStartRow:I
    invoke-static {v3}, Lorg/telegram/ui/SetAdminsActivity;->access$700(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v3

    if-lt v1, v3, :cond_36

    iget-object v3, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->usersEndRow:I
    invoke-static {v3}, Lorg/telegram/ui/SetAdminsActivity;->access$800(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v3

    if-ge v1, v3, :cond_36

    .line 378
    iget-object v3, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/SetAdminsActivity;->access$1100(Lorg/telegram/ui/SetAdminsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->usersStartRow:I
    invoke-static {v4}, Lorg/telegram/ui/SetAdminsActivity;->access$700(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 379
    .local v0, "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    if-eqz v3, :cond_d

    .line 383
    .end local v0    # "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_36
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 13
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f0200d7

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 413
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v7

    packed-switch v7, :pswitch_data_134

    .line 447
    :cond_d
    :goto_d
    return-void

    .line 415
    :pswitch_e
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 416
    .local v0, "checkCell":Lorg/telegram/ui/Cells/TextCheckCell;
    iget-object v7, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat_id:I
    invoke-static {v9}, Lorg/telegram/ui/SetAdminsActivity;->access$1000(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    # setter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v7, v8}, Lorg/telegram/ui/SetAdminsActivity;->access$902(Lorg/telegram/ui/SetAdminsActivity;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$Chat;

    .line 417
    const-string v7, "SetAdminsAll"

    const v8, 0x7f0704f4

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v8}, Lorg/telegram/ui/SetAdminsActivity;->access$900(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    if-eqz v8, :cond_48

    iget-object v8, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v8}, Lorg/telegram/ui/SetAdminsActivity;->access$900(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    iget-boolean v8, v8, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-nez v8, :cond_48

    :goto_44
    invoke-virtual {v0, v7, v5, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_d

    :cond_48
    move v5, v6

    goto :goto_44

    .line 420
    .end local v0    # "checkCell":Lorg/telegram/ui/Cells/TextCheckCell;
    :pswitch_4a
    iget-object v2, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 421
    .local v2, "privacyCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    iget-object v5, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->allAdminsInfoRow:I
    invoke-static {v5}, Lorg/telegram/ui/SetAdminsActivity;->access$1700(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v5

    if-ne p2, v5, :cond_9e

    .line 422
    iget-object v5, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v5}, Lorg/telegram/ui/SetAdminsActivity;->access$900(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-eqz v5, :cond_84

    .line 423
    const-string v5, "SetAdminsNotAllInfo"

    const v6, 0x7f0704f6

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 427
    :goto_6c
    iget-object v5, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->usersStartRow:I
    invoke-static {v5}, Lorg/telegram/ui/SetAdminsActivity;->access$700(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_91

    .line 428
    iget-object v5, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0200d6

    const-string v7, "windowBackgroundGrayShadow"

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_d

    .line 425
    :cond_84
    const-string v5, "SetAdminsAllInfo"

    const v6, 0x7f0704f5

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6c

    .line 430
    :cond_91
    iget-object v5, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string v6, "windowBackgroundGrayShadow"

    invoke-static {v5, v8, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_d

    .line 432
    :cond_9e
    iget-object v5, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->usersEndRow:I
    invoke-static {v5}, Lorg/telegram/ui/SetAdminsActivity;->access$800(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v5

    if-ne p2, v5, :cond_d

    .line 433
    const-string v5, ""

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v5, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string v6, "windowBackgroundGrayShadow"

    invoke-static {v5, v8, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_d

    .line 438
    .end local v2    # "privacyCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    :pswitch_b8
    iget-object v4, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/UserCell;

    .line 439
    .local v4, "userCell":Lorg/telegram/ui/Cells/UserCell;
    iget-object v7, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v7}, Lorg/telegram/ui/SetAdminsActivity;->access$1100(Lorg/telegram/ui/SetAdminsActivity;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->usersStartRow:I
    invoke-static {v8}, Lorg/telegram/ui/SetAdminsActivity;->access$700(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v8

    sub-int v8, p2, v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 440
    .local v1, "part":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget v8, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 441
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {v4, v3, v9, v9, v6}, Lorg/telegram/ui/Cells/UserCell;->setData(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 442
    iget-object v7, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat_id:I
    invoke-static {v9}, Lorg/telegram/ui/SetAdminsActivity;->access$1000(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    # setter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v7, v8}, Lorg/telegram/ui/SetAdminsActivity;->access$902(Lorg/telegram/ui/SetAdminsActivity;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$Chat;

    .line 443
    instance-of v7, v1, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    if-eqz v7, :cond_10e

    iget-object v7, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v7}, Lorg/telegram/ui/SetAdminsActivity;->access$900(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    if-eqz v7, :cond_132

    iget-object v7, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v7}, Lorg/telegram/ui/SetAdminsActivity;->access$900(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-nez v7, :cond_132

    :cond_10e
    move v7, v5

    :goto_10f
    invoke-virtual {v4, v7, v6}, Lorg/telegram/ui/Cells/UserCell;->setChecked(ZZ)V

    .line 444
    iget-object v7, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v7}, Lorg/telegram/ui/SetAdminsActivity;->access$900(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    if-eqz v7, :cond_12c

    iget-object v7, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v7}, Lorg/telegram/ui/SetAdminsActivity;->access$900(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-eqz v7, :cond_12c

    iget v7, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v8

    if-ne v7, v8, :cond_12d

    :cond_12c
    move v6, v5

    :cond_12d
    invoke-virtual {v4, v6}, Lorg/telegram/ui/Cells/UserCell;->setCheckDisabled(Z)V

    goto/16 :goto_d

    :cond_132
    move v7, v6

    .line 443
    goto :goto_10f

    .line 413
    :pswitch_data_134
    .packed-switch 0x0
        :pswitch_e
        :pswitch_4a
        :pswitch_b8
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 8
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 394
    packed-switch p2, :pswitch_data_36

    .line 404
    new-instance v0, Lorg/telegram/ui/Cells/UserCell;

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZ)V

    .line 405
    .local v0, "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 408
    :goto_16
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 396
    .end local v0    # "view":Landroid/view/View;
    :pswitch_1c
    new-instance v0, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 397
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_16

    .line 400
    .end local v0    # "view":Landroid/view/View;
    :pswitch_2d
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 401
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_16

    .line 394
    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_2d
    .end packed-switch
.end method
