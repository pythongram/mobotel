.class Lorg/telegram/messenger/MessagesStorage$59;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->getEncryptedChat(ILjava/util/concurrent/Semaphore;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$chat_id:I

.field final synthetic val$result:Ljava/util/ArrayList;

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;ILjava/util/ArrayList;Ljava/util/concurrent/Semaphore;)V
    .registers 5
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 3567
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$59;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$59;->val$chat_id:I

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$59;->val$result:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesStorage$59;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 3571
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3572
    .local v3, "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3573
    .local v1, "encryptedChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$59;->this$0:Lorg/telegram/messenger/MessagesStorage;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/telegram/messenger/MessagesStorage$59;->val$chat_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1, v3}, Lorg/telegram/messenger/MessagesStorage;->getEncryptedChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 3574
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5a

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5a

    .line 3575
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3576
    .local v2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$59;->this$0:Lorg/telegram/messenger/MessagesStorage;

    const-string v5, ","

    invoke-static {v5, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3577
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5a

    .line 3578
    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$59;->val$result:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3579
    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$59;->val$result:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5a} :catch_60
    .catchall {:try_start_0 .. :try_end_5a} :catchall_6a

    .line 3585
    .end local v2    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_5a
    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$59;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 3587
    .end local v1    # "encryptedChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    .end local v3    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_5f
    return-void

    .line 3582
    :catch_60
    move-exception v0

    .line 3583
    .local v0, "e":Ljava/lang/Exception;
    :try_start_61
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_6a

    .line 3585
    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$59;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_5f

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_6a
    move-exception v4

    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$59;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    throw v4
.end method
