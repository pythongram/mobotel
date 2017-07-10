.class Lorg/telegram/ui/Telehgram/SetPasswordActivity$ListAdapter;
.super Lorg/telegram/ui/Adapters/BaseFragmentAdapter;
.source "SetPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Telehgram/SetPasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Telehgram/SetPasswordActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 495
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseFragmentAdapter;-><init>()V

    .line 496
    iput-object p2, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 497
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 501
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 513
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->rowCount:I
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$1100(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 518
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 523
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x0

    .line 585
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->enablePasscodeRow:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$700(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I

    move-result v1

    if-eq p1, v1, :cond_19

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->hiddenInShareAlertRow:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$800(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I

    move-result v1

    if-eq p1, v1, :cond_19

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->showHiddenNotifRow:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$900(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1a

    .line 592
    :cond_19
    :goto_19
    return v0

    .line 587
    :cond_1a
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->changeenablePasscodeRow:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$600(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I

    move-result v1

    if-ne p1, v1, :cond_24

    .line 588
    const/4 v0, 0x1

    goto :goto_19

    .line 589
    :cond_24
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passcodeDetailRow:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$1200(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I

    move-result v1

    if-eq p1, v1, :cond_3c

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->hiddenInShareAlertDesRow:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$1300(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I

    move-result v1

    if-eq p1, v1, :cond_3c

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->showHiddenNotifDesRow:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$1400(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I

    move-result v1

    if-ne p1, v1, :cond_19

    .line 590
    :cond_3c
    const/4 v0, 0x2

    goto :goto_19
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, -0x1

    const v7, 0x7f0200d7

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 533
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Telehgram/SetPasswordActivity$ListAdapter;->getItemViewType(I)I

    move-result v3

    .line 534
    .local v3, "viewType":I
    if-nez v3, :cond_8d

    .line 535
    if-nez p2, :cond_18

    .line 536
    new-instance p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v6}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 537
    .restart local p2    # "view":Landroid/view/View;
    invoke-virtual {p2, v8}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_18
    move-object v2, p2

    .line 539
    check-cast v2, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 541
    .local v2, "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->enablePasscodeRow:I
    invoke-static {v6}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$700(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I

    move-result v6

    if-ne p1, v6, :cond_47

    .line 542
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v7, "mainconfig"

    invoke-virtual {v6, v7, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 543
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v6, "chat_password"

    const-string v7, ""

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, "chatPassword":Ljava/lang/String;
    const-string v6, "EnablePass"

    const v7, 0x7f0706d7

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_43

    move v4, v5

    :cond_43
    invoke-virtual {v2, v6, v4, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 580
    .end local v0    # "chatPassword":Ljava/lang/String;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    .end local v2    # "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    :cond_46
    :goto_46
    return-object p2

    .line 545
    .restart local v2    # "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    :cond_47
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->hiddenInShareAlertRow:I
    invoke-static {v6}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$800(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I

    move-result v6

    if-ne p1, v6, :cond_6a

    .line 546
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v7, "mainconfig"

    invoke-virtual {v6, v7, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 547
    .restart local v1    # "preferences":Landroid/content/SharedPreferences;
    const-string v4, "HiddenInShareAlert"

    const v6, 0x7f07072d

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "hidden_sharealert"

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v2, v4, v6, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_46

    .line 548
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_6a
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->showHiddenNotifRow:I
    invoke-static {v6}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$900(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I

    move-result v6

    if-ne p1, v6, :cond_46

    .line 549
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v7, "mainconfig"

    invoke-virtual {v6, v7, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 550
    .restart local v1    # "preferences":Landroid/content/SharedPreferences;
    const-string v4, "HiddenShowNotif"

    const v6, 0x7f07072f

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "show_notification"

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v2, v4, v6, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_46

    .line 552
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    .end local v2    # "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    :cond_8d
    if-ne v3, v5, :cond_d3

    .line 553
    if-nez p2, :cond_9b

    .line 554
    new-instance p2, Lorg/telegram/ui/Cells/TextSettingsCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 555
    .restart local p2    # "view":Landroid/view/View;
    invoke-virtual {p2, v8}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_9b
    move-object v2, p2

    .line 557
    check-cast v2, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 558
    .local v2, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->changeenablePasscodeRow:I
    invoke-static {v6}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$600(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I

    move-result v6

    if-ne p1, v6, :cond_46

    .line 559
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v7, "mainconfig"

    invoke-virtual {v6, v7, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 560
    .restart local v1    # "preferences":Landroid/content/SharedPreferences;
    const-string v4, "chat_password"

    const-string v6, ""

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 562
    .restart local v0    # "chatPassword":Ljava/lang/String;
    const-string v4, "ChangePass"

    const v6, 0x7f07066f

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    .line 563
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_d0

    const v4, -0x39393a

    :goto_cb
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    goto/16 :goto_46

    :cond_d0
    const/high16 v4, -0x1000000

    goto :goto_cb

    .line 565
    .end local v0    # "chatPassword":Ljava/lang/String;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    .end local v2    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :cond_d3
    const/4 v4, 0x2

    if-ne v3, v4, :cond_46

    .line 566
    if-nez p2, :cond_df

    .line 567
    new-instance p2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 569
    .restart local p2    # "view":Landroid/view/View;
    :cond_df
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passcodeDetailRow:I
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$1200(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I

    move-result v4

    if-ne p1, v4, :cond_fb

    move-object v4, p2

    .line 570
    check-cast v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string v5, "ChangePassInfo"

    const v6, 0x7f070670

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 571
    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_46

    .line 572
    :cond_fb
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->hiddenInShareAlertDesRow:I
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$1300(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I

    move-result v4

    if-ne p1, v4, :cond_117

    move-object v4, p2

    .line 573
    check-cast v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string v5, "HiddenInShareAlertDes"

    const v6, 0x7f07072e

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 574
    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_46

    .line 575
    :cond_117
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->showHiddenNotifDesRow:I
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$1400(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I

    move-result v4

    if-ne p1, v4, :cond_46

    move-object v4, p2

    .line 576
    check-cast v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string v5, "HiddenShowNotifDes"

    const v6, 0x7f070730

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 577
    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_46
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 597
    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 528
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 602
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .registers 7
    .param p1, "i"    # I

    .prologue
    const/4 v2, 0x0

    .line 506
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "mainconfig"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 507
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v3, "chat_password"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, "chatPassword":Ljava/lang/String;
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->enablePasscodeRow:I
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$700(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I

    move-result v3

    if-eq p1, v3, :cond_37

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_27

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->changeenablePasscodeRow:I
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$600(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I

    move-result v3

    if-eq p1, v3, :cond_37

    :cond_27
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->hiddenInShareAlertRow:I
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$800(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I

    move-result v3

    if-eq p1, v3, :cond_37

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->showHiddenNotifRow:I
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$900(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I

    move-result v3

    if-ne p1, v3, :cond_38

    :cond_37
    const/4 v2, 0x1

    :cond_38
    return v2
.end method
