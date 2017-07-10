.class Lorg/telegram/messenger/MessagesController$58;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->processLoadedDialogs(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Ljava/util/ArrayList;IIIZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$count:I

.field final synthetic val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

.field final synthetic val$encChats:Ljava/util/ArrayList;

.field final synthetic val$fromCache:Z

.field final synthetic val$loadType:I

.field final synthetic val$migrate:Z

.field final synthetic val$offset:I

.field final synthetic val$resetEnd:Z


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;ILorg/telegram/tgnet/TLRPC$messages_Dialogs;ZIILjava/util/ArrayList;ZZ)V
    .registers 10
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 3392
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iput p2, p0, Lorg/telegram/messenger/MessagesController$58;->val$loadType:I

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$58;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iput-boolean p4, p0, Lorg/telegram/messenger/MessagesController$58;->val$resetEnd:Z

    iput p5, p0, Lorg/telegram/messenger/MessagesController$58;->val$count:I

    iput p6, p0, Lorg/telegram/messenger/MessagesController$58;->val$offset:I

    iput-object p7, p0, Lorg/telegram/messenger/MessagesController$58;->val$encChats:Ljava/util/ArrayList;

    iput-boolean p8, p0, Lorg/telegram/messenger/MessagesController$58;->val$migrate:Z

    iput-boolean p9, p0, Lorg/telegram/messenger/MessagesController$58;->val$fromCache:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 25

    .prologue
    .line 3395
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController;->firstGettingTask:Z

    if-nez v2, :cond_17

    .line 3396
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getNewDeleteTask(Ljava/util/ArrayList;)V

    .line 3397
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/telegram/messenger/MessagesController;->firstGettingTask:Z

    .line 3400
    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loaded loadType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/MessagesController$58;->val$loadType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 3401
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/MessagesController$58;->val$loadType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_63

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_63

    .line 3402
    new-instance v2, Lorg/telegram/messenger/MessagesController$58$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/messenger/MessagesController$58$1;-><init>(Lorg/telegram/messenger/MessagesController$58;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3683
    :goto_62
    return-void

    .line 3418
    :cond_63
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 3419
    .local v4, "new_dialogs_dict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 3420
    .local v5, "new_dialogMessage":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/messenger/MessageObject;>;"
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 3421
    .local v19, "usersDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 3423
    .local v6, "chatsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_78
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_a2

    .line 3424
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/telegram/tgnet/TLRPC$User;

    .line 3425
    .local v17, "u":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, v17

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3423
    add-int/lit8 v8, v8, 0x1

    goto :goto_78

    .line 3427
    .end local v17    # "u":Lorg/telegram/tgnet/TLRPC$User;
    :cond_a2
    const/4 v8, 0x0

    :goto_a3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_c7

    .line 3428
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3429
    .local v10, "c":Lorg/telegram/tgnet/TLRPC$Chat;
    iget v2, v10, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3427
    add-int/lit8 v8, v8, 0x1

    goto :goto_a3

    .line 3431
    .end local v10    # "c":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_c7
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/MessagesController$58;->val$loadType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e0

    .line 3432
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/MessagesController$58;->val$offset:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesController$58;->val$count:I

    move/from16 v21, v0

    add-int v3, v3, v21

    iput v3, v2, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    .line 3435
    :cond_e0
    const/4 v8, 0x0

    :goto_e1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_164

    .line 3436
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$Message;

    .line 3437
    .local v14, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v2, :cond_149

    .line 3438
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3439
    .local v11, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v11, :cond_116

    iget-boolean v2, v11, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-eqz v2, :cond_116

    .line 3435
    .end local v11    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :goto_113
    add-int/lit8 v8, v8, 0x1

    goto :goto_e1

    .line 3442
    .restart local v11    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_116
    if-eqz v11, :cond_123

    iget-boolean v2, v11, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_123

    .line 3443
    iget v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v3, -0x80000000

    or-int/2addr v2, v3

    iput v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 3451
    .end local v11    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_123
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/MessagesController$58;->val$loadType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_135

    iget-boolean v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    if-eqz v2, :cond_135

    iget-boolean v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-nez v2, :cond_135

    .line 3452
    const/4 v2, 0x1

    iput-boolean v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    .line 3454
    :cond_135
    new-instance v15, Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-direct {v15, v14, v0, v6, v2}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 3455
    .local v15, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v15}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_113

    .line 3445
    .end local v15    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_149
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v2, :cond_123

    .line 3446
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3447
    .restart local v11    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v11, :cond_123

    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v2, :cond_123

    goto :goto_113

    .line 3458
    .end local v11    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v14    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_164
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3459
    .local v7, "dialogsToReload":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    const/4 v8, 0x0

    :goto_16a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_2d7

    .line 3460
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 3461
    .local v12, "d":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-wide v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const-wide/16 v22, 0x0

    cmp-long v2, v2, v22

    if-nez v2, :cond_19b

    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v2, :cond_19b

    .line 3462
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v2, :cond_1a6

    .line 3463
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v2, v2

    iput-wide v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 3470
    :cond_19b
    :goto_19b
    iget-wide v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const-wide/16 v22, 0x0

    cmp-long v2, v2, v22

    if-nez v2, :cond_1c4

    .line 3459
    :cond_1a3
    :goto_1a3
    add-int/lit8 v8, v8, 0x1

    goto :goto_16a

    .line 3464
    :cond_1a6
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v2, :cond_1b5

    .line 3465
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v2, v2

    int-to-long v2, v2

    iput-wide v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    goto :goto_19b

    .line 3466
    :cond_1b5
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v2, :cond_19b

    .line 3467
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v2, v2

    int-to-long v2, v2

    iput-wide v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    goto :goto_19b

    .line 3473
    :cond_1c4
    iget v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    if-nez v2, :cond_1dc

    .line 3474
    iget-wide v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/MessageObject;

    .line 3475
    .local v13, "mess":Lorg/telegram/messenger/MessageObject;
    if-eqz v13, :cond_1dc

    .line 3476
    iget-object v2, v13, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    .line 3479
    .end local v13    # "mess":Lorg/telegram/messenger/MessageObject;
    :cond_1dc
    const/4 v9, 0x1

    .line 3480
    .local v9, "allowCheck":Z
    invoke-static {v12}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v2

    if-eqz v2, :cond_2bc

    .line 3481
    iget-wide v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v2, v2

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3482
    .restart local v11    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v11, :cond_1fc

    .line 3483
    iget-boolean v2, v11, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_1f8

    .line 3484
    const/4 v9, 0x0

    .line 3486
    :cond_1f8
    iget-boolean v2, v11, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v2, :cond_1a3

    .line 3490
    :cond_1fc
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->access$1400(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v2

    iget-wide v0, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-int v3, v0

    neg-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pts:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3497
    .end local v11    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_21d
    iget-wide v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3499
    if-eqz v9, :cond_23e

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/MessagesController$58;->val$loadType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23e

    iget v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    if-eqz v2, :cond_237

    iget v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    if-nez v2, :cond_23e

    :cond_237
    iget v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-eqz v2, :cond_23e

    .line 3500
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3503
    :cond_23e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v0, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    .line 3504
    .local v20, "value":Ljava/lang/Integer;
    if-nez v20, :cond_259

    .line 3505
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 3507
    :cond_259
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v0, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v21

    iget v0, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3509
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v0, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "value":Ljava/lang/Integer;
    check-cast v20, Ljava/lang/Integer;

    .line 3510
    .restart local v20    # "value":Ljava/lang/Integer;
    if-nez v20, :cond_297

    .line 3511
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 3513
    :cond_297
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v0, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v21

    iget v0, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1a3

    .line 3491
    .end local v20    # "value":Ljava/lang/Integer;
    :cond_2bc
    iget-wide v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v2, v2

    if-gez v2, :cond_21d

    .line 3492
    iget-wide v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v2, v2

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3493
    .restart local v11    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v11, :cond_21d

    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v2, :cond_21d

    goto/16 :goto_1a3

    .line 3516
    .end local v9    # "allowCheck":Z
    .end local v11    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v12    # "d":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_2d7
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/MessagesController$58;->val$loadType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_39d

    .line 3517
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLoader;->saveMessagesThumbs(Ljava/util/ArrayList;)V

    .line 3519
    const/4 v8, 0x0

    :goto_2e8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_38e

    .line 3520
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$Message;

    .line 3521
    .restart local v14    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser;

    if-eqz v2, :cond_325

    .line 3522
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/telegram/tgnet/TLRPC$User;

    .line 3523
    .local v18, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v18, :cond_325

    move-object/from16 v0, v18

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v2, :cond_325

    .line 3524
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;-><init>()V

    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 3528
    .end local v18    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_325
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo;

    if-nez v2, :cond_331

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;

    if-eqz v2, :cond_33a

    .line 3529
    :cond_331
    const/4 v2, 0x0

    iput-boolean v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 3530
    const/4 v2, 0x0

    iput-boolean v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    .line 3519
    :goto_337
    add-int/lit8 v8, v8, 0x1

    goto :goto_2e8

    .line 3532
    :cond_33a
    iget-boolean v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz v2, :cond_383

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v2, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v16, v0

    .line 3533
    .local v16, "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :goto_346
    iget-wide v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    .line 3534
    .restart local v20    # "value":Ljava/lang/Integer;
    if-nez v20, :cond_377

    .line 3535
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget-boolean v3, v14, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    iget-wide v0, v14, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v2, v3, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 3536
    iget-wide v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3538
    :cond_377
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, v14, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v2, v3, :cond_38c

    const/4 v2, 0x1

    :goto_380
    iput-boolean v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    goto :goto_337

    .line 3532
    .end local v16    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v20    # "value":Ljava/lang/Integer;
    :cond_383
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v2, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v16, v0

    goto :goto_346

    .line 3538
    .restart local v16    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v20    # "value":Ljava/lang/Integer;
    :cond_38c
    const/4 v2, 0x0

    goto :goto_380

    .line 3541
    .end local v14    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v16    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v20    # "value":Ljava/lang/Integer;
    :cond_38e
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v2, v3, v0}, Lorg/telegram/messenger/MessagesStorage;->putDialogs(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Z)V

    .line 3543
    :cond_39d
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/MessagesController$58;->val$loadType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3c3

    .line 3544
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3545
    .restart local v11    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v3, v11, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/MessagesController;->access$4300(Lorg/telegram/messenger/MessagesController;I)V

    .line 3546
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v3, v11, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->checkChannelInviter(I)V

    .line 3549
    .end local v11    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_3c3
    new-instance v2, Lorg/telegram/messenger/MessagesController$58$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/MessagesController$58$2;-><init>(Lorg/telegram/messenger/MessagesController$58;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_62
.end method
