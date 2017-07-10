.class public Lorg/telegram/messenger/video/Track;
.super Ljava/lang/Object;
.source "Track.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/video/Track$SamplePresentationTime;
    }
.end annotation


# static fields
.field private static samplingFrequencyIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private creationTime:Ljava/util/Date;

.field private duration:J

.field private first:Z

.field private handler:Ljava/lang/String;

.field private headerBox:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

.field private height:I

.field private isAudio:Z

.field private sampleCompositions:[I

.field private sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

.field private sampleDurations:[J

.field private samplePresentationTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/video/Track$SamplePresentationTime;",
            ">;"
        }
    .end annotation
.end field

.field private samples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/video/Sample;",
            ">;"
        }
    .end annotation
.end field

.field private syncSamples:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private timeScale:I

.field private trackId:J

.field private volume:F

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    .line 73
    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v1, 0x17700

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v1, 0x15888

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v1, 0xfa00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v1, 0xbb80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v1, 0xac44

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x7d00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x5dc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x5622

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x3e80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x2ee0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x2b11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x1f40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method public constructor <init>(ILandroid/media/MediaFormat;Z)V
    .registers 30
    .param p1, "id"    # I
    .param p2, "format"    # Landroid/media/MediaFormat;
    .param p3, "audio"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/messenger/video/Track;->trackId:J

    .line 54
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/video/Track;->samples:Ljava/util/ArrayList;

    .line 55
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/messenger/video/Track;->duration:J

    .line 58
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/video/Track;->headerBox:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    .line 59
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/video/Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 60
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/video/Track;->syncSamples:Ljava/util/LinkedList;

    .line 62
    new-instance v22, Ljava/util/Date;

    invoke-direct/range {v22 .. v22}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/video/Track;->creationTime:Ljava/util/Date;

    .line 65
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/video/Track;->volume:F

    .line 67
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    .line 68
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/video/Track;->isAudio:Z

    .line 70
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/video/Track;->first:Z

    .line 88
    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/messenger/video/Track;->trackId:J

    .line 89
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/video/Track;->isAudio:Z

    .line 90
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/video/Track;->isAudio:Z

    move/from16 v22, v0

    if-nez v22, :cond_3b5

    .line 93
    const-string v22, "width"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/video/Track;->width:I

    .line 94
    const-string v22, "height"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/video/Track;->height:I

    .line 95
    const v22, 0x15f90

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/video/Track;->timeScale:I

    .line 96
    new-instance v22, Ljava/util/LinkedList;

    invoke-direct/range {v22 .. v22}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/video/Track;->syncSamples:Ljava/util/LinkedList;

    .line 97
    const-string v22, "vide"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/video/Track;->handler:Ljava/lang/String;

    .line 98
    new-instance v22, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;

    invoke-direct/range {v22 .. v22}, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/video/Track;->headerBox:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    .line 99
    new-instance v22, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct/range {v22 .. v22}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/video/Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 100
    const-string v22, "mime"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 101
    .local v12, "mime":Ljava/lang/String;
    const-string v22, "video/avc"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_36a

    .line 102
    new-instance v21, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    const-string v22, "avc1"

    invoke-direct/range {v21 .. v22}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;-><init>(Ljava/lang/String;)V

    .line 103
    .local v21, "visualSampleEntry":Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;
    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setDataReferenceIndex(I)V

    .line 104
    const/16 v22, 0x18

    invoke-virtual/range {v21 .. v22}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setDepth(I)V

    .line 105
    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setFrameCount(I)V

    .line 106
    const-wide/high16 v22, 0x4052000000000000L    # 72.0

    invoke-virtual/range {v21 .. v23}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHorizresolution(D)V

    .line 107
    const-wide/high16 v22, 0x4052000000000000L    # 72.0

    invoke-virtual/range {v21 .. v23}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setVertresolution(D)V

    .line 108
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/video/Track;->width:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setWidth(I)V

    .line 109
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/video/Track;->height:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHeight(I)V

    .line 111
    new-instance v6, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;

    invoke-direct {v6}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;-><init>()V

    .line 113
    .local v6, "avcConfigurationBox":Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;
    const-string v22, "csd-0"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v22

    if-eqz v22, :cond_17e

    .line 114
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v18, "spsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const-string v22, "csd-0"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v19

    .line 116
    .local v19, "spsBuff":Ljava/nio/ByteBuffer;
    const/16 v22, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 117
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 118
    .local v20, "spsBytes":[B
    invoke-virtual/range {v19 .. v20}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 119
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v13, "ppsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const-string v22, "csd-1"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 123
    .local v14, "ppsBuff":Ljava/nio/ByteBuffer;
    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 124
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v22

    move/from16 v0, v22

    new-array v15, v0, [B

    .line 125
    .local v15, "ppsBytes":[B
    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 126
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setSequenceParameterSets(Ljava/util/List;)V

    .line 128
    invoke-virtual {v6, v13}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setPictureParameterSets(Ljava/util/List;)V

    .line 131
    .end local v13    # "ppsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v14    # "ppsBuff":Ljava/nio/ByteBuffer;
    .end local v15    # "ppsBytes":[B
    .end local v18    # "spsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v19    # "spsBuff":Ljava/nio/ByteBuffer;
    .end local v20    # "spsBytes":[B
    :cond_17e
    const-string v22, "level"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2f2

    .line 132
    const-string v22, "level"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v11

    .line 133
    .local v11, "level":I
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v11, v0, :cond_203

    .line 134
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    .line 171
    .end local v11    # "level":I
    :cond_1a1
    :goto_1a1
    const-string v22, "profile"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_361

    .line 172
    const-string v22, "profile"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v16

    .line 173
    .local v16, "profile":I
    const/16 v22, 0x1

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_2fb

    .line 174
    const/16 v22, 0x42

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcProfileIndication(I)V

    .line 191
    .end local v16    # "profile":I
    :cond_1c6
    :goto_1c6
    const/16 v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setBitDepthLumaMinus8(I)V

    .line 192
    const/16 v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setBitDepthChromaMinus8(I)V

    .line 193
    const/16 v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setChromaFormat(I)V

    .line 194
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setConfigurationVersion(I)V

    .line 195
    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setLengthSizeMinusOne(I)V

    .line 196
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setProfileCompatibility(I)V

    .line 198
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/video/Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 255
    .end local v6    # "avcConfigurationBox":Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;
    .end local v12    # "mime":Ljava/lang/String;
    .end local v21    # "visualSampleEntry":Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;
    :cond_202
    :goto_202
    return-void

    .line 135
    .restart local v6    # "avcConfigurationBox":Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;
    .restart local v11    # "level":I
    .restart local v12    # "mime":Ljava/lang/String;
    .restart local v21    # "visualSampleEntry":Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;
    :cond_203
    const/16 v22, 0x20

    move/from16 v0, v22

    if-ne v11, v0, :cond_211

    .line 136
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto :goto_1a1

    .line 137
    :cond_211
    const/16 v22, 0x4

    move/from16 v0, v22

    if-ne v11, v0, :cond_21f

    .line 138
    const/16 v22, 0xb

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto :goto_1a1

    .line 139
    :cond_21f
    const/16 v22, 0x8

    move/from16 v0, v22

    if-ne v11, v0, :cond_22e

    .line 140
    const/16 v22, 0xc

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto/16 :goto_1a1

    .line 141
    :cond_22e
    const/16 v22, 0x10

    move/from16 v0, v22

    if-ne v11, v0, :cond_23d

    .line 142
    const/16 v22, 0xd

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto/16 :goto_1a1

    .line 143
    :cond_23d
    const/16 v22, 0x40

    move/from16 v0, v22

    if-ne v11, v0, :cond_24c

    .line 144
    const/16 v22, 0x15

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto/16 :goto_1a1

    .line 145
    :cond_24c
    const/16 v22, 0x80

    move/from16 v0, v22

    if-ne v11, v0, :cond_25b

    .line 146
    const/16 v22, 0x16

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto/16 :goto_1a1

    .line 147
    :cond_25b
    const/16 v22, 0x100

    move/from16 v0, v22

    if-ne v11, v0, :cond_26a

    .line 148
    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto/16 :goto_1a1

    .line 149
    :cond_26a
    const/16 v22, 0x200

    move/from16 v0, v22

    if-ne v11, v0, :cond_279

    .line 150
    const/16 v22, 0x1f

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto/16 :goto_1a1

    .line 151
    :cond_279
    const/16 v22, 0x400

    move/from16 v0, v22

    if-ne v11, v0, :cond_288

    .line 152
    const/16 v22, 0x20

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto/16 :goto_1a1

    .line 153
    :cond_288
    const/16 v22, 0x800

    move/from16 v0, v22

    if-ne v11, v0, :cond_297

    .line 154
    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto/16 :goto_1a1

    .line 155
    :cond_297
    const/16 v22, 0x1000

    move/from16 v0, v22

    if-ne v11, v0, :cond_2a6

    .line 156
    const/16 v22, 0x29

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto/16 :goto_1a1

    .line 157
    :cond_2a6
    const/16 v22, 0x2000

    move/from16 v0, v22

    if-ne v11, v0, :cond_2b5

    .line 158
    const/16 v22, 0x2a

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto/16 :goto_1a1

    .line 159
    :cond_2b5
    const/16 v22, 0x4000

    move/from16 v0, v22

    if-ne v11, v0, :cond_2c4

    .line 160
    const/16 v22, 0x5

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto/16 :goto_1a1

    .line 161
    :cond_2c4
    const v22, 0x8000

    move/from16 v0, v22

    if-ne v11, v0, :cond_2d4

    .line 162
    const/16 v22, 0x33

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto/16 :goto_1a1

    .line 163
    :cond_2d4
    const/high16 v22, 0x10000

    move/from16 v0, v22

    if-ne v11, v0, :cond_2e3

    .line 164
    const/16 v22, 0x34

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto/16 :goto_1a1

    .line 165
    :cond_2e3
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v11, v0, :cond_1a1

    .line 166
    const/16 v22, 0x1b

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto/16 :goto_1a1

    .line 169
    .end local v11    # "level":I
    :cond_2f2
    const/16 v22, 0xd

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto/16 :goto_1a1

    .line 175
    .restart local v16    # "profile":I
    :cond_2fb
    const/16 v22, 0x2

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_30c

    .line 176
    const/16 v22, 0x4d

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcProfileIndication(I)V

    goto/16 :goto_1c6

    .line 177
    :cond_30c
    const/16 v22, 0x4

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_31d

    .line 178
    const/16 v22, 0x58

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcProfileIndication(I)V

    goto/16 :goto_1c6

    .line 179
    :cond_31d
    const/16 v22, 0x8

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_32e

    .line 180
    const/16 v22, 0x64

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcProfileIndication(I)V

    goto/16 :goto_1c6

    .line 181
    :cond_32e
    const/16 v22, 0x10

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_33f

    .line 182
    const/16 v22, 0x6e

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcProfileIndication(I)V

    goto/16 :goto_1c6

    .line 183
    :cond_33f
    const/16 v22, 0x20

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_350

    .line 184
    const/16 v22, 0x7a

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcProfileIndication(I)V

    goto/16 :goto_1c6

    .line 185
    :cond_350
    const/16 v22, 0x40

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_1c6

    .line 186
    const/16 v22, 0xf4

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcProfileIndication(I)V

    goto/16 :goto_1c6

    .line 189
    .end local v16    # "profile":I
    :cond_361
    const/16 v22, 0x64

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcProfileIndication(I)V

    goto/16 :goto_1c6

    .line 200
    .end local v6    # "avcConfigurationBox":Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;
    .end local v21    # "visualSampleEntry":Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;
    :cond_36a
    const-string v22, "video/mp4v"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_202

    .line 201
    new-instance v21, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    const-string v22, "mp4v"

    invoke-direct/range {v21 .. v22}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;-><init>(Ljava/lang/String;)V

    .line 202
    .restart local v21    # "visualSampleEntry":Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;
    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setDataReferenceIndex(I)V

    .line 203
    const/16 v22, 0x18

    invoke-virtual/range {v21 .. v22}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setDepth(I)V

    .line 204
    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setFrameCount(I)V

    .line 205
    const-wide/high16 v22, 0x4052000000000000L    # 72.0

    invoke-virtual/range {v21 .. v23}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHorizresolution(D)V

    .line 206
    const-wide/high16 v22, 0x4052000000000000L    # 72.0

    invoke-virtual/range {v21 .. v23}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setVertresolution(D)V

    .line 207
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/video/Track;->width:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setWidth(I)V

    .line 208
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/video/Track;->height:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHeight(I)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/video/Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto/16 :goto_202

    .line 215
    .end local v12    # "mime":Ljava/lang/String;
    .end local v21    # "visualSampleEntry":Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;
    :cond_3b5
    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/video/Track;->volume:F

    .line 216
    const-string v22, "sample-rate"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/video/Track;->timeScale:I

    .line 217
    const-string v22, "soun"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/video/Track;->handler:Ljava/lang/String;

    .line 218
    new-instance v22, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;

    invoke-direct/range {v22 .. v22}, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/video/Track;->headerBox:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    .line 219
    new-instance v22, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct/range {v22 .. v22}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/video/Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 220
    new-instance v4, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    const-string v22, "mp4a"

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;-><init>(Ljava/lang/String;)V

    .line 221
    .local v4, "audioSampleEntry":Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
    const-string v22, "channel-count"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setChannelCount(I)V

    .line 222
    const-string v22, "sample-rate"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleRate(J)V

    .line 223
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setDataReferenceIndex(I)V

    .line 224
    const/16 v22, 0x10

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleSize(I)V

    .line 226
    new-instance v10, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;

    invoke-direct {v10}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;-><init>()V

    .line 227
    .local v10, "esds":Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;
    new-instance v9, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    invoke-direct {v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;-><init>()V

    .line 228
    .local v9, "descriptor":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->setEsId(I)V

    .line 230
    new-instance v17, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    invoke-direct/range {v17 .. v17}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;-><init>()V

    .line 231
    .local v17, "slConfigDescriptor":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;
    const/16 v22, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;->setPredefined(I)V

    .line 232
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->setSlConfigDescriptor(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;)V

    .line 234
    new-instance v8, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    invoke-direct {v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;-><init>()V

    .line 235
    .local v8, "decoderConfigDescriptor":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;
    const/16 v22, 0x40

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setObjectTypeIndication(I)V

    .line 236
    const/16 v22, 0x5

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setStreamType(I)V

    .line 237
    const/16 v22, 0x600

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setBufferSizeDB(I)V

    .line 238
    const-wide/32 v22, 0x17700

    move-wide/from16 v0, v22

    invoke-virtual {v8, v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setMaxBitRate(J)V

    .line 239
    const-wide/32 v22, 0x17700

    move-wide/from16 v0, v22

    invoke-virtual {v8, v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setAvgBitRate(J)V

    .line 241
    new-instance v5, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    invoke-direct {v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;-><init>()V

    .line 242
    .local v5, "audioSpecificConfig":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->setAudioObjectType(I)V

    .line 243
    sget-object v22, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->setSamplingFrequencyIndex(I)V

    .line 244
    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getChannelCount()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->setChannelConfiguration(I)V

    .line 245
    invoke-virtual {v8, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setAudioSpecificInfo(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;)V

    .line 247
    invoke-virtual {v9, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->setDecoderConfigDescriptor(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;)V

    .line 249
    invoke-virtual {v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->serialize()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 250
    .local v7, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v10, v9}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;->setEsDescriptor(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;)V

    .line 251
    invoke-virtual {v10, v7}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;->setData(Ljava/nio/ByteBuffer;)V

    .line 252
    invoke-virtual {v4, v10}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/video/Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto/16 :goto_202
.end method


# virtual methods
.method public addSample(JLandroid/media/MediaCodec$BufferInfo;)V
    .registers 13
    .param p1, "offset"    # J
    .param p3, "bufferInfo"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 262
    iget-boolean v1, p0, Lorg/telegram/messenger/video/Track;->isAudio:Z

    if-nez v1, :cond_4c

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4c

    const/4 v0, 0x1

    .line 263
    .local v0, "isSyncFrame":Z
    :goto_b
    iget-object v1, p0, Lorg/telegram/messenger/video/Track;->samples:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/messenger/video/Sample;

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long v4, v3

    invoke-direct {v2, p1, p2, v4, v5}, Lorg/telegram/messenger/video/Sample;-><init>(JJ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v1, p0, Lorg/telegram/messenger/video/Track;->syncSamples:Ljava/util/LinkedList;

    if-eqz v1, :cond_2d

    if-eqz v0, :cond_2d

    .line 265
    iget-object v1, p0, Lorg/telegram/messenger/video/Track;->syncSamples:Ljava/util/LinkedList;

    iget-object v2, p0, Lorg/telegram/messenger/video/Track;->samples:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_2d
    iget-object v1, p0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/messenger/video/Track$SamplePresentationTime;

    iget-object v3, p0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-wide v4, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v6, p0, Lorg/telegram/messenger/video/Track;->timeScale:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    const-wide/32 v6, 0x7a120

    add-long/2addr v4, v6

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    invoke-direct {v2, p0, v3, v4, v5}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;-><init>(Lorg/telegram/messenger/video/Track;IJ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    return-void

    .line 262
    .end local v0    # "isSyncFrame":Z
    :cond_4c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getCreationTime()Ljava/util/Date;
    .registers 2

    .prologue
    .line 362
    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->creationTime:Ljava/util/Date;

    return-object v0
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 327
    iget-wide v0, p0, Lorg/telegram/messenger/video/Track;->duration:J

    return-wide v0
.end method

.method public getHandler()Ljava/lang/String;
    .registers 2

    .prologue
    .line 331
    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->handler:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 370
    iget v0, p0, Lorg/telegram/messenger/video/Track;->height:I

    return v0
.end method

.method public getMediaHeaderBox()Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->headerBox:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    return-object v0
.end method

.method public getSampleCompositions()[I
    .registers 2

    .prologue
    .line 339
    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->sampleCompositions:[I

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .registers 2

    .prologue
    .line 343
    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    return-object v0
.end method

.method public getSampleDurations()[J
    .registers 2

    .prologue
    .line 378
    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->sampleDurations:[J

    return-object v0
.end method

.method public getSamples()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/video/Sample;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->samples:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSyncSamples()[J
    .registers 5

    .prologue
    .line 347
    iget-object v2, p0, Lorg/telegram/messenger/video/Track;->syncSamples:Ljava/util/LinkedList;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lorg/telegram/messenger/video/Track;->syncSamples:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 348
    :cond_c
    const/4 v1, 0x0

    .line 354
    :cond_d
    return-object v1

    .line 350
    :cond_e
    iget-object v2, p0, Lorg/telegram/messenger/video/Track;->syncSamples:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    new-array v1, v2, [J

    .line 351
    .local v1, "returns":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    iget-object v2, p0, Lorg/telegram/messenger/video/Track;->syncSamples:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_d

    .line 352
    iget-object v2, p0, Lorg/telegram/messenger/video/Track;->syncSamples:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    aput-wide v2, v1, v0

    .line 351
    add-int/lit8 v0, v0, 0x1

    goto :goto_17
.end method

.method public getTimeScale()I
    .registers 2

    .prologue
    .line 358
    iget v0, p0, Lorg/telegram/messenger/video/Track;->timeScale:I

    return v0
.end method

.method public getTrackId()J
    .registers 3

    .prologue
    .line 258
    iget-wide v0, p0, Lorg/telegram/messenger/video/Track;->trackId:J

    return-wide v0
.end method

.method public getVolume()F
    .registers 2

    .prologue
    .line 374
    iget v0, p0, Lorg/telegram/messenger/video/Track;->volume:F

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 366
    iget v0, p0, Lorg/telegram/messenger/video/Track;->width:I

    return v0
.end method

.method public isAudio()Z
    .registers 2

    .prologue
    .line 382
    iget-boolean v0, p0, Lorg/telegram/messenger/video/Track;->isAudio:Z

    return v0
.end method

.method public prepare()V
    .registers 19

    .prologue
    .line 271
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    invoke-direct {v3, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 272
    .local v3, "original":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/video/Track$SamplePresentationTime;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    new-instance v13, Lorg/telegram/messenger/video/Track$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lorg/telegram/messenger/video/Track$1;-><init>(Lorg/telegram/messenger/video/Track;)V

    invoke-static {v12, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 283
    const-wide/16 v6, 0x0

    .line 284
    .local v6, "lastPresentationTimeUs":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [J

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/telegram/messenger/video/Track;->sampleDurations:[J

    .line 285
    const-wide v8, 0x7fffffffffffffffL

    .line 286
    .local v8, "minDelta":J
    const/4 v10, 0x0

    .line 287
    .local v10, "outOfOrder":Z
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_2e
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v2, v12, :cond_79

    .line 288
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/video/Track$SamplePresentationTime;

    .line 289
    .local v11, "presentationTime":Lorg/telegram/messenger/video/Track$SamplePresentationTime;
    # getter for: Lorg/telegram/messenger/video/Track$SamplePresentationTime;->presentationTime:J
    invoke-static {v11}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$000(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)J

    move-result-wide v12

    sub-long v4, v12, v6

    .line 290
    .local v4, "delta":J
    # getter for: Lorg/telegram/messenger/video/Track$SamplePresentationTime;->presentationTime:J
    invoke-static {v11}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$000(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)J

    move-result-wide v6

    .line 291
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/video/Track;->sampleDurations:[J

    # getter for: Lorg/telegram/messenger/video/Track$SamplePresentationTime;->index:I
    invoke-static {v11}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$100(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)I

    move-result v13

    aput-wide v4, v12, v13

    .line 292
    # getter for: Lorg/telegram/messenger/video/Track$SamplePresentationTime;->index:I
    invoke-static {v11}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$100(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)I

    move-result v12

    if-eqz v12, :cond_65

    .line 293
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/video/Track;->duration:J

    add-long/2addr v12, v4

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/telegram/messenger/video/Track;->duration:J

    .line 295
    :cond_65
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-eqz v12, :cond_6f

    .line 296
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 298
    :cond_6f
    # getter for: Lorg/telegram/messenger/video/Track$SamplePresentationTime;->index:I
    invoke-static {v11}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$100(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)I

    move-result v12

    if-eq v12, v2, :cond_76

    .line 299
    const/4 v10, 0x1

    .line 287
    :cond_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 302
    .end local v4    # "delta":J
    .end local v11    # "presentationTime":Lorg/telegram/messenger/video/Track$SamplePresentationTime;
    :cond_79
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/video/Track;->sampleDurations:[J

    array-length v12, v12

    if-lez v12, :cond_90

    .line 303
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/video/Track;->sampleDurations:[J

    const/4 v13, 0x0

    aput-wide v8, v12, v13

    .line 304
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/video/Track;->duration:J

    add-long/2addr v12, v8

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/telegram/messenger/video/Track;->duration:J

    .line 306
    :cond_90
    const/4 v2, 0x1

    :goto_91
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v2, v12, :cond_b7

    .line 307
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/video/Track$SamplePresentationTime;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/video/Track;->sampleDurations:[J

    aget-wide v14, v13, v2

    add-int/lit8 v13, v2, -0x1

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/video/Track$SamplePresentationTime;

    # getter for: Lorg/telegram/messenger/video/Track$SamplePresentationTime;->dt:J
    invoke-static {v13}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$200(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)J

    move-result-wide v16

    add-long v14, v14, v16

    # setter for: Lorg/telegram/messenger/video/Track$SamplePresentationTime;->dt:J
    invoke-static {v12, v14, v15}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$202(Lorg/telegram/messenger/video/Track$SamplePresentationTime;J)J

    .line 306
    add-int/lit8 v2, v2, 0x1

    goto :goto_91

    .line 309
    :cond_b7
    if-eqz v10, :cond_f4

    .line 310
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/telegram/messenger/video/Track;->sampleCompositions:[I

    .line 311
    const/4 v2, 0x0

    :goto_c8
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v2, v12, :cond_f4

    .line 312
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/video/Track$SamplePresentationTime;

    .line 313
    .restart local v11    # "presentationTime":Lorg/telegram/messenger/video/Track$SamplePresentationTime;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/video/Track;->sampleCompositions:[I

    # getter for: Lorg/telegram/messenger/video/Track$SamplePresentationTime;->index:I
    invoke-static {v11}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$100(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)I

    move-result v13

    # getter for: Lorg/telegram/messenger/video/Track$SamplePresentationTime;->presentationTime:J
    invoke-static {v11}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$000(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)J

    move-result-wide v14

    # getter for: Lorg/telegram/messenger/video/Track$SamplePresentationTime;->dt:J
    invoke-static {v11}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$200(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)J

    move-result-wide v16

    sub-long v14, v14, v16

    long-to-int v14, v14

    aput v14, v12, v13

    .line 311
    add-int/lit8 v2, v2, 0x1

    goto :goto_c8

    .line 320
    .end local v11    # "presentationTime":Lorg/telegram/messenger/video/Track$SamplePresentationTime;
    :cond_f4
    return-void
.end method
