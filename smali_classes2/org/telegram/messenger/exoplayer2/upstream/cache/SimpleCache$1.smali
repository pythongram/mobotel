.class Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache$1;
.super Ljava/lang/Thread;
.source "SimpleCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;

.field final synthetic val$conditionVariable:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;Ljava/lang/String;Landroid/os/ConditionVariable;)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache$1;->this$0:Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache$1;->val$conditionVariable:Landroid/os/ConditionVariable;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 74
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache$1;->this$0:Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;

    monitor-enter v2

    .line 75
    :try_start_3
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache$1;->val$conditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1f

    .line 77
    :try_start_8
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache$1;->this$0:Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;

    # invokes: Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->initialize()V
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->access$000(Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;)V
    :try_end_d
    .catch Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException; {:try_start_8 .. :try_end_d} :catch_18
    .catchall {:try_start_8 .. :try_end_d} :catchall_1f

    .line 81
    :goto_d
    :try_start_d
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache$1;->this$0:Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;

    # getter for: Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->evictor:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->access$200(Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;)Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;->onCacheInitialized()V

    .line 82
    monitor-exit v2

    .line 83
    return-void

    .line 78
    :catch_18
    move-exception v0

    .line 79
    .local v0, "e":Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache$1;->this$0:Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;

    # setter for: Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->initializationException:Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;
    invoke-static {v1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->access$102(Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;)Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;

    goto :goto_d

    .line 82
    .end local v0    # "e":Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;
    :catchall_1f
    move-exception v1

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_1f

    throw v1
.end method
