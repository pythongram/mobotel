.class Lorg/telegram/ui/PasscodeActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "PasscodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PasscodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/PasscodeActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PasscodeActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 597
    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 598
    iput-object p2, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 599
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 609
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->rowCount:I
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$1600(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 697
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->passcodeRow:I
    invoke-static {v1}, Lorg/telegram/ui/PasscodeActivity;->access$900(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v1

    if-eq p1, v1, :cond_19

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->fingerprintRow:I
    invoke-static {v1}, Lorg/telegram/ui/PasscodeActivity;->access$1300(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v1

    if-eq p1, v1, :cond_19

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->captureRow:I
    invoke-static {v1}, Lorg/telegram/ui/PasscodeActivity;->access$1400(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1a

    .line 704
    :cond_19
    :goto_19
    return v0

    .line 699
    :cond_1a
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->changePasscodeRow:I
    invoke-static {v1}, Lorg/telegram/ui/PasscodeActivity;->access$800(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2a

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->autoLockRow:I
    invoke-static {v1}, Lorg/telegram/ui/PasscodeActivity;->access$1100(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v1

    if-ne p1, v1, :cond_2c

    .line 700
    :cond_2a
    const/4 v0, 0x1

    goto :goto_19

    .line 701
    :cond_2c
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->passcodeDetailRow:I
    invoke-static {v1}, Lorg/telegram/ui/PasscodeActivity;->access$1700(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v1

    if-eq p1, v1, :cond_44

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->autoLockDetailRow:I
    invoke-static {v1}, Lorg/telegram/ui/PasscodeActivity;->access$1800(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v1

    if-eq p1, v1, :cond_44

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->captureDetailRow:I
    invoke-static {v1}, Lorg/telegram/ui/PasscodeActivity;->access$1900(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v1

    if-ne p1, v1, :cond_19

    .line 702
    :cond_44
    const/4 v0, 0x2

    goto :goto_19
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 4
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 603
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 604
    .local v0, "position":I
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->passcodeRow:I
    invoke-static {v1}, Lorg/telegram/ui/PasscodeActivity;->access$900(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v1

    if-eq v0, v1, :cond_34

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->fingerprintRow:I
    invoke-static {v1}, Lorg/telegram/ui/PasscodeActivity;->access$1300(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v1

    if-eq v0, v1, :cond_34

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->autoLockRow:I
    invoke-static {v1}, Lorg/telegram/ui/PasscodeActivity;->access$1100(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v1

    if-eq v0, v1, :cond_34

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->captureRow:I
    invoke-static {v1}, Lorg/telegram/ui/PasscodeActivity;->access$1400(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v1

    if-eq v0, v1, :cond_34

    sget-object v1, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->changePasscodeRow:I
    invoke-static {v1}, Lorg/telegram/ui/PasscodeActivity;->access$800(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v1

    if-ne v0, v1, :cond_36

    :cond_34
    const/4 v1, 0x1

    :goto_35
    return v1

    :cond_36
    const/4 v1, 0x0

    goto :goto_35
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 14
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const v6, 0x7f0200d6

    const v10, 0x7f0700ca

    const/high16 v9, 0x42700000    # 60.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 634
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v5

    packed-switch v5, :pswitch_data_1b4

    .line 693
    :cond_11
    :goto_11
    return-void

    .line 636
    :pswitch_12
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 637
    .local v1, "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    iget-object v5, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->passcodeRow:I
    invoke-static {v5}, Lorg/telegram/ui/PasscodeActivity;->access$900(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v5

    if-ne p2, v5, :cond_34

    .line 638
    const-string v5, "Passcode"

    const v6, 0x7f0703fc

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_30

    move v3, v4

    :cond_30
    invoke-virtual {v1, v5, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_11

    .line 639
    :cond_34
    iget-object v5, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->fingerprintRow:I
    invoke-static {v5}, Lorg/telegram/ui/PasscodeActivity;->access$1300(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v5

    if-ne p2, v5, :cond_4b

    .line 640
    const-string v3, "UnlockFingerprint"

    const v5, 0x7f070551

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget-boolean v5, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    invoke-virtual {v1, v3, v5, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_11

    .line 641
    :cond_4b
    iget-object v4, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->captureRow:I
    invoke-static {v4}, Lorg/telegram/ui/PasscodeActivity;->access$1400(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v4

    if-ne p2, v4, :cond_11

    .line 642
    const-string v4, "ScreenCapture"

    const v5, 0x7f0704b5

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lorg/telegram/messenger/UserConfig;->allowScreenCapture:Z

    invoke-virtual {v1, v4, v5, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_11

    .line 647
    .end local v1    # "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    :pswitch_62
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 648
    .local v1, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v5, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->changePasscodeRow:I
    invoke-static {v5}, Lorg/telegram/ui/PasscodeActivity;->access$800(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v5

    if-ne p2, v5, :cond_a1

    .line 649
    const-string v4, "ChangePasscode"

    const v5, 0x7f070105

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    .line 650
    sget-object v3, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_91

    .line 651
    const-string v3, "windowBackgroundWhiteGrayText7"

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 652
    const-string v3, "windowBackgroundWhiteGrayText7"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    goto :goto_11

    .line 654
    :cond_91
    const-string v3, "windowBackgroundWhiteBlackText"

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 655
    const-string v3, "windowBackgroundWhiteBlackText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    goto/16 :goto_11

    .line 657
    :cond_a1
    iget-object v5, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->autoLockRow:I
    invoke-static {v5}, Lorg/telegram/ui/PasscodeActivity;->access$1100(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v5

    if-ne p2, v5, :cond_11

    .line 659
    sget v5, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    if-nez v5, :cond_d4

    .line 660
    const-string v5, "AutoLockDisabled"

    const v6, 0x7f0700c9

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5, v6, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 668
    .local v2, "val":Ljava/lang/String;
    :goto_b8
    const-string v3, "AutoLock"

    const v5, 0x7f0700c8

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 669
    const-string v3, "windowBackgroundWhiteBlackText"

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 670
    const-string v3, "windowBackgroundWhiteBlackText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    goto/16 :goto_11

    .line 661
    .end local v2    # "val":Ljava/lang/String;
    :cond_d4
    sget v5, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    const/16 v6, 0xe10

    if-ge v5, v6, :cond_ef

    .line 662
    const-string v5, "AutoLockInTime"

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "Minutes"

    sget v8, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    div-int/lit8 v8, v8, 0x3c

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v10, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "val":Ljava/lang/String;
    goto :goto_b8

    .line 663
    .end local v2    # "val":Ljava/lang/String;
    :cond_ef
    sget v5, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    const v6, 0x15180

    if-ge v5, v6, :cond_112

    .line 664
    const-string v5, "AutoLockInTime"

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "Hours"

    sget v8, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    int-to-float v8, v8

    div-float/2addr v8, v9

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v10, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "val":Ljava/lang/String;
    goto :goto_b8

    .line 666
    .end local v2    # "val":Ljava/lang/String;
    :cond_112
    const-string v5, "AutoLockInTime"

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "Days"

    sget v8, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    int-to-float v8, v8

    div-float/2addr v8, v9

    div-float/2addr v8, v9

    const/high16 v9, 0x41c00000    # 24.0f

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v10, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "val":Ljava/lang/String;
    goto :goto_b8

    .line 675
    .end local v1    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    .end local v2    # "val":Ljava/lang/String;
    :pswitch_131
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 676
    .local v0, "cell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->passcodeDetailRow:I
    invoke-static {v3}, Lorg/telegram/ui/PasscodeActivity;->access$1700(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v3

    if-ne p2, v3, :cond_16f

    .line 677
    const-string v3, "ChangePasscodeInfo"

    const v4, 0x7f070107

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 678
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->autoLockDetailRow:I
    invoke-static {v3}, Lorg/telegram/ui/PasscodeActivity;->access$1800(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_15f

    .line 679
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string v4, "windowBackgroundGrayShadow"

    invoke-static {v3, v6, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_11

    .line 681
    :cond_15f
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0200d7

    const-string v5, "windowBackgroundGrayShadow"

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_11

    .line 683
    :cond_16f
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->autoLockDetailRow:I
    invoke-static {v3}, Lorg/telegram/ui/PasscodeActivity;->access$1800(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v3

    if-ne p2, v3, :cond_190

    .line 684
    const-string v3, "AutoLockInfo"

    const v4, 0x7f0700cb

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 685
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string v4, "windowBackgroundGrayShadow"

    invoke-static {v3, v6, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_11

    .line 686
    :cond_190
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->captureDetailRow:I
    invoke-static {v3}, Lorg/telegram/ui/PasscodeActivity;->access$1900(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v3

    if-ne p2, v3, :cond_11

    .line 687
    const-string v3, "ScreenCaptureInfo"

    const v4, 0x7f0704b6

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 688
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0200d7

    const-string v5, "windowBackgroundGrayShadow"

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_11

    .line 634
    :pswitch_data_1b4
    .packed-switch 0x0
        :pswitch_12
        :pswitch_62
        :pswitch_131
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 615
    packed-switch p2, :pswitch_data_32

    .line 626
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 629
    .local v0, "view":Landroid/view/View;
    :goto_a
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 617
    .end local v0    # "view":Landroid/view/View;
    :pswitch_10
    new-instance v0, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 618
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_a

    .line 621
    .end local v0    # "view":Landroid/view/View;
    :pswitch_21
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 622
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_a

    .line 615
    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_10
        :pswitch_21
    .end packed-switch
.end method
