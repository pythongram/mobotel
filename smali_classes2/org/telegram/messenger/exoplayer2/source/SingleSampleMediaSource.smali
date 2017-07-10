.class public final Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource;
.super Ljava/lang/Object;
.source "SingleSampleMediaSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/MediaSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource$EventListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT:I = 0x3


# instance fields
.field private final dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource$EventListener;

.field private final eventSourceId:I

.field private final format:Lorg/telegram/messenger/exoplayer2/Format;

.field private final minLoadableRetryCount:I

.field private final timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/Format;J)V
    .registers 14
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataSourceFactory"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;
    .param p3, "format"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p4, "durationUs"    # J

    .prologue
    .line 63
    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/Format;JI)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/Format;JI)V
    .registers 17
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataSourceFactory"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;
    .param p3, "format"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p4, "durationUs"    # J
    .param p6, "minLoadableRetryCount"    # I

    .prologue
    .line 68
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/Format;JILandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource$EventListener;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/Format;JILandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource$EventListener;I)V
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataSourceFactory"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;
    .param p3, "format"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p4, "durationUs"    # J
    .param p6, "minLoadableRetryCount"    # I
    .param p7, "eventHandler"    # Landroid/os/Handler;
    .param p8, "eventListener"    # Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource$EventListener;
    .param p9, "eventSourceId"    # I

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource;->uri:Landroid/net/Uri;

    .line 75
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource;->dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    .line 76
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource;->format:Lorg/telegram/messenger/exoplayer2/Format;

    .line 77
    iput p6, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource;->minLoadableRetryCount:I

    .line 78
    iput-object p7, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource;->eventHandler:Landroid/os/Handler;

    .line 79
    iput-object p8, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource;->eventListener:Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource$EventListener;

    .line 80
    iput p9, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource;->eventSourceId:I

    .line 81
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/SinglePeriodTimeline;

    const/4 v1, 0x1

    invoke-direct {v0, p4, p5, v1}, Lorg/telegram/messenger/exoplayer2/source/SinglePeriodTimeline;-><init>(JZ)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    .line 82
    return-void
.end method


# virtual methods
.method public createPeriod(ILorg/telegram/messenger/exoplayer2/upstream/Allocator;J)Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    .registers 13
    .param p1, "index"    # I
    .param p2, "allocator"    # Lorg/telegram/messenger/exoplayer2/upstream/Allocator;
    .param p3, "positionUs"    # J

    .prologue
    .line 98
    if-nez p1, :cond_1a

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 99
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource;->dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource;->minLoadableRetryCount:I

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource;->eventHandler:Landroid/os/Handler;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource;->eventListener:Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource$EventListener;

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource;->eventSourceId:I

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/Format;ILandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource$EventListener;I)V

    return-object v0

    .line 98
    :cond_1a
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
    .line 94
    return-void
.end method

.method public prepareSource(Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;)V
    .registers 4
    .param p1, "listener"    # Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    .prologue
    .line 88
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method public releasePeriod(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    .registers 2
    .param p1, "mediaPeriod"    # Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .prologue
    .line 105
    check-cast p1, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;

    .end local p1    # "mediaPeriod":Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->release()V

    .line 106
    return-void
.end method

.method public releaseSource()V
    .registers 1

    .prologue
    .line 111
    return-void
.end method
