.class public Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "EC3TrackImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;
    }
.end annotation


# static fields
.field private static final MAX_FRAMES_PER_MMAP:J = 0x14L


# instance fields
.field private bitStreamInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;",
            ">;"
        }
    .end annotation
.end field

.field private bitrate:I

.field private final dataSource:Lcom/googlecode/mp4parser/DataSource;

.field private decodingTimes:[J

.field private frameSize:I

.field sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

.field private samples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation
.end field

.field trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/DataSource;)V
    .registers 15
    .param p1, "dataSource"    # Lcom/googlecode/mp4parser/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>(Ljava/lang/String;)V

    .line 30
    new-instance v9, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct {v9}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    iput-object v9, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    .line 36
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    iput-object v9, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->bitStreamInfos:Ljava/util/List;

    .line 42
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    .line 44
    const/4 v4, 0x0

    .line 46
    .local v4, "done":Z
    :cond_18
    :goto_18
    if-eqz v4, :cond_28

    .line 62
    iget-object v9, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->bitStreamInfos:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_5b

    .line 63
    new-instance v9, Ljava/io/IOException;

    invoke-direct {v9}, Ljava/io/IOException;-><init>()V

    throw v9

    .line 47
    :cond_28
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->readVariables()Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;

    move-result-object v1

    .line 48
    .local v1, "bsi":Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;
    if-nez v1, :cond_34

    .line 49
    new-instance v9, Ljava/io/IOException;

    invoke-direct {v9}, Ljava/io/IOException;-><init>()V

    throw v9

    .line 51
    :cond_34
    iget-object v9, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->bitStreamInfos:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3a
    :goto_3a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_48

    .line 56
    if-nez v4, :cond_18

    .line 57
    iget-object v9, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->bitStreamInfos:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 51
    :cond_48
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;

    .line 52
    .local v7, "entry":Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;
    iget v10, v1, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->strmtyp:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_3a

    iget v10, v7, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->substreamid:I

    iget v11, v1, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->substreamid:I

    if-ne v10, v11, :cond_3a

    .line 53
    const/4 v4, 0x1

    goto :goto_3a

    .line 65
    .end local v1    # "bsi":Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;
    .end local v7    # "entry":Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;
    :cond_5b
    iget-object v9, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->bitStreamInfos:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;

    iget v8, v9, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->samplerate:I

    .line 67
    .local v8, "samplerate":I
    new-instance v9, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {v9}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    iput-object v9, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 68
    new-instance v0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    const-string v9, "ec-3"

    invoke-direct {v0, v9}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, "audioSampleEntry":Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setChannelCount(I)V

    .line 70
    int-to-long v10, v8

    invoke-virtual {v0, v10, v11}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleRate(J)V

    .line 71
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setDataReferenceIndex(I)V

    .line 72
    const/16 v9, 0x10

    invoke-virtual {v0, v9}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleSize(I)V

    .line 74
    new-instance v6, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;

    invoke-direct {v6}, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;-><init>()V

    .line 75
    .local v6, "ec3":Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;
    iget-object v9, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->bitStreamInfos:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    new-array v3, v9, [I

    .line 76
    .local v3, "deps":[I
    iget-object v9, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->bitStreamInfos:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    new-array v2, v9, [I

    .line 77
    .local v2, "chan_locs":[I
    iget-object v9, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->bitStreamInfos:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a0
    :goto_a0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_ff

    .line 83
    iget-object v9, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->bitStreamInfos:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_ac
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_125

    .line 101
    iget v9, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->bitrate:I

    div-int/lit16 v9, v9, 0x3e8

    invoke-virtual {v6, v9}, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->setDataRate(I)V

    .line 102
    invoke-virtual {v0, v6}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 103
    iget-object v9, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {v9, v0}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 105
    iget-object v9, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9, v10}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setCreationTime(Ljava/util/Date;)V

    .line 106
    iget-object v9, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9, v10}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setModificationTime(Ljava/util/Date;)V

    .line 108
    iget-object v9, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    int-to-long v10, v8

    invoke-virtual {v9, v10, v11}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTimescale(J)V

    .line 109
    iget-object v9, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setVolume(F)V

    .line 111
    const-wide/16 v10, 0x0

    invoke-interface {p1, v10, v11}, Lcom/googlecode/mp4parser/DataSource;->position(J)V

    .line 112
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->readSamples()Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->samples:Ljava/util/List;

    .line 113
    iget-object v9, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->samples:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [J

    iput-object v9, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->decodingTimes:[J

    .line 114
    iget-object v9, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->decodingTimes:[J

    const-wide/16 v10, 0x600

    invoke-static {v9, v10, v11}, Ljava/util/Arrays;->fill([JJ)V

    .line 115
    return-void

    .line 77
    :cond_ff
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;

    .line 78
    .restart local v1    # "bsi":Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;
    iget v10, v1, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->strmtyp:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_a0

    .line 79
    iget v10, v1, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->substreamid:I

    aget v11, v3, v10

    add-int/lit8 v11, v11, 0x1

    aput v11, v3, v10

    .line 80
    iget v10, v1, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->substreamid:I

    iget v11, v1, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->chanmap:I

    shr-int/lit8 v11, v11, 0x6

    and-int/lit16 v11, v11, 0x100

    iget v12, v1, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->chanmap:I

    shr-int/lit8 v12, v12, 0x5

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    aput v11, v2, v10

    goto/16 :goto_a0

    .line 83
    .end local v1    # "bsi":Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;
    :cond_125
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;

    .line 84
    .restart local v1    # "bsi":Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;
    iget v10, v1, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->strmtyp:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_15e

    .line 85
    new-instance v5, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;

    invoke-direct {v5}, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;-><init>()V

    .line 86
    .local v5, "e":Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;
    iget v10, v1, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->fscod:I

    iput v10, v5, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->fscod:I

    .line 87
    iget v10, v1, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->bsid:I

    iput v10, v5, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->bsid:I

    .line 88
    iget v10, v1, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->bsmod:I

    iput v10, v5, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->bsmod:I

    .line 89
    iget v10, v1, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->acmod:I

    iput v10, v5, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->acmod:I

    .line 90
    iget v10, v1, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->lfeon:I

    iput v10, v5, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->lfeon:I

    .line 91
    const/4 v10, 0x0

    iput v10, v5, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->reserved:I

    .line 92
    iget v10, v1, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->substreamid:I

    aget v10, v3, v10

    iput v10, v5, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->num_dep_sub:I

    .line 93
    iget v10, v1, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->substreamid:I

    aget v10, v2, v10

    iput v10, v5, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->chan_loc:I

    .line 94
    const/4 v10, 0x0

    iput v10, v5, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->reserved2:I

    .line 95
    invoke-virtual {v6, v5}, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->addEntry(Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;)V

    .line 97
    .end local v5    # "e":Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;
    :cond_15e
    iget v10, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->bitrate:I

    iget v11, v1, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->bitrate:I

    add-int/2addr v10, v11

    iput v10, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->bitrate:I

    .line 98
    iget v10, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->frameSize:I

    iget v11, v1, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->frameSize:I

    add-int/2addr v10, v11

    iput v10, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->frameSize:I

    goto/16 :goto_ac
.end method

.method static synthetic access$0(Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;)Lcom/googlecode/mp4parser/DataSource;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    return-object v0
.end method

.method static synthetic access$1(Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;)I
    .registers 2

    .prologue
    .line 34
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->frameSize:I

    return v0
.end method

.method private readSamples()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    invoke-interface {v4}, Lcom/googlecode/mp4parser/DataSource;->size()J

    move-result-wide v4

    iget-object v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    invoke-interface {v6}, Lcom/googlecode/mp4parser/DataSource;->position()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->frameSize:I

    int-to-long v6, v6

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v0

    .line 382
    .local v0, "framesLeft":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 383
    .local v2, "mySamples":Ljava/util/List;, "Ljava/util/List<Lcom/googlecode/mp4parser/authoring/Sample;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b
    if-lt v1, v0, :cond_1e

    .line 404
    return-object v2

    .line 384
    :cond_1e
    iget v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->frameSize:I

    mul-int v3, v1, v4

    .line 385
    .local v3, "start":I
    new-instance v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$1;

    invoke-direct {v4, p0, v3}, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$1;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;I)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b
.end method

.method private readVariables()Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    invoke-interface {v15}, Lcom/googlecode/mp4parser/DataSource;->position()J

    move-result-wide v12

    .line 160
    .local v12, "startPosition":J
    const/16 v15, 0xc8

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 161
    .local v2, "bb":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    invoke-interface {v15, v2}, Lcom/googlecode/mp4parser/DataSource;->read(Ljava/nio/ByteBuffer;)I

    .line 162
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 164
    new-instance v3, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    invoke-direct {v3, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 165
    .local v3, "brb":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;
    const/16 v15, 0x10

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    .line 166
    .local v14, "syncword":I
    const/16 v15, 0xb77

    if-eq v14, v15, :cond_29

    .line 167
    const/4 v4, 0x0

    .line 377
    :goto_28
    return-object v4

    .line 170
    :cond_29
    new-instance v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;

    invoke-direct {v4}, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;-><init>()V

    .line 172
    .local v4, "entry":Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;
    const/4 v15, 0x2

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v15

    iput v15, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->strmtyp:I

    .line 173
    const/4 v15, 0x3

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v15

    iput v15, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->substreamid:I

    .line 174
    const/16 v15, 0xb

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v5

    .line 175
    .local v5, "frmsiz":I
    add-int/lit8 v15, v5, 0x1

    mul-int/lit8 v15, v15, 0x2

    iput v15, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->frameSize:I

    .line 177
    const/4 v15, 0x2

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v15

    iput v15, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->fscod:I

    .line 178
    const/4 v6, -0x1

    .line 180
    .local v6, "fscod2":I
    iget v15, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->fscod:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_1d5

    .line 181
    const/4 v15, 0x2

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v6

    .line 182
    const/4 v11, 0x3

    .line 186
    .local v11, "numblkscod":I
    :goto_5e
    const/4 v10, 0x0

    .line 187
    .local v10, "numberOfBlocksPerSyncFrame":I
    packed-switch v11, :pswitch_data_36a

    .line 204
    :goto_62
    iget v15, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->frameSize:I

    .line 205
    const/16 v16, 0x6

    div-int v16, v16, v10

    mul-int v15, v15, v16

    iput v15, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->frameSize:I

    .line 207
    const/4 v15, 0x3

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v15

    iput v15, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->acmod:I

    .line 208
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v15

    iput v15, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->lfeon:I

    .line 209
    const/4 v15, 0x5

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v15

    iput v15, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->bsid:I

    .line 210
    const/4 v15, 0x5

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 211
    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_97

    .line 212
    const/16 v15, 0x8

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 214
    :cond_97
    iget v15, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->acmod:I

    if-nez v15, :cond_b1

    .line 215
    const/4 v15, 0x5

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 216
    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_b1

    .line 217
    const/16 v15, 0x8

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 220
    :cond_b1
    const/4 v15, 0x1

    iget v0, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->strmtyp:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_cf

    .line 221
    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_cf

    .line 222
    const/16 v15, 0x10

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v15

    iput v15, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->chanmap:I

    .line 225
    :cond_cf
    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_1b5

    .line 226
    iget v15, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->acmod:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-le v15, v0, :cond_e8

    .line 227
    const/4 v15, 0x2

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 229
    :cond_e8
    const/4 v15, 0x1

    iget v0, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->acmod:I

    move/from16 v16, v0

    and-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_103

    iget v15, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->acmod:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-le v15, v0, :cond_103

    .line 230
    const/4 v15, 0x3

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 231
    const/4 v15, 0x3

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 233
    :cond_103
    iget v15, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->acmod:I

    and-int/lit8 v15, v15, 0x4

    if-lez v15, :cond_111

    .line 234
    const/4 v15, 0x3

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 235
    const/4 v15, 0x3

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 237
    :cond_111
    const/4 v15, 0x1

    iget v0, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->lfeon:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_12b

    .line 238
    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_12b

    .line 239
    const/4 v15, 0x5

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 242
    :cond_12b
    iget v15, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->strmtyp:I

    if-nez v15, :cond_1b5

    .line 243
    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_140

    .line 244
    const/4 v15, 0x6

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 246
    :cond_140
    iget v15, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->acmod:I

    if-nez v15, :cond_155

    .line 247
    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_155

    .line 248
    const/4 v15, 0x6

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 251
    :cond_155
    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_166

    .line 252
    const/4 v15, 0x6

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 254
    :cond_166
    const/4 v15, 0x2

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v8

    .line 255
    .local v8, "mixdef":I
    const/4 v15, 0x1

    if-ne v15, v8, :cond_1e8

    .line 256
    const/4 v15, 0x5

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 307
    :cond_172
    :goto_172
    iget v15, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->acmod:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ge v15, v0, :cond_1b5

    .line 308
    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_18c

    .line 309
    const/16 v15, 0xe

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 311
    :cond_18c
    iget v15, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->acmod:I

    if-nez v15, :cond_1a2

    .line 312
    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_1a2

    .line 313
    const/16 v15, 0xe

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 316
    :cond_1a2
    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_1b5

    .line 317
    if-nez v11, :cond_2f6

    .line 318
    const/4 v15, 0x5

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 331
    .end local v8    # "mixdef":I
    :cond_1b5
    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_1c9

    .line 332
    const/4 v15, 0x3

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v15

    iput v15, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->bsmod:I

    .line 335
    :cond_1c9
    iget v15, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->fscod:I

    packed-switch v15, :pswitch_data_376

    .line 370
    :goto_1ce
    iget v15, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->samplerate:I

    if-nez v15, :cond_33d

    .line 371
    const/4 v4, 0x0

    goto/16 :goto_28

    .line 184
    .end local v10    # "numberOfBlocksPerSyncFrame":I
    .end local v11    # "numblkscod":I
    :cond_1d5
    const/4 v15, 0x2

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v11

    .restart local v11    # "numblkscod":I
    goto/16 :goto_5e

    .line 189
    .restart local v10    # "numberOfBlocksPerSyncFrame":I
    :pswitch_1dc
    const/4 v10, 0x1

    .line 190
    goto/16 :goto_62

    .line 193
    :pswitch_1df
    const/4 v10, 0x2

    .line 194
    goto/16 :goto_62

    .line 197
    :pswitch_1e2
    const/4 v10, 0x3

    .line 198
    goto/16 :goto_62

    .line 201
    :pswitch_1e5
    const/4 v10, 0x6

    goto/16 :goto_62

    .line 257
    .restart local v8    # "mixdef":I
    :cond_1e8
    const/4 v15, 0x2

    if-ne v15, v8, :cond_1f1

    .line 258
    const/16 v15, 0xc

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    goto :goto_172

    .line 259
    :cond_1f1
    const/4 v15, 0x3

    if-ne v15, v8, :cond_172

    .line 260
    const/4 v15, 0x5

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v9

    .line 261
    .local v9, "mixdeflen":I
    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_2b0

    .line 262
    const/4 v15, 0x5

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 263
    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_21b

    .line 264
    const/4 v15, 0x4

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 266
    :cond_21b
    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_22c

    .line 267
    const/4 v15, 0x4

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 269
    :cond_22c
    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_23d

    .line 270
    const/4 v15, 0x4

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 272
    :cond_23d
    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_24e

    .line 273
    const/4 v15, 0x4

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 275
    :cond_24e
    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_25f

    .line 276
    const/4 v15, 0x4

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 278
    :cond_25f
    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_270

    .line 279
    const/4 v15, 0x4

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 281
    :cond_270
    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_281

    .line 282
    const/4 v15, 0x4

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 284
    :cond_281
    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_2b0

    .line 285
    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_29f

    .line 286
    const/4 v15, 0x4

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 288
    :cond_29f
    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_2b0

    .line 289
    const/4 v15, 0x4

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 293
    :cond_2b0
    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_2e4

    .line 294
    const/4 v15, 0x5

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 295
    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_2e4

    .line 296
    const/4 v15, 0x7

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 297
    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_2e4

    .line 298
    const/16 v15, 0x8

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 302
    :cond_2e4
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2e5
    add-int/lit8 v15, v9, 0x2

    if-lt v7, v15, :cond_2ee

    .line 305
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->byteSync()I

    goto/16 :goto_172

    .line 303
    :cond_2ee
    const/16 v15, 0x8

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 302
    add-int/lit8 v7, v7, 0x1

    goto :goto_2e5

    .line 320
    .end local v7    # "i":I
    .end local v9    # "mixdeflen":I
    :cond_2f6
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2f7
    if-ge v7, v10, :cond_1b5

    .line 321
    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_30a

    .line 322
    const/4 v15, 0x5

    invoke-virtual {v3, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 320
    :cond_30a
    add-int/lit8 v7, v7, 0x1

    goto :goto_2f7

    .line 337
    .end local v7    # "i":I
    .end local v8    # "mixdef":I
    :pswitch_30d
    const v15, 0xbb80

    iput v15, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->samplerate:I

    goto/16 :goto_1ce

    .line 341
    :pswitch_314
    const v15, 0xac44

    iput v15, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->samplerate:I

    goto/16 :goto_1ce

    .line 345
    :pswitch_31b
    const/16 v15, 0x7d00

    iput v15, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->samplerate:I

    goto/16 :goto_1ce

    .line 349
    :pswitch_321
    packed-switch v6, :pswitch_data_382

    goto/16 :goto_1ce

    .line 351
    :pswitch_326
    const/16 v15, 0x5dc0

    iput v15, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->samplerate:I

    goto/16 :goto_1ce

    .line 355
    :pswitch_32c
    const/16 v15, 0x5622

    iput v15, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->samplerate:I

    goto/16 :goto_1ce

    .line 359
    :pswitch_332
    const/16 v15, 0x3e80

    iput v15, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->samplerate:I

    goto/16 :goto_1ce

    .line 363
    :pswitch_338
    const/4 v15, 0x0

    iput v15, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->samplerate:I

    goto/16 :goto_1ce

    .line 374
    :cond_33d
    iget v15, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->samplerate:I

    int-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4098000000000000L    # 1536.0

    div-double v16, v16, v18

    iget v15, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->frameSize:I

    int-to-double v0, v15

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    const-wide/high16 v18, 0x4020000000000000L    # 8.0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v15, v0

    iput v15, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->bitrate:I

    .line 376
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    iget v0, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->frameSize:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v16, v16, v12

    invoke-interface/range {v15 .. v17}, Lcom/googlecode/mp4parser/DataSource;->position(J)V

    goto/16 :goto_28

    .line 187
    :pswitch_data_36a
    .packed-switch 0x0
        :pswitch_1dc
        :pswitch_1df
        :pswitch_1e2
        :pswitch_1e5
    .end packed-switch

    .line 335
    :pswitch_data_376
    .packed-switch 0x0
        :pswitch_30d
        :pswitch_314
        :pswitch_31b
        :pswitch_321
    .end packed-switch

    .line 349
    :pswitch_data_382
    .packed-switch 0x0
        :pswitch_326
        :pswitch_32c
        :pswitch_332
        :pswitch_338
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/DataSource;->close()V

    .line 119
    return-void
.end method

.method public getCompositionTimeEntries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHandler()Ljava/lang/String;
    .registers 2

    .prologue
    .line 151
    const-string v0, "soun"

    return-object v0
.end method

.method public getSampleDependencies()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    return-object v0
.end method

.method public getSampleDurations()[J
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->decodingTimes:[J

    return-object v0
.end method

.method public getSamples()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->samples:Ljava/util/List;

    return-object v0
.end method

.method public getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;
    .registers 2

    .prologue
    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSyncSamples()[J
    .registers 2

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EC3TrackImpl{bitrate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 431
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 432
    const-string v1, ", bitStreamInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->bitStreamInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 433
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 430
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
