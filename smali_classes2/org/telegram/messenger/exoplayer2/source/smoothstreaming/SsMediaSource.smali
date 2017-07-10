.class public final Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;
.super Ljava/lang/Object;
.source "SsMediaSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/MediaSource;
.implements Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/exoplayer2/source/MediaSource;",
        "Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback",
        "<",
        "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable",
        "<",
        "Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final DEFAULT_LIVE_PRESENTATION_DELAY_MS:J = 0x7530L

.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT:I = 0x3

.field private static final MINIMUM_MANIFEST_REFRESH_PERIOD_MS:I = 0x1388

.field private static final MIN_LIVE_DEFAULT_START_POSITION_US:J = 0x4c4b40L


# instance fields
.field private final chunkSourceFactory:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

.field private final eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

.field private final livePresentationDelayMs:J

.field private manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

.field private manifestDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private final manifestDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

.field private manifestLoadStartTimestamp:J

.field private manifestLoader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

.field private manifestLoaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

.field private final manifestParser:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;

.field private manifestRefreshHandler:Landroid/os/Handler;

.field private final manifestUri:Landroid/net/Uri;

.field private final mediaPeriods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private final minLoadableRetryCount:I

.field private sourceListener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;IJLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V
    .registers 20
    .param p1, "manifestUri"    # Landroid/net/Uri;
    .param p2, "manifestDataSourceFactory"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;
    .param p3, "chunkSourceFactory"    # Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;
    .param p4, "minLoadableRetryCount"    # I
    .param p5, "livePresentationDelayMs"    # J
    .param p7, "eventHandler"    # Landroid/os/Handler;
    .param p8, "eventListener"    # Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;

    .prologue
    .line 153
    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;

    invoke-direct {v3}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;IJLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V
    .registers 16
    .param p1, "manifestUri"    # Landroid/net/Uri;
    .param p2, "manifestDataSourceFactory"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;
    .param p3, "chunkSourceFactory"    # Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;
    .param p4, "eventHandler"    # Landroid/os/Handler;
    .param p5, "eventListener"    # Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;

    .prologue
    .line 130
    const/4 v5, 0x3

    const-wide/16 v6, 0x7530

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v1 .. v9}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;IJLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;IJLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V
    .registers 22
    .param p1, "manifestUri"    # Landroid/net/Uri;
    .param p2, "manifestDataSourceFactory"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;
    .param p3, "manifestParser"    # Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;
    .param p4, "chunkSourceFactory"    # Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;
    .param p5, "minLoadableRetryCount"    # I
    .param p6, "livePresentationDelayMs"    # J
    .param p8, "eventHandler"    # Landroid/os/Handler;
    .param p9, "eventListener"    # Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;

    .prologue
    .line 176
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;-><init>(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;IJLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    .line 178
    return-void
.end method

.method private constructor <init>(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;IJLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V
    .registers 14
    .param p1, "manifest"    # Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;
    .param p2, "manifestUri"    # Landroid/net/Uri;
    .param p3, "manifestDataSourceFactory"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;
    .param p4, "manifestParser"    # Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;
    .param p5, "chunkSourceFactory"    # Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;
    .param p6, "minLoadableRetryCount"    # I
    .param p7, "livePresentationDelayMs"    # J
    .param p9, "eventHandler"    # Landroid/os/Handler;
    .param p10, "eventListener"    # Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    if-eqz p1, :cond_9

    iget-boolean v0, p1, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    if-nez v0, :cond_2d

    :cond_9
    const/4 v0, 0x1

    :goto_a
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 186
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .line 187
    if-nez p2, :cond_2f

    const/4 p2, 0x0

    .line 189
    .end local p2    # "manifestUri":Landroid/net/Uri;
    :cond_12
    :goto_12
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestUri:Landroid/net/Uri;

    .line 190
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    .line 191
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestParser:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;

    .line 192
    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->chunkSourceFactory:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

    .line 193
    iput p6, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->minLoadableRetryCount:I

    .line 194
    iput-wide p7, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->livePresentationDelayMs:J

    .line 195
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    invoke-direct {v0, p9, p10}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    .line 197
    return-void

    .line 185
    .restart local p2    # "manifestUri":Landroid/net/Uri;
    :cond_2d
    const/4 v0, 0x0

    goto :goto_a

    .line 188
    :cond_2f
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "manifest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "Manifest"

    .line 189
    invoke-static {p2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_12
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;ILandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V
    .registers 18
    .param p1, "manifest"    # Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;
    .param p2, "chunkSourceFactory"    # Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;
    .param p3, "minLoadableRetryCount"    # I
    .param p4, "eventHandler"    # Landroid/os/Handler;
    .param p5, "eventListener"    # Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;

    .prologue
    .line 112
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v8, 0x7530

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    move v7, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v1 .. v11}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;-><init>(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;IJLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V
    .registers 11
    .param p1, "manifest"    # Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;
    .param p2, "chunkSourceFactory"    # Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;
    .param p3, "eventHandler"    # Landroid/os/Handler;
    .param p4, "eventListener"    # Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;

    .prologue
    .line 96
    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;-><init>(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;ILandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->startLoadingManifest()V

    return-void
.end method

.method private processManifest()V
    .registers 19

    .prologue
    .line 284
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v16

    if-ge v0, v4, :cond_24

    .line 285
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->updateManifest(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;)V

    .line 284
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 288
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-boolean v4, v4, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    if-eqz v4, :cond_df

    .line 289
    const-wide v8, 0x7fffffffffffffffL

    .line 290
    .local v8, "startTimeUs":J
    const-wide/high16 v14, -0x8000000000000000L

    .line 291
    .local v14, "endTimeUs":J
    const/16 v16, 0x0

    :goto_35
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    array-length v4, v4

    move/from16 v0, v16

    if-ge v0, v4, :cond_6d

    .line 292
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    aget-object v2, v4, v16

    .line 293
    .local v2, "element":Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;
    iget v4, v2, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    if-lez v4, :cond_6a

    .line 294
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v4

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 295
    iget v4, v2, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v4

    iget v12, v2, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    add-int/lit8 v12, v12, -0x1

    .line 296
    invoke-virtual {v2, v12}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getChunkDurationUs(I)J

    move-result-wide v12

    add-long/2addr v4, v12

    .line 295
    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 291
    :cond_6a
    add-int/lit8 v16, v16, 0x1

    goto :goto_35

    .line 299
    .end local v2    # "element":Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;
    :cond_6d
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v8, v4

    if-nez v4, :cond_8d

    .line 300
    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/SinglePeriodTimeline;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, 0x0

    invoke-direct {v3, v4, v5, v12}, Lorg/telegram/messenger/exoplayer2/source/SinglePeriodTimeline;-><init>(JZ)V

    .line 321
    .end local v8    # "startTimeUs":J
    .end local v14    # "endTimeUs":J
    .local v3, "timeline":Lorg/telegram/messenger/exoplayer2/Timeline;
    :goto_81
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->sourceListener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    invoke-interface {v4, v3, v5}, Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V

    .line 322
    return-void

    .line 302
    .end local v3    # "timeline":Lorg/telegram/messenger/exoplayer2/Timeline;
    .restart local v8    # "startTimeUs":J
    .restart local v14    # "endTimeUs":J
    :cond_8d
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-wide v4, v4, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->dvrWindowLengthUs:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v12

    if-eqz v4, :cond_b4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-wide v4, v4, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->dvrWindowLengthUs:J

    const-wide/16 v12, 0x0

    cmp-long v4, v4, v12

    if-lez v4, :cond_b4

    .line 304
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-wide v4, v4, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->dvrWindowLengthUs:J

    sub-long v4, v14, v4

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 306
    :cond_b4
    sub-long v6, v14, v8

    .line 307
    .local v6, "durationUs":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->livePresentationDelayMs:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/exoplayer2/C;->msToUs(J)J

    move-result-wide v4

    sub-long v10, v6, v4

    .line 308
    .local v10, "defaultStartPositionUs":J
    const-wide/32 v4, 0x4c4b40

    cmp-long v4, v10, v4

    if-gez v4, :cond_d2

    .line 312
    const-wide/32 v4, 0x4c4b40

    const-wide/16 v12, 0x2

    div-long v12, v6, v12

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 314
    :cond_d2
    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/SinglePeriodTimeline;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-direct/range {v3 .. v13}, Lorg/telegram/messenger/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJZZ)V

    .restart local v3    # "timeline":Lorg/telegram/messenger/exoplayer2/Timeline;
    goto :goto_81

    .line 318
    .end local v3    # "timeline":Lorg/telegram/messenger/exoplayer2/Timeline;
    .end local v6    # "durationUs":J
    .end local v8    # "startTimeUs":J
    .end local v10    # "defaultStartPositionUs":J
    .end local v14    # "endTimeUs":J
    :cond_df
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-wide v4, v4, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->durationUs:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v12

    if-eqz v4, :cond_fe

    const/16 v17, 0x1

    .line 319
    .local v17, "isSeekable":Z
    :goto_f0
    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/SinglePeriodTimeline;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-wide v4, v4, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->durationUs:J

    move/from16 v0, v17

    invoke-direct {v3, v4, v5, v0}, Lorg/telegram/messenger/exoplayer2/source/SinglePeriodTimeline;-><init>(JZ)V

    .restart local v3    # "timeline":Lorg/telegram/messenger/exoplayer2/Timeline;
    goto :goto_81

    .line 318
    .end local v3    # "timeline":Lorg/telegram/messenger/exoplayer2/Timeline;
    .end local v17    # "isSeekable":Z
    :cond_fe
    const/16 v17, 0x0

    goto :goto_f0
.end method

.method private scheduleManifestRefresh()V
    .registers 9

    .prologue
    .line 325
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-boolean v4, v4, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    if-nez v4, :cond_7

    .line 336
    :goto_6
    return-void

    .line 328
    :cond_7
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoadStartTimestamp:J

    const-wide/16 v6, 0x1388

    add-long v2, v4, v6

    .line 329
    .local v2, "nextLoadTimestamp":J
    const-wide/16 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v2, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 330
    .local v0, "delayUntilNextLoad":J
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestRefreshHandler:Landroid/os/Handler;

    new-instance v5, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource$1;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource$1;-><init>(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;)V

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6
.end method

.method private startLoadingManifest()V
    .registers 8

    .prologue
    .line 339
    new-instance v2, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestUri:Landroid/net/Uri;

    const/4 v5, 0x4

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestParser:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable$Parser;)V

    .line 341
    .local v2, "loadable":Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;, "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable<Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;>;"
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->minLoadableRetryCount:I

    invoke-virtual {v3, v2, p0, v4}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->startLoading(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v0

    .line 342
    .local v0, "elapsedRealtimeMs":J
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v4, v2, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget v5, v2, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-virtual {v3, v4, v5, v0, v1}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadStarted(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;IJ)V

    .line 343
    return-void
.end method


# virtual methods
.method public createPeriod(ILorg/telegram/messenger/exoplayer2/upstream/Allocator;J)Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    .registers 12
    .param p1, "index"    # I
    .param p2, "allocator"    # Lorg/telegram/messenger/exoplayer2/upstream/Allocator;
    .param p3, "positionUs"    # J

    .prologue
    .line 223
    if-nez p1, :cond_1c

    const/4 v1, 0x1

    :goto_3
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 224
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->chunkSourceFactory:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->minLoadableRetryCount:I

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;-><init>(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;ILorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;Lorg/telegram/messenger/exoplayer2/upstream/Allocator;)V

    .line 226
    .local v0, "period":Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    return-object v0

    .line 223
    .end local v0    # "period":Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;
    :cond_1c
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;->maybeThrowError()V

    .line 219
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .registers 15

    .prologue
    .line 45
    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->onLoadCanceled(Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;JJZ)V

    return-void
.end method

.method public onLoadCanceled(Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;JJZ)V
    .registers 17
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "released"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
            ">;JJZ)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, "loadable":Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;, "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable<Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;>;"
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget v3, p1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 269
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v8

    move-wide v4, p2

    move-wide v6, p4

    .line 268
    invoke-virtual/range {v1 .. v9}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;IJJJ)V

    .line 270
    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJ)V
    .registers 12

    .prologue
    .line 45
    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->onLoadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;JJ)V

    return-void
.end method

.method public onLoadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;JJ)V
    .registers 16
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, "loadable":Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;, "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable<Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;>;"
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget v3, p1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 258
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v8

    move-wide v4, p2

    move-wide v6, p4

    .line 257
    invoke-virtual/range {v1 .. v9}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;IJJJ)V

    .line 259
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .line 260
    sub-long v0, p2, p4

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoadStartTimestamp:J

    .line 261
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->processManifest()V

    .line 262
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->scheduleManifestRefresh()V

    .line 263
    return-void
.end method

.method public bridge synthetic onLoadError(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I
    .registers 15

    .prologue
    .line 45
    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->onLoadError(Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)I

    move-result v0

    return v0
.end method

.method public onLoadError(Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)I
    .registers 21
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "error"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")I"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "loadable":Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;, "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable<Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;>;"
    move-object/from16 v0, p6

    instance-of v13, v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    .line 276
    .local v13, "isFatal":Z
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v4, p1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget v5, p1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->type:I

    .line 277
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v10

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v12, p6

    .line 276
    invoke-virtual/range {v3 .. v13}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadError(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;IJJJLjava/io/IOException;Z)V

    .line 278
    if-eqz v13, :cond_1b

    const/4 v2, 0x3

    :goto_1a
    return v2

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method public prepareSource(Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;)V
    .registers 4
    .param p1, "listener"    # Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    .prologue
    .line 203
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->sourceListener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    .line 204
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    if-eqz v0, :cond_11

    .line 205
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower$Dummy;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower$Dummy;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

    .line 206
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->processManifest()V

    .line 214
    :goto_10
    return-void

    .line 208
    :cond_11
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 209
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    const-string v1, "Loader:Manifest"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    .line 210
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

    .line 211
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestRefreshHandler:Landroid/os/Handler;

    .line 212
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->startLoadingManifest()V

    goto :goto_10
.end method

.method public releasePeriod(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    .registers 3
    .param p1, "period"    # Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .prologue
    .line 232
    move-object v0, p1

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->release()V

    .line 233
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 234
    return-void
.end method

.method public releaseSource()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 238
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->sourceListener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    .line 239
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .line 240
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 241
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoadStartTimestamp:J

    .line 242
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    if-eqz v0, :cond_16

    .line 243
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->release()V

    .line 244
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    .line 246
    :cond_16
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestRefreshHandler:Landroid/os/Handler;

    if-eqz v0, :cond_21

    .line 247
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestRefreshHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 248
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestRefreshHandler:Landroid/os/Handler;

    .line 250
    :cond_21
    return-void
.end method
