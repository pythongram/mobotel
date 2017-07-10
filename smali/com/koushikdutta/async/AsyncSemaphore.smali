.class public Lcom/koushikdutta/async/AsyncSemaphore;
.super Ljava/lang/Object;
.source "AsyncSemaphore.java"


# instance fields
.field semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncSemaphore;->semaphore:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public acquire()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-static {v5}, Lcom/koushikdutta/async/ThreadQueue;->getOrCreateThreadQueue(Ljava/lang/Thread;)Lcom/koushikdutta/async/ThreadQueue;

    move-result-object v4

    .line 12
    .local v4, "threadQueue":Lcom/koushikdutta/async/ThreadQueue;
    iget-object v0, v4, Lcom/koushikdutta/async/ThreadQueue;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    .line 13
    .local v0, "last":Lcom/koushikdutta/async/AsyncSemaphore;
    iput-object p0, v4, Lcom/koushikdutta/async/ThreadQueue;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    .line 14
    iget-object v2, v4, Lcom/koushikdutta/async/ThreadQueue;->queueSemaphore:Ljava/util/concurrent/Semaphore;

    .line 16
    .local v2, "queueSemaphore":Ljava/util/concurrent/Semaphore;
    :try_start_e
    iget-object v5, p0, Lcom/koushikdutta/async/AsyncSemaphore;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_39

    move-result v5

    if-eqz v5, :cond_1c

    .line 36
    iput-object v0, v4, Lcom/koushikdutta/async/ThreadQueue;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    .line 38
    :goto_18
    return-void

    .line 26
    .local v3, "run":Ljava/lang/Runnable;
    :cond_19
    :try_start_19
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 22
    .end local v3    # "run":Ljava/lang/Runnable;
    :cond_1c
    invoke-virtual {v4}, Lcom/koushikdutta/async/ThreadQueue;->remove()Ljava/lang/Runnable;

    move-result-object v3

    .line 23
    .restart local v3    # "run":Ljava/lang/Runnable;
    if-nez v3, :cond_19

    .line 29
    const/4 v5, 0x1

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 30
    .local v1, "permits":I
    invoke-virtual {v2, v1}, Ljava/util/concurrent/Semaphore;->acquire(I)V

    .line 31
    iget-object v5, p0, Lcom/koushikdutta/async/AsyncSemaphore;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z
    :try_end_33
    .catchall {:try_start_19 .. :try_end_33} :catchall_39

    move-result v5

    if-eqz v5, :cond_1c

    .line 36
    iput-object v0, v4, Lcom/koushikdutta/async/ThreadQueue;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    goto :goto_18

    .end local v1    # "permits":I
    .end local v3    # "run":Ljava/lang/Runnable;
    :catchall_39
    move-exception v5

    iput-object v0, v4, Lcom/koushikdutta/async/ThreadQueue;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    throw v5
.end method

.method public release()V
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSemaphore;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 78
    invoke-static {p0}, Lcom/koushikdutta/async/ThreadQueue;->release(Lcom/koushikdutta/async/AsyncSemaphore;)V

    .line 79
    return-void
.end method

.method public tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    .registers 21
    .param p1, "timeout"    # J
    .param p3, "timeunit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 41
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    invoke-virtual {v11, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v12

    .line 42
    .local v12, "timeoutMs":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-static {v11}, Lcom/koushikdutta/async/ThreadQueue;->getOrCreateThreadQueue(Ljava/lang/Thread;)Lcom/koushikdutta/async/ThreadQueue;

    move-result-object v10

    .line 43
    .local v10, "threadQueue":Lcom/koushikdutta/async/ThreadQueue;
    iget-object v4, v10, Lcom/koushikdutta/async/ThreadQueue;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    .line 44
    .local v4, "last":Lcom/koushikdutta/async/AsyncSemaphore;
    move-object/from16 v0, p0

    iput-object v0, v10, Lcom/koushikdutta/async/ThreadQueue;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    .line 45
    iget-object v6, v10, Lcom/koushikdutta/async/ThreadQueue;->queueSemaphore:Ljava/util/concurrent/Semaphore;

    .line 48
    .local v6, "queueSemaphore":Ljava/util/concurrent/Semaphore;
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/koushikdutta/async/AsyncSemaphore;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v11}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_4b

    move-result v11

    if-eqz v11, :cond_28

    .line 49
    const/4 v11, 0x1

    .line 72
    iput-object v4, v10, Lcom/koushikdutta/async/ThreadQueue;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    :goto_27
    return v11

    .line 51
    :cond_28
    :try_start_28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 55
    .local v8, "start":J
    :cond_2c
    :goto_2c
    invoke-virtual {v10}, Lcom/koushikdutta/async/ThreadQueue;->remove()Ljava/lang/Runnable;

    move-result-object v7

    .line 56
    .local v7, "run":Ljava/lang/Runnable;
    if-nez v7, :cond_47

    .line 62
    const/4 v11, 0x1

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v14

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 63
    .local v5, "permits":I
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v5, v12, v13, v11}, Ljava/util/concurrent/Semaphore;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z
    :try_end_40
    .catchall {:try_start_28 .. :try_end_40} :catchall_4b

    move-result v11

    if-nez v11, :cond_4f

    .line 64
    const/4 v11, 0x0

    .line 72
    iput-object v4, v10, Lcom/koushikdutta/async/ThreadQueue;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    goto :goto_27

    .line 59
    .end local v5    # "permits":I
    :cond_47
    :try_start_47
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_2c

    .line 72
    .end local v7    # "run":Ljava/lang/Runnable;
    .end local v8    # "start":J
    :catchall_4b
    move-exception v11

    iput-object v4, v10, Lcom/koushikdutta/async/ThreadQueue;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    throw v11

    .line 65
    .restart local v5    # "permits":I
    .restart local v7    # "run":Ljava/lang/Runnable;
    .restart local v8    # "start":J
    :cond_4f
    :try_start_4f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/koushikdutta/async/AsyncSemaphore;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v11}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_4b

    move-result v11

    if-eqz v11, :cond_5d

    .line 66
    const/4 v11, 0x1

    .line 72
    iput-object v4, v10, Lcom/koushikdutta/async/ThreadQueue;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    goto :goto_27

    .line 68
    :cond_5d
    :try_start_5d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_4b

    move-result-wide v14

    sub-long/2addr v14, v8

    cmp-long v11, v14, v12

    if-ltz v11, :cond_2c

    .line 69
    const/4 v11, 0x0

    .line 72
    iput-object v4, v10, Lcom/koushikdutta/async/ThreadQueue;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    goto :goto_27
.end method
