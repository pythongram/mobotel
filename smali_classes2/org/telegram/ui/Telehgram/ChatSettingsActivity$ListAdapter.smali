.class Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ChatSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Telehgram/ChatSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 409
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 410
    iput-object p2, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 411
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 532
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->rowCount:I
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$1700(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 537
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->mobileDownloadRow:I
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$400(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->wifiDownloadRow:I
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$500(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_12

    .line 538
    :cond_10
    const/4 v0, 0x3

    .line 544
    :goto_11
    return v0

    .line 539
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->downloadDesRow:I
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$1300(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_32

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->sendTypingDesRow:I
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$1400(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_32

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->sendReadStateDesRow:I
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$1500(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_32

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->resetDesRow:I
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$1600(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_34

    .line 540
    :cond_32
    const/4 v0, 0x1

    goto :goto_11

    .line 541
    :cond_34
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->resetRow:I
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$900(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3e

    .line 542
    const/4 v0, 0x2

    goto :goto_11

    .line 544
    :cond_3e
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 4
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 415
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 416
    .local v0, "position":I
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->sendTypingRow:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$100(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_2c

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->sendReadStateRow:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$300(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_2c

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->mobileDownloadRow:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$400(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_2c

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->wifiDownloadRow:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$500(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_2c

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->resetRow:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$900(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I

    move-result v1

    if-ne v0, v1, :cond_2e

    :cond_2c
    const/4 v1, 0x1

    :goto_2d
    return v1

    :cond_2e
    const/4 v1, 0x0

    goto :goto_2d
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 15
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const v9, 0x7f0200d6

    const/4 v7, 0x0

    .line 444
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v8

    packed-switch v8, :pswitch_data_286

    .line 528
    :cond_b
    :goto_b
    return-void

    .line 446
    :pswitch_c
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 447
    .local v0, "checkCell":Lorg/telegram/ui/Cells/TextCheckCell;
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->sendTypingRow:I
    invoke-static {v8}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$100(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I

    move-result v8

    if-ne p2, v8, :cond_2f

    .line 448
    const-string v8, "HideTypingStatus"

    const v9, 0x7f07073f

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->dialog_id:J
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$200(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)J

    move-result-wide v10

    invoke-static {v10, v11}, Lorg/telegram/ui/Telehgram/Turbo$Chat;->hideTyping(J)Z

    move-result v9

    invoke-virtual {v0, v8, v9, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_b

    .line 449
    :cond_2f
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->sendReadStateRow:I
    invoke-static {v8}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$300(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I

    move-result v8

    if-ne p2, v8, :cond_b

    .line 450
    const-string v8, "DontSentReadState"

    const v9, 0x7f0708c1

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->dialog_id:J
    invoke-static {v9}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$200(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)J

    move-result-wide v10

    invoke-static {v10, v11}, Lorg/telegram/ui/Telehgram/Turbo$Chat;->hideMarkAsRead(J)Z

    move-result v9

    invoke-virtual {v0, v8, v9, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_b

    .line 454
    .end local v0    # "checkCell":Lorg/telegram/ui/Cells/TextCheckCell;
    :pswitch_4e
    iget-object v3, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 455
    .local v3, "privacyCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    iget-object v7, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->downloadDesRow:I
    invoke-static {v7}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$1300(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I

    move-result v7

    if-ne p2, v7, :cond_72

    .line 456
    const-string v7, "ChatAutoDownloadDes"

    const v8, 0x7f0708bb

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v7, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string v8, "windowBackgroundGrayShadow"

    invoke-static {v7, v9, v8}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_b

    .line 458
    :cond_72
    iget-object v7, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->sendTypingDesRow:I
    invoke-static {v7}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$1400(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I

    move-result v7

    if-ne p2, v7, :cond_93

    .line 459
    const-string v7, "ChatHideTypingDes"

    const v8, 0x7f0708bc

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 460
    iget-object v7, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string v8, "windowBackgroundGrayShadow"

    invoke-static {v7, v9, v8}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_b

    .line 461
    :cond_93
    iget-object v7, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->sendReadStateDesRow:I
    invoke-static {v7}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$1500(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I

    move-result v7

    if-ne p2, v7, :cond_b4

    .line 462
    const-string v7, "ChatSentReadDes"

    const v8, 0x7f0708bd

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v7, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string v8, "windowBackgroundGrayShadow"

    invoke-static {v7, v9, v8}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_b

    .line 464
    :cond_b4
    iget-object v7, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->resetDesRow:I
    invoke-static {v7}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$1600(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I

    move-result v7

    if-ne p2, v7, :cond_b

    .line 465
    const-string v7, "ChatUndoSettings"

    const v8, 0x7f0708be

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v7, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f0200d7

    const-string v9, "windowBackgroundGrayShadow"

    invoke-static {v7, v8, v9}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_b

    .line 470
    .end local v3    # "privacyCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    :pswitch_d8
    iget-object v4, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 471
    .local v4, "settingsCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->resetRow:I
    invoke-static {v8}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$900(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I

    move-result v8

    if-ne p2, v8, :cond_b

    .line 472
    const-string v8, "ResetChatSettings"

    const v9, 0x7f0708c9

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8, v7}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_b

    .line 476
    .end local v4    # "settingsCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :pswitch_f2
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .line 477
    .local v1, "detailSettingsCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->mobileDownloadRow:I
    invoke-static {v8}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$400(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I

    move-result v8

    if-eq p2, v8, :cond_106

    iget-object v8, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->wifiDownloadRow:I
    invoke-static {v8}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$500(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I

    move-result v8

    if-ne p2, v8, :cond_b

    .line 480
    :cond_106
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->mobileDownloadRow:I
    invoke-static {v8}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$400(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I

    move-result v8

    if-ne p2, v8, :cond_271

    .line 481
    const-string v8, "WhenUsingMobileData"

    const v9, 0x7f0705a6

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 482
    .local v6, "value":Ljava/lang/String;
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->dialog_id:J
    invoke-static {v8}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$200(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/telegram/ui/Telehgram/Turbo$Chat;->getMobileDataDownloadMask(J)I

    move-result v2

    .line 487
    .local v2, "mask":I
    :goto_121
    const-string v5, ""

    .line 488
    .local v5, "text":Ljava/lang/String;
    and-int/lit8 v8, v2, 0x1

    if-eqz v8, :cond_141

    .line 489
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "AttachPhoto"

    const v10, 0x7f0700c2

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 491
    :cond_141
    and-int/lit8 v8, v2, 0x2

    if-eqz v8, :cond_178

    .line 492
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_15e

    .line 493
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 495
    :cond_15e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "AttachAudio"

    const v10, 0x7f0700ba

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 497
    :cond_178
    and-int/lit8 v8, v2, 0x4

    if-eqz v8, :cond_1af

    .line 498
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_195

    .line 499
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 501
    :cond_195
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "AttachVideo"

    const v10, 0x7f0700c4

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 503
    :cond_1af
    and-int/lit8 v8, v2, 0x8

    if-eqz v8, :cond_1e6

    .line 504
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1cc

    .line 505
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 507
    :cond_1cc
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "AttachDocument"

    const v10, 0x7f0700bd

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 509
    :cond_1e6
    and-int/lit8 v8, v2, 0x10

    if-eqz v8, :cond_21d

    .line 510
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_203

    .line 511
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 513
    :cond_203
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "AttachMusic"

    const v10, 0x7f0700c1

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 515
    :cond_21d
    and-int/lit8 v8, v2, 0x20

    if-eqz v8, :cond_254

    .line 516
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_23a

    .line 517
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 519
    :cond_23a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "AttachGif"

    const v10, 0x7f0700bf

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 521
    :cond_254
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_263

    .line 522
    const-string v8, "NoMediaAutoDownload"

    const v9, 0x7f07035d

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 524
    :cond_263
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->mobileDownloadRow:I
    invoke-static {v8}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$400(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I

    move-result v8

    if-ne p2, v8, :cond_26c

    const/4 v7, 0x1

    :cond_26c
    invoke-virtual {v1, v6, v5, v7}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_b

    .line 484
    .end local v2    # "mask":I
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_271
    const-string v8, "WhenConnectedOnWiFi"

    const v9, 0x7f0705a4

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 485
    .restart local v6    # "value":Ljava/lang/String;
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->dialog_id:J
    invoke-static {v8}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$200(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/telegram/ui/Telehgram/Turbo$Chat;->getWifiDownloadMask(J)I

    move-result v2

    .restart local v2    # "mask":I
    goto/16 :goto_121

    .line 444
    :pswitch_data_286
    .packed-switch 0x0
        :pswitch_c
        :pswitch_4e
        :pswitch_d8
        :pswitch_f2
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 421
    const/4 v0, 0x0

    .line 422
    .local v0, "view":Landroid/view/View;
    packed-switch p2, :pswitch_data_46

    .line 439
    :goto_4
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 424
    :pswitch_a
    new-instance v0, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 425
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 428
    :pswitch_1b
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 429
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_4

    .line 431
    :pswitch_23
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 432
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 435
    :pswitch_34
    new-instance v0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    .line 436
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 422
    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_a
        :pswitch_1b
        :pswitch_23
        :pswitch_34
    .end packed-switch
.end method
