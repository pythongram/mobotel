.class Lorg/telegram/messenger/NotificationsController$11;
.super Ljava/lang/Object;
.source "NotificationsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationsController;->processLoadedUnreadMessages(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/NotificationsController;

.field final synthetic val$dialogs:Ljava/util/HashMap;

.field final synthetic val$messages:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/NotificationsController;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 742
    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    iput-object p2, p0, Lorg/telegram/messenger/NotificationsController$11;->val$messages:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/messenger/NotificationsController$11;->val$dialogs:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 27

    .prologue
    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushDialogs:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/NotificationsController;->access$800(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->clear()V

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/NotificationsController;->access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/NotificationsController;->access$700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->clear()V

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lorg/telegram/messenger/NotificationsController;->total_unread_count:I
    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/NotificationsController;->access$402(Lorg/telegram/messenger/NotificationsController;I)I

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lorg/telegram/messenger/NotificationsController;->personal_count:I
    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/NotificationsController;->access$502(Lorg/telegram/messenger/NotificationsController;I)I

    .line 750
    sget-object v20, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v21, "Notifications"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 751
    .local v17, "preferences":Landroid/content/SharedPreferences;
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 753
    .local v18, "settingsCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->val$messages:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1b0

    .line 754
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->val$messages:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v4, v0, :cond_1b0

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->val$messages:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Message;

    .line 756
    .local v9, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget v0, v9, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v12, v0

    .line 757
    .local v12, "mid":J
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v20, v0

    if-eqz v20, :cond_99

    .line 758
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const/16 v22, 0x20

    shl-long v20, v20, v22

    or-long v12, v12, v20

    .line 760
    :cond_99
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/NotificationsController;->access$700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v20

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b0

    .line 754
    :cond_ad
    :goto_ad
    add-int/lit8 v4, v4, 0x1

    goto :goto_55

    .line 763
    :cond_b0
    new-instance v10, Lorg/telegram/messenger/MessageObject;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v10, v9, v0, v1}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 764
    .local v10, "messageObject":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    # invokes: Lorg/telegram/messenger/NotificationsController;->isPersonalMessage(Lorg/telegram/messenger/MessageObject;)Z
    invoke-static {v0, v10}, Lorg/telegram/messenger/NotificationsController;->access$1500(Lorg/telegram/messenger/NotificationsController;Lorg/telegram/messenger/MessageObject;)Z

    move-result v20

    if-eqz v20, :cond_d4

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    # operator++ for: Lorg/telegram/messenger/NotificationsController;->personal_count:I
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/NotificationsController;->access$508(Lorg/telegram/messenger/NotificationsController;)I

    .line 767
    :cond_d4
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    .line 768
    .local v6, "dialog_id":J
    move-wide v14, v6

    .line 769
    .local v14, "original_dialog_id":J
    iget-object v0, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    move/from16 v20, v0

    if-eqz v20, :cond_f2

    .line 770
    iget-object v0, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v6, v0

    .line 772
    :cond_f2
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Boolean;

    .line 773
    .local v19, "value":Ljava/lang/Boolean;
    if-nez v19, :cond_150

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    # invokes: Lorg/telegram/messenger/NotificationsController;->getNotifyOverride(Landroid/content/SharedPreferences;J)I
    invoke-static {v0, v1, v6, v7}, Lorg/telegram/messenger/NotificationsController;->access$2000(Lorg/telegram/messenger/NotificationsController;Landroid/content/SharedPreferences;J)I

    move-result v11

    .line 775
    .local v11, "notifyOverride":I
    const/16 v20, 0x2

    move/from16 v0, v20

    if-eq v11, v0, :cond_1ad

    const-string v20, "EnableAll"

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_13b

    long-to-int v0, v6

    move/from16 v20, v0

    if-gez v20, :cond_13d

    const-string v20, "EnableGroup"

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    if-nez v20, :cond_13d

    :cond_13b
    if-eqz v11, :cond_1ad

    :cond_13d
    const/16 v20, 0x1

    :goto_13f
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    .line 776
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    .end local v11    # "notifyOverride":I
    :cond_150
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_ad

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->opened_dialog_id:J
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/NotificationsController;->access$300(Lorg/telegram/messenger/NotificationsController;)J

    move-result-wide v20

    cmp-long v20, v6, v20

    if-nez v20, :cond_168

    sget-boolean v20, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-nez v20, :cond_ad

    .line 781
    :cond_168
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/NotificationsController;->access$700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v20

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/NotificationsController;->access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 783
    cmp-long v20, v14, v6

    if-eqz v20, :cond_ad

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushDialogsOverrideMention:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/NotificationsController;->access$1700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v20

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_ad

    .line 775
    .restart local v11    # "notifyOverride":I
    :cond_1ad
    const/16 v20, 0x0

    goto :goto_13f

    .line 788
    .end local v4    # "a":I
    .end local v6    # "dialog_id":J
    .end local v9    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v10    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v11    # "notifyOverride":I
    .end local v12    # "mid":J
    .end local v14    # "original_dialog_id":J
    .end local v19    # "value":Ljava/lang/Boolean;
    :cond_1b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->val$dialogs:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_1be
    :goto_1be
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2bf

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 789
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 790
    .restart local v6    # "dialog_id":J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Boolean;

    .line 791
    .restart local v19    # "value":Ljava/lang/Boolean;
    if-nez v19, :cond_276

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    # invokes: Lorg/telegram/messenger/NotificationsController;->getNotifyOverride(Landroid/content/SharedPreferences;J)I
    invoke-static {v0, v1, v6, v7}, Lorg/telegram/messenger/NotificationsController;->access$2000(Lorg/telegram/messenger/NotificationsController;Landroid/content/SharedPreferences;J)I

    move-result v11

    .line 793
    .restart local v11    # "notifyOverride":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushDialogsOverrideMention:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/NotificationsController;->access$1700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v20

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 794
    .local v16, "override":Ljava/lang/Integer;
    if-eqz v16, :cond_236

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_236

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushDialogsOverrideMention:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/NotificationsController;->access$1700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v20

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    const/4 v11, 0x1

    .line 798
    :cond_236
    const/16 v20, 0x2

    move/from16 v0, v20

    if-eq v11, v0, :cond_2bc

    const-string v20, "EnableAll"

    const/16 v22, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_261

    long-to-int v0, v6

    move/from16 v20, v0

    if-gez v20, :cond_263

    const-string v20, "EnableGroup"

    const/16 v22, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    if-nez v20, :cond_263

    :cond_261
    if-eqz v11, :cond_2bc

    :cond_263
    const/16 v20, 0x1

    :goto_265
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    .line 799
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    .end local v11    # "notifyOverride":I
    .end local v16    # "override":Ljava/lang/Integer;
    :cond_276
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_1be

    .line 804
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 805
    .local v5, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushDialogs:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/NotificationsController;->access$800(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v20

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v22, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->total_unread_count:I
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/NotificationsController;->access$400(Lorg/telegram/messenger/NotificationsController;)I

    move-result v22

    add-int v22, v22, v5

    move-object/from16 v0, v20

    move/from16 v1, v22

    # setter for: Lorg/telegram/messenger/NotificationsController;->total_unread_count:I
    invoke-static {v0, v1}, Lorg/telegram/messenger/NotificationsController;->access$402(Lorg/telegram/messenger/NotificationsController;I)I

    goto/16 :goto_1be

    .line 798
    .end local v5    # "count":I
    .restart local v11    # "notifyOverride":I
    .restart local v16    # "override":Ljava/lang/Integer;
    :cond_2bc
    const/16 v20, 0x0

    goto :goto_265

    .line 808
    .end local v6    # "dialog_id":J
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v11    # "notifyOverride":I
    .end local v16    # "override":Ljava/lang/Integer;
    .end local v19    # "value":Ljava/lang/Boolean;
    :cond_2bf
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->total_unread_count:I
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/NotificationsController;->access$400(Lorg/telegram/messenger/NotificationsController;)I

    move-result v20

    if-nez v20, :cond_2d7

    .line 809
    new-instance v20, Lorg/telegram/messenger/NotificationsController$11$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/NotificationsController$11$1;-><init>(Lorg/telegram/messenger/NotificationsController$11;)V

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 817
    :cond_2d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v21, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    div-long v22, v22, v24

    const-wide/16 v24, 0x3c

    cmp-long v20, v22, v24

    if-gez v20, :cond_318

    const/16 v20, 0x1

    :goto_2ed
    move-object/from16 v0, v21

    move/from16 v1, v20

    # invokes: Lorg/telegram/messenger/NotificationsController;->showOrUpdateNotification(Z)V
    invoke-static {v0, v1}, Lorg/telegram/messenger/NotificationsController;->access$100(Lorg/telegram/messenger/NotificationsController;Z)V

    .line 819
    const-string v20, "badgeNumber"

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_317

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$11;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v21, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->total_unread_count:I
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/NotificationsController;->access$400(Lorg/telegram/messenger/NotificationsController;)I

    move-result v21

    # invokes: Lorg/telegram/messenger/NotificationsController;->setBadge(I)V
    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/NotificationsController;->access$1200(Lorg/telegram/messenger/NotificationsController;I)V

    .line 822
    :cond_317
    return-void

    .line 817
    :cond_318
    const/16 v20, 0x0

    goto :goto_2ed
.end method
