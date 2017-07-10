.class final Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;
.super Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InitializationTrackSelection"
.end annotation


# instance fields
.field private selectedIndex:I


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;[I)V
    .registers 4
    .param p1, "group"    # Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    .param p2, "tracks"    # [I

    .prologue
    .line 384
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;-><init>(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;[I)V

    .line 385
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->getFormat(I)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->indexOf(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->selectedIndex:I

    .line 386
    return-void
.end method


# virtual methods
.method public getSelectedIndex()I
    .registers 2

    .prologue
    .line 407
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->selectedIndex:I

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 417
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionReason()I
    .registers 2

    .prologue
    .line 412
    const/4 v0, 0x0

    return v0
.end method

.method public updateSelectedTrack(J)V
    .registers 7
    .param p1, "bufferedDurationUs"    # J

    .prologue
    .line 390
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 391
    .local v2, "nowMs":J
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->selectedIndex:I

    invoke-virtual {p0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->isBlacklisted(IJ)Z

    move-result v1

    if-nez v1, :cond_d

    .line 398
    :goto_c
    return-void

    .line 395
    :cond_d
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->length:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_11
    if-ltz v0, :cond_1f

    .line 396
    invoke-virtual {p0, v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->isBlacklisted(IJ)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 397
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->selectedIndex:I

    goto :goto_c

    .line 395
    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 402
    :cond_1f
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method
