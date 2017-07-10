.class public final Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;
.super Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;
.source "TtmlDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    }
.end annotation


# static fields
.field private static final ATTR_BEGIN:Ljava/lang/String; = "begin"

.field private static final ATTR_DURATION:Ljava/lang/String; = "dur"

.field private static final ATTR_END:Ljava/lang/String; = "end"

.field private static final ATTR_REGION:Ljava/lang/String; = "region"

.field private static final ATTR_STYLE:Ljava/lang/String; = "style"

.field private static final CLOCK_TIME:Ljava/util/regex/Pattern;

.field private static final DEFAULT_FRAME_AND_TICK_RATE:Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

.field private static final DEFAULT_FRAME_RATE:I = 0x1e

.field private static final FONT_SIZE:Ljava/util/regex/Pattern;

.field private static final OFFSET_TIME:Ljava/util/regex/Pattern;

.field private static final PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "TtmlDecoder"

.field private static final TTP:Ljava/lang/String; = "http://www.w3.org/ns/ttml#parameter"


# instance fields
.field private final xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 70
    const-string v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    .line 71
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->CLOCK_TIME:Ljava/util/regex/Pattern;

    .line 73
    const-string v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    .line 74
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->OFFSET_TIME:Ljava/util/regex/Pattern;

    .line 75
    const-string v0, "^(([0-9]*.)?[0-9]+)(px|em|%)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->FONT_SIZE:Ljava/util/regex/Pattern;

    .line 76
    const-string v0, "^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$"

    .line 77
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    .line 81
    new-instance v0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-direct {v0, v1, v2, v2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;-><init>(FII)V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 87
    const-string v1, "TtmlDecoder"

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 89
    :try_start_5
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 90
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_11} :catch_12

    .line 94
    return-void

    .line 91
    :catch_12
    move-exception v0

    .line 92
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private createIfNull(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;
    .registers 2
    .param p1, "style"    # Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    .prologue
    .line 353
    if-nez p1, :cond_7

    new-instance p1, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    .end local p1    # "style":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;
    invoke-direct {p1}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;-><init>()V

    :cond_7
    return-object p1
.end method

.method private static isSupportedTag(Ljava/lang/String;)Z
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 419
    const-string v0, "tt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    const-string v0, "head"

    .line 420
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    const-string v0, "body"

    .line 421
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    const-string v0, "div"

    .line 422
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    const-string v0, "p"

    .line 423
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    const-string v0, "span"

    .line 424
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    const-string v0, "br"

    .line 425
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    const-string v0, "style"

    .line 426
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    const-string v0, "styling"

    .line 427
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    const-string v0, "layout"

    .line 428
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    const-string v0, "region"

    .line 429
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    const-string v0, "metadata"

    .line 430
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    const-string v0, "smpte:image"

    .line 431
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    const-string v0, "smpte:data"

    .line 432
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    const-string v0, "smpte:information"

    .line 433
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    :cond_78
    const/4 v0, 0x1

    .line 419
    :goto_79
    return v0

    .line 433
    :cond_7a
    const/4 v0, 0x0

    goto :goto_79
.end method

.method private static parseFontSize(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)V
    .registers 10
    .param p0, "expression"    # Ljava/lang/String;
    .param p1, "out"    # Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 438
    const-string v3, "\\s+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "expressions":[Ljava/lang/String;
    array-length v3, v0

    if-ne v3, v4, :cond_46

    .line 441
    sget-object v3, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->FONT_SIZE:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 451
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :goto_12
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 452
    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 453
    .local v2, "unit":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_d2

    :cond_24
    :goto_24
    packed-switch v3, :pswitch_data_e0

    .line 464
    new-instance v3, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid unit for fontSize: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 442
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "unit":Ljava/lang/String;
    :cond_46
    array-length v3, v0

    if-ne v3, v5, :cond_59

    .line 443
    sget-object v3, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->FONT_SIZE:Ljava/util/regex/Pattern;

    aget-object v6, v0, v4

    invoke-virtual {v3, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 444
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    const-string v3, "TtmlDecoder"

    const-string v6, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first."

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 447
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_59
    new-instance v3, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid number of entries for fontSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 453
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    .restart local v2    # "unit":Ljava/lang/String;
    :sswitch_79
    const-string v6, "px"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    const/4 v3, 0x0

    goto :goto_24

    :sswitch_83
    const-string v6, "em"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    move v3, v4

    goto :goto_24

    :sswitch_8d
    const-string v6, "%"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    move v3, v5

    goto :goto_24

    .line 455
    :pswitch_97
    invoke-virtual {p1, v4}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->setFontSizeUnit(I)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    .line 466
    :goto_9a
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->setFontSize(F)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    .line 470
    return-void

    .line 458
    :pswitch_aa
    invoke-virtual {p1, v5}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->setFontSizeUnit(I)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    goto :goto_9a

    .line 461
    :pswitch_ae
    invoke-virtual {p1, v7}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->setFontSizeUnit(I)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    goto :goto_9a

    .line 468
    .end local v2    # "unit":Ljava/lang/String;
    :cond_b2
    new-instance v3, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid expression for fontSize: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 453
    nop

    :sswitch_data_d2
    .sparse-switch
        0x25 -> :sswitch_8d
        0xca8 -> :sswitch_83
        0xe08 -> :sswitch_79
    .end sparse-switch

    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_97
        :pswitch_aa
        :pswitch_ae
    .end packed-switch
.end method

.method private parseFrameAndTickRates(Lorg/xmlpull/v1/XmlPullParser;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .registers 15
    .param p1, "xmlParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    .line 164
    const/16 v1, 0x1e

    .line 165
    .local v1, "frameRate":I
    const-string v11, "http://www.w3.org/ns/ttml#parameter"

    const-string v12, "frameRate"

    invoke-interface {p1, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, "frameRateString":Ljava/lang/String;
    if-eqz v4, :cond_10

    .line 167
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 170
    :cond_10
    const/high16 v2, 0x3f800000    # 1.0f

    .line 171
    .local v2, "frameRateMultiplier":F
    const-string v11, "http://www.w3.org/ns/ttml#parameter"

    const-string v12, "frameRateMultiplier"

    invoke-interface {p1, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "frameRateMultiplierString":Ljava/lang/String;
    if-eqz v3, :cond_40

    .line 173
    const-string v11, " "

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 174
    .local v6, "parts":[Ljava/lang/String;
    array-length v11, v6

    const/4 v12, 0x2

    if-eq v11, v12, :cond_2e

    .line 175
    new-instance v11, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;

    const-string v12, "frameRateMultiplier doesn\'t have 2 parts"

    invoke-direct {v11, v12}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 177
    :cond_2e
    const/4 v11, 0x0

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    int-to-float v5, v11

    .line 178
    .local v5, "numerator":F
    const/4 v11, 0x1

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    int-to-float v0, v11

    .line 179
    .local v0, "denominator":F
    div-float v2, v5, v0

    .line 182
    .end local v0    # "denominator":F
    .end local v5    # "numerator":F
    .end local v6    # "parts":[Ljava/lang/String;
    :cond_40
    sget-object v11, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    iget v7, v11, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->subFrameRate:I

    .line 183
    .local v7, "subFrameRate":I
    const-string v11, "http://www.w3.org/ns/ttml#parameter"

    const-string v12, "subFrameRate"

    invoke-interface {p1, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 184
    .local v8, "subFrameRateString":Ljava/lang/String;
    if-eqz v8, :cond_52

    .line 185
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 188
    :cond_52
    sget-object v11, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    iget v9, v11, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->tickRate:I

    .line 189
    .local v9, "tickRate":I
    const-string v11, "http://www.w3.org/ns/ttml#parameter"

    const-string v12, "tickRate"

    invoke-interface {p1, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 190
    .local v10, "tickRateString":Ljava/lang/String;
    if-eqz v10, :cond_64

    .line 191
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 193
    :cond_64
    new-instance v11, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    int-to-float v12, v1

    mul-float/2addr v12, v2

    invoke-direct {v11, v12, v7, v9}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;-><init>(FII)V

    return-object v11
.end method

.method private parseHeader(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .registers 12
    .param p1, "xmlParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlRegion;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 200
    .local p2, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;>;"
    .local p3, "globalRegions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlRegion;>;"
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 201
    const-string v4, "style"

    invoke-static {p1, v4}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 202
    const-string v4, "style"

    invoke-static {p1, v4}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "parentStyleId":Ljava/lang/String;
    new-instance v4, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    invoke-direct {v4}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;-><init>()V

    invoke-direct {p0, p1, v4}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    .line 204
    .local v2, "style":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;
    if-eqz v1, :cond_34

    .line 205
    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v4, 0x0

    move v5, v4

    :goto_23
    if-ge v5, v7, :cond_34

    aget-object v0, v6, v5

    .line 206
    .local v0, "id":Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->chain(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    .line 205
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_23

    .line 209
    .end local v0    # "id":Ljava/lang/String;
    :cond_34
    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_41

    .line 210
    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .end local v1    # "parentStyleId":Ljava/lang/String;
    .end local v2    # "style":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;
    :cond_41
    :goto_41
    const-string v4, "head"

    invoke-static {p1, v4}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 219
    return-object p2

    .line 212
    :cond_4a
    const-string v4, "region"

    invoke-static {p1, v4}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 213
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->parseRegionAttributes(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v3

    .line 214
    .local v3, "ttmlRegionInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlRegion;>;"
    if-eqz v3, :cond_41

    .line 215
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {p3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_41
.end method

.method private parseNode(Lorg/xmlpull/v1/XmlPullParser;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;
    .registers 27
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;
    .param p4, "frameAndTickRate"    # Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlRegion;",
            ">;",
            "Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;",
            ")",
            "Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    .line 359
    .local p3, "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlRegion;>;"
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 360
    .local v12, "duration":J
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 361
    .local v4, "startTime":J
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 362
    .local v6, "endTime":J
    const-string v10, ""

    .line 363
    .local v10, "regionId":Ljava/lang/String;
    const/4 v9, 0x0

    .line 364
    .local v9, "styleIds":[Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v11

    .line 365
    .local v11, "attributeCount":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v8

    .line 366
    .local v8, "style":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_20
    if-ge v14, v11, :cond_ad

    .line 367
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 368
    .local v2, "attr":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    .line 369
    .local v16, "value":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_114

    :cond_36
    :goto_36
    packed-switch v3, :pswitch_data_12a

    .line 366
    :cond_39
    :goto_39
    add-int/lit8 v14, v14, 0x1

    goto :goto_20

    .line 369
    :sswitch_3c
    const-string v17, "begin"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_36

    const/4 v3, 0x0

    goto :goto_36

    :sswitch_48
    const-string v17, "end"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_36

    const/4 v3, 0x1

    goto :goto_36

    :sswitch_54
    const-string v17, "dur"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_36

    const/4 v3, 0x2

    goto :goto_36

    :sswitch_60
    const-string v17, "style"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_36

    const/4 v3, 0x3

    goto :goto_36

    :sswitch_6c
    const-string v17, "region"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_36

    const/4 v3, 0x4

    goto :goto_36

    .line 371
    :pswitch_78
    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->parseTimeExpression(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J

    move-result-wide v4

    .line 372
    goto :goto_39

    .line 374
    :pswitch_81
    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->parseTimeExpression(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J

    move-result-wide v6

    .line 375
    goto :goto_39

    .line 377
    :pswitch_8a
    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->parseTimeExpression(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J

    move-result-wide v12

    .line 378
    goto :goto_39

    .line 381
    :pswitch_93
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 382
    .local v15, "ids":[Ljava/lang/String;
    array-length v3, v15

    if-lez v3, :cond_39

    .line 383
    move-object v9, v15

    goto :goto_39

    .line 387
    .end local v15    # "ids":[Ljava/lang/String;
    :pswitch_a0
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 390
    move-object/from16 v10, v16

    goto :goto_39

    .line 398
    .end local v2    # "attr":Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/String;
    :cond_ad
    if-eqz p2, :cond_e0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;->startTimeUs:J

    move-wide/from16 v18, v0

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v18, v20

    if-eqz v3, :cond_e0

    .line 399
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v4, v18

    if-eqz v3, :cond_cf

    .line 400
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;->startTimeUs:J

    move-wide/from16 v18, v0

    add-long v4, v4, v18

    .line 402
    :cond_cf
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v6, v18

    if-eqz v3, :cond_e0

    .line 403
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;->startTimeUs:J

    move-wide/from16 v18, v0

    add-long v6, v6, v18

    .line 406
    :cond_e0
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v6, v18

    if-nez v3, :cond_f4

    .line 407
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v12, v18

    if-eqz v3, :cond_fd

    .line 409
    add-long v6, v4, v12

    .line 415
    :cond_f4
    :goto_f4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v3 .. v10}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;->buildNode(Ljava/lang/String;JJLorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;

    move-result-object v3

    return-object v3

    .line 410
    :cond_fd
    if-eqz p2, :cond_f4

    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;->endTimeUs:J

    move-wide/from16 v18, v0

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v18, v20

    if-eqz v3, :cond_f4

    .line 412
    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;->endTimeUs:J

    goto :goto_f4

    .line 369
    nop

    :sswitch_data_114
    .sparse-switch
        -0x37b7d90c -> :sswitch_6c
        0x18601 -> :sswitch_54
        0x188db -> :sswitch_48
        0x59478a9 -> :sswitch_3c
        0x68b1db1 -> :sswitch_60
    .end sparse-switch

    :pswitch_data_12a
    .packed-switch 0x0
        :pswitch_78
        :pswitch_81
        :pswitch_8a
        :pswitch_93
        :pswitch_a0
    .end packed-switch
.end method

.method private parseRegionAttributes(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .registers 16
    .param p1, "xmlParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlRegion;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/high16 v13, 0x42c80000    # 100.0f

    .line 227
    const-string v10, "id"

    invoke-static {p1, v10}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 228
    .local v6, "regionId":Ljava/lang/String;
    const-string v10, "origin"

    invoke-static {p1, v10}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 229
    .local v7, "regionOrigin":Ljava/lang/String;
    const-string v10, "extent"

    invoke-static {p1, v10}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 230
    .local v5, "regionExtent":Ljava/lang/String;
    if-eqz v7, :cond_19

    if-nez v6, :cond_1a

    .line 256
    :cond_19
    :goto_19
    return-object v9

    .line 233
    :cond_1a
    const/4 v4, 0x1

    .line 234
    .local v4, "position":F
    const/4 v2, 0x1

    .line 235
    .local v2, "line":F
    sget-object v10, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 236
    .local v3, "originMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_3e

    .line 238
    const/4 v10, 0x1

    :try_start_29
    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    div-float v4, v10, v13

    .line 239
    const/4 v10, 0x2

    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_3b} :catch_69

    move-result v10

    div-float v2, v10, v13

    .line 245
    :cond_3e
    :goto_3e
    const/4 v8, 0x1

    .line 246
    .local v8, "width":F
    if-eqz v5, :cond_58

    .line 247
    sget-object v10, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 248
    .local v1, "extentMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_58

    .line 250
    const/4 v10, 0x1

    :try_start_4e
    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_55
    .catch Ljava/lang/NumberFormatException; {:try_start_4e .. :try_end_55} :catch_8a

    move-result v10

    div-float v8, v10, v13

    .line 256
    .end local v1    # "extentMatcher":Ljava/util/regex/Matcher;
    :cond_58
    :goto_58
    const/4 v10, 0x1

    cmpl-float v10, v4, v10

    if-eqz v10, :cond_19

    new-instance v9, Landroid/util/Pair;

    new-instance v10, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlRegion;

    const/4 v11, 0x0

    invoke-direct {v10, v4, v2, v11, v8}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlRegion;-><init>(FFIF)V

    invoke-direct {v9, v6, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_19

    .line 240
    .end local v8    # "width":F
    :catch_69
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v10, "TtmlDecoder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignoring region with malformed origin: \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    const/4 v4, 0x1

    goto :goto_3e

    .line 251
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "extentMatcher":Ljava/util/regex/Matcher;
    .restart local v8    # "width":F
    :catch_8a
    move-exception v0

    .line 252
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v10, "TtmlDecoder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignoring malformed region extent: \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_58
.end method

.method private parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;
    .registers 15
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "style"    # Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 265
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 266
    .local v0, "attributeCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v0, :cond_221

    .line 267
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "attributeValue":Ljava/lang/String;
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_222

    :cond_1b
    move v4, v6

    :goto_1c
    packed-switch v4, :pswitch_data_248

    .line 266
    :cond_1f
    :goto_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 268
    :sswitch_22
    const-string v10, "id"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    move v4, v5

    goto :goto_1c

    :sswitch_2c
    const-string v10, "backgroundColor"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    move v4, v7

    goto :goto_1c

    :sswitch_36
    const-string v10, "color"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    move v4, v8

    goto :goto_1c

    :sswitch_40
    const-string v10, "fontFamily"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    move v4, v9

    goto :goto_1c

    :sswitch_4a
    const-string v10, "fontSize"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v4, 0x4

    goto :goto_1c

    :sswitch_54
    const-string v10, "fontWeight"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v4, 0x5

    goto :goto_1c

    :sswitch_5e
    const-string v10, "fontStyle"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v4, 0x6

    goto :goto_1c

    :sswitch_68
    const-string v10, "textAlign"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v4, 0x7

    goto :goto_1c

    :sswitch_72
    const-string v10, "textDecoration"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/16 v4, 0x8

    goto :goto_1c

    .line 270
    :pswitch_7d
    const-string v4, "style"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 271
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->setId(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    goto :goto_1f

    .line 275
    :pswitch_92
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 277
    :try_start_96
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/ColorParser;->parseTtmlColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->setBackgroundColor(I)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;
    :try_end_9d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_96 .. :try_end_9d} :catch_9e

    goto :goto_1f

    .line 278
    :catch_9e
    move-exception v2

    .line 279
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "TtmlDecoder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed parsing background value: \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 283
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_bf
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 285
    :try_start_c3
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/ColorParser;->parseTtmlColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->setFontColor(I)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;
    :try_end_ca
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c3 .. :try_end_ca} :catch_cc

    goto/16 :goto_1f

    .line 286
    :catch_cc
    move-exception v2

    .line 287
    .restart local v2    # "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "TtmlDecoder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed parsing color value: \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 291
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_ed
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->setFontFamily(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 292
    goto/16 :goto_1f

    .line 295
    :pswitch_f7
    :try_start_f7
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 296
    invoke-static {v1, p2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->parseFontSize(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)V
    :try_end_fe
    .catch Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException; {:try_start_f7 .. :try_end_fe} :catch_100

    goto/16 :goto_1f

    .line 297
    :catch_100
    move-exception v2

    .line 298
    .local v2, "e":Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
    const-string v4, "TtmlDecoder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed parsing fontSize value: \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 302
    .end local v2    # "e":Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
    :pswitch_121
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4

    const-string v10, "bold"

    .line 303
    invoke-virtual {v10, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    .line 302
    invoke-virtual {v4, v10}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->setBold(Z)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 304
    goto/16 :goto_1f

    .line 306
    :pswitch_131
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4

    const-string v10, "italic"

    .line 307
    invoke-virtual {v10, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    .line 306
    invoke-virtual {v4, v10}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->setItalic(Z)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 308
    goto/16 :goto_1f

    .line 310
    :pswitch_141
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_25e

    :cond_14c
    move v4, v6

    :goto_14d
    packed-switch v4, :pswitch_data_274

    goto/16 :goto_1f

    .line 312
    :pswitch_152
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v4, v10}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 313
    goto/16 :goto_1f

    .line 310
    :sswitch_15e
    const-string v10, "left"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14c

    move v4, v5

    goto :goto_14d

    :sswitch_168
    const-string v10, "start"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14c

    move v4, v7

    goto :goto_14d

    :sswitch_172
    const-string v10, "right"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14c

    move v4, v8

    goto :goto_14d

    :sswitch_17c
    const-string v10, "end"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14c

    move v4, v9

    goto :goto_14d

    :sswitch_186
    const-string v10, "center"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14c

    const/4 v4, 0x4

    goto :goto_14d

    .line 315
    :pswitch_190
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v4, v10}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 316
    goto/16 :goto_1f

    .line 318
    :pswitch_19c
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {v4, v10}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 319
    goto/16 :goto_1f

    .line 321
    :pswitch_1a8
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {v4, v10}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 322
    goto/16 :goto_1f

    .line 324
    :pswitch_1b4
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v4, v10}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    goto/16 :goto_1f

    .line 329
    :pswitch_1c0
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_282

    :cond_1cb
    move v4, v6

    :goto_1cc
    packed-switch v4, :pswitch_data_294

    goto/16 :goto_1f

    .line 331
    :pswitch_1d1
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->setLinethrough(Z)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 332
    goto/16 :goto_1f

    .line 329
    :sswitch_1db
    const-string v10, "linethrough"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1cb

    move v4, v5

    goto :goto_1cc

    :sswitch_1e5
    const-string v10, "nolinethrough"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1cb

    move v4, v7

    goto :goto_1cc

    :sswitch_1ef
    const-string v10, "underline"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1cb

    move v4, v8

    goto :goto_1cc

    :sswitch_1f9
    const-string v10, "nounderline"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1cb

    move v4, v9

    goto :goto_1cc

    .line 334
    :pswitch_203
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->setLinethrough(Z)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 335
    goto/16 :goto_1f

    .line 337
    :pswitch_20d
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->setUnderline(Z)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 338
    goto/16 :goto_1f

    .line 340
    :pswitch_217
    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;->setUnderline(Z)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    goto/16 :goto_1f

    .line 349
    .end local v1    # "attributeValue":Ljava/lang/String;
    :cond_221
    return-object p2

    .line 268
    :sswitch_data_222
    .sparse-switch
        -0x5c71855e -> :sswitch_5e
        -0x48ff636d -> :sswitch_40
        -0x3f826a28 -> :sswitch_68
        -0x3468fa43 -> :sswitch_72
        -0x2bc67c59 -> :sswitch_54
        0xd1b -> :sswitch_22
        0x5a72f63 -> :sswitch_36
        0x15caa0f0 -> :sswitch_4a
        0x4cb7f6d5 -> :sswitch_2c
    .end sparse-switch

    :pswitch_data_248
    .packed-switch 0x0
        :pswitch_7d
        :pswitch_92
        :pswitch_bf
        :pswitch_ed
        :pswitch_f7
        :pswitch_121
        :pswitch_131
        :pswitch_141
        :pswitch_1c0
    .end packed-switch

    .line 310
    :sswitch_data_25e
    .sparse-switch
        -0x514d33ab -> :sswitch_186
        0x188db -> :sswitch_17c
        0x32a007 -> :sswitch_15e
        0x677c21c -> :sswitch_172
        0x68ac462 -> :sswitch_168
    .end sparse-switch

    :pswitch_data_274
    .packed-switch 0x0
        :pswitch_152
        :pswitch_190
        :pswitch_19c
        :pswitch_1a8
        :pswitch_1b4
    .end packed-switch

    .line 329
    :sswitch_data_282
    .sparse-switch
        -0x57195dd5 -> :sswitch_1f9
        -0x3d363934 -> :sswitch_1ef
        0x36723ff0 -> :sswitch_1e5
        0x641ec051 -> :sswitch_1db
    .end sparse-switch

    :pswitch_data_294
    .packed-switch 0x0
        :pswitch_1d1
        :pswitch_203
        :pswitch_20d
        :pswitch_217
    .end packed-switch
.end method

.method private parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "parentStyleIds"    # Ljava/lang/String;

    .prologue
    .line 261
    const-string v0, "\\s+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseTimeExpression(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J
    .registers 22
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "frameAndTickRate"    # Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    .line 485
    sget-object v15, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->CLOCK_TIME:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 486
    .local v7, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v15

    if-eqz v15, :cond_a4

    .line 487
    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 488
    .local v6, "hours":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    const-wide/16 v18, 0xe10

    mul-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-double v2, v0

    .line 489
    .local v2, "durationSeconds":D
    const/4 v15, 0x2

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 490
    .local v8, "minutes":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    const-wide/16 v18, 0x3c

    mul-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    add-double v2, v2, v16

    .line 491
    const/4 v15, 0x3

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 492
    .local v9, "seconds":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    add-double v2, v2, v16

    .line 493
    const/4 v15, 0x4

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 494
    .local v4, "fraction":Ljava/lang/String;
    if-eqz v4, :cond_9b

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    :goto_4d
    add-double v2, v2, v16

    .line 495
    const/4 v15, 0x5

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 496
    .local v5, "frames":Ljava/lang/String;
    if-eqz v5, :cond_9e

    .line 497
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-float v15, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->effectiveFrameRate:F

    move/from16 v16, v0

    div-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    :goto_68
    add-double v2, v2, v16

    .line 498
    const/4 v15, 0x6

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 499
    .local v12, "subframes":Ljava/lang/String;
    if-eqz v12, :cond_a1

    .line 500
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget v15, v0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->subFrameRate:I

    int-to-double v0, v15

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-object/from16 v0, p1

    iget v15, v0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->effectiveFrameRate:F

    float-to-double v0, v15

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    :goto_8c
    add-double v2, v2, v16

    .line 503
    const-wide v16, 0x412e848000000000L    # 1000000.0

    mul-double v16, v16, v2

    move-wide/from16 v0, v16

    double-to-long v0, v0

    move-wide/from16 v16, v0

    .line 530
    .end local v2    # "durationSeconds":D
    .end local v4    # "fraction":Ljava/lang/String;
    .end local v5    # "frames":Ljava/lang/String;
    .end local v6    # "hours":Ljava/lang/String;
    .end local v8    # "minutes":Ljava/lang/String;
    .end local v9    # "seconds":Ljava/lang/String;
    .end local v12    # "subframes":Ljava/lang/String;
    :goto_9a
    return-wide v16

    .line 494
    .restart local v2    # "durationSeconds":D
    .restart local v4    # "fraction":Ljava/lang/String;
    .restart local v6    # "hours":Ljava/lang/String;
    .restart local v8    # "minutes":Ljava/lang/String;
    .restart local v9    # "seconds":Ljava/lang/String;
    :cond_9b
    const-wide/16 v16, 0x0

    goto :goto_4d

    .line 497
    .restart local v5    # "frames":Ljava/lang/String;
    :cond_9e
    const-wide/16 v16, 0x0

    goto :goto_68

    .line 500
    .restart local v12    # "subframes":Ljava/lang/String;
    :cond_a1
    const-wide/16 v16, 0x0

    goto :goto_8c

    .line 505
    .end local v2    # "durationSeconds":D
    .end local v4    # "fraction":Ljava/lang/String;
    .end local v5    # "frames":Ljava/lang/String;
    .end local v6    # "hours":Ljava/lang/String;
    .end local v8    # "minutes":Ljava/lang/String;
    .end local v9    # "seconds":Ljava/lang/String;
    .end local v12    # "subframes":Ljava/lang/String;
    :cond_a4
    sget-object v15, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->OFFSET_TIME:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 506
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v15

    if-eqz v15, :cond_149

    .line 507
    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 508
    .local v13, "timeValue":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 509
    .local v10, "offsetSeconds":D
    const/4 v15, 0x2

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    .line 510
    .local v14, "unit":Ljava/lang/String;
    const/4 v15, -0x1

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_166

    :cond_c8
    :goto_c8
    packed-switch v15, :pswitch_data_180

    .line 530
    :goto_cb
    :pswitch_cb
    const-wide v16, 0x412e848000000000L    # 1000000.0

    mul-double v16, v16, v10

    move-wide/from16 v0, v16

    double-to-long v0, v0

    move-wide/from16 v16, v0

    goto :goto_9a

    .line 510
    :sswitch_d8
    const-string v16, "h"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c8

    const/4 v15, 0x0

    goto :goto_c8

    :sswitch_e4
    const-string v16, "m"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c8

    const/4 v15, 0x1

    goto :goto_c8

    :sswitch_f0
    const-string v16, "s"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c8

    const/4 v15, 0x2

    goto :goto_c8

    :sswitch_fc
    const-string v16, "ms"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c8

    const/4 v15, 0x3

    goto :goto_c8

    :sswitch_108
    const-string v16, "f"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c8

    const/4 v15, 0x4

    goto :goto_c8

    :sswitch_114
    const-string v16, "t"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c8

    const/4 v15, 0x5

    goto :goto_c8

    .line 512
    :pswitch_120
    const-wide v16, 0x40ac200000000000L    # 3600.0

    mul-double v10, v10, v16

    .line 513
    goto :goto_cb

    .line 515
    :pswitch_128
    const-wide/high16 v16, 0x404e000000000000L    # 60.0

    mul-double v10, v10, v16

    .line 516
    goto :goto_cb

    .line 521
    :pswitch_12d
    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v10, v10, v16

    .line 522
    goto :goto_cb

    .line 524
    :pswitch_135
    move-object/from16 v0, p1

    iget v15, v0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->effectiveFrameRate:F

    float-to-double v0, v15

    move-wide/from16 v16, v0

    div-double v10, v10, v16

    .line 525
    goto :goto_cb

    .line 527
    :pswitch_13f
    move-object/from16 v0, p1

    iget v15, v0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->tickRate:I

    int-to-double v0, v15

    move-wide/from16 v16, v0

    div-double v10, v10, v16

    goto :goto_cb

    .line 532
    .end local v10    # "offsetSeconds":D
    .end local v13    # "timeValue":Ljava/lang/String;
    .end local v14    # "unit":Ljava/lang/String;
    :cond_149
    new-instance v15, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Malformed time expression: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 510
    :sswitch_data_166
    .sparse-switch
        0x66 -> :sswitch_108
        0x68 -> :sswitch_d8
        0x6d -> :sswitch_e4
        0x73 -> :sswitch_f0
        0x74 -> :sswitch_114
        0xda6 -> :sswitch_fc
    .end sparse-switch

    :pswitch_data_180
    .packed-switch 0x0
        :pswitch_120
        :pswitch_128
        :pswitch_cb
        :pswitch_12d
        :pswitch_135
        :pswitch_13f
    .end packed-switch
.end method


# virtual methods
.method protected bridge synthetic decode([BI)Lorg/telegram/messenger/exoplayer2/text/Subtitle;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->decode([BI)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlSubtitle;

    move-result-object v0

    return-object v0
.end method

.method protected decode([BI)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlSubtitle;
    .registers 23
    .param p1, "bytes"    # [B
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    .line 99
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v15

    .line 100
    .local v15, "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v6, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 102
    .local v12, "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlRegion;>;"
    const-string v17, ""

    new-instance v18, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlRegion;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlRegion;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v7, Ljava/io/ByteArrayInputStream;

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, p2

    invoke-direct {v7, v0, v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 104
    .local v7, "inputStream":Ljava/io/ByteArrayInputStream;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-interface {v15, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 105
    const/4 v13, 0x0

    .line 106
    .local v13, "ttmlSubtitle":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlSubtitle;
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 107
    .local v10, "nodeStack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;>;"
    const/4 v14, 0x0

    .line 108
    .local v14, "unsupportedNodeDepth":I
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 109
    .local v4, "eventType":I
    sget-object v5, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    .line 110
    .local v5, "frameAndTickRate":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    :goto_43
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v4, v0, :cond_12d

    .line 111
    invoke-virtual {v10}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;

    .line 112
    .local v11, "parent":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;
    if-nez v14, :cond_119

    .line 113
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 114
    .local v8, "name":Ljava/lang/String;
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v4, v0, :cond_d4

    .line 115
    const-string v17, "tt"

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6b

    .line 116
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->parseFrameAndTickRates(Lorg/xmlpull/v1/XmlPullParser;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    move-result-object v5

    .line 118
    :cond_6b
    invoke-static {v8}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->isSupportedTag(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_97

    .line 119
    const-string v17, "TtmlDecoder"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Ignoring unsupported tag: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    add-int/lit8 v14, v14, 0x1

    .line 151
    .end local v8    # "name":Ljava/lang/String;
    :cond_8f
    :goto_8f
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 152
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 153
    goto :goto_43

    .line 121
    .restart local v8    # "name":Ljava/lang/String;
    :cond_97
    const-string v17, "head"

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b6

    .line 122
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v6, v12}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->parseHeader(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    :try_end_a6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_a6} :catch_a7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a6} :catch_e8

    goto :goto_8f

    .line 155
    .end local v4    # "eventType":I
    .end local v5    # "frameAndTickRate":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .end local v6    # "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;>;"
    .end local v7    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v8    # "name":Ljava/lang/String;
    .end local v10    # "nodeStack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;>;"
    .end local v11    # "parent":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;
    .end local v12    # "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlRegion;>;"
    .end local v13    # "ttmlSubtitle":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlSubtitle;
    .end local v14    # "unsupportedNodeDepth":I
    .end local v15    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_a7
    move-exception v16

    .line 156
    .local v16, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v17, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;

    const-string v18, "Unable to decode source"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 125
    .end local v16    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v4    # "eventType":I
    .restart local v5    # "frameAndTickRate":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .restart local v6    # "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;>;"
    .restart local v7    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v10    # "nodeStack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;>;"
    .restart local v11    # "parent":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;
    .restart local v12    # "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlRegion;>;"
    .restart local v13    # "ttmlSubtitle":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlSubtitle;
    .restart local v14    # "unsupportedNodeDepth":I
    .restart local v15    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_b6
    :try_start_b6
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v11, v12, v5}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder;->parseNode(Lorg/xmlpull/v1/XmlPullParser;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;

    move-result-object v9

    .line 126
    .local v9, "node":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;
    invoke-virtual {v10, v9}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 127
    if-eqz v11, :cond_8f

    .line 128
    invoke-virtual {v11, v9}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;->addChild(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;)V
    :try_end_c4
    .catch Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException; {:try_start_b6 .. :try_end_c4} :catch_c5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b6 .. :try_end_c4} :catch_a7
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_c4} :catch_e8

    goto :goto_8f

    .line 130
    .end local v9    # "node":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;
    :catch_c5
    move-exception v3

    .line 131
    .local v3, "e":Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
    :try_start_c6
    const-string v17, "TtmlDecoder"

    const-string v18, "Suppressing parser error"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    add-int/lit8 v14, v14, 0x1

    .line 134
    goto :goto_8f

    .line 136
    .end local v3    # "e":Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
    :cond_d4
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v4, v0, :cond_f5

    .line 137
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;->buildTextNode(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;->addChild(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;)V
    :try_end_e7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c6 .. :try_end_e7} :catch_a7
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_e7} :catch_e8

    goto :goto_8f

    .line 157
    .end local v4    # "eventType":I
    .end local v5    # "frameAndTickRate":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .end local v6    # "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;>;"
    .end local v7    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v8    # "name":Ljava/lang/String;
    .end local v10    # "nodeStack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;>;"
    .end local v11    # "parent":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;
    .end local v12    # "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlRegion;>;"
    .end local v13    # "ttmlSubtitle":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlSubtitle;
    .end local v14    # "unsupportedNodeDepth":I
    .end local v15    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_e8
    move-exception v3

    .line 158
    .local v3, "e":Ljava/io/IOException;
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "Unexpected error when reading input."

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 138
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "eventType":I
    .restart local v5    # "frameAndTickRate":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .restart local v6    # "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlStyle;>;"
    .restart local v7    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v10    # "nodeStack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;>;"
    .restart local v11    # "parent":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;
    .restart local v12    # "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlRegion;>;"
    .restart local v13    # "ttmlSubtitle":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlSubtitle;
    .restart local v14    # "unsupportedNodeDepth":I
    .restart local v15    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_f5
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v4, v0, :cond_8f

    .line 139
    :try_start_fb
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "tt"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_114

    .line 140
    new-instance v13, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlSubtitle;

    .end local v13    # "ttmlSubtitle":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlSubtitle;
    invoke-virtual {v10}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;

    move-object/from16 v0, v17

    invoke-direct {v13, v0, v6, v12}, Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlSubtitle;-><init>(Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;Ljava/util/Map;)V

    .line 142
    .restart local v13    # "ttmlSubtitle":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlSubtitle;
    :cond_114
    invoke-virtual {v10}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;
    :try_end_117
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_fb .. :try_end_117} :catch_a7
    .catch Ljava/io/IOException; {:try_start_fb .. :try_end_117} :catch_e8

    goto/16 :goto_8f

    .line 145
    .end local v8    # "name":Ljava/lang/String;
    :cond_119
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v4, v0, :cond_123

    .line 146
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_8f

    .line 147
    :cond_123
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v4, v0, :cond_8f

    .line 148
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_8f

    .line 154
    .end local v11    # "parent":Lorg/telegram/messenger/exoplayer2/text/ttml/TtmlNode;
    :cond_12d
    return-object v13
.end method
