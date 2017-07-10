.class Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;
.super Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;
.source "SsManifestParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QualityLevelParser"
.end annotation


# static fields
.field private static final KEY_BITRATE:Ljava/lang/String; = "Bitrate"

.field private static final KEY_CHANNELS:Ljava/lang/String; = "Channels"

.field private static final KEY_CODEC_PRIVATE_DATA:Ljava/lang/String; = "CodecPrivateData"

.field private static final KEY_FOUR_CC:Ljava/lang/String; = "FourCC"

.field private static final KEY_INDEX:Ljava/lang/String; = "Index"

.field private static final KEY_LANGUAGE:Ljava/lang/String; = "Language"

.field private static final KEY_MAX_HEIGHT:Ljava/lang/String; = "MaxHeight"

.field private static final KEY_MAX_WIDTH:Ljava/lang/String; = "MaxWidth"

.field private static final KEY_SAMPLING_RATE:Ljava/lang/String; = "SamplingRate"

.field private static final KEY_TYPE:Ljava/lang/String; = "Type"

.field public static final TAG:Ljava/lang/String; = "QualityLevel"


# instance fields
.field private format:Lorg/telegram/messenger/exoplayer2/Format;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;)V
    .registers 4
    .param p1, "parent"    # Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;
    .param p2, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 612
    const-string v0, "QualityLevel"

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;-><init>(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    return-void
.end method

.method private static buildCodecSpecificData(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p0, "codecSpecificDataString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 658
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 659
    .local v1, "csd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 660
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getBytesFromHexString(Ljava/lang/String;)[B

    move-result-object v0

    .line 661
    .local v0, "codecPrivateData":[B
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->splitNalUnits([B)[[B

    move-result-object v2

    .line 662
    .local v2, "split":[[B
    if-nez v2, :cond_19

    .line 663
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    .end local v0    # "codecPrivateData":[B
    .end local v2    # "split":[[B
    :cond_18
    :goto_18
    return-object v1

    .line 665
    .restart local v0    # "codecPrivateData":[B
    .restart local v2    # "split":[[B
    :cond_19
    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_18
.end method

.method private static fourCCToMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "fourCC"    # Ljava/lang/String;

    .prologue
    .line 672
    const-string v0, "H264"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "X264"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "AVC1"

    .line 673
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "DAVC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 674
    :cond_20
    const-string v0, "video/avc"

    .line 693
    :goto_22
    return-object v0

    .line 675
    :cond_23
    const-string v0, "AAC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "AACL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "AACH"

    .line 676
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "AACP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 677
    :cond_43
    const-string v0, "audio/mp4a-latm"

    goto :goto_22

    .line 678
    :cond_46
    const-string v0, "TTML"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 679
    const-string v0, "application/ttml+xml"

    goto :goto_22

    .line 680
    :cond_51
    const-string v0, "ac-3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_61

    const-string v0, "dac3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 681
    :cond_61
    const-string v0, "audio/ac3"

    goto :goto_22

    .line 682
    :cond_64
    const-string v0, "ec-3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_74

    const-string v0, "dec3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 683
    :cond_74
    const-string v0, "audio/eac3"

    goto :goto_22

    .line 684
    :cond_77
    const-string v0, "dtsc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 685
    const-string v0, "audio/vnd.dts"

    goto :goto_22

    .line 686
    :cond_82
    const-string v0, "dtsh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_92

    const-string v0, "dtsl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 687
    :cond_92
    const-string v0, "audio/vnd.dts.hd"

    goto :goto_22

    .line 688
    :cond_95
    const-string v0, "dtse"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 689
    const-string v0, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_22

    .line 690
    :cond_a0
    const-string v0, "opus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 691
    const-string v0, "audio/opus"

    goto/16 :goto_22

    .line 693
    :cond_ac
    const/4 v0, 0x0

    goto/16 :goto_22
.end method


# virtual methods
.method public build()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 654
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->format:Lorg/telegram/messenger/exoplayer2/Format;

    return-object v0
.end method

.method public parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 31
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 617
    const-string v3, "Type"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->getNormalizedAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v28

    .line 618
    .local v28, "type":I
    const/4 v3, 0x0

    const-string v5, "Index"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 619
    .local v2, "id":Ljava/lang/String;
    const-string v3, "Bitrate"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    .line 620
    .local v6, "bitrate":I
    const-string v3, "FourCC"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->parseRequiredString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->fourCCToMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 622
    .local v4, "sampleMimeType":Ljava/lang/String;
    const/4 v3, 0x2

    move/from16 v0, v28

    if-ne v0, v3, :cond_63

    .line 623
    const-string v3, "MaxWidth"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v7

    .line 624
    .local v7, "width":I
    const-string v3, "MaxHeight"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v8

    .line 625
    .local v8, "height":I
    const/4 v3, 0x0

    const-string v5, "CodecPrivateData"

    .line 626
    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 625
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->buildCodecSpecificData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 627
    .local v10, "codecSpecificData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const-string v3, "video/mp4"

    const/4 v5, 0x0

    const/high16 v9, -0x40800000    # -1.0f

    invoke-static/range {v2 .. v10}, Lorg/telegram/messenger/exoplayer2/Format;->createVideoContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->format:Lorg/telegram/messenger/exoplayer2/Format;

    .line 650
    .end local v7    # "width":I
    .end local v8    # "height":I
    .end local v10    # "codecSpecificData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :goto_62
    return-void

    .line 629
    :cond_63
    const/4 v3, 0x1

    move/from16 v0, v28

    if-ne v0, v3, :cond_c4

    .line 630
    if-nez v4, :cond_6c

    const-string v4, "audio/mp4a-latm"

    .line 631
    :cond_6c
    const-string v3, "Channels"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v16

    .line 632
    .local v16, "channels":I
    const-string v3, "SamplingRate"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v17

    .line 633
    .local v17, "samplingRate":I
    const/4 v3, 0x0

    const-string v5, "CodecPrivateData"

    .line 634
    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 633
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->buildCodecSpecificData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 635
    .restart local v10    # "codecSpecificData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a7

    const-string v3, "audio/mp4a-latm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 637
    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->buildAacLcAudioSpecificConfig(II)[B

    move-result-object v3

    .line 636
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 639
    :cond_a7
    const-string v3, "Language"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->getNormalizedAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 640
    .local v20, "language":Ljava/lang/String;
    const-string v12, "audio/mp4"

    const/4 v14, 0x0

    const/16 v19, 0x0

    move-object v11, v2

    move-object v13, v4

    move v15, v6

    move-object/from16 v18, v10

    invoke-static/range {v11 .. v20}, Lorg/telegram/messenger/exoplayer2/Format;->createAudioContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->format:Lorg/telegram/messenger/exoplayer2/Format;

    goto :goto_62

    .line 642
    .end local v10    # "codecSpecificData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v16    # "channels":I
    .end local v17    # "samplingRate":I
    .end local v20    # "language":Ljava/lang/String;
    :cond_c4
    const/4 v3, 0x3

    move/from16 v0, v28

    if-ne v0, v3, :cond_eb

    .line 643
    const-string v3, "Language"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->getNormalizedAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 644
    .restart local v20    # "language":Ljava/lang/String;
    const-string v22, "application/mp4"

    const/16 v24, 0x0

    const/16 v26, 0x0

    move-object/from16 v21, v2

    move-object/from16 v23, v4

    move/from16 v25, v6

    move-object/from16 v27, v20

    invoke-static/range {v21 .. v27}, Lorg/telegram/messenger/exoplayer2/Format;->createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->format:Lorg/telegram/messenger/exoplayer2/Format;

    goto/16 :goto_62

    .line 647
    .end local v20    # "language":Ljava/lang/String;
    :cond_eb
    const-string v3, "application/mp4"

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, v6}, Lorg/telegram/messenger/exoplayer2/Format;->createContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->format:Lorg/telegram/messenger/exoplayer2/Format;

    goto/16 :goto_62
.end method
