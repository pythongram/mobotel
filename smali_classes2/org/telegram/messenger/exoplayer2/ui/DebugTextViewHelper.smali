.class public final Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;
.super Ljava/lang/Object;
.source "DebugTextViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;


# static fields
.field private static final REFRESH_INTERVAL_MS:I = 0x3e8


# instance fields
.field private final player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

.field private started:Z

.field private final textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Landroid/widget/TextView;)V
    .registers 3
    .param p1, "player"    # Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;
    .param p2, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    .line 47
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->textView:Landroid/widget/TextView;

    .line 48
    return-void
.end method

.method private getAudioString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 161
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->getAudioFormat()Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    .line 162
    .local v0, "format":Lorg/telegram/messenger/exoplayer2/Format;
    if-nez v0, :cond_b

    .line 163
    const-string v1, ""

    .line 165
    :goto_a
    return-object v1

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hz:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    .line 167
    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->getAudioDecoderCounters()Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->getDecoderCountersBufferCountString(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a
.end method

.method private static getDecoderCountersBufferCountString(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)Ljava/lang/String;
    .registers 3
    .param p0, "counters"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    .prologue
    .line 171
    if-nez p0, :cond_5

    .line 172
    const-string v0, ""

    .line 175
    :goto_4
    return-object v0

    .line 174
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " rb:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sb:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " db:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->droppedOutputBufferCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mcdb:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedOutputBufferCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private getPlayerStateString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playWhenReady:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " playbackState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v1

    packed-switch v1, :pswitch_data_8c

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    :goto_3b
    return-object v0

    .line 128
    :pswitch_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "buffering"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    goto :goto_3b

    .line 131
    :pswitch_50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ended"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    goto :goto_3b

    .line 134
    :pswitch_64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "idle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    goto :goto_3b

    .line 137
    :pswitch_78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ready"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    goto :goto_3b

    .line 126
    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_64
        :pswitch_3c
        :pswitch_78
        :pswitch_50
    .end packed-switch
.end method

.method private getPlayerWindowIndexString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " window:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->getCurrentWindowIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVideoString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 151
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->getVideoFormat()Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    .line 152
    .local v0, "format":Lorg/telegram/messenger/exoplayer2/Format;
    if-nez v0, :cond_b

    .line 153
    const-string v1, ""

    .line 155
    :goto_a
    return-object v1

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " r:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    .line 156
    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->getVideoDecoderCounters()Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->getDecoderCountersBufferCountString(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a
.end method

.method private updateAndPost()V
    .registers 5

    .prologue
    .line 118
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->textView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->getPlayerStateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->getPlayerWindowIndexString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->getVideoString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 119
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->getAudioString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 121
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->textView:Landroid/widget/TextView;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    return-void
.end method


# virtual methods
.method public onLoadingChanged(Z)V
    .registers 2
    .param p1, "isLoading"    # Z

    .prologue
    .line 81
    return-void
.end method

.method public onPlayerError(Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;)V
    .registers 2
    .param p1, "error"    # Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    .prologue
    .line 101
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .registers 3
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .prologue
    .line 85
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->updateAndPost()V

    .line 86
    return-void
.end method

.method public onPositionDiscontinuity()V
    .registers 1

    .prologue
    .line 90
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->updateAndPost()V

    .line 91
    return-void
.end method

.method public onTimelineChanged(Lorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V
    .registers 3
    .param p1, "timeline"    # Lorg/telegram/messenger/exoplayer2/Timeline;
    .param p2, "manifest"    # Ljava/lang/Object;

    .prologue
    .line 96
    return-void
.end method

.method public onTracksChanged(Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;)V
    .registers 3
    .param p1, "tracks"    # Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .param p2, "selections"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    .prologue
    .line 106
    return-void
.end method

.method public run()V
    .registers 1

    .prologue
    .line 112
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->updateAndPost()V

    .line 113
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 55
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->started:Z

    if-eqz v0, :cond_5

    .line 61
    :goto_4
    return-void

    .line 58
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->started:Z

    .line 59
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->addListener(Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;)V

    .line 60
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->updateAndPost()V

    goto :goto_4
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->started:Z

    if-nez v0, :cond_5

    .line 74
    :goto_4
    return-void

    .line 71
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->started:Z

    .line 72
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->removeListener(Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;)V

    .line 73
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/DebugTextViewHelper;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method
