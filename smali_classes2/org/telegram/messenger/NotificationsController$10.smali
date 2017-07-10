.class Lorg/telegram/messenger/NotificationsController$10;
.super Ljava/lang/Object;
.source "NotificationsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationsController;->processDialogsUpdateRead(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/NotificationsController;

.field final synthetic val$dialogsToUpdate:Ljava/util/HashMap;

.field final synthetic val$popupArray:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/NotificationsController;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 648
    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$10;->this$0:Lorg/telegram/messenger/NotificationsController;

    iput-object p2, p0, Lorg/telegram/messenger/NotificationsController$10;->val$dialogsToUpdate:Ljava/util/HashMap;

    iput-object p3, p0, Lorg/telegram/messenger/NotificationsController$10;->val$popupArray:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 23

    .prologue
    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->total_unread_count:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/NotificationsController;->access$400(Lorg/telegram/messenger/NotificationsController;)I

    move-result v15

    .line 652
    .local v15, "old_unread_count":I
    sget-object v18, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v19, "Notifications"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 653
    .local v17, "preferences":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->val$dialogsToUpdate:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_22
    :goto_22
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_29c

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 654
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 656
    .local v8, "dialog_id":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    # invokes: Lorg/telegram/messenger/NotificationsController;->getNotifyOverride(Landroid/content/SharedPreferences;J)I
    invoke-static {v0, v1, v8, v9}, Lorg/telegram/messenger/NotificationsController;->access$2000(Lorg/telegram/messenger/NotificationsController;Landroid/content/SharedPreferences;J)I

    move-result v14

    .line 657
    .local v14, "notifyOverride":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/NotificationsController;->access$1000(Lorg/telegram/messenger/NotificationsController;)Z

    move-result v18

    if-eqz v18, :cond_96

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushDialogsOverrideMention:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/NotificationsController;->access$1700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v18

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 659
    .local v16, "override":Ljava/lang/Integer;
    if-eqz v16, :cond_96

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_96

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushDialogsOverrideMention:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/NotificationsController;->access$1700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v18

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    const/4 v14, 0x1

    .line 664
    .end local v16    # "override":Ljava/lang/Integer;
    :cond_96
    const/16 v18, 0x2

    move/from16 v0, v18

    if-eq v14, v0, :cond_234

    const-string v18, "EnableAll"

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_c1

    long-to-int v0, v8

    move/from16 v18, v0

    if-gez v18, :cond_c3

    const-string v18, "EnableGroup"

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-nez v18, :cond_c3

    :cond_c1
    if-eqz v14, :cond_234

    :cond_c3
    const/4 v5, 0x1

    .line 666
    .local v5, "canAddValue":Z
    :goto_c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushDialogs:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/NotificationsController;->access$800(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v18

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 667
    .local v6, "currentCount":Ljava/lang/Integer;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 668
    .local v11, "newCount":Ljava/lang/Integer;
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v18

    if-nez v18, :cond_fd

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->smartNotificationsDialogs:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/NotificationsController;->access$1600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v18

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    :cond_fd
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v18

    if-gez v18, :cond_113

    .line 673
    if-eqz v6, :cond_22

    .line 676
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v20

    add-int v18, v18, v20

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 678
    :cond_113
    if-nez v5, :cond_11b

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v18

    if-nez v18, :cond_13a

    .line 679
    :cond_11b
    if-eqz v6, :cond_13a

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->total_unread_count:I
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/NotificationsController;->access$400(Lorg/telegram/messenger/NotificationsController;)I

    move-result v20

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v21

    sub-int v20, v20, v21

    move-object/from16 v0, v18

    move/from16 v1, v20

    # setter for: Lorg/telegram/messenger/NotificationsController;->total_unread_count:I
    invoke-static {v0, v1}, Lorg/telegram/messenger/NotificationsController;->access$402(Lorg/telegram/messenger/NotificationsController;I)I

    .line 683
    :cond_13a
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v18

    if-nez v18, :cond_266

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushDialogs:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/NotificationsController;->access$800(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v18

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushDialogsOverrideMention:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/NotificationsController;->access$1700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v18

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_16b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/NotificationsController;->access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v4, v0, :cond_237

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/NotificationsController;->access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/MessageObject;

    .line 688
    .local v10, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v20

    cmp-long v18, v20, v8

    if-nez v18, :cond_230

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lorg/telegram/messenger/NotificationsController;->isPersonalMessage(Lorg/telegram/messenger/MessageObject;)Z
    invoke-static {v0, v10}, Lorg/telegram/messenger/NotificationsController;->access$1500(Lorg/telegram/messenger/NotificationsController;Lorg/telegram/messenger/MessageObject;)Z

    move-result v18

    if-eqz v18, :cond_1ae

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v18, v0

    # operator-- for: Lorg/telegram/messenger/NotificationsController;->personal_count:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/NotificationsController;->access$510(Lorg/telegram/messenger/NotificationsController;)I

    .line 692
    :cond_1ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/NotificationsController;->access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 693
    add-int/lit8 v4, v4, -0x1

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/NotificationsController;->access$000(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 695
    iget-object v0, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v12, v0

    .line 696
    .local v12, "mid":J
    iget-object v0, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v18, v0

    if-eqz v18, :cond_208

    .line 697
    iget-object v0, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const/16 v18, 0x20

    shl-long v20, v20, v18

    or-long v12, v12, v20

    .line 699
    :cond_208
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushMessagesDict:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/NotificationsController;->access$700(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v18

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->val$popupArray:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_230

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->val$popupArray:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 686
    .end local v12    # "mid":J
    :cond_230
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_16b

    .line 664
    .end local v4    # "a":I
    .end local v5    # "canAddValue":Z
    .end local v6    # "currentCount":Ljava/lang/Integer;
    .end local v10    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v11    # "newCount":Ljava/lang/Integer;
    :cond_234
    const/4 v5, 0x0

    goto/16 :goto_c4

    .line 705
    .restart local v4    # "a":I
    .restart local v5    # "canAddValue":Z
    .restart local v6    # "currentCount":Ljava/lang/Integer;
    .restart local v11    # "newCount":Ljava/lang/Integer;
    :cond_237
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->val$popupArray:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushMessages:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/NotificationsController;->access$600(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->val$popupArray:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_22

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->val$popupArray:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_22

    .line 708
    .end local v4    # "a":I
    :cond_266
    if-eqz v5, :cond_22

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->total_unread_count:I
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/NotificationsController;->access$400(Lorg/telegram/messenger/NotificationsController;)I

    move-result v20

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v21

    add-int v20, v20, v21

    move-object/from16 v0, v18

    move/from16 v1, v20

    # setter for: Lorg/telegram/messenger/NotificationsController;->total_unread_count:I
    invoke-static {v0, v1}, Lorg/telegram/messenger/NotificationsController;->access$402(Lorg/telegram/messenger/NotificationsController;I)I

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->pushDialogs:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/NotificationsController;->access$800(Lorg/telegram/messenger/NotificationsController;)Ljava/util/HashMap;

    move-result-object v18

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_22

    .line 713
    .end local v5    # "canAddValue":Z
    .end local v6    # "currentCount":Ljava/lang/Integer;
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v8    # "dialog_id":J
    .end local v11    # "newCount":Ljava/lang/Integer;
    .end local v14    # "notifyOverride":I
    :cond_29c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->val$popupArray:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2b0

    .line 714
    new-instance v18, Lorg/telegram/messenger/NotificationsController$10$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/NotificationsController$10$1;-><init>(Lorg/telegram/messenger/NotificationsController$10;)V

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 721
    :cond_2b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->total_unread_count:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/NotificationsController;->access$400(Lorg/telegram/messenger/NotificationsController;)I

    move-result v18

    move/from16 v0, v18

    if-eq v15, v0, :cond_2ea

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/NotificationsController;->access$1000(Lorg/telegram/messenger/NotificationsController;)Z

    move-result v18

    if-nez v18, :cond_313

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->delayedPushMessages:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/NotificationsController;->access$000(Lorg/telegram/messenger/NotificationsController;)Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/NotificationsController;->access$1000(Lorg/telegram/messenger/NotificationsController;)Z

    move-result v19

    # invokes: Lorg/telegram/messenger/NotificationsController;->showOrUpdateNotification(Z)V
    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/NotificationsController;->access$100(Lorg/telegram/messenger/NotificationsController;Z)V

    .line 729
    :cond_2ea
    :goto_2ea
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    # setter for: Lorg/telegram/messenger/NotificationsController;->notifyCheck:Z
    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/NotificationsController;->access$1002(Lorg/telegram/messenger/NotificationsController;Z)Z

    .line 730
    const-string v18, "badgeNumber"

    const/16 v19, 0x1

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_312

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v19, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->total_unread_count:I
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/NotificationsController;->access$400(Lorg/telegram/messenger/NotificationsController;)I

    move-result v19

    # invokes: Lorg/telegram/messenger/NotificationsController;->setBadge(I)V
    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/NotificationsController;->access$1200(Lorg/telegram/messenger/NotificationsController;I)V

    .line 733
    :cond_312
    return-void

    .line 726
    :cond_313
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/NotificationsController$10;->this$0:Lorg/telegram/messenger/NotificationsController;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/messenger/NotificationsController;->lastOnlineFromOtherDevice:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/NotificationsController;->access$1300(Lorg/telegram/messenger/NotificationsController;)I

    move-result v18

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v20

    move/from16 v0, v18

    move/from16 v1, v20

    if-le v0, v1, :cond_33b

    const/16 v18, 0x1

    :goto_333
    move-object/from16 v0, v19

    move/from16 v1, v18

    # invokes: Lorg/telegram/messenger/NotificationsController;->scheduleNotificationDelay(Z)V
    invoke-static {v0, v1}, Lorg/telegram/messenger/NotificationsController;->access$1800(Lorg/telegram/messenger/NotificationsController;Z)V

    goto :goto_2ea

    :cond_33b
    const/16 v18, 0x0

    goto :goto_333
.end method
