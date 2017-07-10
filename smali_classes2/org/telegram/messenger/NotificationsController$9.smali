.class Lorg/telegram/messenger/NotificationsController$9;
.super Ljava/lang/Object;
.source "NotificationsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationsController;->processNewMessages(Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/NotificationsController;

.field final synthetic val$isLast:Z

.field final synthetic val$messageObjects:Ljava/util/ArrayList;

.field final synthetic val$popupArray:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .registers 5
    .param p1, "this$0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 541
    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$9;->this$0:Lorg/telegram/messenger/NotificationsController;

    iput-object p2, p0, Lorg/telegram/messenger/NotificationsController$9;->val$popupArray:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/messenger/NotificationsController$9;->val$messageObjects:Ljava/util/ArrayList;

    iput-boolean p4, p0, Lorg/telegram/messenger/NotificationsController$9;->val$isLast:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 27

    .prologue
    .line 544
    const/4 v5, 0x0

    .line 546
    .local v5, "added":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$9;->val$popupArray:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 547
    .local v15, "oldCount":I
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 548
    .local v21, "settingsCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    sget-object v23, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v24, "Notifications"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 549
    .local v20, "preferences":Landroid/content/SharedPreferences;
    const-string v23, "PinnedMessages"

    const/16 v24, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 550
    .local v6, "allowPinned":Z
    const/16 v18, 0x0

    .line 552
    .local v18, "popup":I
    sget-object v23, Lorg/telegram/messenger/NotificationsController;->listofdialogs:Ljava/util/ArrayList;

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 554
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$9;->val$messageObjects:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v4, v0, :cond_273

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$9;->val$messageObjects:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/MessageObject;

    .line 556
    .local v11, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v0, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v12, v0

    .line 557
    .local v12, "mid":J
    iget-object v0, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v23, v0

    if-eqz v23, :cond_86

    .line 558
    iget-object v0, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const/16 v23, 0x20

    shl-long v24, v24, v23

    or-long v12, v12, v24

    .line 560
    :cond_86
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$9;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Ljava/util/HashMap;
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/NotificationsController;->access$700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v23

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9d

    .line 554
    :cond_9a
    :goto_9a
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 563
    :cond_9d
    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    .line 564
    .local v8, "dialog_id":J
    move-wide/from16 v16, v8

    .line 565
    .local v16, "original_dialog_id":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$9;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->opened_dialog_id:J
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/NotificationsController;->access$300(Lorg/telegram/messenger/NotificationsController;)J

    move-result-wide v24

    cmp-long v23, v8, v24

    if-nez v23, :cond_bf

    sget-boolean v23, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-eqz v23, :cond_bf

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$9;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v23, v0

    # invokes: Lorg/telegram/messenger/NotificationsController;->playInChatSound()V
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/NotificationsController;->access$1900(Lorg/telegram/messenger/NotificationsController;)V

    goto :goto_9a

    .line 569
    :cond_bf
    iget-object v0, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    move/from16 v23, v0

    if-eqz v23, :cond_ec

    .line 570
    if-nez v6, :cond_df

    iget-object v0, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;

    move/from16 v23, v0

    if-nez v23, :cond_9a

    .line 573
    :cond_df
    iget-object v0, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v8, v0

    .line 575
    :cond_ec
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$9;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    # invokes: Lorg/telegram/messenger/NotificationsController;->isPersonalMessage(Lorg/telegram/messenger/MessageObject;)Z
    invoke-static {v0, v11}, Lorg/telegram/messenger/NotificationsController;->access$1500(Lorg/telegram/messenger/NotificationsController;Lorg/telegram/messenger/MessageObject;)Z

    move-result v23

    if-eqz v23, :cond_103

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$9;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v23, v0

    # operator++ for: Lorg/telegram/messenger/NotificationsController;->personal_count:I
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/NotificationsController;->access$508(Lorg/telegram/messenger/NotificationsController;)I

    .line 578
    :cond_103
    const/4 v5, 0x1

    .line 580
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Boolean;

    .line 581
    .local v22, "value":Ljava/lang/Boolean;
    long-to-int v10, v8

    .line 582
    .local v10, "lower_id":I
    if-gez v10, :cond_24c

    const/4 v7, 0x1

    .line 583
    .local v7, "isChat":Z
    :goto_116
    if-eqz v10, :cond_171

    .line 584
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "custom_"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    if-eqz v23, :cond_24f

    .line 585
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "popup_"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 589
    :goto_15c
    if-nez v18, :cond_257

    .line 590
    long-to-int v0, v8

    move/from16 v23, v0

    if-gez v23, :cond_253

    const-string v23, "popupGroup"

    :goto_165
    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 597
    :cond_171
    :goto_171
    if-nez v22, :cond_1be

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$9;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    # invokes: Lorg/telegram/messenger/NotificationsController;->getNotifyOverride(Landroid/content/SharedPreferences;J)I
    invoke-static {v0, v1, v8, v9}, Lorg/telegram/messenger/NotificationsController;->access$2000(Lorg/telegram/messenger/NotificationsController;Landroid/content/SharedPreferences;J)I

    move-result v14

    .line 599
    .local v14, "notifyOverride":I
    const/16 v23, 0x2

    move/from16 v0, v23

    if-eq v14, v0, :cond_26f

    const-string v23, "EnableAll"

    const/16 v24, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    if-eqz v23, :cond_1a9

    if-eqz v7, :cond_1ab

    const-string v23, "EnableGroup"

    const/16 v24, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    if-nez v23, :cond_1ab

    :cond_1a9
    if-eqz v14, :cond_26f

    :cond_1ab
    const/16 v23, 0x1

    :goto_1ad
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    .line 600
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    .end local v14    # "notifyOverride":I
    :cond_1be
    if-eqz v18, :cond_1da

    iget-object v0, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v23, v0

    if-eqz v23, :cond_1da

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isMegagroup()Z

    move-result v23

    if-nez v23, :cond_1da

    .line 603
    const/16 v18, 0x0

    .line 605
    :cond_1da
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-eqz v23, :cond_243

    .line 606
    if-eqz v18, :cond_1f1

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$9;->val$popupArray:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 609
    :cond_1f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$9;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/NotificationsController;->access$000(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$9;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/NotificationsController;->access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$9;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Ljava/util/HashMap;
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/NotificationsController;->access$700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v23

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    cmp-long v23, v16, v8

    if-eqz v23, :cond_243

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$9;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushDialogsOverrideMention:Ljava/util/HashMap;
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/NotificationsController;->access$1700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v23

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    :cond_243
    sget-object v23, Lorg/telegram/messenger/NotificationsController;->listofdialogs:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9a

    .line 582
    .end local v7    # "isChat":Z
    :cond_24c
    const/4 v7, 0x0

    goto/16 :goto_116

    .line 587
    .restart local v7    # "isChat":Z
    :cond_24f
    const/16 v18, 0x0

    goto/16 :goto_15c

    .line 590
    :cond_253
    const-string v23, "popupAll"

    goto/16 :goto_165

    .line 591
    :cond_257
    const/16 v23, 0x1

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_263

    .line 592
    const/16 v18, 0x3

    goto/16 :goto_171

    .line 593
    :cond_263
    const/16 v23, 0x2

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_171

    .line 594
    const/16 v18, 0x0

    goto/16 :goto_171

    .line 599
    .restart local v14    # "notifyOverride":I
    :cond_26f
    const/16 v23, 0x0

    goto/16 :goto_1ad

    .line 620
    .end local v7    # "isChat":Z
    .end local v8    # "dialog_id":J
    .end local v10    # "lower_id":I
    .end local v11    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v12    # "mid":J
    .end local v14    # "notifyOverride":I
    .end local v16    # "original_dialog_id":J
    .end local v22    # "value":Ljava/lang/Boolean;
    :cond_273
    if-eqz v5, :cond_284

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$9;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/NotificationsController$9;->val$isLast:Z

    move/from16 v24, v0

    # setter for: Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z
    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/NotificationsController;->access$1002(Lorg/telegram/messenger/NotificationsController;Z)Z

    .line 624
    :cond_284
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$9;->val$popupArray:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_2b6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$9;->val$popupArray:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-eq v15, v0, :cond_2b6

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v23

    if-nez v23, :cond_2b6

    .line 625
    move/from16 v19, v18

    .line 626
    .local v19, "popupFinal":I
    new-instance v23, Lorg/telegram/messenger/NotificationsController$9$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/NotificationsController$9$1;-><init>(Lorg/telegram/messenger/NotificationsController$9;I)V

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 640
    .end local v19    # "popupFinal":I
    :cond_2b6
    return-void
.end method
