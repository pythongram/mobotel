.class public final Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSinkFactory;
.super Ljava/lang/Object;
.source "CacheDataSinkFactory.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/DataSink$Factory;


# instance fields
.field private final cache:Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;

.field private final maxCacheFileSize:J


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;J)V
    .registers 4
    .param p1, "cache"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;
    .param p2, "maxCacheFileSize"    # J

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSinkFactory;->cache:Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;

    .line 33
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSinkFactory;->maxCacheFileSize:J

    .line 34
    return-void
.end method


# virtual methods
.method public createDataSink()Lorg/telegram/messenger/exoplayer2/upstream/DataSink;
    .registers 5

    .prologue
    .line 38
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSink;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSinkFactory;->cache:Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSinkFactory;->maxCacheFileSize:J

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSink;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;J)V

    return-object v0
.end method
