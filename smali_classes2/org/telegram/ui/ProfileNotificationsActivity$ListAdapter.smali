.class Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;
.super Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
.source "ProfileNotificationsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ProfileNotificationsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ProfileNotificationsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ProfileNotificationsActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 554
    iput-object p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;-><init>()V

    .line 555
    iput-object p2, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->context:Landroid/content/Context;

    .line 556
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 560
    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->rowCount:I
    invoke-static {v0}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1600(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 778
    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->generalRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1700(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_21

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->popupRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1800(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_21

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->ledRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1900(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_21

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->callsRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2000(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_22

    .line 791
    :cond_21
    :goto_21
    return v0

    .line 780
    :cond_22
    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->soundRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$600(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_52

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->vibrateRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$800(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_52

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->priorityRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1100(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_52

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->smartRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1200(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_52

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->ringtoneRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$700(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_52

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->callsVibrateRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1000(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_54

    .line 781
    :cond_52
    const/4 v0, 0x1

    goto :goto_21

    .line 782
    :cond_54
    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->popupInfoRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2100(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_7c

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->ledInfoRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2200(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_7c

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->priorityInfoRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2300(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_7c

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->customInfoRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2400(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_7c

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->ringtoneInfoRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2500(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_7e

    .line 783
    :cond_7c
    const/4 v0, 0x2

    goto :goto_21

    .line 784
    :cond_7e
    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->colorRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1300(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_88

    .line 785
    const/4 v0, 0x3

    goto :goto_21

    .line 786
    :cond_88
    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->popupEnabledRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1400(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_98

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->popupDisabledRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1500(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_9a

    .line 787
    :cond_98
    const/4 v0, 0x4

    goto :goto_21

    .line 788
    :cond_9a
    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->customRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$300(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_21

    .line 789
    const/4 v0, 0x5

    goto/16 :goto_21
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 23
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 598
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v14

    packed-switch v14, :pswitch_data_6c0

    .line 746
    :cond_7
    :goto_7
    return-void

    .line 600
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v5, Lorg/telegram/ui/Cells/HeaderCell;

    .line 601
    .local v5, "headerCell":Lorg/telegram/ui/Cells/HeaderCell;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->generalRow:I
    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1700(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_27

    .line 602
    const-string v14, "General"

    const v15, 0x7f070269

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto :goto_7

    .line 603
    :cond_27
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->popupRow:I
    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1800(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_40

    .line 604
    const-string v14, "ProfilePopupNotification"

    const v15, 0x7f070471

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto :goto_7

    .line 605
    :cond_40
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->ledRow:I
    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1900(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_59

    .line 606
    const-string v14, "NotificationsLed"

    const v15, 0x7f0703c1

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto :goto_7

    .line 607
    :cond_59
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->callsRow:I
    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2000(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_7

    .line 608
    const-string v14, "VoipNotificationSettings"

    const v15, 0x7f07058a

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto :goto_7

    .line 613
    .end local v5    # "headerCell":Lorg/telegram/ui/Cells/HeaderCell;
    :pswitch_72
    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v12, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 614
    .local v12, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    sget-object v14, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v15, "Notifications"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 615
    .local v10, "preferences":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->soundRow:I
    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$600(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_d8

    .line 616
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sound_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J
    invoke-static {v15}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "SoundDefault"

    const v16, 0x7f07051c

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 617
    .local v13, "value":Ljava/lang/String;
    const-string v14, "NoSound"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c9

    .line 618
    const-string v14, "NoSound"

    const v15, 0x7f07036f

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 620
    :cond_c9
    const-string v14, "Sound"

    const v15, 0x7f07051b

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v12, v14, v13, v15}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 621
    .end local v13    # "value":Ljava/lang/String;
    :cond_d8
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->ringtoneRow:I
    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$700(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_12e

    .line 622
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ringtone_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J
    invoke-static {v15}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "DefaultRingtone"

    const v16, 0x7f0701c6

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 623
    .restart local v13    # "value":Ljava/lang/String;
    const-string v14, "NoSound"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11f

    .line 624
    const-string v14, "NoSound"

    const v15, 0x7f07036f

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 626
    :cond_11f
    const-string v14, "VoipSettingsRingtone"

    const v15, 0x7f070599

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v12, v14, v13, v15}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 627
    .end local v13    # "value":Ljava/lang/String;
    :cond_12e
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->vibrateRow:I
    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$800(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_252

    .line 628
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "vibrate_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J
    invoke-static {v15}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 629
    .local v13, "value":I
    if-eqz v13, :cond_161

    const/4 v14, 0x4

    if-ne v13, v14, :cond_19b

    .line 630
    :cond_161
    const-string v14, "Vibrate"

    const v15, 0x7f070573

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const-string v14, "VibrationDefault"

    const v16, 0x7f070574

    move/from16 v0, v16

    invoke-static {v14, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->smartRow:I
    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1200(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_191

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->priorityRow:I
    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1100(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_199

    :cond_191
    const/4 v14, 0x1

    :goto_192
    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0, v14}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    :cond_199
    const/4 v14, 0x0

    goto :goto_192

    .line 631
    :cond_19b
    const/4 v14, 0x1

    if-ne v13, v14, :cond_1d8

    .line 632
    const-string v14, "Vibrate"

    const v15, 0x7f070573

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const-string v14, "Short"

    const v16, 0x7f07050c

    move/from16 v0, v16

    invoke-static {v14, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->smartRow:I
    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1200(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_1ce

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->priorityRow:I
    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1100(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_1d6

    :cond_1ce
    const/4 v14, 0x1

    :goto_1cf
    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0, v14}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    :cond_1d6
    const/4 v14, 0x0

    goto :goto_1cf

    .line 633
    :cond_1d8
    const/4 v14, 0x2

    if-ne v13, v14, :cond_215

    .line 634
    const-string v14, "Vibrate"

    const v15, 0x7f070573

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const-string v14, "VibrationDisabled"

    const v16, 0x7f070575

    move/from16 v0, v16

    invoke-static {v14, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->smartRow:I
    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1200(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_20b

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->priorityRow:I
    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1100(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_213

    :cond_20b
    const/4 v14, 0x1

    :goto_20c
    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0, v14}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    :cond_213
    const/4 v14, 0x0

    goto :goto_20c

    .line 635
    :cond_215
    const/4 v14, 0x3

    if-ne v13, v14, :cond_7

    .line 636
    const-string v14, "Vibrate"

    const v15, 0x7f070573

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const-string v14, "Long"

    const v16, 0x7f0702f9

    move/from16 v0, v16

    invoke-static {v14, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->smartRow:I
    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1200(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_248

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->priorityRow:I
    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1100(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_250

    :cond_248
    const/4 v14, 0x1

    :goto_249
    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0, v14}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    :cond_250
    const/4 v14, 0x0

    goto :goto_249

    .line 638
    .end local v13    # "value":I
    :cond_252
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->priorityRow:I
    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1100(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_2f7

    .line 639
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "priority_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J
    invoke-static {v15}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x3

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 640
    .restart local v13    # "value":I
    if-nez v13, :cond_29d

    .line 641
    const-string v14, "NotificationsPriority"

    const v15, 0x7f0703c7

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "NotificationsPriorityDefault"

    const v16, 0x7f0703c8

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 642
    :cond_29d
    const/4 v14, 0x1

    if-ne v13, v14, :cond_2bb

    .line 643
    const-string v14, "NotificationsPriority"

    const v15, 0x7f0703c7

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "NotificationsPriorityHigh"

    const v16, 0x7f0703c9

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 644
    :cond_2bb
    const/4 v14, 0x2

    if-ne v13, v14, :cond_2d9

    .line 645
    const-string v14, "NotificationsPriority"

    const v15, 0x7f0703c7

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "NotificationsPriorityMax"

    const v16, 0x7f0703cb

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 646
    :cond_2d9
    const/4 v14, 0x3

    if-ne v13, v14, :cond_7

    .line 647
    const-string v14, "NotificationsPriority"

    const v15, 0x7f0703c7

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "NotificationsPrioritySettings"

    const v16, 0x7f0703cc

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 649
    .end local v13    # "value":I
    :cond_2f7
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->smartRow:I
    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1200(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_3c0

    .line 650
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "smart_max_count_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J
    invoke-static {v15}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 651
    .local v8, "notifyMaxCount":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "smart_delay_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J
    invoke-static {v15}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0xb4

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 652
    .local v7, "notifyDelay":I
    if-nez v8, :cond_376

    .line 653
    const-string v14, "SmartNotifications"

    const v15, 0x7f070511

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const-string v14, "SmartNotificationsDisabled"

    const v16, 0x7f070514

    move/from16 v0, v16

    invoke-static {v14, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->priorityRow:I
    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1100(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_374

    const/4 v14, 0x1

    :goto_36d
    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0, v14}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    :cond_374
    const/4 v14, 0x0

    goto :goto_36d

    .line 655
    :cond_376
    const-string v14, "Minutes"

    div-int/lit8 v15, v7, 0x3c

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 656
    .local v6, "minutes":Ljava/lang/String;
    const-string v14, "SmartNotifications"

    const v15, 0x7f070511

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const-string v14, "SmartNotificationsInfo"

    const v16, 0x7f070515

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object v6, v17, v18

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v14, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->priorityRow:I
    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1100(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_3be

    const/4 v14, 0x1

    :goto_3b7
    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0, v14}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    :cond_3be
    const/4 v14, 0x0

    goto :goto_3b7

    .line 658
    .end local v6    # "minutes":Ljava/lang/String;
    .end local v7    # "notifyDelay":I
    .end local v8    # "notifyMaxCount":I
    :cond_3c0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->callsVibrateRow:I
    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1000(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_7

    .line 659
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "calls_vibrate_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J
    invoke-static {v15}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 660
    .restart local v13    # "value":I
    if-eqz v13, :cond_3f3

    const/4 v14, 0x4

    if-ne v13, v14, :cond_40e

    .line 661
    :cond_3f3
    const-string v14, "Vibrate"

    const v15, 0x7f070573

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "VibrationDefault"

    const v16, 0x7f070574

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 662
    :cond_40e
    const/4 v14, 0x1

    if-ne v13, v14, :cond_42c

    .line 663
    const-string v14, "Vibrate"

    const v15, 0x7f070573

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "Short"

    const v16, 0x7f07050c

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 664
    :cond_42c
    const/4 v14, 0x2

    if-ne v13, v14, :cond_44a

    .line 665
    const-string v14, "Vibrate"

    const v15, 0x7f070573

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "VibrationDisabled"

    const v16, 0x7f070575

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 666
    :cond_44a
    const/4 v14, 0x3

    if-ne v13, v14, :cond_7

    .line 667
    const-string v14, "Vibrate"

    const v15, 0x7f070573

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "Long"

    const v16, 0x7f0702f9

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 673
    .end local v10    # "preferences":Landroid/content/SharedPreferences;
    .end local v12    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    .end local v13    # "value":I
    :pswitch_468
    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v12, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 674
    .local v12, "textCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->popupInfoRow:I
    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2100(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_498

    .line 675
    const-string v14, "ProfilePopupNotificationInfo"

    const v15, 0x7f070472

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 676
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->context:Landroid/content/Context;

    const v15, 0x7f0200d6

    const-string v16, "windowBackgroundGrayShadow"

    invoke-static/range {v14 .. v16}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 677
    :cond_498
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->ledInfoRow:I
    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2200(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_4c2

    .line 678
    const-string v14, "NotificationsLedInfo"

    const v15, 0x7f0703c3

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 679
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->context:Landroid/content/Context;

    const v15, 0x7f0200d7

    const-string v16, "windowBackgroundGrayShadow"

    invoke-static/range {v14 .. v16}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 680
    :cond_4c2
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->priorityInfoRow:I
    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2300(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_4fd

    .line 681
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->priorityRow:I
    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1100(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_4f0

    .line 682
    const-string v14, ""

    invoke-virtual {v12, v14}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 686
    :goto_4de
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->context:Landroid/content/Context;

    const v15, 0x7f0200d6

    const-string v16, "windowBackgroundGrayShadow"

    invoke-static/range {v14 .. v16}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 684
    :cond_4f0
    const-string v14, "PriorityInfo"

    const v15, 0x7f07046a

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4de

    .line 687
    :cond_4fd
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->customInfoRow:I
    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2400(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_51f

    .line 688
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 689
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->context:Landroid/content/Context;

    const v15, 0x7f0200d6

    const-string v16, "windowBackgroundGrayShadow"

    invoke-static/range {v14 .. v16}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 690
    :cond_51f
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->ringtoneInfoRow:I
    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$2500(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_7

    .line 691
    const-string v14, "VoipRingtoneInfo"

    const v15, 0x7f070598

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 692
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->context:Landroid/content/Context;

    const v15, 0x7f0200d6

    const-string v16, "windowBackgroundGrayShadow"

    invoke-static/range {v14 .. v16}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 697
    .end local v12    # "textCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    :pswitch_549
    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v12, Lorg/telegram/ui/Cells/TextColorCell;

    .line 698
    .local v12, "textCell":Lorg/telegram/ui/Cells/TextColorCell;
    sget-object v14, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v15, "Notifications"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 700
    .restart local v10    # "preferences":Landroid/content/SharedPreferences;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "color_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J
    invoke-static {v15}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10, v14}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5be

    .line 701
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "color_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J
    invoke-static {v15}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const v15, -0xffff01

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 709
    .local v4, "color":I
    :goto_5a0
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_5a1
    const/16 v14, 0x9

    if-ge v2, v14, :cond_5af

    .line 710
    sget-object v14, Lorg/telegram/ui/Cells/TextColorCell;->colorsToSave:[I

    aget v14, v14, v2

    if-ne v14, v4, :cond_5dd

    .line 711
    sget-object v14, Lorg/telegram/ui/Cells/TextColorCell;->colors:[I

    aget v4, v14, v2

    .line 715
    :cond_5af
    const-string v14, "NotificationsLedColor"

    const v15, 0x7f0703c2

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v4, v15}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_7

    .line 703
    .end local v2    # "a":I
    .end local v4    # "color":I
    :cond_5be
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J
    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v14

    long-to-int v14, v14

    if-gez v14, :cond_5d3

    .line 704
    const-string v14, "GroupLed"

    const v15, -0xffff01

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .restart local v4    # "color":I
    goto :goto_5a0

    .line 706
    .end local v4    # "color":I
    :cond_5d3
    const-string v14, "MessagesLed"

    const v15, -0xffff01

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .restart local v4    # "color":I
    goto :goto_5a0

    .line 709
    .restart local v2    # "a":I
    :cond_5dd
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a1

    .line 719
    .end local v2    # "a":I
    .end local v4    # "color":I
    .end local v10    # "preferences":Landroid/content/SharedPreferences;
    .end local v12    # "textCell":Lorg/telegram/ui/Cells/TextColorCell;
    :pswitch_5e0
    move-object/from16 v0, p1

    iget-object v11, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v11, Lorg/telegram/ui/Cells/RadioCell;

    .line 720
    .local v11, "radioCell":Lorg/telegram/ui/Cells/RadioCell;
    sget-object v14, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v15, "Notifications"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 721
    .restart local v10    # "preferences":Landroid/content/SharedPreferences;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "popup_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J
    invoke-static {v15}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 722
    .local v9, "popup":I
    if-nez v9, :cond_629

    .line 723
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->dialog_id:J
    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$200(Lorg/telegram/ui/ProfileNotificationsActivity;)J

    move-result-wide v14

    long-to-int v14, v14

    if-gez v14, :cond_653

    const-string v14, "popupGroup"

    :goto_621
    const/4 v15, 0x0

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 724
    if-eqz v9, :cond_656

    .line 725
    const/4 v9, 0x1

    .line 730
    :cond_629
    :goto_629
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->popupEnabledRow:I
    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1400(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_65a

    .line 731
    const-string v14, "PopupEnabled"

    const v15, 0x7f070467

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const/4 v14, 0x1

    if-ne v9, v14, :cond_658

    const/4 v14, 0x1

    :goto_642
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v15, v14, v0}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/String;ZZ)V

    .line 732
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v14}, Lorg/telegram/ui/Cells/RadioCell;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 723
    :cond_653
    const-string v14, "popupAll"

    goto :goto_621

    .line 727
    :cond_656
    const/4 v9, 0x2

    goto :goto_629

    .line 731
    :cond_658
    const/4 v14, 0x0

    goto :goto_642

    .line 733
    :cond_65a
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->popupDisabledRow:I
    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$1500(Lorg/telegram/ui/ProfileNotificationsActivity;)I

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_7

    .line 734
    const-string v14, "PopupDisabled"

    const v15, 0x7f070466

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const/4 v14, 0x2

    if-ne v9, v14, :cond_684

    const/4 v14, 0x1

    :goto_673
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v15, v14, v0}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/String;ZZ)V

    .line 735
    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v14}, Lorg/telegram/ui/Cells/RadioCell;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 734
    :cond_684
    const/4 v14, 0x0

    goto :goto_673

    .line 740
    .end local v9    # "popup":I
    .end local v10    # "preferences":Landroid/content/SharedPreferences;
    .end local v11    # "radioCell":Lorg/telegram/ui/Cells/RadioCell;
    :pswitch_686
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    .line 741
    .local v3, "cell":Lorg/telegram/ui/Cells/TextCheckBoxCell;
    sget-object v14, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v15, "Notifications"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 742
    .restart local v10    # "preferences":Landroid/content/SharedPreferences;
    const-string v14, "NotificationsEnableCustom"

    const v15, 0x7f0703c0

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->customEnabled:Z
    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result v14

    if-eqz v14, :cond_6bd

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->notificationsEnabled:Z
    invoke-static {v14}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$000(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result v14

    if-eqz v14, :cond_6bd

    const/4 v14, 0x1

    :goto_6b4
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v15, v14, v0}, Lorg/telegram/ui/Cells/TextCheckBoxCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    :cond_6bd
    const/4 v14, 0x0

    goto :goto_6b4

    .line 598
    nop

    :pswitch_data_6c0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_72
        :pswitch_468
        :pswitch_549
        :pswitch_5e0
        :pswitch_686
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 566
    packed-switch p2, :pswitch_data_70

    .line 588
    new-instance v0, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCheckBoxCell;-><init>(Landroid/content/Context;)V

    .line 589
    .local v0, "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 592
    :goto_13
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 593
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 568
    .end local v0    # "view":Landroid/view/View;
    :pswitch_23
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 569
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_13

    .line 572
    .end local v0    # "view":Landroid/view/View;
    :pswitch_34
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 573
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_13

    .line 576
    .end local v0    # "view":Landroid/view/View;
    :pswitch_45
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 577
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_13

    .line 579
    .end local v0    # "view":Landroid/view/View;
    :pswitch_4d
    new-instance v0, Lorg/telegram/ui/Cells/TextColorCell;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextColorCell;-><init>(Landroid/content/Context;)V

    .line 580
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_13

    .line 583
    .end local v0    # "view":Landroid/view/View;
    :pswitch_5e
    new-instance v0, Lorg/telegram/ui/Cells/RadioCell;

    iget-object v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/RadioCell;-><init>(Landroid/content/Context;)V

    .line 584
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_13

    .line 566
    nop

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_23
        :pswitch_34
        :pswitch_45
        :pswitch_4d
        :pswitch_5e
    .end packed-switch
.end method

.method public onViewAttachedToWindow(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .registers 8
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 750
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    if-eqz v4, :cond_10

    .line 751
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    packed-switch v4, :pswitch_data_7a

    .line 774
    :cond_10
    :goto_10
    return-void

    .line 753
    :pswitch_11
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 754
    .local v1, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->customEnabled:Z
    invoke-static {v4}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result v4

    if-eqz v4, :cond_29

    iget-object v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->notificationsEnabled:Z
    invoke-static {v4}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$000(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result v4

    if-eqz v4, :cond_29

    :goto_25
    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto :goto_10

    :cond_29
    move v2, v3

    goto :goto_25

    .line 758
    .end local v1    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :pswitch_2b
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 759
    .local v1, "textCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    iget-object v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->customEnabled:Z
    invoke-static {v4}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result v4

    if-eqz v4, :cond_43

    iget-object v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->notificationsEnabled:Z
    invoke-static {v4}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$000(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result v4

    if-eqz v4, :cond_43

    :goto_3f
    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto :goto_10

    :cond_43
    move v2, v3

    goto :goto_3f

    .line 763
    .end local v1    # "textCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    :pswitch_45
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextColorCell;

    .line 764
    .local v1, "textCell":Lorg/telegram/ui/Cells/TextColorCell;
    iget-object v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->customEnabled:Z
    invoke-static {v4}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result v4

    if-eqz v4, :cond_5d

    iget-object v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->notificationsEnabled:Z
    invoke-static {v4}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$000(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result v4

    if-eqz v4, :cond_5d

    :goto_59
    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/Cells/TextColorCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto :goto_10

    :cond_5d
    move v2, v3

    goto :goto_59

    .line 768
    .end local v1    # "textCell":Lorg/telegram/ui/Cells/TextColorCell;
    :pswitch_5f
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/RadioCell;

    .line 769
    .local v0, "radioCell":Lorg/telegram/ui/Cells/RadioCell;
    iget-object v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->customEnabled:Z
    invoke-static {v4}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$100(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result v4

    if-eqz v4, :cond_77

    iget-object v4, p0, Lorg/telegram/ui/ProfileNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileNotificationsActivity;

    # getter for: Lorg/telegram/ui/ProfileNotificationsActivity;->notificationsEnabled:Z
    invoke-static {v4}, Lorg/telegram/ui/ProfileNotificationsActivity;->access$000(Lorg/telegram/ui/ProfileNotificationsActivity;)Z

    move-result v4

    if-eqz v4, :cond_77

    :goto_73
    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/Cells/RadioCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto :goto_10

    :cond_77
    move v2, v3

    goto :goto_73

    .line 751
    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_11
        :pswitch_2b
        :pswitch_45
        :pswitch_5f
    .end packed-switch
.end method
