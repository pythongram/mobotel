.class public Lorg/telegram/messenger/DispatchQueue;
.super Ljava/lang/Thread;
.source "DispatchQueue.java"


# instance fields
.field private volatile handler:Landroid/os/Handler;

.field private syncLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "threadName"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/DispatchQueue;->handler:Landroid/os/Handler;

    .line 20
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/DispatchQueue;->syncLatch:Ljava/util/concurrent/CountDownLatch;

    .line 23
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/DispatchQueue;->setName(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lorg/telegram/messenger/DispatchQueue;->start()V

    .line 25
    return-void
.end method

.method private sendMessage(Landroid/os/Message;I)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "delay"    # I

    .prologue
    .line 29
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/DispatchQueue;->syncLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 30
    if-gtz p2, :cond_d

    .line 31
    iget-object v1, p0, Lorg/telegram/messenger/DispatchQueue;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 38
    :goto_c
    return-void

    .line 33
    :cond_d
    iget-object v1, p0, Lorg/telegram/messenger/DispatchQueue;->handler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_c

    .line 35
    :catch_14
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_c
.end method


# virtual methods
.method public cancelRunnable(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 42
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/DispatchQueue;->syncLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 43
    iget-object v1, p0, Lorg/telegram/messenger/DispatchQueue;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 47
    :goto_a
    return-void

    .line 44
    :catch_b
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public cleanupQueue()V
    .registers 4

    .prologue
    .line 68
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/DispatchQueue;->syncLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 69
    iget-object v1, p0, Lorg/telegram/messenger/DispatchQueue;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 73
    :goto_b
    return-void

    .line 70
    :catch_c
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 50
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)V

    .line 51
    return-void
.end method

.method public postRunnable(Ljava/lang/Runnable;J)V
    .registers 8
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J

    .prologue
    .line 55
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/DispatchQueue;->syncLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 56
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-gtz v1, :cond_11

    .line 57
    iget-object v1, p0, Lorg/telegram/messenger/DispatchQueue;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    :goto_10
    return-void

    .line 59
    :cond_11
    iget-object v1, p0, Lorg/telegram/messenger/DispatchQueue;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_10

    .line 61
    :catch_17
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method public run()V
    .registers 2

    .prologue
    .line 77
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/DispatchQueue;->handler:Landroid/os/Handler;

    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueue;->syncLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 80
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 81
    return-void
.end method
