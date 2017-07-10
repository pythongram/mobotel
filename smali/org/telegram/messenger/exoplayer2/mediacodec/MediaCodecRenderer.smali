.class public abstract Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;
.super Lorg/telegram/messenger/exoplayer2/BaseRenderer;
.source "MediaCodecRenderer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    }
.end annotation


# static fields
.field private static final ADAPTATION_WORKAROUND_BUFFER:[B

.field private static final ADAPTATION_WORKAROUND_SLICE_WIDTH_HEIGHT:I = 0x20

.field private static final MAX_CODEC_HOTSWAP_TIME_MS:J = 0x3e8L

.field private static final RECONFIGURATION_STATE_NONE:I = 0x0

.field private static final RECONFIGURATION_STATE_QUEUE_PENDING:I = 0x2

.field private static final RECONFIGURATION_STATE_WRITE_PENDING:I = 0x1

.field private static final REINITIALIZATION_STATE_NONE:I = 0x0

.field private static final REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final REINITIALIZATION_STATE_WAIT_END_OF_STREAM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MediaCodecRenderer"


# instance fields
.field private final buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

.field private codec:Landroid/media/MediaCodec;

.field private codecHotswapDeadlineMs:J

.field private codecIsAdaptive:Z

.field private codecNeedsAdaptationWorkaround:Z

.field private codecNeedsAdaptationWorkaroundBuffer:Z

.field private codecNeedsDiscardToSpsWorkaround:Z

.field private codecNeedsEosFlushWorkaround:Z

.field private codecNeedsEosPropagationWorkaround:Z

.field private codecNeedsFlushWorkaround:Z

.field private codecNeedsMonoChannelCountWorkaround:Z

.field private codecReceivedBuffers:Z

.field private codecReceivedEos:Z

.field private codecReconfigurationState:I

.field private codecReconfigured:Z

.field private codecReinitializationState:I

.field private final decodeOnlyPresentationTimestamps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

.field private drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSession",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private final drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private format:Lorg/telegram/messenger/exoplayer2/Format;

.field private final formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

.field private inputBuffers:[Ljava/nio/ByteBuffer;

.field private inputIndex:I

.field private inputStreamEnded:Z

.field private final mediaCodecSelector:Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;

.field private final outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private outputBuffers:[Ljava/nio/ByteBuffer;

.field private outputIndex:I

.field private outputStreamEnded:Z

.field private pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSession",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private final playClearSamplesWithoutKeys:Z

.field private shouldSkipAdaptationWorkaroundOutputBuffer:Z

.field private shouldSkipOutputBuffer:Z

.field private waitingForKeys:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 164
    const-string v0, "0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getBytesFromHexString(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    return-void
.end method

.method public constructor <init>(ILorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;Z)V
    .registers 8
    .param p1, "trackType"    # I
    .param p2, "mediaCodecSelector"    # Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;
    .param p4, "playClearSamplesWithoutKeys"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p3, "drmSessionManager":Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager<Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;>;"
    const/4 v1, 0x0

    .line 222
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;-><init>(I)V

    .line 223
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_3b

    const/4 v0, 0x1

    :goto_b
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 224
    invoke-static {p2}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;

    .line 225
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    .line 226
    iput-boolean p4, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->playClearSamplesWithoutKeys:Z

    .line 227
    new-instance v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    .line 228
    new-instance v0, Lorg/telegram/messenger/exoplayer2/FormatHolder;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/FormatHolder;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    .line 230
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 231
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 232
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReinitializationState:I

    .line 233
    return-void

    :cond_3b
    move v0, v1

    .line 223
    goto :goto_b
.end method

.method private static codecNeedsAdaptationWorkaround(Ljava/lang/String;)Z
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1023
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_40

    const-string v0, "OMX.Nvidia.h264.decode"

    .line 1024
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    :cond_16
    const-string v0, "flounder"

    sget-object v1, Lorg/telegram/messenger/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 1025
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "flounder_lte"

    sget-object v1, Lorg/telegram/messenger/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "grouper"

    sget-object v1, Lorg/telegram/messenger/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 1026
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "tilapia"

    sget-object v1, Lorg/telegram/messenger/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    :cond_3e
    const/4 v0, 0x1

    .line 1023
    :goto_3f
    return v0

    .line 1026
    :cond_40
    const/4 v0, 0x0

    goto :goto_3f
.end method

.method private static codecNeedsDiscardToSpsWorkaround(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/Format;)Z
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "format"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 1040
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_18

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "OMX.MTK.VIDEO.DECODER.AVC"

    .line 1041
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    .line 1040
    :goto_17
    return v0

    .line 1041
    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private static codecNeedsEosFlushWorkaround(Ljava/lang/String;)Z
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1073
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_10

    const-string v0, "OMX.google.vorbis.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static codecNeedsEosPropagationWorkaround(Ljava/lang/String;)Z
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1057
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_18

    const-string v0, "OMX.rk.video_decoder.avc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "OMX.allwinner.video.decoder.avc"

    .line 1058
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    .line 1057
    :goto_17
    return v0

    .line 1058
    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private static codecNeedsFlushWorkaround(Ljava/lang/String;)Z
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x12

    .line 1003
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    if-lt v0, v1, :cond_3a

    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    if-ne v0, v1, :cond_1a

    const-string v0, "OMX.SEC.avc.dec"

    .line 1005
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    :cond_1a
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_3c

    sget-object v0, Lorg/telegram/messenger/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "SM-G800"

    .line 1006
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string v0, "OMX.Exynos.avc.dec"

    .line 1007
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    :cond_3a
    const/4 v0, 0x1

    .line 1003
    :goto_3b
    return v0

    .line 1007
    :cond_3c
    const/4 v0, 0x0

    goto :goto_3b
.end method

.method private static codecNeedsMonoChannelCountWorkaround(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/Format;)Z
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "format"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    const/4 v0, 0x1

    .line 1090
    sget v1, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x12

    if-gt v1, v2, :cond_14

    iget v1, p1, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    if-ne v1, v0, :cond_14

    const-string v1, "OMX.MTK.AUDIO.DECODER.MP3"

    .line 1091
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1090
    :goto_13
    return v0

    .line 1091
    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private drainOutputBuffer(JJ)Z
    .registers 18
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 849
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    if-eqz v1, :cond_6

    .line 850
    const/4 v1, 0x0

    .line 902
    :goto_5
    return v1

    .line 853
    :cond_6
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    if-gez v1, :cond_65

    .line 854
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->getDequeueOutputBufferTimeoutUs()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    .line 855
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    if-ltz v1, :cond_90

    .line 857
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    if-eqz v1, :cond_30

    .line 858
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 859
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 860
    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    .line 861
    const/4 v1, 0x1

    goto :goto_5

    .line 863
    :cond_30
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_40

    .line 865
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 866
    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    .line 867
    const/4 v1, 0x1

    goto :goto_5

    .line 871
    :cond_40
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    aget-object v0, v1, v2

    .line 872
    .local v0, "outputBuffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_5b

    .line 873
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 874
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 876
    :cond_5b
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipOutputBuffer(J)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipOutputBuffer:Z

    .line 894
    .end local v0    # "outputBuffer":Ljava/nio/ByteBuffer;
    :cond_65
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    aget-object v7, v1, v2

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v10, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipOutputBuffer:Z

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    invoke-virtual/range {v1 .. v12}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 897
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p0, v2, v3}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onProcessedOutputBuffer(J)V

    .line 898
    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    .line 899
    const/4 v1, 0x1

    goto/16 :goto_5

    .line 878
    :cond_90
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_9b

    .line 879
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->processOutputFormat()V

    .line 880
    const/4 v1, 0x1

    goto/16 :goto_5

    .line 881
    :cond_9b
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_a6

    .line 882
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->processOutputBuffersChanged()V

    .line 883
    const/4 v1, 0x1

    goto/16 :goto_5

    .line 885
    :cond_a6
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagationWorkaround:Z

    if-eqz v1, :cond_b9

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-nez v1, :cond_b3

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReinitializationState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b9

    .line 887
    :cond_b3
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 888
    const/4 v1, 0x1

    goto/16 :goto_5

    .line 890
    :cond_b9
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 902
    :cond_bc
    const/4 v1, 0x0

    goto/16 :goto_5
.end method

.method private feedInputBuffer()Z
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 532
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReinitializationState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_f

    .line 536
    :cond_d
    const/4 v2, 0x0

    .line 666
    :goto_e
    return v2

    .line 539
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    if-gez v2, :cond_42

    .line 540
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    const-wide/16 v8, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    .line 541
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    if-gez v2, :cond_2b

    .line 542
    const/4 v2, 0x0

    goto :goto_e

    .line 544
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputBuffers:[Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    aget-object v3, v3, v4

    iput-object v3, v2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 545
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 548
    :cond_42
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReinitializationState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_71

    .line 551
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagationWorkaround:Z

    if-eqz v2, :cond_56

    .line 558
    :goto_4f
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReinitializationState:I

    .line 559
    const/4 v2, 0x0

    goto :goto_e

    .line 554
    :cond_56
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    .line 555
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 556
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    goto :goto_4f

    .line 562
    :cond_71
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    if-eqz v2, :cond_a6

    .line 563
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 564
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    sget-object v3, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 565
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v4, 0x0

    sget-object v8, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    array-length v5, v8

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 566
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    .line 567
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    .line 568
    const/4 v2, 0x1

    goto/16 :goto_e

    .line 572
    :cond_a6
    const/4 v15, 0x0

    .line 573
    .local v15, "adaptiveReconfigurationBytes":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForKeys:Z

    if-eqz v2, :cond_b7

    .line 575
    const/16 v20, -0x4

    .line 590
    .local v20, "result":I
    :goto_af
    const/4 v2, -0x3

    move/from16 v0, v20

    if-ne v0, v2, :cond_108

    .line 591
    const/4 v2, 0x0

    goto/16 :goto_e

    .line 579
    .end local v20    # "result":I
    :cond_b7
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_ef

    .line 580
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_c0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_ea

    .line 581
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/Format;->initializationData:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    .line 582
    .local v17, "data":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 580
    add-int/lit8 v19, v19, 0x1

    goto :goto_c0

    .line 584
    .end local v17    # "data":[B
    :cond_ea
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 586
    .end local v19    # "i":I
    :cond_ef
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v15

    .line 587
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->readSource(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;)I

    move-result v20

    .restart local v20    # "result":I
    goto :goto_af

    .line 593
    :cond_108
    const/4 v2, -0x5

    move/from16 v0, v20

    if-ne v0, v2, :cond_12e

    .line 594
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_120

    .line 597
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 598
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 600
    :cond_120
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/FormatHolder;->format:Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 601
    const/4 v2, 0x1

    goto/16 :goto_e

    .line 605
    :cond_12e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v2

    if-eqz v2, :cond_18c

    .line 606
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_14b

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 611
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 613
    :cond_14b
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    .line 614
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-nez v2, :cond_15c

    .line 615
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 616
    const/4 v2, 0x0

    goto/16 :goto_e

    .line 619
    :cond_15c
    :try_start_15c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagationWorkaround:Z

    if-eqz v2, :cond_165

    .line 629
    :goto_162
    const/4 v2, 0x0

    goto/16 :goto_e

    .line 622
    :cond_165
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    .line 623
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 624
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I
    :try_end_17f
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_15c .. :try_end_17f} :catch_180

    goto :goto_162

    .line 626
    :catch_180
    move-exception v18

    .line 627
    .local v18, "e":Landroid/media/MediaCodec$CryptoException;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v2

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v2

    throw v2

    .line 631
    .end local v18    # "e":Landroid/media/MediaCodec$CryptoException;
    :cond_18c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result v16

    .line 632
    .local v16, "bufferEncrypted":Z
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->shouldWaitForKeys(Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForKeys:Z

    .line 633
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForKeys:Z

    if-eqz v2, :cond_1a9

    .line 634
    const/4 v2, 0x0

    goto/16 :goto_e

    .line 636
    :cond_1a9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    if-eqz v2, :cond_1ce

    if-nez v16, :cond_1ce

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->discardToSps(Ljava/nio/ByteBuffer;)V

    .line 638
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-nez v2, :cond_1c9

    .line 639
    const/4 v2, 0x1

    goto/16 :goto_e

    .line 641
    :cond_1c9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    .line 644
    :cond_1ce
    :try_start_1ce
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    iget-wide v6, v2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    .line 645
    .local v6, "presentationTimeUs":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v2

    if-eqz v2, :cond_1e9

    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    :cond_1e9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->flip()V

    .line 650
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onQueueInputBuffer(Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 652
    if-eqz v16, :cond_22c

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-static {v2, v15}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->getFrameworkCryptoInfo(Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;I)Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v5

    .line 655
    .local v5, "cryptoInfo":Landroid/media/MediaCodec$CryptoInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 659
    .end local v5    # "cryptoInfo":Landroid/media/MediaCodec$CryptoInfo;
    :goto_210
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    .line 660
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    .line 661
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 662
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    iget v3, v2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    .line 666
    const/4 v2, 0x1

    goto/16 :goto_e

    .line 657
    :cond_22c
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    const/4 v14, 0x0

    move-wide v12, v6

    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_244
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1ce .. :try_end_244} :catch_245

    goto :goto_210

    .line 663
    .end local v6    # "presentationTimeUs":J
    :catch_245
    move-exception v18

    .line 664
    .restart local v18    # "e":Landroid/media/MediaCodec$CryptoException;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v2

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v2

    throw v2
.end method

.method private static getFrameworkCryptoInfo(Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;I)Landroid/media/MediaCodec$CryptoInfo;
    .registers 6
    .param p0, "buffer"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;
    .param p1, "adaptiveReconfigurationBytes"    # I

    .prologue
    .line 671
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;->getFrameworkCryptoInfoV16()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v0

    .line 672
    .local v0, "cryptoInfo":Landroid/media/MediaCodec$CryptoInfo;
    if-nez p1, :cond_9

    .line 682
    :goto_8
    return-object v0

    .line 678
    :cond_9
    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v1, :cond_12

    .line 679
    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 681
    :cond_12
    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    add-int/2addr v3, p1

    aput v3, v1, v2

    goto :goto_8
.end method

.method private processEndOfStream()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 970
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReinitializationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 972
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    .line 973
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodec()V

    .line 978
    :goto_b
    return-void

    .line 975
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    .line 976
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onOutputStreamEnded()V

    goto :goto_b
.end method

.method private processOutputBuffersChanged()V
    .registers 2

    .prologue
    .line 928
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 929
    return-void
.end method

.method private processOutputFormat()V
    .registers 5

    .prologue
    const/16 v3, 0x20

    const/4 v2, 0x1

    .line 909
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 910
    .local v0, "format":Landroid/media/MediaFormat;
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaround:Z

    if-eqz v1, :cond_20

    const-string v1, "width"

    .line 911
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_20

    const-string v1, "height"

    .line 912
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_20

    .line 914
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 921
    :goto_1f
    return-void

    .line 917
    :cond_20
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround:Z

    if-eqz v1, :cond_29

    .line 918
    const-string v1, "channel-count"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 920
    :cond_29
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p0, v1, v0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    goto :goto_1f
.end method

.method private readFormat()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 491
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->readSource(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;)I

    move-result v0

    .line 492
    .local v0, "result":I
    const/4 v1, -0x5

    if-ne v0, v1, :cond_11

    .line 493
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/FormatHolder;->format:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 495
    :cond_11
    return-void
.end method

.method private shouldSkipOutputBuffer(J)Z
    .registers 8
    .param p1, "presentationTimeUs"    # J

    .prologue
    .line 983
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 984
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_23

    .line 985
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_20

    .line 986
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 987
    const/4 v2, 0x1

    .line 990
    :goto_1f
    return v2

    .line 984
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 990
    :cond_23
    const/4 v2, 0x0

    goto :goto_1f
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

    .line 686
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-nez v2, :cond_6

    .line 693
    :cond_5
    :goto_5
    return v1

    .line 689
    :cond_6
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/drm/DrmSession;->getState()I

    move-result v0

    .line 690
    .local v0, "drmSessionState":I
    if-nez v0, :cond_1d

    .line 691
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/drm/DrmSession;->getError()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v1

    throw v1

    .line 693
    :cond_1d
    const/4 v2, 0x4

    if-eq v0, v2, :cond_5

    if-nez p1, :cond_26

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->playClearSamplesWithoutKeys:Z

    if-nez v2, :cond_5

    :cond_26
    const/4 v1, 0x1

    goto :goto_5
.end method

.method private throwDecoderInitError(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V
    .registers 3
    .param p1, "e"    # Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 371
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method protected canReconfigureCodec(Landroid/media/MediaCodec;ZLorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;)Z
    .registers 6
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "codecIsAdaptive"    # Z
    .param p3, "oldFormat"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p4, "newFormat"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 818
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract configureCodec(Landroid/media/MediaCodec;Lorg/telegram/messenger/exoplayer2/Format;Landroid/media/MediaCrypto;)V
.end method

.method protected flushCodec()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 498
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    .line 499
    iput v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    .line 500
    iput v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    .line 501
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForKeys:Z

    .line 502
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipOutputBuffer:Z

    .line 503
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 504
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 505
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 506
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    if-nez v0, :cond_26

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    if-eqz v0, :cond_38

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    if-eqz v0, :cond_38

    .line 508
    :cond_26
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    .line 509
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodec()V

    .line 520
    :goto_2c
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    if-eqz v0, :cond_37

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    if-eqz v0, :cond_37

    .line 523
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 525
    :cond_37
    return-void

    .line 510
    :cond_38
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReinitializationState:I

    if-eqz v0, :cond_43

    .line 513
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    .line 514
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodec()V

    goto :goto_2c

    .line 517
    :cond_43
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 518
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    goto :goto_2c
.end method

.method protected final getCodec()Landroid/media/MediaCodec;
    .registers 2

    .prologue
    .line 379
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    return-object v0
.end method

.method protected getDecoderInfo(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/Format;Z)Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;
    .registers 5
    .param p1, "mediaCodecSelector"    # Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;
    .param p2, "format"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p3, "requiresSecureDecoder"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p2, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-interface {p1, v0, p3}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;->getDecoderInfo(Ljava/lang/String;Z)Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getDequeueOutputBufferTimeoutUs()J
    .registers 3

    .prologue
    .line 839
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isEnded()Z
    .registers 2

    .prologue
    .line 823
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .registers 5

    .prologue
    .line 828
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForKeys:Z

    if-nez v0, :cond_29

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_27

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    if-gez v0, :cond_27

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_29

    .line 830
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_29

    :cond_27
    const/4 v0, 0x1

    .line 828
    :goto_28
    return v0

    .line 830
    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method

.method protected final maybeInitCodec()V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 287
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->shouldInitCodec()Z

    move-result v2

    if-nez v2, :cond_7

    .line 367
    :cond_6
    :goto_6
    return-void

    .line 291
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v15, v2, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 293
    .local v15, "mimeType":Ljava/lang/String;
    const/4 v14, 0x0

    .line 294
    .local v14, "mediaCrypto":Landroid/media/MediaCrypto;
    const/4 v11, 0x0

    .line 295
    .local v11, "drmSessionRequiresSecureDecoder":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eqz v2, :cond_54

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/drm/DrmSession;->getState()I

    move-result v12

    .line 297
    .local v12, "drmSessionState":I
    if-nez v12, :cond_38

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/drm/DrmSession;->getError()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v6

    invoke-static {v2, v6}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v2

    throw v2

    .line 299
    :cond_38
    const/4 v2, 0x3

    if-eq v12, v2, :cond_3e

    const/4 v2, 0x4

    if-ne v12, v2, :cond_6

    .line 301
    :cond_3e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/drm/DrmSession;->getMediaCrypto()Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;->getWrappedMediaCrypto()Landroid/media/MediaCrypto;

    move-result-object v14

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v2, v15}, Lorg/telegram/messenger/exoplayer2/drm/DrmSession;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v11

    .line 309
    .end local v12    # "drmSessionState":I
    :cond_54
    const/4 v10, 0x0

    .line 311
    .local v10, "decoderInfo":Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;
    :try_start_55
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v11}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->getDecoderInfo(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/Format;Z)Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v10

    .line 312
    if-nez v10, :cond_a2

    if-eqz v11, :cond_a2

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v7}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->getDecoderInfo(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/Format;Z)Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v10

    .line 318
    if-eqz v10, :cond_a2

    .line 319
    const-string v2, "MediaCodecRenderer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Drm session requires secure decoder for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", but no secure decoder available. Trying to proceed with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v10, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catch Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_55 .. :try_end_a2} :catch_18d

    .line 328
    :cond_a2
    :goto_a2
    if-nez v10, :cond_b8

    .line 329
    new-instance v2, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    const/4 v7, 0x0

    const v16, -0xc34f

    move/from16 v0, v16

    invoke-direct {v2, v6, v7, v11, v0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Lorg/telegram/messenger/exoplayer2/Format;Ljava/lang/Throwable;ZI)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->throwDecoderInitError(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V

    .line 334
    :cond_b8
    iget-object v3, v10, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 335
    .local v3, "codecName":Ljava/lang/String;
    iget-boolean v2, v10, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->adaptive:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecIsAdaptive:Z

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-static {v3, v2}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/Format;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    .line 337
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    .line 338
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaround(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaround:Z

    .line 339
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagationWorkaround(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagationWorkaround:Z

    .line 340
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-static {v3, v2}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/Format;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround:Z

    .line 343
    :try_start_f8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 344
    .local v8, "codecInitializingTimestamp":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createCodec:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 345
    invoke-static {v3}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    .line 346
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->endSection()V

    .line 347
    const-string v2, "configureCodec"

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v14}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->configureCodec(Landroid/media/MediaCodec;Lorg/telegram/messenger/exoplayer2/Format;Landroid/media/MediaCrypto;)V

    .line 349
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->endSection()V

    .line 350
    const-string v2, "startCodec"

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    .line 352
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->endSection()V

    .line 353
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 354
    .local v4, "codecInitializedTimestamp":J
    sub-long v6, v4, v8

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onCodecInitialized(Ljava/lang/String;JJ)V

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputBuffers:[Ljava/nio/ByteBuffer;

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;
    :try_end_164
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_164} :catch_1a1

    .line 362
    .end local v4    # "codecInitializedTimestamp":J
    .end local v8    # "codecInitializingTimestamp":J
    :goto_164
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->getState()I

    move-result v2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_1b1

    .line 363
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v16, 0x3e8

    add-long v6, v6, v16

    :goto_173
    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    .line 364
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    .line 365
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    iget v6, v2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I

    goto/16 :goto_6

    .line 323
    .end local v3    # "codecName":Ljava/lang/String;
    :catch_18d
    move-exception v13

    .line 324
    .local v13, "e":Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
    new-instance v2, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    const v7, -0xc34e

    invoke-direct {v2, v6, v13, v11, v7}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Lorg/telegram/messenger/exoplayer2/Format;Ljava/lang/Throwable;ZI)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->throwDecoderInitError(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V

    goto/16 :goto_a2

    .line 358
    .end local v13    # "e":Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
    .restart local v3    # "codecName":Ljava/lang/String;
    :catch_1a1
    move-exception v13

    .line 359
    .local v13, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-direct {v2, v6, v13, v11, v3}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Lorg/telegram/messenger/exoplayer2/Format;Ljava/lang/Throwable;ZLjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->throwDecoderInitError(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V

    goto :goto_164

    .line 363
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_1b1
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_173
.end method

.method protected onCodecInitialized(Ljava/lang/String;JJ)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .prologue
    .line 710
    return-void
.end method

.method protected onDisabled()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 398
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    .line 400
    :try_start_3
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_4a

    .line 403
    :try_start_6
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_11

    .line 404
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_2d

    .line 408
    :cond_11
    :try_start_11
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eq v0, v1, :cond_22

    .line 409
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_27

    .line 412
    :cond_22
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 413
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 417
    return-void

    .line 412
    :catchall_27
    move-exception v0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 413
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    throw v0

    .line 407
    :catchall_2d
    move-exception v0

    .line 408
    :try_start_2e
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_3f

    .line 409
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V
    :try_end_3f
    .catchall {:try_start_2e .. :try_end_3f} :catchall_44

    .line 412
    :cond_3f
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 413
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    throw v0

    .line 412
    :catchall_44
    move-exception v0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 413
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    throw v0

    .line 402
    :catchall_4a
    move-exception v0

    .line 403
    :try_start_4b
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_56

    .line 404
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V
    :try_end_56
    .catchall {:try_start_4b .. :try_end_56} :catchall_72

    .line 408
    :cond_56
    :try_start_56
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_67

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_67

    .line 409
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V
    :try_end_67
    .catchall {:try_start_56 .. :try_end_67} :catchall_6c

    .line 412
    :cond_67
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 413
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    throw v0

    .line 412
    :catchall_6c
    move-exception v0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 413
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    throw v0

    .line 407
    :catchall_72
    move-exception v0

    .line 408
    :try_start_73
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_84

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_84

    .line 409
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V
    :try_end_84
    .catchall {:try_start_73 .. :try_end_84} :catchall_89

    .line 412
    :cond_84
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 413
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    throw v0

    .line 412
    :catchall_89
    move-exception v0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 413
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    throw v0
.end method

.method protected onEnabled(Z)V
    .registers 3
    .param p1, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 384
    new-instance v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    .line 385
    return-void
.end method

.method protected onInputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V
    .registers 9
    .param p1, "newFormat"    # Lorg/telegram/messenger/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 719
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    .line 720
    .local v1, "oldFormat":Lorg/telegram/messenger/exoplayer2/Format;
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    .line 722
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v6, v2, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    if-nez v1, :cond_31

    move-object v2, v3

    :goto_e
    invoke-static {v6, v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    move v0, v4

    .line 724
    .local v0, "drmInitDataChanged":Z
    :goto_15
    if-eqz v0, :cond_53

    .line 725
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    if-eqz v2, :cond_85

    .line 726
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    if-nez v2, :cond_36

    .line 727
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Media requires a DrmSessionManager"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v3

    .line 727
    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v2

    throw v2

    .line 722
    .end local v0    # "drmInitDataChanged":Z
    :cond_31
    iget-object v2, v1, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    goto :goto_e

    :cond_34
    move v0, v5

    goto :goto_15

    .line 730
    .restart local v0    # "drmInitDataChanged":Z
    :cond_36
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v6, v6, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    invoke-interface {v2, v3, v6}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->acquireSession(Landroid/os/Looper;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 731
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-ne v2, v3, :cond_53

    .line 732
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v2, v3}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V

    .line 739
    :cond_53
    :goto_53
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-ne v2, v3, :cond_8a

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    if-eqz v2, :cond_8a

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecIsAdaptive:Z

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    .line 740
    invoke-virtual {p0, v2, v3, v1, v6}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->canReconfigureCodec(Landroid/media/MediaCodec;ZLorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 741
    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    .line 742
    iput v4, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 743
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaround:Z

    if-eqz v2, :cond_88

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget v2, v2, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    iget v3, v1, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    if-ne v2, v3, :cond_88

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget v2, v2, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    iget v3, v1, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    if-ne v2, v3, :cond_88

    move v2, v4

    :goto_82
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 755
    :goto_84
    return-void

    .line 735
    :cond_85
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    goto :goto_53

    :cond_88
    move v2, v5

    .line 743
    goto :goto_82

    .line 746
    :cond_8a
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-eqz v2, :cond_91

    .line 748
    iput v4, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReinitializationState:I

    goto :goto_84

    .line 751
    :cond_91
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->releaseCodec()V

    .line 752
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodec()V

    goto :goto_84
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 3
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "outputFormat"    # Landroid/media/MediaFormat;

    .prologue
    .line 767
    return-void
.end method

.method protected onOutputStreamEnded()V
    .registers 1

    .prologue
    .line 777
    return-void
.end method

.method protected onPositionReset(JZ)V
    .registers 5
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 389
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    .line 390
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    .line 391
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_c

    .line 392
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->flushCodec()V

    .line 394
    :cond_c
    return-void
.end method

.method protected onProcessedOutputBuffer(J)V
    .registers 3
    .param p1, "presentationTimeUs"    # J

    .prologue
    .line 799
    return-void
.end method

.method protected onQueueInputBuffer(Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;)V
    .registers 2
    .param p1, "buffer"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    .prologue
    .line 788
    return-void
.end method

.method protected onStarted()V
    .registers 1

    .prologue
    .line 466
    return-void
.end method

.method protected onStopped()V
    .registers 1

    .prologue
    .line 471
    return-void
.end method

.method protected abstract processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method protected releaseCodec()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 420
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_62

    .line 421
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    .line 422
    iput v4, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputIndex:I

    .line 423
    iput v4, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputIndex:I

    .line 424
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->waitingForKeys:Z

    .line 425
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipOutputBuffer:Z

    .line 426
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 427
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->inputBuffers:[Ljava/nio/ByteBuffer;

    .line 428
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 429
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    .line 430
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    .line 431
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecIsAdaptive:Z

    .line 432
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    .line 433
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    .line 434
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaround:Z

    .line 435
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagationWorkaround:Z

    .line 436
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    .line 437
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround:Z

    .line 438
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 439
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 440
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    .line 441
    iput v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 442
    iput v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codecReinitializationState:I

    .line 443
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    .line 445
    :try_start_43
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_82

    .line 448
    :try_start_48
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_4d
    .catchall {:try_start_48 .. :try_end_4d} :catchall_67

    .line 450
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    .line 451
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_62

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eq v0, v1, :cond_62

    .line 453
    :try_start_59
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_63

    .line 455
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    .line 461
    :cond_62
    return-void

    .line 455
    :catchall_63
    move-exception v0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    throw v0

    .line 450
    :catchall_67
    move-exception v0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    .line 451
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_7d

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_7d

    .line 453
    :try_start_74
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_7e

    .line 455
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    :cond_7d
    throw v0

    :catchall_7e
    move-exception v0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    throw v0

    .line 447
    :catchall_82
    move-exception v0

    .line 448
    :try_start_83
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_88
    .catchall {:try_start_83 .. :try_end_88} :catchall_a2

    .line 450
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    .line 451
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_9d

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_9d

    .line 453
    :try_start_94
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V
    :try_end_9b
    .catchall {:try_start_94 .. :try_end_9b} :catchall_9e

    .line 455
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    :cond_9d
    throw v0

    :catchall_9e
    move-exception v0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    throw v0

    .line 450
    :catchall_a2
    move-exception v0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    .line 451
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_b8

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->pendingDrmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_b8

    .line 453
    :try_start_af
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSessionManager:Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;->releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V
    :try_end_b6
    .catchall {:try_start_af .. :try_end_b6} :catchall_b9

    .line 455
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    :cond_b8
    throw v0

    :catchall_b9
    move-exception v0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drmSession:Lorg/telegram/messenger/exoplayer2/drm/DrmSession;

    throw v0
.end method

.method public render(JJ)V
    .registers 6
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 475
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    if-nez v0, :cond_7

    .line 476
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->readFormat()V

    .line 478
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->maybeInitCodec()V

    .line 479
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_28

    .line 480
    const-string v0, "drainAndFeed"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 481
    :cond_13
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->drainOutputBuffer(JJ)Z

    move-result v0

    if-nez v0, :cond_13

    .line 482
    :cond_19
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->feedInputBuffer()Z

    move-result v0

    if-nez v0, :cond_19

    .line 483
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->endSection()V

    .line 487
    :cond_22
    :goto_22
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 488
    return-void

    .line 484
    :cond_28
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    if-eqz v0, :cond_22

    .line 485
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->skipToKeyframeBefore(J)V

    goto :goto_22
.end method

.method protected shouldInitCodec()Z
    .registers 2

    .prologue
    .line 375
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->codec:Landroid/media/MediaCodec;

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->format:Lorg/telegram/messenger/exoplayer2/Format;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final supportsFormat(Lorg/telegram/messenger/exoplayer2/Format;)I
    .registers 4
    .param p1, "format"    # Lorg/telegram/messenger/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 243
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;

    invoke-virtual {p0, v1, p1}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->supportsFormat(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/Format;)I
    :try_end_5
    .catch Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    .line 244
    :catch_7
    move-exception v0

    .line 245
    .local v0, "e":Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v1

    throw v1
.end method

.method protected abstract supportsFormat(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/Format;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method public final supportsMixedMimeTypeAdaptation()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 237
    const/4 v0, 0x4

    return v0
.end method
