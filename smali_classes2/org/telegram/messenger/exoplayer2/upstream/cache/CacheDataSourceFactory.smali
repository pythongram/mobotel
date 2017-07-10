.class public final Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSourceFactory;
.super Ljava/lang/Object;
.source "CacheDataSourceFactory.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;


# instance fields
.field private final cache:Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;

.field private final cacheReadDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

.field private final cacheWriteDataSinkFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSink$Factory;

.field private final eventListener:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource$EventListener;

.field private final flags:I

.field private final upstreamFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;I)V
    .registers 10
    .param p1, "cache"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;
    .param p2, "upstreamFactory"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;
    .param p3, "flags"    # I

    .prologue
    .line 40
    const-wide/32 v4, 0x200000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSourceFactory;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;IJ)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;IJ)V
    .registers 14
    .param p1, "cache"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;
    .param p2, "upstreamFactory"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;
    .param p3, "flags"    # I
    .param p4, "maxCacheFileSize"    # J

    .prologue
    .line 48
    new-instance v3, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSourceFactory;

    invoke-direct {v3}, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSourceFactory;-><init>()V

    new-instance v4, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSinkFactory;

    invoke-direct {v4, p1, p4, p5}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSinkFactory;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;J)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSourceFactory;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/upstream/DataSink$Factory;ILorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/upstream/DataSink$Factory;ILorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V
    .registers 7
    .param p1, "cache"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;
    .param p2, "upstreamFactory"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;
    .param p3, "cacheReadDataSourceFactory"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;
    .param p4, "cacheWriteDataSinkFactory"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSink$Factory;
    .param p5, "flags"    # I
    .param p6, "eventListener"    # Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource$EventListener;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSourceFactory;->cache:Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;

    .line 60
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSourceFactory;->upstreamFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    .line 61
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSourceFactory;->cacheReadDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    .line 62
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSourceFactory;->cacheWriteDataSinkFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSink$Factory;

    .line 63
    iput p5, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSourceFactory;->flags:I

    .line 64
    iput-object p6, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSourceFactory;->eventListener:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource$EventListener;

    .line 65
    return-void
.end method


# virtual methods
.method public createDataSource()Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .registers 8

    .prologue
    .line 69
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSourceFactory;->cache:Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSourceFactory;->upstreamFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSourceFactory;->cacheReadDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    .line 70
    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSourceFactory;->cacheWriteDataSinkFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSink$Factory;

    .line 71
    invoke-interface {v4}, Lorg/telegram/messenger/exoplayer2/upstream/DataSink$Factory;->createDataSink()Lorg/telegram/messenger/exoplayer2/upstream/DataSink;

    move-result-object v4

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSourceFactory;->flags:I

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSourceFactory;->eventListener:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource$EventListener;

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSink;ILorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V

    .line 69
    return-object v0
.end method
