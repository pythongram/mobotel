.class Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;
.super Ljava/lang/Object;
.source "DialogsSearchAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    .prologue
    .line 282
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 285
    iget-object v9, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    iget v9, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;->val$currentReqId:I

    iget-object v12, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    iget-object v12, v12, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    # getter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastReqId:I
    invoke-static {v12}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$300(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I

    move-result v12

    if-ne v9, v12, :cond_fa

    .line 286
    iget-object v9, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v9, :cond_fa

    .line 287
    iget-object v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v7, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 288
    .local v7, "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    iget-object v12, v7, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v13, v7, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v9, v12, v13, v10, v10}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 289
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-object v12, v7, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v9, v12, v11}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 290
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-object v12, v7, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v9, v12, v11}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 291
    iget-object v9, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    iget-object v9, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;->val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_id:I

    if-nez v9, :cond_48

    .line 292
    iget-object v9, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    iget-object v9, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    # getter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;
    invoke-static {v9}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$400(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 295
    :cond_48
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v12, "mainconfig"

    invoke-virtual {v9, v12, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 296
    .local v5, "preferences":Landroid/content/SharedPreferences;
    const-string v9, "chat_unlocked"

    invoke-interface {v5, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 297
    .local v1, "chatUnlocked":Z
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_57
    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_e2

    .line 298
    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Message;

    .line 300
    .local v4, "message":Lorg/telegram/tgnet/TLRPC$Message;
    if-nez v1, :cond_8d

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "hide_"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8d

    .line 297
    :goto_8a
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 303
    :cond_8d
    iget-object v9, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    iget-object v9, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    # getter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;
    invoke-static {v9}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$400(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Ljava/util/ArrayList;

    move-result-object v9

    new-instance v12, Lorg/telegram/messenger/MessageObject;

    const/4 v13, 0x0

    invoke-direct {v12, v4, v13, v11}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v2

    .line 305
    .local v2, "dialog_id":J
    iget-boolean v9, v4, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz v9, :cond_d9

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-object v6, v9, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    .line 306
    .local v6, "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :goto_ac
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 307
    .local v8, "value":Ljava/lang/Integer;
    if-nez v8, :cond_cd

    .line 308
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    iget-boolean v12, v4, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    invoke-virtual {v9, v12, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 309
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v9, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :cond_cd
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget v12, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v9, v12, :cond_e0

    move v9, v10

    :goto_d6
    iput-boolean v9, v4, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    goto :goto_8a

    .line 305
    .end local v6    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v8    # "value":Ljava/lang/Integer;
    :cond_d9
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-object v6, v9, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_ac

    .restart local v6    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v8    # "value":Ljava/lang/Integer;
    :cond_e0
    move v9, v11

    .line 311
    goto :goto_d6

    .line 313
    .end local v2    # "dialog_id":J
    .end local v4    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v6    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v8    # "value":Ljava/lang/Integer;
    :cond_e2
    iget-object v9, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    iget-object v9, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iget-object v12, v7, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/16 v13, 0x14

    if-eq v12, v13, :cond_117

    :goto_f0
    # setter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->messagesSearchEndReached:Z
    invoke-static {v9, v10}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$502(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Z)Z

    .line 314
    iget-object v9, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    iget-object v9, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v9}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->notifyDataSetChanged()V

    .line 317
    .end local v0    # "a":I
    .end local v1    # "chatUnlocked":Z
    .end local v5    # "preferences":Landroid/content/SharedPreferences;
    .end local v7    # "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    :cond_fa
    iget-object v9, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    iget-object v9, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    # getter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;
    invoke-static {v9}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$200(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    move-result-object v9

    if-eqz v9, :cond_10f

    .line 318
    iget-object v9, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    iget-object v9, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    # getter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;
    invoke-static {v9}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$200(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    move-result-object v9

    invoke-interface {v9, v11}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->searchStateChanged(Z)V

    .line 320
    :cond_10f
    iget-object v9, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    iget-object v9, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    # setter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqId:I
    invoke-static {v9, v11}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$602(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;I)I

    .line 321
    return-void

    .restart local v0    # "a":I
    .restart local v1    # "chatUnlocked":Z
    .restart local v5    # "preferences":Landroid/content/SharedPreferences;
    .restart local v7    # "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    :cond_117
    move v10, v11

    .line 313
    goto :goto_f0
.end method
