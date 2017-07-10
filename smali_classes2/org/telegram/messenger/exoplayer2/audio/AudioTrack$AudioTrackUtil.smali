.class Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioTrackUtil"
.end annotation


# instance fields
.field protected audioTrack:Landroid/media/AudioTrack;

.field private endPlaybackHeadPosition:J

.field private lastRawPlaybackHeadPosition:J

.field private needsPassthroughWorkaround:Z

.field private passthroughWorkaroundPauseOffset:J

.field private rawPlaybackHeadWrapCount:J

.field private sampleRate:I

.field private stopPlaybackHeadPosition:J

.field private stopTimestampUs:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$1;)V
    .registers 2
    .param p1, "x0"    # Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$1;

    .prologue
    .line 1146
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlaybackHeadPosition()J
    .registers 15

    .prologue
    const-wide/16 v8, 0x0

    .line 1215
    iget-wide v10, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->stopTimestampUs:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v10, v12

    if-eqz v7, :cond_2b

    .line 1217
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    iget-wide v10, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->stopTimestampUs:J

    sub-long v0, v8, v10

    .line 1218
    .local v0, "elapsedTimeSinceStopUs":J
    iget v7, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->sampleRate:I

    int-to-long v8, v7

    mul-long/2addr v8, v0

    const-wide/32 v10, 0xf4240

    div-long v2, v8, v10

    .line 1219
    .local v2, "framesSinceStop":J
    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->endPlaybackHeadPosition:J

    iget-wide v10, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->stopPlaybackHeadPosition:J

    add-long/2addr v10, v2

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 1243
    .end local v0    # "elapsedTimeSinceStopUs":J
    .end local v2    # "framesSinceStop":J
    :cond_2a
    :goto_2a
    return-wide v8

    .line 1222
    :cond_2b
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v7}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v6

    .line 1223
    .local v6, "state":I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_2a

    .line 1228
    const-wide v10, 0xffffffffL

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v7}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v7

    int-to-long v12, v7

    and-long v4, v10, v12

    .line 1229
    .local v4, "rawPlaybackHeadPosition":J
    iget-boolean v7, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->needsPassthroughWorkaround:Z

    if-eqz v7, :cond_54

    .line 1233
    const/4 v7, 0x2

    if-ne v6, v7, :cond_51

    cmp-long v7, v4, v8

    if-nez v7, :cond_51

    .line 1234
    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    iput-wide v8, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->passthroughWorkaroundPauseOffset:J

    .line 1236
    :cond_51
    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->passthroughWorkaroundPauseOffset:J

    add-long/2addr v4, v8

    .line 1238
    :cond_54
    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    cmp-long v7, v8, v4

    if-lez v7, :cond_61

    .line 1240
    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->rawPlaybackHeadWrapCount:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->rawPlaybackHeadWrapCount:J

    .line 1242
    :cond_61
    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    .line 1243
    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->rawPlaybackHeadWrapCount:J

    const/16 v7, 0x20

    shl-long/2addr v8, v7

    add-long/2addr v8, v4

    goto :goto_2a
.end method

.method public getPlaybackHeadPositionUs()J
    .registers 5

    .prologue
    .line 1250
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getPlaybackSpeed()F
    .registers 2

    .prologue
    .line 1312
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getTimestampFramePosition()J
    .registers 2

    .prologue
    .line 1290
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getTimestampNanoTime()J
    .registers 2

    .prologue
    .line 1274
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public handleEndOfStream(J)V
    .registers 8
    .param p1, "submittedFrames"    # J

    .prologue
    .line 1187
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->stopPlaybackHeadPosition:J

    .line 1188
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->stopTimestampUs:J

    .line 1189
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->endPlaybackHeadPosition:J

    .line 1190
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 1191
    return-void
.end method

.method public pause()V
    .registers 5

    .prologue
    .line 1198
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->stopTimestampUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    .line 1203
    :goto_b
    return-void

    .line 1202
    :cond_c
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    goto :goto_b
.end method

.method public reconfigure(Landroid/media/AudioTrack;Z)V
    .registers 7
    .param p1, "audioTrack"    # Landroid/media/AudioTrack;
    .param p2, "needsPassthroughWorkaround"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 1168
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->audioTrack:Landroid/media/AudioTrack;

    .line 1169
    iput-boolean p2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->needsPassthroughWorkaround:Z

    .line 1170
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->stopTimestampUs:J

    .line 1171
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->lastRawPlaybackHeadPosition:J

    .line 1172
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->rawPlaybackHeadWrapCount:J

    .line 1173
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->passthroughWorkaroundPauseOffset:J

    .line 1174
    if-eqz p1, :cond_1b

    .line 1175
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->sampleRate:I

    .line 1177
    :cond_1b
    return-void
.end method

.method public setPlaybackParams(Landroid/media/PlaybackParams;)V
    .registers 3
    .param p1, "playbackParams"    # Landroid/media/PlaybackParams;

    .prologue
    .line 1302
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public updateTimestamp()Z
    .registers 2

    .prologue
    .line 1260
    const/4 v0, 0x0

    return v0
.end method
