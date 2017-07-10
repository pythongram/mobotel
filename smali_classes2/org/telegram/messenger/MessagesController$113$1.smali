.class Lorg/telegram/messenger/MessagesController$113$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$113;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$113;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$113;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$113;

    .prologue
    .line 7953
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$113$1;->this$1:Lorg/telegram/messenger/MessagesController$113;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 23

    .prologue
    .line 7956
    const/16 v21, 0x0

    .line 7957
    .local v21, "updateMask":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$113$1;->this$1:Lorg/telegram/messenger/MessagesController$113;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$113;->val$markAsReadMessagesInbox:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$113$1;->this$1:Lorg/telegram/messenger/MessagesController$113;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$113;->val$markAsReadMessagesOutbox:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_12c

    .line 7958
    :cond_1a
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagesRead:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController$113$1;->this$1:Lorg/telegram/messenger/MessagesController$113;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController$113;->val$markAsReadMessagesInbox:Landroid/util/SparseArray;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController$113$1;->this$1:Lorg/telegram/messenger/MessagesController$113;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController$113;->val$markAsReadMessagesOutbox:Landroid/util/SparseArray;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 7959
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$113$1;->this$1:Lorg/telegram/messenger/MessagesController$113;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$113;->val$markAsReadMessagesInbox:Landroid/util/SparseArray;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/NotificationsController;->processReadMessages(Landroid/util/SparseArray;JIIZ)V

    .line 7960
    const/4 v11, 0x0

    .local v11, "b":I
    :goto_4b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$113$1;->this$1:Lorg/telegram/messenger/MessagesController$113;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$113;->val$markAsReadMessagesInbox:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v11, v2, :cond_bb

    .line 7961
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$113$1;->this$1:Lorg/telegram/messenger/MessagesController$113;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$113;->val$markAsReadMessagesInbox:Landroid/util/SparseArray;

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v17

    .line 7962
    .local v17, "key":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$113$1;->this$1:Lorg/telegram/messenger/MessagesController$113;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$113;->val$markAsReadMessagesInbox:Landroid/util/SparseArray;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v19, v0

    .line 7963
    .local v19, "messageId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$113$1;->this$1:Lorg/telegram/messenger/MessagesController$113;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$113;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    move/from16 v0, v17

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 7964
    .local v12, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v12, :cond_b8

    iget v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    move/from16 v0, v19

    if-gt v2, v0, :cond_b8

    .line 7965
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$113$1;->this$1:Lorg/telegram/messenger/MessagesController$113;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$113;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    iget-wide v4, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/telegram/messenger/MessageObject;

    .line 7966
    .local v20, "obj":Lorg/telegram/messenger/MessageObject;
    if-eqz v20, :cond_b8

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v2

    if-nez v2, :cond_b8

    .line 7967
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/MessageObject;->setIsRead()V

    .line 7968
    move/from16 v0, v21

    or-int/lit16 v0, v0, 0x100

    move/from16 v21, v0

    .line 7960
    .end local v20    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_b8
    add-int/lit8 v11, v11, 0x1

    goto :goto_4b

    .line 7972
    .end local v12    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v17    # "key":I
    .end local v19    # "messageId":I
    :cond_bb
    const/4 v11, 0x0

    :goto_bc
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$113$1;->this$1:Lorg/telegram/messenger/MessagesController$113;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$113;->val$markAsReadMessagesOutbox:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v11, v2, :cond_12c

    .line 7973
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$113$1;->this$1:Lorg/telegram/messenger/MessagesController$113;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$113;->val$markAsReadMessagesOutbox:Landroid/util/SparseArray;

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v17

    .line 7974
    .restart local v17    # "key":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$113$1;->this$1:Lorg/telegram/messenger/MessagesController$113;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$113;->val$markAsReadMessagesOutbox:Landroid/util/SparseArray;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v19, v0

    .line 7975
    .restart local v19    # "messageId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$113$1;->this$1:Lorg/telegram/messenger/MessagesController$113;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$113;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    move/from16 v0, v17

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 7976
    .restart local v12    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v12, :cond_129

    iget v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    move/from16 v0, v19

    if-gt v2, v0, :cond_129

    .line 7977
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$113$1;->this$1:Lorg/telegram/messenger/MessagesController$113;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$113;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    iget-wide v4, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/telegram/messenger/MessageObject;

    .line 7978
    .restart local v20    # "obj":Lorg/telegram/messenger/MessageObject;
    if-eqz v20, :cond_129

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v2

    if-eqz v2, :cond_129

    .line 7979
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/MessageObject;->setIsRead()V

    .line 7980
    move/from16 v0, v21

    or-int/lit16 v0, v0, 0x100

    move/from16 v21, v0

    .line 7972
    .end local v20    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_129
    add-int/lit8 v11, v11, 0x1

    goto :goto_bc

    .line 7985
    .end local v11    # "b":I
    .end local v12    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v17    # "key":I
    .end local v19    # "messageId":I
    :cond_12c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$113$1;->this$1:Lorg/telegram/messenger/MessagesController$113;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$113;->val$markAsReadEncrypted:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1bf

    .line 7986
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$113$1;->this$1:Lorg/telegram/messenger/MessagesController$113;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$113;->val$markAsReadEncrypted:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_146
    :goto_146
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1bf

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 7987
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->messagesReadEncrypted:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 7988
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    const/16 v2, 0x20

    shl-long v14, v4, v2

    .line 7989
    .local v14, "dialog_id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$113$1;->this$1:Lorg/telegram/messenger/MessagesController$113;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$113;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 7990
    .restart local v12    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v12, :cond_146

    .line 7991
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$113$1;->this$1:Lorg/telegram/messenger/MessagesController$113;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$113;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/telegram/messenger/MessageObject;

    .line 7992
    .local v18, "message":Lorg/telegram/messenger/MessageObject;
    if-eqz v18, :cond_146

    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v4, v2, :cond_146

    .line 7993
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/MessageObject;->setIsRead()V

    .line 7994
    move/from16 v0, v21

    or-int/lit16 v0, v0, 0x100

    move/from16 v21, v0

    goto :goto_146

    .line 7999
    .end local v12    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v14    # "dialog_id":J
    .end local v18    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_1bf
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$113$1;->this$1:Lorg/telegram/messenger/MessagesController$113;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$113;->val$markAsReadMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e0

    .line 8000
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagesReadContent:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController$113$1;->this$1:Lorg/telegram/messenger/MessagesController$113;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController$113;->val$markAsReadMessages:Ljava/util/ArrayList;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 8002
    :cond_1e0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$113$1;->this$1:Lorg/telegram/messenger/MessagesController$113;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$113;->val$deletedMessages:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_29a

    .line 8003
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_1ed
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$113$1;->this$1:Lorg/telegram/messenger/MessagesController$113;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$113;->val$deletedMessages:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v9, v2, :cond_28d

    .line 8004
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$113$1;->this$1:Lorg/telegram/messenger/MessagesController$113;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$113;->val$deletedMessages:Landroid/util/SparseArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v17

    .line 8005
    .restart local v17    # "key":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$113$1;->this$1:Lorg/telegram/messenger/MessagesController$113;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$113;->val$deletedMessages:Landroid/util/SparseArray;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 8006
    .local v10, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v10, :cond_216

    .line 8003
    :cond_213
    :goto_213
    add-int/lit8 v9, v9, 0x1

    goto :goto_1ed

    .line 8009
    :cond_216
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 8010
    if-nez v17, :cond_255

    .line 8011
    const/4 v11, 0x0

    .restart local v11    # "b":I
    :goto_22f
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_213

    .line 8012
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 8013
    .local v16, "id":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$113$1;->this$1:Lorg/telegram/messenger/MessagesController$113;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$113;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/telegram/messenger/MessageObject;

    .line 8014
    .restart local v20    # "obj":Lorg/telegram/messenger/MessageObject;
    if-eqz v20, :cond_252

    .line 8015
    const/4 v2, 0x1

    move-object/from16 v0, v20

    iput-boolean v2, v0, Lorg/telegram/messenger/MessageObject;->deleted:Z

    .line 8011
    :cond_252
    add-int/lit8 v11, v11, 0x1

    goto :goto_22f

    .line 8019
    .end local v11    # "b":I
    .end local v16    # "id":Ljava/lang/Integer;
    .end local v20    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_255
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$113$1;->this$1:Lorg/telegram/messenger/MessagesController$113;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$113;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    move/from16 v0, v17

    neg-int v3, v0

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/telegram/messenger/MessageObject;

    .line 8020
    .restart local v20    # "obj":Lorg/telegram/messenger/MessageObject;
    if-eqz v20, :cond_213

    .line 8021
    const/4 v11, 0x0

    .restart local v11    # "b":I
    :goto_26e
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_213

    .line 8022
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v3, v2, :cond_28a

    .line 8023
    const/4 v2, 0x1

    move-object/from16 v0, v20

    iput-boolean v2, v0, Lorg/telegram/messenger/MessageObject;->deleted:Z

    goto :goto_213

    .line 8021
    :cond_28a
    add-int/lit8 v11, v11, 0x1

    goto :goto_26e

    .line 8030
    .end local v10    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11    # "b":I
    .end local v17    # "key":I
    .end local v20    # "obj":Lorg/telegram/messenger/MessageObject;
    :cond_28d
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$113$1;->this$1:Lorg/telegram/messenger/MessagesController$113;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$113;->val$deletedMessages:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/NotificationsController;->removeDeletedMessagesFromNotifications(Landroid/util/SparseArray;)V

    .line 8032
    .end local v9    # "a":I
    :cond_29a
    if-eqz v21, :cond_2af

    .line 8033
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 8035
    :cond_2af
    return-void
.end method
