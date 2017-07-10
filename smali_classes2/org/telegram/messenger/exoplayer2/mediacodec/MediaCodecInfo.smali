.class public final Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MediaCodecInfo"


# instance fields
.field public final adaptive:Z

.field private final capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field private final mimeType:Ljava/lang/String;

.field public final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "capabilities"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 88
    if-eqz p3, :cond_1b

    invoke-static {p3}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->isAdaptive(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    :goto_18
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->adaptive:Z

    .line 89
    return-void

    .line 88
    :cond_1b
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private static isAdaptive(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .registers 3
    .param p0, "capabilities"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .prologue
    .line 265
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_e

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->isAdaptiveV19(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static isAdaptiveV19(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .registers 2
    .param p0, "capabilities"    # Landroid/media/MediaCodecInfo$CodecCapabilities;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 270
    const-string v0, "adaptive-playback"

    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private logAssumedSupport(Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 260
    const-string v0, "MediaCodecInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AssumedSupport ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/exoplayer2/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void
.end method

.method private logNoSupport(Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 255
    const-string v0, "MediaCodecInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NoSupport ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/exoplayer2/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "capabilities"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .prologue
    .line 77
    new-instance v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    return-object v0
.end method

.method public static newPassthroughInstance(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 64
    new-instance v0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;

    invoke-direct {v0, p0, v1, v1}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    return-object v0
.end method


# virtual methods
.method public getProfileLevels()[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-nez v0, :cond_e

    :cond_a
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    goto :goto_d
.end method

.method public isAudioChannelCountSupportedV21(I)Z
    .registers 6
    .param p1, "channelCount"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 238
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v2, :cond_b

    .line 239
    const-string v2, "channelCount.caps"

    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 251
    :goto_a
    return v1

    .line 242
    :cond_b
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v0

    .line 243
    .local v0, "audioCapabilities":Landroid/media/MediaCodecInfo$AudioCapabilities;
    if-nez v0, :cond_19

    .line 244
    const-string v2, "channelCount.aCaps"

    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    goto :goto_a

    .line 247
    :cond_19
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    move-result v2

    if-ge v2, p1, :cond_36

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channelCount.support, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    goto :goto_a

    .line 251
    :cond_36
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isAudioSampleRateSupportedV21(I)Z
    .registers 6
    .param p1, "sampleRate"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 212
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v2, :cond_b

    .line 213
    const-string v2, "sampleRate.caps"

    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 225
    :goto_a
    return v1

    .line 216
    :cond_b
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v0

    .line 217
    .local v0, "audioCapabilities":Landroid/media/MediaCodecInfo$AudioCapabilities;
    if-nez v0, :cond_19

    .line 218
    const-string v2, "sampleRate.aCaps"

    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    goto :goto_a

    .line 221
    :cond_19
    invoke-virtual {v0, p1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    move-result v2

    if-nez v2, :cond_36

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sampleRate.support, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    goto :goto_a

    .line 225
    :cond_36
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isCodecSupported(Ljava/lang/String;)Z
    .registers 12
    .param p1, "codec"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 109
    if-eqz p1, :cond_8

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    if-nez v3, :cond_a

    :cond_8
    move v3, v4

    .line 132
    :goto_9
    return v3

    .line 112
    :cond_a
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "codecMimeType":Ljava/lang/String;
    if-nez v1, :cond_12

    move v3, v4

    .line 114
    goto :goto_9

    .line 116
    :cond_12
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "codec.mime "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    move v3, v5

    .line 118
    goto :goto_9

    .line 120
    :cond_3c
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 121
    .local v2, "codecProfileAndLevel":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v2, :cond_44

    move v3, v4

    .line 123
    goto :goto_9

    .line 125
    :cond_44
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->getProfileLevels()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v7

    array-length v8, v7

    move v6, v5

    :goto_4a
    if-ge v6, v8, :cond_6c

    aget-object v0, v7, v6

    .line 126
    .local v0, "capabilities":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget v9, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v9, v3, :cond_68

    iget v9, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 127
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v9, v3, :cond_68

    move v3, v4

    .line 128
    goto :goto_9

    .line 125
    :cond_68
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_4a

    .line 131
    .end local v0    # "capabilities":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_6c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "codec.profileLevel, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    move v3, v5

    .line 132
    goto/16 :goto_9
.end method

.method public isVideoSizeAndRateSupportedV21(IID)Z
    .registers 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # D
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 180
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v2, :cond_b

    .line 181
    const-string v2, "sizeAndRate.caps"

    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 199
    :goto_a
    return v1

    .line 184
    :cond_b
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    .line 185
    .local v0, "videoCapabilities":Landroid/media/MediaCodecInfo$VideoCapabilities;
    if-nez v0, :cond_19

    .line 186
    const-string v2, "sizeAndRate.vCaps"

    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    goto :goto_a

    .line 189
    :cond_19
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result v2

    if-nez v2, :cond_7c

    .line 193
    if-ge p1, p2, :cond_27

    invoke-virtual {v0, p2, p1, p3, p4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result v2

    if-nez v2, :cond_52

    .line 194
    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sizeAndRate.support, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    goto :goto_a

    .line 197
    :cond_52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sizeAndRate.rotated, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->logAssumedSupport(Ljava/lang/String;)V

    .line 199
    :cond_7c
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isVideoSizeSupportedV21(II)Z
    .registers 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 146
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v2, :cond_b

    .line 147
    const-string v2, "size.caps"

    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 165
    :goto_a
    return v1

    .line 150
    :cond_b
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    .line 151
    .local v0, "videoCapabilities":Landroid/media/MediaCodecInfo$VideoCapabilities;
    if-nez v0, :cond_19

    .line 152
    const-string v2, "size.vCaps"

    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    goto :goto_a

    .line 155
    :cond_19
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v2

    if-nez v2, :cond_68

    .line 159
    if-ge p1, p2, :cond_27

    invoke-virtual {v0, p2, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v2

    if-nez v2, :cond_48

    .line 160
    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size.support, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    goto :goto_a

    .line 163
    :cond_48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size.rotated, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->logAssumedSupport(Ljava/lang/String;)V

    .line 165
    :cond_68
    const/4 v1, 0x1

    goto :goto_a
.end method
