.class public abstract Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;
.super Lorg/telegram/messenger/exoplayer2/BaseRenderer;
.source "SimpleDecoderAudioRenderer.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/util/MediaClock;
.implements Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$Listener;


# instance fields
.field private allowPositionDiscontinuity:Z

.field private audioSessionId:I

.field private final audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

.field private currentPositionUs:J

.field private decoder:Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder",
            "<",
            "Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;",
            "+",
            "Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;",
            "+",
            "Lorg/telegram/messenger/exoplayer2/audio/AudioDecoderException;",
            ">;"
        }
    .end annotation
.end field

.field private decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

.field private drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSession",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private final drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private final eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

.field private final formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

.field private inputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

.field private inputFormat:Lorg/telegram/messenger/exoplayer2/Format;

.field private inputStreamEnded:Z

.field private outputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;

.field private outputStreamEnded:Z

.field private pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSession",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private final playClearSamplesWithoutKeys:Z

.field private waitingForKeys:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, v0, v0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;-><init>(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;)V
    .registers 4
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "eventListener"    # Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;-><init>(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;)V
    .registers 10
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "eventListener"    # Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;
    .param p3, "audioCapabilities"    # Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;

    .prologue
    .line 93
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;-><init>(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;Z)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;Z)V
    .registers 7
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "eventListener"    # Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;
    .param p3, "audioCapabilities"    # Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;
    .param p5, "playClearSamplesWithoutKeys"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;",
            "Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p4, "drmSessionManager":Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager<Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;-><init>(I)V

    .line 114
    new-instance v0, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-direct {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    .line 115
    new-instance v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-direct {v0, p3, p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;-><init>(Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$Listener;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    .line 116
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    .line 117
    new-instance v0, Lorg/telegram/messenger/exoplayer2/FormatHolder;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/FormatHolder;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

    .line 118
    iput-boolean p5, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->playClearSamplesWithoutKeys:Z

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSessionId:I

    .line 120
    return-void
.end method

.method private drainOutputBuffer()Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/audio/AudioDecoderException;,
            Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InitializationException;,
            Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$WriteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 210
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_8

    .line 261
    :cond_7
    :goto_7
    return v5

    .line 214
    :cond_8
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;

    if-nez v0, :cond_25

    .line 215
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->dequeueOutputBuffer()Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;

    .line 216
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;

    if-eqz v0, :cond_7

    .line 219
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;

    iget v2, v2, Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;->skippedOutputBufferCount:I

    add-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 222
    :cond_25
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 223
    iput-boolean v8, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputStreamEnded:Z

    .line 224
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->handleEndOfStream()V

    .line 225
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;->release()V

    .line 226
    iput-object v9, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;

    goto :goto_7

    .line 230
    :cond_3c
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_79

    .line 231
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->getOutputFormat()Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v7

    .line 232
    .local v7, "outputFormat":Lorg/telegram/messenger/exoplayer2/Format;
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    iget-object v1, v7, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget v2, v7, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    iget v3, v7, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    iget v4, v7, Lorg/telegram/messenger/exoplayer2/Format;->pcmEncoding:I

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->configure(Ljava/lang/String;IIII)V

    .line 234
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSessionId:I

    if-nez v0, :cond_a3

    .line 235
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->initialize(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSessionId:I

    .line 236
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSessionId:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioSessionId(I)V

    .line 237
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSessionId:I

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->onAudioSessionId(I)V

    .line 241
    :goto_6d
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_79

    .line 242
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->play()V

    .line 246
    .end local v7    # "outputFormat":Lorg/telegram/messenger/exoplayer2/Format;
    :cond_79
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;

    iget-wide v2, v2, Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;->timeUs:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->handleBuffer(Ljava/nio/ByteBuffer;J)I

    move-result v6

    .line 249
    .local v6, "handleBufferResult":I
    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_8d

    .line 250
    iput-boolean v8, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->allowPositionDiscontinuity:Z

    .line 254
    :cond_8d
    and-int/lit8 v0, v6, 0x2

    if-eqz v0, :cond_7

    .line 255
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 256
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;->release()V

    .line 257
    iput-object v9, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;

    move v5, v8

    .line 258
    goto/16 :goto_7

    .line 239
    .end local v6    # "handleBufferResult":I
    .restart local v7    # "outputFormat":Lorg/telegram/messenger/exoplayer2/Format;
    :cond_a3
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSessionId:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->initialize(I)I

    goto :goto_6d
.end method

.method private feedInputBuffer()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/audio/AudioDecoderException;,
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 265
    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputStreamEnded:Z

    if-eqz v4, :cond_8

    .line 306
    :cond_7
    :goto_7
    return v2

    .line 269
    :cond_8
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    if-nez v4, :cond_18

    .line 270
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->dequeueInputBuffer()Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    .line 271
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    if-eqz v4, :cond_7

    .line 277
    :cond_18
    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->waitingForKeys:Z

    if-eqz v4, :cond_2c

    .line 279
    const/4 v1, -0x4

    .line 284
    .local v1, "result":I
    :goto_1d
    const/4 v4, -0x3

    if-eq v1, v4, :cond_7

    .line 287
    const/4 v4, -0x5

    if-ne v1, v4, :cond_35

    .line 288
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/FormatHolder;->format:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->onInputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V

    move v2, v3

    .line 289
    goto :goto_7

    .line 281
    .end local v1    # "result":I
    :cond_2c
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v4, v5}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->readSource(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;)I

    move-result v1

    .restart local v1    # "result":I
    goto :goto_1d

    .line 291
    :cond_35
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 292
    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputStreamEnded:Z

    .line 293
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->queueInputBuffer(Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 294
    iput-object v6, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    goto :goto_7

    .line 297
    :cond_49
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result v0

    .line 298
    .local v0, "bufferEncrypted":Z
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->shouldWaitForKeys(Z)Z

    move-result v4

    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->waitingForKeys:Z

    .line 299
    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->waitingForKeys:Z

    if-nez v4, :cond_7

    .line 302
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->flip()V

    .line 303
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->queueInputBuffer(Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 304
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    iget v4, v2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    .line 305
    iput-object v6, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    move v2, v3

    .line 306
    goto :goto_7
.end method

.method private flushDecoder()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 322
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->waitingForKeys:Z

    .line 324
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;

    if-eqz v0, :cond_11

    .line 325
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;->release()V

    .line 326
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;

    .line 328
    :cond_11
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->flush()V

    .line 329
    return-void
.end method

.method private onInputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V
    .registers 7
    .param p1, "newFormat"    # Lorg/telegram/messenger/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 438
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lorg/telegram/messenger/exoplayer2/Format;

    .line 439
    .local v1, "oldFormat":Lorg/telegram/messenger/exoplayer2/Format;
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lorg/telegram/messenger/exoplayer2/Format;

    .line 441
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v4, v2, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    if-nez v1, :cond_2f

    move-object v2, v3

    :goto_c
    invoke-static {v4, v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    const/4 v0, 0x1

    .line 443
    .local v0, "drmInitDataChanged":Z
    :goto_13
    if-eqz v0, :cond_51

    .line 444
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    if-eqz v2, :cond_57

    .line 445
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    if-nez v2, :cond_34

    .line 446
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Media requires a DrmSessionManager"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->getIndex()I

    move-result v3

    .line 446
    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v2

    throw v2

    .line 441
    .end local v0    # "drmInitDataChanged":Z
    :cond_2f
    iget-object v2, v1, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    goto :goto_c

    :cond_32
    const/4 v0, 0x0

    goto :goto_13

    .line 449
    .restart local v0    # "drmInitDataChanged":Z
    :cond_34
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    invoke-interface {v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->acquireSession(Landroid/os/Looper;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 451
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-ne v2, v3, :cond_51

    .line 452
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v2, v3}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V

    .line 459
    :cond_51
    :goto_51
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->inputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 460
    return-void

    .line 455
    :cond_57
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    goto :goto_51
.end method

.method private readFormat()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 429
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->readSource(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;)I

    move-result v0

    .line 430
    .local v0, "result":I
    const/4 v1, -0x5

    if-ne v0, v1, :cond_13

    .line 431
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/FormatHolder;->format:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->onInputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 432
    const/4 v1, 0x1

    .line 434
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private shouldWaitForKeys(Z)Z
    .registers 5
    .param p1, "bufferEncrypted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 310
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-nez v2, :cond_6

    .line 317
    :cond_5
    :goto_5
    return v1

    .line 313
    :cond_6
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/drm/DrmSession;->getState()I

    move-result v0

    .line 314
    .local v0, "drmSessionState":I
    if-nez v0, :cond_1d

    .line 315
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/drm/DrmSession;->getError()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->getIndex()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v1

    throw v1

    .line 317
    :cond_1d
    const/4 v2, 0x4

    if-eq v0, v2, :cond_5

    if-nez p1, :cond_26

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->playClearSamplesWithoutKeys:Z

    if-nez v2, :cond_5

    :cond_26
    const/4 v1, 0x1

    goto :goto_5
.end method


# virtual methods
.method protected abstract createDecoder(Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;)Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/Format;",
            "Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;",
            ")",
            "Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder",
            "<",
            "Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;",
            "+",
            "Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;",
            "+",
            "Lorg/telegram/messenger/exoplayer2/audio/AudioDecoderException;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/audio/AudioDecoderException;
        }
    .end annotation
.end method

.method public getMediaClock()Lorg/telegram/messenger/exoplayer2/util/MediaClock;
    .registers 1

    .prologue
    .line 124
    return-object p0
.end method

.method protected getOutputFormat()Lorg/telegram/messenger/exoplayer2/Format;
    .registers 13

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 203
    const-string v1, "audio/raw"

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lorg/telegram/messenger/exoplayer2/Format;

    iget v5, v2, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lorg/telegram/messenger/exoplayer2/Format;

    iget v6, v2, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    const/4 v7, 0x2

    const/4 v10, 0x0

    move-object v2, v0

    move v4, v3

    move-object v8, v0

    move-object v9, v0

    move-object v11, v0

    invoke-static/range {v0 .. v11}, Lorg/telegram/messenger/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public getPositionUs()J
    .registers 5

    .prologue
    .line 344
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->isEnded()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->getCurrentPositionUs(Z)J

    move-result-wide v0

    .line 345
    .local v0, "newCurrentPositionUs":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_19

    .line 346
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->allowPositionDiscontinuity:Z

    if-eqz v2, :cond_1c

    .line 347
    .end local v0    # "newCurrentPositionUs":J
    :goto_14
    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->currentPositionUs:J

    .line 348
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->allowPositionDiscontinuity:Z

    .line 350
    :cond_19
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->currentPositionUs:J

    return-wide v2

    .line 346
    .restart local v0    # "newCurrentPositionUs":J
    :cond_1c
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->currentPositionUs:J

    .line 347
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_14
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .registers 6
    .param p1, "messageType"    # I
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 464
    packed-switch p1, :pswitch_data_2e

    .line 478
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    .line 481
    .end local p2    # "message":Ljava/lang/Object;
    :cond_6
    :goto_6
    return-void

    .line 466
    .restart local p2    # "message":Ljava/lang/Object;
    :pswitch_7
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    check-cast p2, Ljava/lang/Float;

    .end local p2    # "message":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->setVolume(F)V

    goto :goto_6

    .line 469
    .restart local p2    # "message":Ljava/lang/Object;
    :pswitch_13
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    check-cast p2, Landroid/media/PlaybackParams;

    .end local p2    # "message":Ljava/lang/Object;
    invoke-virtual {v1, p2}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    goto :goto_6

    .line 472
    .restart local p2    # "message":Ljava/lang/Object;
    :pswitch_1b
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "message":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 473
    .local v0, "streamType":I
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->setStreamType(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 474
    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSessionId:I

    goto :goto_6

    .line 464
    nop

    :pswitch_data_2e
    .packed-switch 0x2
        :pswitch_7
        :pswitch_13
        :pswitch_1b
    .end packed-switch
.end method

.method public isEnded()Z
    .registers 2

    .prologue
    .line 333
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isReady()Z
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lorg/telegram/messenger/exoplayer2/Format;

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->waitingForKeys:Z

    if-nez v0, :cond_1c

    .line 339
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    .line 338
    :goto_1b
    return v0

    .line 339
    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method protected onAudioSessionId(I)V
    .registers 2
    .param p1, "audioSessionId"    # I

    .prologue
    .line 364
    return-void
.end method

.method protected onDisabled()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 396
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    .line 397
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputBuffer:Lorg/telegram/messenger/exoplayer2/decoder/SimpleOutputBuffer;

    .line 398
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lorg/telegram/messenger/exoplayer2/Format;

    .line 399
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioSessionId:I

    .line 400
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->waitingForKeys:Z

    .line 402
    :try_start_c
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;

    if-eqz v0, :cond_20

    .line 403
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->release()V

    .line 404
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;

    .line 405
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    .line 407
    :cond_20
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->release()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_99

    .line 410
    :try_start_25
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_30

    .line 411
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_64

    .line 415
    :cond_30
    :try_start_30
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eq v0, v1, :cond_41

    .line 416
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V
    :try_end_41
    .catchall {:try_start_30 .. :try_end_41} :catchall_52

    .line 419
    :cond_41
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 420
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 421
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 422
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    .line 426
    return-void

    .line 419
    :catchall_52
    move-exception v0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 420
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 421
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 422
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    throw v0

    .line 414
    :catchall_64
    move-exception v0

    .line 415
    :try_start_65
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_76

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_76

    .line 416
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V
    :try_end_76
    .catchall {:try_start_65 .. :try_end_76} :catchall_87

    .line 419
    :cond_76
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 420
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 421
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 422
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    throw v0

    .line 419
    :catchall_87
    move-exception v0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 420
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 421
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 422
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    throw v0

    .line 409
    :catchall_99
    move-exception v0

    .line 410
    :try_start_9a
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_a5

    .line 411
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V
    :try_end_a5
    .catchall {:try_start_9a .. :try_end_a5} :catchall_d9

    .line 415
    :cond_a5
    :try_start_a5
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_b6

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_b6

    .line 416
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V
    :try_end_b6
    .catchall {:try_start_a5 .. :try_end_b6} :catchall_c7

    .line 419
    :cond_b6
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 420
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 421
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 422
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    throw v0

    .line 419
    :catchall_c7
    move-exception v0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 420
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 421
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 422
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    throw v0

    .line 414
    :catchall_d9
    move-exception v0

    .line 415
    :try_start_da
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_eb

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_eb

    .line 416
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V
    :try_end_eb
    .catchall {:try_start_da .. :try_end_eb} :catchall_fc

    .line 419
    :cond_eb
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 420
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 421
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 422
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    throw v0

    .line 419
    :catchall_fc
    move-exception v0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 420
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 421
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 422
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    throw v0
.end method

.method protected onEnabled(Z)V
    .registers 4
    .param p1, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 368
    new-instance v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    .line 369
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->enabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    .line 370
    return-void
.end method

.method protected onPositionReset(JZ)V
    .registers 7
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z

    .prologue
    const/4 v1, 0x0

    .line 374
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->reset()V

    .line 375
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->currentPositionUs:J

    .line 376
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->allowPositionDiscontinuity:Z

    .line 377
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputStreamEnded:Z

    .line 378
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputStreamEnded:Z

    .line 379
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;

    if-eqz v0, :cond_16

    .line 380
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->flushDecoder()V

    .line 382
    :cond_16
    return-void
.end method

.method protected onStarted()V
    .registers 2

    .prologue
    .line 386
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->play()V

    .line 387
    return-void
.end method

.method protected onStopped()V
    .registers 2

    .prologue
    .line 391
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->pause()V

    .line 392
    return-void
.end method

.method public onUnderrun(IJJ)V
    .registers 12
    .param p1, "bufferSize"    # I
    .param p2, "bufferSizeMs"    # J
    .param p4, "elapsedSinceLastFeedMs"    # J

    .prologue
    .line 487
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioTrackUnderrun(IJJ)V

    .line 488
    return-void
.end method

.method public render(JJ)V
    .registers 16
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 129
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_5

    .line 180
    :cond_4
    :goto_4
    return-void

    .line 134
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lorg/telegram/messenger/exoplayer2/Format;

    if-nez v0, :cond_f

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->readFormat()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 139
    :cond_f
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 140
    const/4 v10, 0x0

    .line 141
    .local v10, "mediaCrypto":Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_3b

    .line 142
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/drm/DrmSession;->getState()I

    move-result v8

    .line 143
    .local v8, "drmSessionState":I
    if-nez v8, :cond_2f

    .line 144
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/drm/DrmSession;->getError()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 145
    :cond_2f
    const/4 v0, 0x3

    if-eq v8, v0, :cond_35

    const/4 v0, 0x4

    if-ne v8, v0, :cond_4

    .line 147
    :cond_35
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/drm/DrmSession;->getMediaCrypto()Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;

    move-result-object v10

    .line 154
    .end local v8    # "drmSessionState":I
    :cond_3b
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;

    if-nez v0, :cond_6c

    .line 156
    :try_start_3f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 157
    .local v6, "codecInitializingTimestamp":J
    const-string v0, "createAudioDecoder"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->inputFormat:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-virtual {p0, v0, v10}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->createDecoder(Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;)Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;

    .line 159
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->endSection()V

    .line 160
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 161
    .local v2, "codecInitializedTimestamp":J
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->getName()Ljava/lang/String;

    move-result-object v1

    sub-long v4, v2, v6

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    .line 163
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I
    :try_end_6c
    .catch Lorg/telegram/messenger/exoplayer2/audio/AudioDecoderException; {:try_start_3f .. :try_end_6c} :catch_87

    .line 171
    .end local v2    # "codecInitializedTimestamp":J
    .end local v6    # "codecInitializingTimestamp":J
    :cond_6c
    :try_start_6c
    const-string v0, "drainAndFeed"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 172
    :cond_71
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->drainOutputBuffer()Z

    move-result v0

    if-nez v0, :cond_71

    .line 173
    :cond_77
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->feedInputBuffer()Z

    move-result v0

    if-nez v0, :cond_77

    .line 174
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->endSection()V
    :try_end_80
    .catch Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InitializationException; {:try_start_6c .. :try_end_80} :catch_91
    .catch Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$WriteException; {:try_start_6c .. :try_end_80} :catch_9d
    .catch Lorg/telegram/messenger/exoplayer2/audio/AudioDecoderException; {:try_start_6c .. :try_end_80} :catch_9b

    .line 179
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    goto/16 :goto_4

    .line 164
    :catch_87
    move-exception v9

    .line 165
    .local v9, "e":Lorg/telegram/messenger/exoplayer2/audio/AudioDecoderException;
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->getIndex()I

    move-result v0

    invoke-static {v9, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 175
    .end local v9    # "e":Lorg/telegram/messenger/exoplayer2/audio/AudioDecoderException;
    :catch_91
    move-exception v9

    .line 177
    .local v9, "e":Ljava/lang/Exception;
    :goto_92
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/SimpleDecoderAudioRenderer;->getIndex()I

    move-result v0

    invoke-static {v9, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 175
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_9b
    move-exception v9

    goto :goto_92

    :catch_9d
    move-exception v9

    goto :goto_92
.end method
