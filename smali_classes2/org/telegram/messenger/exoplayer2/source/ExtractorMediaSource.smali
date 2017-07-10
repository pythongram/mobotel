.class public final Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource;
.super Ljava/lang/Object;
.source "ExtractorMediaSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/MediaSource;
.implements Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource$UnrecognizedInputFormatException;,
        Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource$EventListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE:I = 0x6

.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT_ON_DEMAND:I = 0x3

.field public static final MIN_RETRY_COUNT_DEFAULT_FOR_MEDIA:I = -0x1


# instance fields
.field private final dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource$EventListener;

.field private final extractorsFactory:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;

.field private final minLoadableRetryCount:I

.field private final period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

.field private sourceListener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

.field private timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

.field private timelineHasDuration:Z

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;ILandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource$EventListener;)V
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataSourceFactory"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;
    .param p3, "extractorsFactory"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;
    .param p4, "minLoadableRetryCount"    # I
    .param p5, "eventHandler"    # Landroid/os/Handler;
    .param p6, "eventListener"    # Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource$EventListener;

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource;->uri:Landroid/net/Uri;

    .line 129
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource;->dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    .line 130
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource;->extractorsFactory:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;

    .line 131
    iput p4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource;->minLoadableRetryCount:I

    .line 132
    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource;->eventHandler:Landroid/os/Handler;

    .line 133
    iput-object p6, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource;->eventListener:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource$EventListener;

    .line 134
    new-instance v0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource$EventListener;)V
    .registers 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataSourceFactory"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;
    .param p3, "extractorsFactory"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;
    .param p4, "eventHandler"    # Landroid/os/Handler;
    .param p5, "eventListener"    # Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource$EventListener;

    .prologue
    .line 111
    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;ILandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource$EventListener;)V

    .line 113
    return-void
.end method


# virtual methods
.method public createPeriod(ILorg/telegram/messenger/exoplayer2/upstream/Allocator;J)Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    .registers 14
    .param p1, "index"    # I
    .param p2, "allocator"    # Lorg/telegram/messenger/exoplayer2/upstream/Allocator;
    .param p3, "positionUs"    # J

    .prologue
    .line 151
    if-nez p1, :cond_22

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 152
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource;->dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource;->extractorsFactory:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;

    .line 153
    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;->createExtractors()[Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    move-result-object v3

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource;->minLoadableRetryCount:I

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource;->eventHandler:Landroid/os/Handler;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource;->eventListener:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource$EventListener;

    move-object v7, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;[Lorg/telegram/messenger/exoplayer2/extractor/Extractor;ILandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource$EventListener;Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;Lorg/telegram/messenger/exoplayer2/upstream/Allocator;)V

    .line 152
    return-object v0

    .line 151
    :cond_22
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    return-void
.end method

.method public onSourceInfoRefreshed(Lorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V
    .registers 9
    .param p1, "newTimeline"    # Lorg/telegram/messenger/exoplayer2/Timeline;
    .param p2, "manifest"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 171
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v2, v3}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v0

    .line 172
    .local v0, "newTimelineDurationUs":J
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v0, v4

    if-eqz v3, :cond_15

    const/4 v2, 0x1

    .line 173
    .local v2, "newTimelineHasDuration":Z
    :cond_15
    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource;->timelineHasDuration:Z

    if-eqz v3, :cond_1c

    if-nez v2, :cond_1c

    .line 180
    :goto_1b
    return-void

    .line 177
    :cond_1c
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    .line 178
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource;->timelineHasDuration:Z

    .line 179
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource;->sourceListener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V

    goto :goto_1b
.end method

.method public prepareSource(Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;)V
    .registers 6
    .param p1, "listener"    # Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource;->sourceListener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    .line 140
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/SinglePeriodTimeline;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/telegram/messenger/exoplayer2/source/SinglePeriodTimeline;-><init>(JZ)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    .line 141
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method public releasePeriod(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    .registers 2
    .param p1, "mediaPeriod"    # Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .prologue
    .line 159
    check-cast p1, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

    .end local p1    # "mediaPeriod":Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->release()V

    .line 160
    return-void
.end method

.method public releaseSource()V
    .registers 2

    .prologue
    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource;->sourceListener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    .line 165
    return-void
.end method
