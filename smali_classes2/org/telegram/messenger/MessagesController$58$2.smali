.class Lorg/telegram/messenger/MessagesController$58$2;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$58;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$58;

.field final synthetic val$chatsDict:Ljava/util/HashMap;

.field final synthetic val$dialogsToReload:Ljava/util/ArrayList;

.field final synthetic val$new_dialogMessage:Ljava/util/HashMap;

.field final synthetic val$new_dialogs_dict:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$58;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .registers 6
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$58;

    .prologue
    .line 3549
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$58$2;->val$new_dialogs_dict:Ljava/util/HashMap;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$58$2;->val$new_dialogMessage:Ljava/util/HashMap;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$58$2;->val$chatsDict:Ljava/util/HashMap;

    iput-object p5, p0, Lorg/telegram/messenger/MessagesController$58$2;->val$dialogsToReload:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 22

    .prologue
    .line 3552
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$58;->val$loadType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_21

    .line 3553
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lorg/telegram/messenger/MessagesController;->access$4600(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)V

    .line 3554
    sget-boolean v2, Lorg/telegram/messenger/UserConfig;->draftsLoaded:Z

    if-nez v2, :cond_21

    .line 3555
    invoke-static {}, Lorg/telegram/messenger/query/DraftQuery;->loadDrafts()V

    .line 3558
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v2, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$58;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->users:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$58;->val$loadType:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_9b

    const/4 v2, 0x1

    :goto_39
    invoke-virtual {v3, v4, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 3559
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v2, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$58;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$58;->val$loadType:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_9d

    const/4 v2, 0x1

    :goto_54
    invoke-virtual {v3, v4, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 3560
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$58;->val$encChats:Ljava/util/ArrayList;

    if-eqz v2, :cond_9f

    .line 3561
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_60
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$58;->val$encChats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_9f

    .line 3562
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$58;->val$encChats:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 3563
    .local v13, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    instance-of v2, v13, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-eqz v2, :cond_8e

    iget v2, v13, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getMyLayerVersion(I)I

    move-result v2

    const/16 v3, 0x2e

    if-ge v2, v3, :cond_8e

    .line 3564
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v13, v3}, Lorg/telegram/messenger/SecretChatHelper;->sendNotifyLayerMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 3566
    :cond_8e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v3, 0x1

    invoke-virtual {v2, v13, v3}, Lorg/telegram/messenger/MessagesController;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    .line 3561
    add-int/lit8 v10, v10, 0x1

    goto :goto_60

    .line 3558
    .end local v10    # "a":I
    .end local v13    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    :cond_9b
    const/4 v2, 0x0

    goto :goto_39

    .line 3559
    :cond_9d
    const/4 v2, 0x0

    goto :goto_54

    .line 3569
    :cond_9f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController$58;->val$migrate:Z

    if-nez v2, :cond_b0

    .line 3570
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/telegram/messenger/MessagesController;->loadingDialogs:Z

    .line 3572
    :cond_b0
    const/4 v11, 0x0

    .line 3574
    .local v11, "added":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController$58;->val$migrate:Z

    if-eqz v2, :cond_256

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_256

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v15, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    .line 3575
    .local v15, "lastDialogDate":I
    :goto_e5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->val$new_dialogs_dict:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f1
    :goto_f1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_538

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 3576
    .local v19, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 3577
    .local v14, "key":Ljava/lang/Long;
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 3578
    .local v20, "value":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-boolean v3, v3, Lorg/telegram/messenger/MessagesController$58;->val$migrate:Z

    if-eqz v3, :cond_119

    if-eqz v15, :cond_119

    move-object/from16 v0, v20

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    if-lt v3, v15, :cond_f1

    .line 3581
    :cond_119
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v14}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 3582
    .local v12, "currentDialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget v3, v3, Lorg/telegram/messenger/MessagesController$58;->val$loadType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_145

    move-object/from16 v0, v20

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->draft:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_draftMessage;

    if-eqz v3, :cond_145

    .line 3583
    move-object/from16 v0, v20

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-object/from16 v0, v20

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->draft:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v3, v6, v7}, Lorg/telegram/messenger/query/DraftQuery;->saveDraft(JLorg/telegram/tgnet/TLRPC$DraftMessage;Lorg/telegram/tgnet/TLRPC$Message;Z)V

    .line 3585
    :cond_145
    if-nez v12, :cond_259

    .line 3586
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, v20

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/messenger/MessagesController;->access$4700(Lorg/telegram/messenger/MessagesController;Ljava/lang/Long;)Z

    move-result v3

    if-nez v3, :cond_195

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hide_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_195

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    const-string v4, "chat_unlocked"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1e3

    :cond_195
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, v20

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 3587
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/messenger/MessagesController;->access$4700(Lorg/telegram/messenger/MessagesController;Ljava/lang/Long;)Z

    move-result v3

    if-nez v3, :cond_f1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hide_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    const-string v4, "chat_unlocked"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_f1

    .line 3588
    :cond_1e3
    const/4 v11, 0x1

    .line 3589
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v20

    invoke-virtual {v3, v14, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3590
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->val$new_dialogMessage:Ljava/util/HashMap;

    move-object/from16 v0, v20

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/telegram/messenger/MessageObject;

    .line 3591
    .local v16, "messageObject":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v3, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3592
    if-eqz v16, :cond_f1

    move-object/from16 v0, v16

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v3, :cond_f1

    .line 3593
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3594
    move-object/from16 v0, v16

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_f1

    .line 3595
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f1

    .line 3574
    .end local v12    # "currentDialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v14    # "key":Ljava/lang/Long;
    .end local v15    # "lastDialogDate":I
    .end local v16    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v19    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    .end local v20    # "value":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_256
    const/4 v15, 0x0

    goto/16 :goto_e5

    .line 3600
    .restart local v12    # "currentDialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .restart local v14    # "key":Ljava/lang/Long;
    .restart local v15    # "lastDialogDate":I
    .restart local v19    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    .restart local v20    # "value":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_259
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget v3, v3, Lorg/telegram/messenger/MessagesController$58;->val$loadType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_268

    .line 3601
    move-object/from16 v0, v20

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iput-object v3, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 3603
    :cond_268
    move-object/from16 v0, v20

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    iput-boolean v3, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    .line 3604
    move-object/from16 v0, v20

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    iput v3, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    .line 3605
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/telegram/messenger/MessageObject;

    .line 3606
    .local v18, "oldMsg":Lorg/telegram/messenger/MessageObject;
    if-eqz v18, :cond_28a

    move-object/from16 v0, v18

    iget-boolean v3, v0, Lorg/telegram/messenger/MessageObject;->deleted:Z

    if-nez v3, :cond_290

    :cond_28a
    if-eqz v18, :cond_290

    iget v3, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-lez v3, :cond_3de

    .line 3607
    :cond_290
    move-object/from16 v0, v20

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    iget v4, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-lt v3, v4, :cond_f1

    .line 3608
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, v20

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/messenger/MessagesController;->access$4700(Lorg/telegram/messenger/MessagesController;Ljava/lang/Long;)Z

    move-result v3

    if-nez v3, :cond_2e6

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hide_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2e6

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    const-string v4, "chat_unlocked"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_334

    :cond_2e6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, v20

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 3609
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/messenger/MessagesController;->access$4700(Lorg/telegram/messenger/MessagesController;Ljava/lang/Long;)Z

    move-result v3

    if-nez v3, :cond_f1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hide_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    const-string v4, "chat_unlocked"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_f1

    .line 3611
    :cond_334
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v20

    invoke-virtual {v3, v14, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3612
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->val$new_dialogMessage:Ljava/util/HashMap;

    move-object/from16 v0, v20

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/telegram/messenger/MessageObject;

    .line 3613
    .restart local v16    # "messageObject":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v3, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3614
    if-eqz v16, :cond_3a6

    move-object/from16 v0, v16

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v3, :cond_3a6

    .line 3615
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3616
    if-eqz v16, :cond_3a6

    move-object/from16 v0, v16

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3a6

    .line 3617
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3620
    :cond_3a6
    if-eqz v18, :cond_f1

    .line 3621
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3622
    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_f1

    .line 3623
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f1

    .line 3629
    .end local v16    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_3de
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->val$new_dialogMessage:Ljava/util/HashMap;

    move-object/from16 v0, v20

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/telegram/messenger/MessageObject;

    .line 3630
    .local v17, "newMsg":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v18

    iget-boolean v3, v0, Lorg/telegram/messenger/MessageObject;->deleted:Z

    if-nez v3, :cond_406

    if-eqz v17, :cond_406

    move-object/from16 v0, v17

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-le v3, v4, :cond_f1

    .line 3631
    :cond_406
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, v20

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/messenger/MessagesController;->access$4700(Lorg/telegram/messenger/MessagesController;Ljava/lang/Long;)Z

    move-result v3

    if-nez v3, :cond_454

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hide_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_454

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    const-string v4, "chat_unlocked"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4a2

    :cond_454
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, v20

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 3632
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/messenger/MessagesController;->access$4700(Lorg/telegram/messenger/MessagesController;Ljava/lang/Long;)Z

    move-result v3

    if-nez v3, :cond_f1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hide_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    const-string v4, "chat_unlocked"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_f1

    .line 3633
    :cond_4a2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v20

    invoke-virtual {v3, v14, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3634
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v3, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3635
    if-eqz v17, :cond_502

    move-object/from16 v0, v17

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v3, :cond_502

    .line 3636
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3637
    if-eqz v17, :cond_502

    move-object/from16 v0, v17

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_502

    .line 3638
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    move-object/from16 v0, v17

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3641
    :cond_502
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3642
    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_f1

    .line 3643
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f1

    .line 3652
    .end local v12    # "currentDialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v14    # "key":Ljava/lang/Long;
    .end local v17    # "newMsg":Lorg/telegram/messenger/MessageObject;
    .end local v18    # "oldMsg":Lorg/telegram/messenger/MessageObject;
    .end local v19    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    .end local v20    # "value":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_538
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3653
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3654
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v2, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController$58;->val$migrate:Z

    if-eqz v2, :cond_653

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->val$chatsDict:Ljava/util/HashMap;

    :goto_56c
    invoke-virtual {v3, v2}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Ljava/util/HashMap;)V

    .line 3656
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$58;->val$loadType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5ee

    .line 3657
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController$58;->val$migrate:Z

    if-nez v2, :cond_5ee

    .line 3658
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v2, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$58;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_5a8

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$58;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget v4, v4, Lorg/telegram/messenger/MessagesController$58;->val$count:I

    if-eq v2, v4, :cond_656

    :cond_5a8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$58;->val$loadType:I

    if-nez v2, :cond_656

    const/4 v2, 0x1

    :goto_5b1
    iput-boolean v2, v3, Lorg/telegram/messenger/MessagesController;->dialogsEndReached:Z

    .line 3659
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController$58;->val$fromCache:Z

    if-nez v2, :cond_5ee

    .line 3660
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v3, v2, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$58;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_5e3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$58;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget v4, v4, Lorg/telegram/messenger/MessagesController$58;->val$count:I

    if-eq v2, v4, :cond_659

    :cond_5e3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$58;->val$loadType:I

    if-nez v2, :cond_659

    const/4 v2, 0x1

    :goto_5ec
    iput-boolean v2, v3, Lorg/telegram/messenger/MessagesController;->serverDialogsEndReached:Z

    .line 3664
    :cond_5ee
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3666
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController$58;->val$migrate:Z

    if-eqz v2, :cond_65b

    .line 3667
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$58;->val$offset:I

    sput v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    .line 3668
    const/4 v2, 0x0

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 3669
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/telegram/messenger/MessagesController;->access$4502(Lorg/telegram/messenger/MessagesController;Z)Z

    .line 3670
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->needReloadRecentDialogsSearch:I

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3677
    :cond_624
    :goto_624
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    sget v3, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    sget v4, Lorg/telegram/messenger/UserConfig;->migrateOffsetDate:I

    sget v5, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    sget v6, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    sget v7, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    sget-wide v8, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/MessagesController;->access$4800(Lorg/telegram/messenger/MessagesController;IIIIIJ)V

    .line 3678
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->val$dialogsToReload:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_652

    .line 3679
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$58$2;->val$dialogsToReload:Ljava/util/ArrayList;

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->access$4900(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;J)V

    .line 3681
    :cond_652
    return-void

    .line 3654
    :cond_653
    const/4 v2, 0x0

    goto/16 :goto_56c

    .line 3658
    :cond_656
    const/4 v2, 0x0

    goto/16 :goto_5b1

    .line 3660
    :cond_659
    const/4 v2, 0x0

    goto :goto_5ec

    .line 3672
    :cond_65b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->generateUpdateMessage()V

    .line 3673
    if-nez v11, :cond_624

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$58;->val$loadType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_624

    .line 3674
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$58;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$58$2;->this$1:Lorg/telegram/messenger/MessagesController$58;

    iget v4, v4, Lorg/telegram/messenger/MessagesController$58;->val$count:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->loadDialogs(IIZ)V

    goto :goto_624
.end method
