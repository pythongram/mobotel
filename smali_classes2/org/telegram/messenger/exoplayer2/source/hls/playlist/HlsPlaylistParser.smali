.class public final Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;
.super Ljava/lang/Object;
.source "HlsPlaylistParser.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable$Parser",
        "<",
        "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;",
        ">;"
    }
.end annotation


# static fields
.field private static final BOOLEAN_FALSE:Ljava/lang/String; = "NO"

.field private static final BOOLEAN_TRUE:Ljava/lang/String; = "YES"

.field private static final METHOD_AES128:Ljava/lang/String; = "AES-128"

.field private static final METHOD_NONE:Ljava/lang/String; = "NONE"

.field private static final REGEX_ATTR_BYTERANGE:Ljava/util/regex/Pattern;

.field private static final REGEX_AUDIO:Ljava/util/regex/Pattern;

.field private static final REGEX_AUTOSELECT:Ljava/util/regex/Pattern;

.field private static final REGEX_BANDWIDTH:Ljava/util/regex/Pattern;

.field private static final REGEX_BYTERANGE:Ljava/util/regex/Pattern;

.field private static final REGEX_CLOSED_CAPTIONS:Ljava/util/regex/Pattern;

.field private static final REGEX_CODECS:Ljava/util/regex/Pattern;

.field private static final REGEX_DEFAULT:Ljava/util/regex/Pattern;

.field private static final REGEX_FORCED:Ljava/util/regex/Pattern;

.field private static final REGEX_GROUP_ID:Ljava/util/regex/Pattern;

.field private static final REGEX_INSTREAM_ID:Ljava/util/regex/Pattern;

.field private static final REGEX_IV:Ljava/util/regex/Pattern;

.field private static final REGEX_LANGUAGE:Ljava/util/regex/Pattern;

.field private static final REGEX_MEDIA_DURATION:Ljava/util/regex/Pattern;

.field private static final REGEX_MEDIA_SEQUENCE:Ljava/util/regex/Pattern;

.field private static final REGEX_METHOD:Ljava/util/regex/Pattern;

.field private static final REGEX_NAME:Ljava/util/regex/Pattern;

.field private static final REGEX_RESOLUTION:Ljava/util/regex/Pattern;

.field private static final REGEX_SUBTITLES:Ljava/util/regex/Pattern;

.field private static final REGEX_TARGET_DURATION:Ljava/util/regex/Pattern;

.field private static final REGEX_TYPE:Ljava/util/regex/Pattern;

.field private static final REGEX_URI:Ljava/util/regex/Pattern;

.field private static final REGEX_VERSION:Ljava/util/regex/Pattern;

.field private static final REGEX_VIDEO:Ljava/util/regex/Pattern;

.field private static final TAG_BYTERANGE:Ljava/lang/String; = "#EXT-X-BYTERANGE"

.field private static final TAG_DISCONTINUITY:Ljava/lang/String; = "#EXT-X-DISCONTINUITY"

.field private static final TAG_DISCONTINUITY_SEQUENCE:Ljava/lang/String; = "#EXT-X-DISCONTINUITY-SEQUENCE"

.field private static final TAG_ENDLIST:Ljava/lang/String; = "#EXT-X-ENDLIST"

.field private static final TAG_INIT_SEGMENT:Ljava/lang/String; = "#EXT-X-MAP"

.field private static final TAG_KEY:Ljava/lang/String; = "#EXT-X-KEY"

.field private static final TAG_MEDIA:Ljava/lang/String; = "#EXT-X-MEDIA"

.field private static final TAG_MEDIA_DURATION:Ljava/lang/String; = "#EXTINF"

.field private static final TAG_MEDIA_SEQUENCE:Ljava/lang/String; = "#EXT-X-MEDIA-SEQUENCE"

.field private static final TAG_STREAM_INF:Ljava/lang/String; = "#EXT-X-STREAM-INF"

.field private static final TAG_TARGET_DURATION:Ljava/lang/String; = "#EXT-X-TARGETDURATION"

.field private static final TAG_VERSION:Ljava/lang/String; = "#EXT-X-VERSION"

.field private static final TYPE_AUDIO:Ljava/lang/String; = "AUDIO"

.field private static final TYPE_CLOSED_CAPTIONS:Ljava/lang/String; = "CLOSED-CAPTIONS"

.field private static final TYPE_SUBTITLES:Ljava/lang/String; = "SUBTITLES"

.field private static final TYPE_VIDEO:Ljava/lang/String; = "VIDEO"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    const-string v0, "GROUP-ID=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_GROUP_ID:Ljava/util/regex/Pattern;

    .line 66
    const-string v0, "VIDEO=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_VIDEO:Ljava/util/regex/Pattern;

    .line 67
    const-string v0, "AUDIO=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_AUDIO:Ljava/util/regex/Pattern;

    .line 68
    const-string v0, "CLOSED-CAPTIONS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_CLOSED_CAPTIONS:Ljava/util/regex/Pattern;

    .line 69
    const-string v0, "SUBTITLES=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_SUBTITLES:Ljava/util/regex/Pattern;

    .line 70
    const-string v0, "BANDWIDTH=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_BANDWIDTH:Ljava/util/regex/Pattern;

    .line 71
    const-string v0, "CODECS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_CODECS:Ljava/util/regex/Pattern;

    .line 72
    const-string v0, "RESOLUTION=(\\d+x\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_RESOLUTION:Ljava/util/regex/Pattern;

    .line 73
    const-string v0, "#EXT-X-VERSION:(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_VERSION:Ljava/util/regex/Pattern;

    .line 74
    const-string v0, "#EXT-X-TARGETDURATION:(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_TARGET_DURATION:Ljava/util/regex/Pattern;

    .line 76
    const-string v0, "#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_SEQUENCE:Ljava/util/regex/Pattern;

    .line 78
    const-string v0, "#EXTINF:([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_DURATION:Ljava/util/regex/Pattern;

    .line 80
    const-string v0, "#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE:Ljava/util/regex/Pattern;

    .line 82
    const-string v0, "BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\""

    .line 83
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_BYTERANGE:Ljava/util/regex/Pattern;

    .line 84
    const-string v0, "METHOD=(NONE|AES-128)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_METHOD:Ljava/util/regex/Pattern;

    .line 86
    const-string v0, "URI=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    .line 87
    const-string v0, "IV=([^,.*]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_IV:Ljava/util/regex/Pattern;

    .line 88
    const-string v0, "TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_TYPE:Ljava/util/regex/Pattern;

    .line 90
    const-string v0, "LANGUAGE=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_LANGUAGE:Ljava/util/regex/Pattern;

    .line 91
    const-string v0, "NAME=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_NAME:Ljava/util/regex/Pattern;

    .line 92
    const-string v0, "INSTREAM-ID=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_INSTREAM_ID:Ljava/util/regex/Pattern;

    .line 93
    const-string v0, "AUTOSELECT"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_AUTOSELECT:Ljava/util/regex/Pattern;

    .line 94
    const-string v0, "DEFAULT"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_DEFAULT:Ljava/util/regex/Pattern;

    .line 95
    const-string v0, "FORCED"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_FORCED:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .registers 3
    .param p0, "attribute"    # Ljava/lang/String;

    .prologue
    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "YES"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method private static parseBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z
    .registers 6
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 333
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 334
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 335
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "YES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 337
    .end local p2    # "defaultValue":Z
    :cond_15
    return p2
.end method

.method private static parseDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)D
    .registers 4
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-static {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method private static parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I
    .registers 3
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 317
    invoke-static {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static parseMasterPlaylist(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
    .registers 30
    .param p0, "iterator"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;
    .param p1, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v20, "variants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v21, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v22, "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;>;"
    const/16 v23, 0x0

    .line 136
    .local v23, "muxedAudioFormat":Lorg/telegram/messenger/exoplayer2/Format;
    const/16 v24, 0x0

    .line 139
    .local v24, "muxedCaptionFormat":Lorg/telegram/messenger/exoplayer2/Format;
    :cond_13
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_134

    .line 140
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;->next()Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, "line":Ljava/lang/String;
    const-string v2, "#EXT-X-MEDIA"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 142
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseSelectionFlags(Ljava/lang/String;)I

    move-result v9

    .line 143
    .local v9, "selectionFlags":I
    sget-object v2, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {v4, v2}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v26

    .line 144
    .local v26, "uri":Ljava/lang/String;
    sget-object v2, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_NAME:Ljava/util/regex/Pattern;

    invoke-static {v4, v2}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "name":Ljava/lang/String;
    sget-object v2, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_LANGUAGE:Ljava/util/regex/Pattern;

    invoke-static {v4, v2}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v10

    .line 147
    .local v10, "language":Ljava/lang/String;
    sget-object v2, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_TYPE:Ljava/util/regex/Pattern;

    invoke-static {v4, v2}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_13c

    :cond_49
    :goto_49
    packed-switch v2, :pswitch_data_14a

    goto :goto_13

    .line 149
    :pswitch_4d
    const-string v2, "application/x-mpegURL"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-static/range {v1 .. v10}, Lorg/telegram/messenger/exoplayer2/Format;->createAudioContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    .end local v4    # "line":Ljava/lang/String;
    move-result-object v5

    .line 152
    .local v5, "format":Lorg/telegram/messenger/exoplayer2/Format;
    if-nez v26, :cond_7c

    .line 153
    move-object/from16 v23, v5

    goto :goto_13

    .line 147
    .end local v5    # "format":Lorg/telegram/messenger/exoplayer2/Format;
    .restart local v4    # "line":Ljava/lang/String;
    :sswitch_5e
    const-string v6, "AUDIO"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    const/4 v2, 0x0

    goto :goto_49

    :sswitch_68
    const-string v6, "SUBTITLES"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    const/4 v2, 0x1

    goto :goto_49

    :sswitch_72
    const-string v6, "CLOSED-CAPTIONS"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    const/4 v2, 0x2

    goto :goto_49

    .line 155
    .end local v4    # "line":Ljava/lang/String;
    .restart local v5    # "format":Lorg/telegram/messenger/exoplayer2/Format;
    :cond_7c
    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    move-object/from16 v4, v26

    move-object v7, v5

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;[Lorg/telegram/messenger/exoplayer2/Format;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 159
    .end local v5    # "format":Lorg/telegram/messenger/exoplayer2/Format;
    .restart local v4    # "line":Ljava/lang/String;
    :pswitch_8d
    const-string v12, "application/x-mpegURL"

    const-string v13, "text/vtt"

    const/4 v14, 0x0

    const/4 v15, -0x1

    move-object v11, v1

    move/from16 v16, v9

    move-object/from16 v17, v10

    invoke-static/range {v11 .. v17}, Lorg/telegram/messenger/exoplayer2/Format;->createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v5

    .line 161
    .restart local v5    # "format":Lorg/telegram/messenger/exoplayer2/Format;
    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    move-object/from16 v4, v26

    move-object v7, v5

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;[Lorg/telegram/messenger/exoplayer2/Format;)V

    .end local v4    # "line":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13

    .line 164
    .end local v5    # "format":Lorg/telegram/messenger/exoplayer2/Format;
    .restart local v4    # "line":Ljava/lang/String;
    :pswitch_ae
    const-string v2, "CC1"

    sget-object v3, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_INSTREAM_ID:Ljava/util/regex/Pattern;

    invoke-static {v4, v3}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 165
    const-string v12, "application/x-mpegURL"

    const-string v13, "application/cea-608"

    const/4 v14, 0x0

    const/4 v15, -0x1

    move-object v11, v1

    move/from16 v16, v9

    move-object/from16 v17, v10

    invoke-static/range {v11 .. v17}, Lorg/telegram/messenger/exoplayer2/Format;->createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v24

    goto/16 :goto_13

    .line 174
    .end local v1    # "name":Ljava/lang/String;
    .end local v9    # "selectionFlags":I
    .end local v10    # "language":Ljava/lang/String;
    .end local v26    # "uri":Ljava/lang/String;
    :cond_cd
    const-string v2, "#EXT-X-STREAM-INF"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 175
    sget-object v2, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_BANDWIDTH:Ljava/util/regex/Pattern;

    invoke-static {v4, v2}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v15

    .line 176
    .local v15, "bitrate":I
    sget-object v2, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_CODECS:Ljava/util/regex/Pattern;

    invoke-static {v4, v2}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v14

    .line 177
    .local v14, "codecs":Ljava/lang/String;
    sget-object v2, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_RESOLUTION:Ljava/util/regex/Pattern;

    invoke-static {v4, v2}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v25

    .line 180
    .local v25, "resolutionString":Ljava/lang/String;
    if-eqz v25, :cond_12f

    .line 181
    const-string v2, "x"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 182
    .local v27, "widthAndHeight":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v27, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 183
    .local v16, "width":I
    const/4 v2, 0x1

    aget-object v2, v27, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 184
    .local v17, "height":I
    if-lez v16, :cond_103

    if-gtz v17, :cond_107

    .line 186
    :cond_103
    const/16 v16, -0x1

    .line 187
    const/16 v17, -0x1

    .line 193
    .end local v27    # "widthAndHeight":[Ljava/lang/String;
    :cond_107
    :goto_107
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;->next()Ljava/lang/String;

    move-result-object v4

    .line 194
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 195
    .restart local v1    # "name":Ljava/lang/String;
    const-string v12, "application/x-mpegURL"

    const/4 v13, 0x0

    const/high16 v18, -0x40800000    # -1.0f

    const/16 v19, 0x0

    move-object v11, v1

    invoke-static/range {v11 .. v19}, Lorg/telegram/messenger/exoplayer2/Format;->createVideoContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v5

    .line 197
    .restart local v5    # "format":Lorg/telegram/messenger/exoplayer2/Format;
    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;[Lorg/telegram/messenger/exoplayer2/Format;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13

    .line 190
    .end local v1    # "name":Ljava/lang/String;
    .end local v5    # "format":Lorg/telegram/messenger/exoplayer2/Format;
    .end local v16    # "width":I
    .end local v17    # "height":I
    :cond_12f
    const/16 v16, -0x1

    .line 191
    .restart local v16    # "width":I
    const/16 v17, -0x1

    .restart local v17    # "height":I
    goto :goto_107

    .line 200
    .end local v4    # "line":Ljava/lang/String;
    .end local v14    # "codecs":Ljava/lang/String;
    .end local v15    # "bitrate":I
    .end local v16    # "width":I
    .end local v17    # "height":I
    .end local v25    # "resolutionString":Ljava/lang/String;
    :cond_134
    new-instance v18, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    move-object/from16 v19, p1

    invoke-direct/range {v18 .. v24}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;)V

    return-object v18

    .line 147
    :sswitch_data_13c
    .sparse-switch
        -0x392db8c5 -> :sswitch_68
        -0x13dc6572 -> :sswitch_72
        0x3bba3b6 -> :sswitch_5e
    .end sparse-switch

    :pswitch_data_14a
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_8d
        :pswitch_ae
    .end packed-switch
.end method

.method private static parseMediaPlaylist(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .registers 35
    .param p0, "iterator"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;
    .param p1, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    const/16 v27, 0x0

    .line 214
    .local v27, "mediaSequence":I
    const/16 v31, 0x0

    .line 215
    .local v31, "targetDurationSecs":I
    const/16 v32, 0x1

    .line 216
    .local v32, "version":I
    const/16 v22, 0x0

    .line 217
    .local v22, "hasEndTag":Z
    const/4 v2, 0x0

    .line 218
    .local v2, "initializationSegment":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v24, "segments":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    const-wide/16 v10, 0x0

    .line 221
    .local v10, "segmentDurationUs":J
    const/4 v12, 0x0

    .line 222
    .local v12, "discontinuitySequenceNumber":I
    const-wide/16 v13, 0x0

    .line 223
    .local v13, "segmentStartTimeUs":J
    const-wide/16 v4, 0x0

    .line 224
    .local v4, "segmentByteRangeOffset":J
    const-wide/16 v6, -0x1

    .line 225
    .local v6, "segmentByteRangeLength":J
    const/16 v29, 0x0

    .line 227
    .local v29, "segmentMediaSequence":I
    const/4 v15, 0x0

    .line 228
    .local v15, "isEncrypted":Z
    const/16 v16, 0x0

    .line 229
    .local v16, "encryptionKeyUri":Ljava/lang/String;
    const/16 v26, 0x0

    .line 232
    .local v26, "encryptionIV":Ljava/lang/String;
    :cond_1e
    :goto_1e
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_179

    .line 233
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;->next()Ljava/lang/String;

    move-result-object v9

    .line 234
    .local v9, "line":Ljava/lang/String;
    const-string v8, "#EXT-X-MAP"

    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_67

    .line 235
    sget-object v8, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {v9, v8}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, "uri":Ljava/lang/String;
    sget-object v8, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_BYTERANGE:Ljava/util/regex/Pattern;

    invoke-static {v9, v8}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v25

    .line 237
    .local v25, "byteRange":Ljava/lang/String;
    if-eqz v25, :cond_5d

    .line 238
    const-string v8, "@"

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .line 239
    .local v30, "splitByteRange":[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v30, v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 240
    move-object/from16 v0, v30

    array-length v8, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v8, v0, :cond_5d

    .line 241
    const/4 v8, 0x1

    aget-object v8, v30, v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 244
    .end local v30    # "splitByteRange":[Ljava/lang/String;
    :cond_5d
    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    .end local v2    # "initializationSegment":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;JJ)V

    .line 245
    .restart local v2    # "initializationSegment":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    const-wide/16 v4, 0x0

    .line 246
    const-wide/16 v6, -0x1

    .line 247
    goto :goto_1e

    .end local v3    # "uri":Ljava/lang/String;
    .end local v25    # "byteRange":Ljava/lang/String;
    :cond_67
    const-string v8, "#EXT-X-TARGETDURATION"

    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_76

    .line 248
    sget-object v8, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_TARGET_DURATION:Ljava/util/regex/Pattern;

    invoke-static {v9, v8}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v31

    goto :goto_1e

    .line 249
    :cond_76
    const-string v8, "#EXT-X-MEDIA-SEQUENCE"

    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_87

    .line 250
    sget-object v8, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_SEQUENCE:Ljava/util/regex/Pattern;

    invoke-static {v9, v8}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v27

    .line 251
    move/from16 v29, v27

    goto :goto_1e

    .line 252
    :cond_87
    const-string v8, "#EXT-X-VERSION"

    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_96

    .line 253
    sget-object v8, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_VERSION:Ljava/util/regex/Pattern;

    invoke-static {v9, v8}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v32

    goto :goto_1e

    .line 254
    :cond_96
    const-string v8, "#EXTINF"

    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b0

    .line 255
    sget-object v8, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_DURATION:Ljava/util/regex/Pattern;

    .line 256
    invoke-static {v9, v8}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v18

    const-wide v20, 0x412e848000000000L    # 1000000.0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-long v10, v0

    goto/16 :goto_1e

    .line 257
    :cond_b0
    const-string v8, "#EXT-X-KEY"

    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_dc

    .line 258
    sget-object v8, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_METHOD:Ljava/util/regex/Pattern;

    invoke-static {v9, v8}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v28

    .line 259
    .local v28, "method":Ljava/lang/String;
    const-string v8, "AES-128"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 260
    if-eqz v15, :cond_d6

    .line 261
    sget-object v8, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {v9, v8}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v16

    .line 262
    sget-object v8, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_IV:Ljava/util/regex/Pattern;

    invoke-static {v9, v8}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_1e

    .line 264
    :cond_d6
    const/16 v16, 0x0

    .line 265
    const/16 v26, 0x0

    goto/16 :goto_1e

    .line 267
    .end local v28    # "method":Ljava/lang/String;
    :cond_dc
    const-string v8, "#EXT-X-BYTERANGE"

    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10b

    .line 268
    sget-object v8, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE:Ljava/util/regex/Pattern;

    invoke-static {v9, v8}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v25

    .line 269
    .restart local v25    # "byteRange":Ljava/lang/String;
    const-string v8, "@"

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .line 270
    .restart local v30    # "splitByteRange":[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v30, v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 271
    move-object/from16 v0, v30

    array-length v8, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v8, v0, :cond_1e

    .line 272
    const/4 v8, 0x1

    aget-object v8, v30, v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto/16 :goto_1e

    .line 274
    .end local v25    # "byteRange":Ljava/lang/String;
    .end local v30    # "splitByteRange":[Ljava/lang/String;
    :cond_10b
    const-string v8, "#EXT-X-DISCONTINUITY-SEQUENCE"

    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_125

    .line 275
    const/16 v8, 0x3a

    invoke-virtual {v9, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    goto/16 :goto_1e

    .line 276
    :cond_125
    const-string v8, "#EXT-X-DISCONTINUITY"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_131

    .line 277
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1e

    .line 278
    :cond_131
    const-string v8, "#"

    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_16d

    .line 280
    if-nez v15, :cond_163

    .line 281
    const/16 v17, 0x0

    .line 287
    .local v17, "segmentEncryptionIV":Ljava/lang/String;
    :goto_13d
    add-int/lit8 v29, v29, 0x1

    .line 288
    const-wide/16 v18, -0x1

    cmp-long v8, v6, v18

    if-nez v8, :cond_147

    .line 289
    const-wide/16 v4, 0x0

    .line 291
    :cond_147
    new-instance v8, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    invoke-direct/range {v8 .. v21}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;JIJZLjava/lang/String;Ljava/lang/String;JJ)V

    move-object/from16 v0, v24

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    add-long/2addr v13, v10

    .line 295
    const-wide/16 v10, 0x0

    .line 296
    const-wide/16 v18, -0x1

    cmp-long v8, v6, v18

    if-eqz v8, :cond_15f

    .line 297
    add-long/2addr v4, v6

    .line 299
    :cond_15f
    const-wide/16 v6, -0x1

    .line 300
    goto/16 :goto_1e

    .line 282
    .end local v17    # "segmentEncryptionIV":Ljava/lang/String;
    :cond_163
    if-eqz v26, :cond_168

    .line 283
    move-object/from16 v17, v26

    .restart local v17    # "segmentEncryptionIV":Ljava/lang/String;
    goto :goto_13d

    .line 285
    .end local v17    # "segmentEncryptionIV":Ljava/lang/String;
    :cond_168
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "segmentEncryptionIV":Ljava/lang/String;
    goto :goto_13d

    .line 300
    .end local v17    # "segmentEncryptionIV":Ljava/lang/String;
    :cond_16d
    const-string v8, "#EXT-X-ENDLIST"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 301
    const/16 v22, 0x1

    goto/16 :goto_1e

    .line 304
    .end local v9    # "line":Ljava/lang/String;
    :cond_179
    new-instance v18, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-object/from16 v19, p1

    move/from16 v20, v27

    move/from16 v21, v32

    move-object/from16 v23, v2

    invoke-direct/range {v18 .. v24}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;-><init>(Ljava/lang/String;IIZLorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;Ljava/util/List;)V

    return-object v18
.end method

.method private static parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;
    .registers 4
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 325
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 326
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 327
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 329
    :goto_f
    return-object v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private static parseSelectionFlags(Ljava/lang/String;)I
    .registers 4
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 206
    sget-object v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_DEFAULT:Ljava/util/regex/Pattern;

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    :goto_a
    sget-object v2, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_FORCED:Ljava/util/regex/Pattern;

    .line 207
    invoke-static {p0, v2, v1}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v2, 0x2

    :goto_13
    or-int/2addr v0, v2

    sget-object v2, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->REGEX_AUTOSELECT:Ljava/util/regex/Pattern;

    .line 208
    invoke-static {p0, v2, v1}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v1, 0x4

    :cond_1d
    or-int/2addr v0, v1

    .line 206
    return v0

    :cond_1f
    move v0, v1

    goto :goto_a

    :cond_21
    move v2, v1

    .line 207
    goto :goto_13
.end method

.method private static parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;
    .registers 6
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 309
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 310
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    if-ne v1, v2, :cond_16

    .line 311
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 313
    :cond_16
    new-instance v1, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t match "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;

    move-result-object v0

    return-object v0
.end method

.method public parse(Landroid/net/Uri;Ljava/io/InputStream;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 100
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 103
    .local v0, "extraLines":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    :cond_f
    :goto_f
    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_99

    .line 104
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    .line 107
    const-string v3, "#EXT-X-STREAM-INF"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 108
    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;

    invoke-direct {v3, v0, v2}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseMasterPlaylist(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
    :try_end_36
    .catchall {:try_start_f .. :try_end_36} :catchall_94

    move-result-object v3

    .line 125
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 119
    :goto_3a
    return-object v3

    .line 110
    :cond_3b
    :try_start_3b
    const-string v3, "#EXT-X-TARGETDURATION"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7b

    const-string v3, "#EXT-X-MEDIA-SEQUENCE"

    .line 111
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7b

    const-string v3, "#EXTINF"

    .line 112
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7b

    const-string v3, "#EXT-X-KEY"

    .line 113
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7b

    const-string v3, "#EXT-X-BYTERANGE"

    .line 114
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7b

    const-string v3, "#EXT-X-DISCONTINUITY"

    .line 115
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    const-string v3, "#EXT-X-DISCONTINUITY-SEQUENCE"

    .line 116
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    const-string v3, "#EXT-X-ENDLIST"

    .line 117
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 118
    :cond_7b
    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;

    invoke-direct {v3, v0, v2}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parseMediaPlaylist(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    :try_end_8a
    .catchall {:try_start_3b .. :try_end_8a} :catchall_94

    move-result-object v3

    .line 125
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_3a

    .line 121
    :cond_8f
    :try_start_8f
    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_94

    goto/16 :goto_f

    .line 125
    .end local v1    # "line":Ljava/lang/String;
    :catchall_94
    move-exception v3

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw v3

    .restart local v1    # "line":Ljava/lang/String;
    :cond_99
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 127
    new-instance v3, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string v4, "Failed to parse the playlist, could not identify any tags."

    invoke-direct {v3, v4}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
