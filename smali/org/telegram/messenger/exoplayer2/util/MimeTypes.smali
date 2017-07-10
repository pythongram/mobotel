.class public final Lorg/telegram/messenger/exoplayer2/util/MimeTypes;
.super Ljava/lang/Object;
.source "MimeTypes.java"


# static fields
.field public static final APPLICATION_CAMERA_MOTION:Ljava/lang/String; = "application/x-camera-motion"

.field public static final APPLICATION_CEA608:Ljava/lang/String; = "application/cea-608"

.field public static final APPLICATION_CEA708:Ljava/lang/String; = "application/cea-708"

.field public static final APPLICATION_ID3:Ljava/lang/String; = "application/id3"

.field public static final APPLICATION_M3U8:Ljava/lang/String; = "application/x-mpegURL"

.field public static final APPLICATION_MP4:Ljava/lang/String; = "application/mp4"

.field public static final APPLICATION_MP4VTT:Ljava/lang/String; = "application/x-mp4vtt"

.field public static final APPLICATION_PGS:Ljava/lang/String; = "application/pgs"

.field public static final APPLICATION_RAWCC:Ljava/lang/String; = "application/x-rawcc"

.field public static final APPLICATION_SCTE35:Ljava/lang/String; = "application/x-scte35"

.field public static final APPLICATION_SUBRIP:Ljava/lang/String; = "application/x-subrip"

.field public static final APPLICATION_TTML:Ljava/lang/String; = "application/ttml+xml"

.field public static final APPLICATION_TX3G:Ljava/lang/String; = "application/x-quicktime-tx3g"

.field public static final APPLICATION_VOBSUB:Ljava/lang/String; = "application/vobsub"

.field public static final APPLICATION_WEBM:Ljava/lang/String; = "application/webm"

.field public static final AUDIO_AAC:Ljava/lang/String; = "audio/mp4a-latm"

.field public static final AUDIO_AC3:Ljava/lang/String; = "audio/ac3"

.field public static final AUDIO_AMR_NB:Ljava/lang/String; = "audio/3gpp"

.field public static final AUDIO_AMR_WB:Ljava/lang/String; = "audio/amr-wb"

.field public static final AUDIO_DTS:Ljava/lang/String; = "audio/vnd.dts"

.field public static final AUDIO_DTS_EXPRESS:Ljava/lang/String; = "audio/vnd.dts.hd;profile=lbr"

.field public static final AUDIO_DTS_HD:Ljava/lang/String; = "audio/vnd.dts.hd"

.field public static final AUDIO_E_AC3:Ljava/lang/String; = "audio/eac3"

.field public static final AUDIO_FLAC:Ljava/lang/String; = "audio/x-flac"

.field public static final AUDIO_MP4:Ljava/lang/String; = "audio/mp4"

.field public static final AUDIO_MPEG:Ljava/lang/String; = "audio/mpeg"

.field public static final AUDIO_MPEG_L1:Ljava/lang/String; = "audio/mpeg-L1"

.field public static final AUDIO_MPEG_L2:Ljava/lang/String; = "audio/mpeg-L2"

.field public static final AUDIO_OPUS:Ljava/lang/String; = "audio/opus"

.field public static final AUDIO_RAW:Ljava/lang/String; = "audio/raw"

.field public static final AUDIO_TRUEHD:Ljava/lang/String; = "audio/true-hd"

.field public static final AUDIO_VORBIS:Ljava/lang/String; = "audio/vorbis"

.field public static final AUDIO_WEBM:Ljava/lang/String; = "audio/webm"

.field public static final BASE_TYPE_APPLICATION:Ljava/lang/String; = "application"

.field public static final BASE_TYPE_AUDIO:Ljava/lang/String; = "audio"

.field public static final BASE_TYPE_TEXT:Ljava/lang/String; = "text"

.field public static final BASE_TYPE_VIDEO:Ljava/lang/String; = "video"

.field public static final TEXT_VTT:Ljava/lang/String; = "text/vtt"

.field public static final VIDEO_H263:Ljava/lang/String; = "video/3gpp"

.field public static final VIDEO_H264:Ljava/lang/String; = "video/avc"

.field public static final VIDEO_H265:Ljava/lang/String; = "video/hevc"

.field public static final VIDEO_MP4:Ljava/lang/String; = "video/mp4"

.field public static final VIDEO_MP4V:Ljava/lang/String; = "video/mp4v-es"

.field public static final VIDEO_MPEG2:Ljava/lang/String; = "video/mpeg2"

.field public static final VIDEO_UNKNOWN:Ljava/lang/String; = "video/x-unknown"

.field public static final VIDEO_VC1:Ljava/lang/String; = "video/wvc1"

.field public static final VIDEO_VP8:Ljava/lang/String; = "video/x-vnd.on2.vp8"

.field public static final VIDEO_VP9:Ljava/lang/String; = "video/x-vnd.on2.vp9"

.field public static final VIDEO_WEBM:Ljava/lang/String; = "video/webm"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "codecs"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 150
    if-nez p0, :cond_5

    move-object v2, v3

    .line 160
    :cond_4
    :goto_4
    return-object v2

    .line 153
    :cond_5
    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "codecList":[Ljava/lang/String;
    array-length v5, v1

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v5, :cond_20

    aget-object v0, v1, v4

    .line 155
    .local v0, "codec":Ljava/lang/String;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "mimeType":Ljava/lang/String;
    if-eqz v2, :cond_1d

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 154
    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .end local v0    # "codec":Ljava/lang/String;
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_20
    move-object v2, v3

    .line 160
    goto :goto_4
.end method

.method public static getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "codec"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 170
    if-nez p0, :cond_4

    .line 197
    :cond_3
    :goto_3
    return-object v0

    .line 173
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 174
    const-string v1, "avc1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "avc3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 175
    :cond_18
    const-string v0, "video/avc"

    goto :goto_3

    .line 176
    :cond_1b
    const-string v1, "hev1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "hvc1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 177
    :cond_2b
    const-string v0, "video/hevc"

    goto :goto_3

    .line 178
    :cond_2e
    const-string v1, "vp9"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 179
    const-string v0, "video/x-vnd.on2.vp9"

    goto :goto_3

    .line 180
    :cond_39
    const-string v1, "vp8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 181
    const-string v0, "video/x-vnd.on2.vp8"

    goto :goto_3

    .line 182
    :cond_44
    const-string v1, "mp4a"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 183
    const-string v0, "audio/mp4a-latm"

    goto :goto_3

    .line 184
    :cond_4f
    const-string v1, "ac-3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5f

    const-string v1, "dac3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 185
    :cond_5f
    const-string v0, "audio/ac3"

    goto :goto_3

    .line 186
    :cond_62
    const-string v1, "ec-3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_72

    const-string v1, "dec3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 187
    :cond_72
    const-string v0, "audio/eac3"

    goto :goto_3

    .line 188
    :cond_75
    const-string v1, "dtsc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_85

    const-string v1, "dtse"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 189
    :cond_85
    const-string v0, "audio/vnd.dts"

    goto/16 :goto_3

    .line 190
    :cond_89
    const-string v1, "dtsh"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_99

    const-string v1, "dtsl"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 191
    :cond_99
    const-string v0, "audio/vnd.dts.hd"

    goto/16 :goto_3

    .line 192
    :cond_9d
    const-string v1, "opus"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 193
    const-string v0, "audio/opus"

    goto/16 :goto_3

    .line 194
    :cond_a9
    const-string v1, "vorbis"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 195
    const-string v0, "audio/vorbis"

    goto/16 :goto_3
.end method

.method private static getTopLevelType(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 245
    if-nez p0, :cond_4

    .line 246
    const/4 v1, 0x0

    .line 252
    :goto_3
    return-object v1

    .line 248
    :cond_4
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 249
    .local v0, "indexOfSlash":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_26

    .line 250
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid mime type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    :cond_26
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public static getTrackType(Ljava/lang/String;)I
    .registers 3
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 209
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 224
    :cond_7
    :goto_7
    return v0

    .line 211
    :cond_8
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 212
    const/4 v0, 0x1

    goto :goto_7

    .line 213
    :cond_10
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 214
    const/4 v0, 0x2

    goto :goto_7

    .line 215
    :cond_18
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "application/cea-608"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "application/cea-708"

    .line 216
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "application/x-subrip"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "application/ttml+xml"

    .line 217
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "application/x-quicktime-tx3g"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "application/x-mp4vtt"

    .line 218
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "application/x-rawcc"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "application/vobsub"

    .line 219
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "application/pgs"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 220
    :cond_66
    const/4 v0, 0x3

    goto :goto_7

    .line 221
    :cond_68
    const-string v1, "application/id3"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 222
    const/4 v0, 0x4

    goto :goto_7
.end method

.method public static getTrackTypeOfCodec(Ljava/lang/String;)I
    .registers 2
    .param p0, "codec"    # Ljava/lang/String;

    .prologue
    .line 235
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "codecs"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 130
    if-nez p0, :cond_5

    move-object v2, v3

    .line 140
    :cond_4
    :goto_4
    return-object v2

    .line 133
    :cond_5
    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "codecList":[Ljava/lang/String;
    array-length v5, v1

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v5, :cond_20

    aget-object v0, v1, v4

    .line 135
    .local v0, "codec":Ljava/lang/String;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "mimeType":Ljava/lang/String;
    if-eqz v2, :cond_1d

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 134
    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .end local v0    # "codec":Ljava/lang/String;
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_20
    move-object v2, v3

    .line 140
    goto :goto_4
.end method

.method public static isApplication(Ljava/lang/String;)Z
    .registers 3
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 119
    const-string v0, "application"

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->getTopLevelType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAudio(Ljava/lang/String;)Z
    .registers 3
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 89
    const-string v0, "audio"

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->getTopLevelType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isText(Ljava/lang/String;)Z
    .registers 3
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 109
    const-string v0, "text"

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->getTopLevelType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isVideo(Ljava/lang/String;)Z
    .registers 3
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 99
    const-string v0, "video"

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->getTopLevelType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
