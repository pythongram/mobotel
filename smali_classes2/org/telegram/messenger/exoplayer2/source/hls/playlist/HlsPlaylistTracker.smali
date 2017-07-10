.class public final Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;
.super Ljava/lang/Object;
.source "HlsPlaylistTracker.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;,
        Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistRefreshCallback;,
        Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback",
        "<",
        "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable",
        "<",
        "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final PLAYLIST_REFRESH_PERIOD_MS:J = 0x1388L

.field private static final TIMESTAMP_ADJUSTMENT_THRESHOLD_US:J = 0x7a120L


# instance fields
.field private final dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

.field private final eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

.field private final initialPlaylistLoader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

.field private final initialPlaylistUri:Landroid/net/Uri;

.field private isLive:Z

.field private masterPlaylist:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

.field private final minRetryCount:I

.field private final playlistBundles:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;",
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;",
            ">;"
        }
    .end annotation
.end field

.field private final playlistParser:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;

.field private final playlistRefreshHandler:Landroid/os/Handler;

.field private primaryHlsUrl:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

.field private final primaryPlaylistListener:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;ILorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;)V
    .registers 8
    .param p1, "initialPlaylistUri"    # Landroid/net/Uri;
    .param p2, "dataSourceFactory"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;
    .param p3, "eventDispatcher"    # Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;
    .param p4, "minRetryCount"    # I
    .param p5, "primaryPlaylistListener"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->initialPlaylistUri:Landroid/net/Uri;

    .line 112
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    .line 113
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    .line 114
    iput p4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->minRetryCount:I

    .line 115
    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->primaryPlaylistListener:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;

    .line 116
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    const-string v1, "HlsPlaylistTracker:MasterPlaylist"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->initialPlaylistLoader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    .line 117
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->playlistParser:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;

    .line 118
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->playlistBundles:Ljava/util/IdentityHashMap;

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->playlistRefreshHandler:Landroid/os/Handler;

    .line 120
    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Z)Z
    .registers 5
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;
    .param p1, "x1"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .param p2, "x2"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .param p3, "x3"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->onPlaylistUpdated(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->playlistRefreshHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->masterPlaylist:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->playlistParser:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .prologue
    .line 38
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->minRetryCount:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->primaryHlsUrl:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .registers 4
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;
    .param p1, "x1"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .param p2, "x2"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->adjustPlaylistTimestamps(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v0

    return-object v0
.end method

.method private adjustPlaylistTimestamps(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .registers 19
    .param p1, "oldPlaylist"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .param p2, "newPlaylist"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .prologue
    .line 295
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->playlistBundles:Ljava/util/IdentityHashMap;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->primaryHlsUrl:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 296
    invoke-virtual {v10, v11}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;

    # getter for: Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->latestPlaylistSnapshot:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    invoke-static {v10}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->access$000(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v9

    .line 297
    .local v9, "primaryPlaylistSnapshot":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    if-nez p1, :cond_24

    .line 298
    if-nez v9, :cond_19

    move-object/from16 p1, p2

    .line 333
    .end local p1    # "oldPlaylist":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    :cond_18
    :goto_18
    return-object p1

    .line 302
    .restart local p1    # "oldPlaylist":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    :cond_19
    invoke-virtual {v9}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->getStartTimeUs()J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->copyWithStartTimeUs(J)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object p1

    goto :goto_18

    .line 305
    :cond_24
    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 306
    .local v8, "oldSegments":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    .line 307
    .local v7, "oldPlaylistSize":I
    move-object/from16 v0, p2

    iget-object v10, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    .line 308
    .local v5, "newPlaylistSize":I
    move-object/from16 v0, p2

    iget v10, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    move-object/from16 v0, p1

    iget v11, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    sub-int v4, v10, v11

    .line 309
    .local v4, "mediaSequenceOffset":I
    if-ne v5, v7, :cond_4c

    if-nez v4, :cond_4c

    move-object/from16 v0, p1

    iget-boolean v10, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    move-object/from16 v0, p2

    iget-boolean v11, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-eq v10, v11, :cond_18

    .line 314
    :cond_4c
    if-ltz v4, :cond_18

    .line 318
    if-gt v4, v7, :cond_90

    .line 320
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 321
    .local v6, "newSegments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    move v2, v4

    .local v2, "i":I
    :goto_56
    if-ge v2, v7, :cond_62

    .line 322
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .line 324
    :cond_62
    add-int/lit8 v10, v7, -0x1

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 325
    .local v3, "lastSegment":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_6e
    if-ge v2, v5, :cond_89

    .line 326
    move-object/from16 v0, p2

    iget-object v10, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget-wide v12, v3, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->startTimeUs:J

    iget-wide v14, v3, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->durationUs:J

    add-long/2addr v12, v14

    invoke-virtual {v10, v12, v13}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->copyWithStartTimeUs(J)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-result-object v3

    .line 328
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    add-int/lit8 v2, v2, 0x1

    goto :goto_6e

    .line 330
    :cond_89
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->copyWithSegments(Ljava/util/List;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object p1

    goto :goto_18

    .line 333
    .end local v2    # "i":I
    .end local v3    # "lastSegment":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    .end local v6    # "newSegments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    :cond_90
    invoke-virtual {v9}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->getStartTimeUs()J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->copyWithStartTimeUs(J)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object p1

    goto/16 :goto_18
.end method

.method private createBundles(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 262
    .local v2, "listSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v2, :cond_1e

    .line 263
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 264
    .local v3, "url":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;

    invoke-direct {v0, p0, v3}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;-><init>(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V

    .line 265
    .local v0, "bundle":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->playlistBundles:Ljava/util/IdentityHashMap;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 267
    .end local v0    # "bundle":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;
    .end local v3    # "url":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    :cond_1e
    return-void
.end method

.method private onPlaylistUpdated(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Z)Z
    .registers 7
    .param p1, "url"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .param p2, "newSnapshot"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .param p3, "isFirstSnapshot"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 279
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->primaryHlsUrl:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    if-ne p1, v0, :cond_1d

    .line 280
    if-eqz p3, :cond_f

    .line 281
    iget-boolean v0, p2, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-nez v0, :cond_19

    move v0, v1

    :goto_d
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->isLive:Z

    .line 283
    :cond_f
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->primaryPlaylistListener:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;

    invoke-interface {v0, p2}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;->onPrimaryPlaylistRefreshed(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V

    .line 285
    iget-boolean v0, p2, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-nez v0, :cond_1b

    .line 287
    :goto_18
    return v1

    :cond_19
    move v0, v2

    .line 281
    goto :goto_d

    :cond_1b
    move v1, v2

    .line 285
    goto :goto_18

    :cond_1d
    move v1, v2

    .line 287
    goto :goto_18
.end method


# virtual methods
.method public getMasterPlaylist()Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->masterPlaylist:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    return-object v0
.end method

.method public getPlaylistSnapshot(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .registers 3
    .param p1, "url"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->playlistBundles:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;

    # getter for: Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->latestPlaylistSnapshot:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->access$000(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v0

    return-object v0
.end method

.method public isLive()Z
    .registers 2

    .prologue
    .line 197
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->isLive:Z

    return v0
.end method

.method public maybeThrowPrimaryPlaylistRefreshError()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->initialPlaylistLoader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->maybeThrowError()V

    .line 173
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->primaryHlsUrl:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    if-eqz v0, :cond_1a

    .line 174
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->playlistBundles:Ljava/util/IdentityHashMap;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->primaryHlsUrl:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;

    # getter for: Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->access$100(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;)Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->maybeThrowError()V

    .line 176
    :cond_1a
    return-void
.end method

.method public onChunkLoaded(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;IJ)V
    .registers 6
    .param p1, "hlsUrl"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .param p2, "chunkMediaSequence"    # I
    .param p3, "adjustedStartTimeUs"    # J

    .prologue
    .line 208
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->playlistBundles:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;

    invoke-virtual {v0, p2, p3, p4}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->adjustTimestampsOfPlaylist(IJ)V

    .line 209
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .registers 15

    .prologue
    .line 38
    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->onLoadCanceled(Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;JJZ)V

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
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;JJZ)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "loadable":Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;, "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;>;"
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    const/4 v3, 0x4

    .line 246
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v8

    move-wide v4, p2

    move-wide v6, p4

    .line 245
    invoke-virtual/range {v1 .. v9}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCanceled(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;IJJJ)V

    .line 247
    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJ)V
    .registers 12

    .prologue
    .line 38
    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->onLoadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;JJ)V

    return-void
.end method

.method public onLoadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;JJ)V
    .registers 20
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "loadable":Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;, "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;>;"
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;

    .line 218
    .local v12, "result":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;
    instance-of v0, v12, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 219
    .local v0, "isMediaPlaylist":Z
    if-eqz v0, :cond_56

    .line 220
    iget-object v1, v12, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;->baseUri:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->createSingleVariantMasterPlaylist(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    move-result-object v10

    .line 224
    .local v10, "masterPlaylist":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
    :goto_10
    iput-object v10, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->masterPlaylist:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    .line 225
    iget-object v1, v10, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->primaryHlsUrl:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 226
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v13, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    iget-object v1, v10, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 228
    iget-object v1, v10, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->audios:Ljava/util/List;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 229
    iget-object v1, v10, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->subtitles:Ljava/util/List;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 230
    invoke-direct {p0, v13}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->createBundles(Ljava/util/List;)V

    .line 231
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->playlistBundles:Ljava/util/IdentityHashMap;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->primaryHlsUrl:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    invoke-virtual {v1, v2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;

    .line 232
    .local v11, "primaryBundle":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;
    if-eqz v0, :cond_5a

    .line 234
    check-cast v12, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .end local v12    # "result":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;
    # invokes: Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->processLoadedPlaylist(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V
    invoke-static {v11, v12}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->access$200(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V

    .line 238
    :goto_45
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    const/4 v3, 0x4

    .line 239
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v8

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    .line 238
    invoke-virtual/range {v1 .. v9}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;IJJJ)V

    .line 240
    return-void

    .end local v10    # "masterPlaylist":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
    .end local v11    # "primaryBundle":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;
    .end local v13    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    .restart local v12    # "result":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;
    :cond_56
    move-object v10, v12

    .line 222
    check-cast v10, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    .restart local v10    # "masterPlaylist":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
    goto :goto_10

    .line 236
    .restart local v11    # "primaryBundle":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;
    .restart local v13    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    :cond_5a
    invoke-virtual {v11}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->loadPlaylist()V

    goto :goto_45
.end method

.method public bridge synthetic onLoadError(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I
    .registers 15

    .prologue
    .line 38
    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->onLoadError(Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)I

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
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")I"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "loadable":Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;, "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;>;"
    move-object/from16 v0, p6

    instance-of v13, v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    .line 253
    .local v13, "isFatal":Z
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v4, p1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    const/4 v5, 0x4

    .line 254
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v10

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v12, p6

    .line 253
    invoke-virtual/range {v3 .. v13}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadError(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;IJJJLjava/io/IOException;Z)V

    .line 255
    if-eqz v13, :cond_1a

    const/4 v2, 0x3

    :goto_19
    return v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_19
.end method

.method public refreshPlaylist(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistRefreshCallback;)V
    .registers 5
    .param p1, "key"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .param p2, "callback"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistRefreshCallback;

    .prologue
    .line 186
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->playlistBundles:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;

    .line 187
    .local v0, "bundle":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;
    invoke-virtual {v0, p2}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->setCallback(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistRefreshCallback;)V

    .line 188
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->loadPlaylist()V

    .line 189
    return-void
.end method

.method public release()V
    .registers 4

    .prologue
    .line 157
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->initialPlaylistLoader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->release()V

    .line 158
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->playlistBundles:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;

    .line 159
    .local v0, "bundle":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->release()V

    goto :goto_f

    .line 161
    .end local v0    # "bundle":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;
    :cond_1f
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->playlistRefreshHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 162
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->playlistBundles:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->clear()V

    .line 163
    return-void
.end method

.method public start()V
    .registers 6

    .prologue
    .line 126
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    .line 127
    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->initialPlaylistUri:Landroid/net/Uri;

    const/4 v3, 0x4

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->playlistParser:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable$Parser;)V

    .line 129
    .local v0, "masterPlaylistLoadable":Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;, "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;>;"
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->initialPlaylistLoader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->minRetryCount:I

    invoke-virtual {v1, v0, p0, v2}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->startLoading(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;I)J

    .line 130
    return-void
.end method
