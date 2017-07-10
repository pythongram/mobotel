.class final Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;
.super Ljava/lang/Object;
.source "SingleSampleMediaPeriod.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
.implements Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;,
        Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;",
        "Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback",
        "<",
        "Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;",
        ">;"
    }
.end annotation


# static fields
.field private static final INITIAL_SAMPLE_SIZE:I = 0x400


# instance fields
.field private final dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource$EventListener;

.field private final eventSourceId:I

.field final format:Lorg/telegram/messenger/exoplayer2/Format;

.field final loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

.field loadingFinished:Z

.field private final minLoadableRetryCount:I

.field sampleData:[B

.field sampleSize:I

.field private final sampleStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final tracks:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/Format;ILandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource$EventListener;I)V
    .registers 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataSourceFactory"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;
    .param p3, "format"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p4, "minLoadableRetryCount"    # I
    .param p5, "eventHandler"    # Landroid/os/Handler;
    .param p6, "eventListener"    # Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource$EventListener;
    .param p7, "eventSourceId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->uri:Landroid/net/Uri;

    .line 65
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    .line 66
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->format:Lorg/telegram/messenger/exoplayer2/Format;

    .line 67
    iput p4, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->minLoadableRetryCount:I

    .line 68
    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->eventHandler:Landroid/os/Handler;

    .line 69
    iput-object p6, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->eventListener:Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource$EventListener;

    .line 70
    iput p7, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->eventSourceId:I

    .line 71
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    new-array v1, v3, [Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    new-array v3, v3, [Lorg/telegram/messenger/exoplayer2/Format;

    aput-object p3, v3, v4

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;-><init>([Lorg/telegram/messenger/exoplayer2/Format;)V

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;-><init>([Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->tracks:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    const-string v1, "Loader:SingleSampleMediaPeriod"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    .line 74
    return-void
.end method

.method static synthetic access$300(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;

    .prologue
    .line 38
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->eventSourceId:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;)Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource$EventListener;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->eventListener:Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource$EventListener;

    return-object v0
.end method

.method private notifyLoadError(Ljava/io/IOException;)V
    .registers 4
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 172
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->eventListener:Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource$EventListener;

    if-eqz v0, :cond_12

    .line 173
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$1;-><init>(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 180
    :cond_12
    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .registers 7
    .param p1, "positionUs"    # J

    .prologue
    .line 115
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->loadingFinished:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 116
    :cond_c
    const/4 v0, 0x0

    .line 120
    :goto_d
    return v0

    .line 118
    :cond_e
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;)V

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->minLoadableRetryCount:I

    invoke-virtual {v0, v1, p0, v2}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->startLoading(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;I)J

    .line 120
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public getBufferedPositionUs()J
    .registers 3

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->loadingFinished:Z

    if-eqz v0, :cond_7

    const-wide/high16 v0, -0x8000000000000000L

    :goto_6
    return-wide v0

    :cond_7
    const-wide/16 v0, 0x0

    goto :goto_6
.end method

.method public getNextLoadPositionUs()J
    .registers 3

    .prologue
    .line 130
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->loadingFinished:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_c
    const-wide/high16 v0, -0x8000000000000000L

    :goto_e
    return-wide v0

    :cond_f
    const-wide/16 v0, 0x0

    goto :goto_e
.end method

.method public getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->tracks:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public maybeThrowPrepareError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->maybeThrowError()V

    .line 88
    return-void
.end method

.method public onLoadCanceled(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;JJZ)V
    .registers 7
    .param p1, "loadable"    # Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "released"    # Z

    .prologue
    .line 160
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .registers 15

    .prologue
    .line 38
    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->onLoadCanceled(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;JJZ)V

    return-void
.end method

.method public onLoadCompleted(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;JJ)V
    .registers 7
    .param p1, "loadable"    # Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J

    .prologue
    .line 151
    # getter for: Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleSize:I
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->access$100(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->sampleSize:I

    .line 152
    # getter for: Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->access$200(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->sampleData:[B

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->loadingFinished:Z

    .line 154
    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJ)V
    .registers 12

    .prologue
    .line 38
    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->onLoadCompleted(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;JJ)V

    return-void
.end method

.method public onLoadError(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;JJLjava/io/IOException;)I
    .registers 8
    .param p1, "loadable"    # Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "error"    # Ljava/io/IOException;

    .prologue
    .line 165
    invoke-direct {p0, p6}, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->notifyLoadError(Ljava/io/IOException;)V

    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onLoadError(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I
    .registers 15

    .prologue
    .line 38
    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->onLoadError(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;JJLjava/io/IOException;)I

    move-result v0

    return v0
.end method

.method public prepare(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;)V
    .registers 2
    .param p1, "callback"    # Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    .prologue
    .line 82
    invoke-interface {p1, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    .line 83
    return-void
.end method

.method public readDiscontinuity()J
    .registers 3

    .prologue
    .line 125
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public release()V
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->release()V

    .line 78
    return-void
.end method

.method public seekToUs(J)J
    .registers 6
    .param p1, "positionUs"    # J

    .prologue
    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 141
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->seekToUs(J)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 143
    :cond_17
    return-wide p1
.end method

.method public selectTracks([Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;[Z[Lorg/telegram/messenger/exoplayer2/source/SampleStream;[ZJ)J
    .registers 12
    .param p1, "selections"    # [Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Lorg/telegram/messenger/exoplayer2/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J

    .prologue
    const/4 v4, 0x0

    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_34

    .line 99
    aget-object v2, p3, v0

    if-eqz v2, :cond_1a

    aget-object v2, p1, v0

    if-eqz v2, :cond_11

    aget-boolean v2, p2, v0

    if-nez v2, :cond_1a

    .line 100
    :cond_11
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    aget-object v3, p3, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 101
    aput-object v4, p3, v0

    .line 103
    :cond_1a
    aget-object v2, p3, v0

    if-nez v2, :cond_31

    aget-object v2, p1, v0

    if-eqz v2, :cond_31

    .line 104
    new-instance v1, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;

    invoke-direct {v1, p0, v4}, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;-><init>(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$1;)V

    .line 105
    .local v1, "stream":Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    aput-object v1, p3, v0

    .line 107
    const/4 v2, 0x1

    aput-boolean v2, p4, v0

    .line 98
    .end local v1    # "stream":Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 110
    :cond_34
    return-wide p5
.end method
