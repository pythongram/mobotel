.class public final Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;
.super Ljava/lang/Object;
.source "DefaultLoadControl.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/LoadControl;


# static fields
.field private static final ABOVE_HIGH_WATERMARK:I = 0x0

.field private static final BELOW_LOW_WATERMARK:I = 0x2

.field private static final BETWEEN_WATERMARKS:I = 0x1

.field public static final DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS:I = 0x1388

.field public static final DEFAULT_BUFFER_FOR_PLAYBACK_MS:I = 0x9c4

.field public static final DEFAULT_MAX_BUFFER_MS:I = 0x7530

.field public static final DEFAULT_MIN_BUFFER_MS:I = 0x3a98


# instance fields
.field private final allocator:Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;

.field private final bufferForPlaybackAfterRebufferUs:J

.field private final bufferForPlaybackUs:J

.field private isBuffering:Z

.field private final maxBufferUs:J

.field private final minBufferUs:J

.field private targetBufferSize:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 71
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;-><init>(ZI)V

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;)V
    .registers 10
    .param p1, "allocator"    # Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;

    .prologue
    .line 80
    const/16 v2, 0x3a98

    const/16 v3, 0x7530

    const-wide/16 v4, 0x9c4

    const-wide/16 v6, 0x1388

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;IIJJ)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;IIJJ)V
    .registers 12
    .param p1, "allocator"    # Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;
    .param p2, "minBufferMs"    # I
    .param p3, "maxBufferMs"    # I
    .param p4, "bufferForPlaybackMs"    # J
    .param p6, "bufferForPlaybackAfterRebufferMs"    # J

    .prologue
    const-wide/16 v2, 0x3e8

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->allocator:Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;

    .line 101
    int-to-long v0, p2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->minBufferUs:J

    .line 102
    int-to-long v0, p3

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->maxBufferUs:J

    .line 103
    mul-long v0, p4, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->bufferForPlaybackUs:J

    .line 104
    mul-long v0, p6, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->bufferForPlaybackAfterRebufferUs:J

    .line 105
    return-void
.end method

.method private getBufferTimeState(J)I
    .registers 6
    .param p1, "bufferedDurationUs"    # J

    .prologue
    .line 155
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->maxBufferUs:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->minBufferUs:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_10

    const/4 v0, 0x2

    goto :goto_7

    :cond_10
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private reset(Z)V
    .registers 3
    .param p1, "resetAllocator"    # Z

    .prologue
    const/4 v0, 0x0

    .line 160
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->targetBufferSize:I

    .line 161
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->isBuffering:Z

    .line 162
    if-eqz p1, :cond_c

    .line 163
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->allocator:Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->reset()V

    .line 165
    :cond_c
    return-void
.end method


# virtual methods
.method public getAllocator()Lorg/telegram/messenger/exoplayer2/upstream/Allocator;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->allocator:Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;

    return-object v0
.end method

.method public onPrepared()V
    .registers 2

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->reset(Z)V

    .line 110
    return-void
.end method

.method public onReleased()V
    .registers 2

    .prologue
    .line 131
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->reset(Z)V

    .line 132
    return-void
.end method

.method public onStopped()V
    .registers 2

    .prologue
    .line 126
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->reset(Z)V

    .line 127
    return-void
.end method

.method public onTracksSelected([Lorg/telegram/messenger/exoplayer2/Renderer;Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;)V
    .registers 7
    .param p1, "renderers"    # [Lorg/telegram/messenger/exoplayer2/Renderer;
    .param p2, "trackGroups"    # Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .param p3, "trackSelections"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    .prologue
    .line 115
    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->targetBufferSize:I

    .line 116
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v1, p1

    if-ge v0, v1, :cond_1f

    .line 117
    invoke-virtual {p3, v0}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 118
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->targetBufferSize:I

    aget-object v2, p1, v0

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/Renderer;->getTrackType()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->getDefaultBufferSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->targetBufferSize:I

    .line 116
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 121
    :cond_1f
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->allocator:Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->targetBufferSize:I

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->setTargetBufferSize(I)V

    .line 122
    return-void
.end method

.method public shouldContinueLoading(J)Z
    .registers 10
    .param p1, "bufferedDurationUs"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 147
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->getBufferTimeState(J)I

    move-result v0

    .line 148
    .local v0, "bufferTimeState":I
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->allocator:Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultAllocator;->getTotalBytesAllocated()I

    move-result v4

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->targetBufferSize:I

    if-lt v4, v5, :cond_22

    move v1, v3

    .line 149
    .local v1, "targetBufferSizeReached":Z
    :goto_11
    const/4 v4, 0x2

    if-eq v0, v4, :cond_1c

    if-ne v0, v3, :cond_1d

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->isBuffering:Z

    if-eqz v4, :cond_1d

    if-nez v1, :cond_1d

    :cond_1c
    move v2, v3

    :cond_1d
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->isBuffering:Z

    .line 151
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->isBuffering:Z

    return v2

    .end local v1    # "targetBufferSizeReached":Z
    :cond_22
    move v1, v2

    .line 148
    goto :goto_11
.end method

.method public shouldStartPlayback(JZ)Z
    .registers 9
    .param p1, "bufferedDurationUs"    # J
    .param p3, "rebuffering"    # Z

    .prologue
    .line 141
    if-eqz p3, :cond_10

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->bufferForPlaybackAfterRebufferUs:J

    .line 142
    .local v0, "minBufferDurationUs":J
    :goto_4
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_e

    cmp-long v2, p1, v0

    if-ltz v2, :cond_13

    :cond_e
    const/4 v2, 0x1

    :goto_f
    return v2

    .line 141
    .end local v0    # "minBufferDurationUs":J
    :cond_10
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;->bufferForPlaybackUs:J

    goto :goto_4

    .line 142
    .restart local v0    # "minBufferDurationUs":J
    :cond_13
    const/4 v2, 0x0

    goto :goto_f
.end method
