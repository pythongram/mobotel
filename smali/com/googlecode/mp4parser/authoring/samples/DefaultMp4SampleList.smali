.class public Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;
.super Ljava/util/AbstractList;
.source "DefaultMp4SampleList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lcom/googlecode/mp4parser/authoring/Sample;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_MAP_SIZE:J = 0x10000000L


# instance fields
.field cache:[[Ljava/nio/ByteBuffer;

.field chunkNumsStartSampleNum:[I

.field chunkOffsets:[J

.field chunkSizes:[J

.field lastChunk:I

.field sampleOffsetsWithinChunks:[[J

.field ssb:Lcom/coremedia/iso/boxes/SampleSizeBox;

.field topLevel:Lcom/coremedia/iso/boxes/Container;

.field trackBox:Lcom/coremedia/iso/boxes/TrackBox;


# direct methods
.method public constructor <init>(JLcom/coremedia/iso/boxes/Container;)V
    .registers 37
    .param p1, "track"    # J
    .param p3, "topLevel"    # Lcom/coremedia/iso/boxes/Container;

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/util/AbstractList;-><init>()V

    .line 21
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->trackBox:Lcom/coremedia/iso/boxes/TrackBox;

    .line 22
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->cache:[[Ljava/nio/ByteBuffer;

    .line 28
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->lastChunk:I

    .line 32
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->topLevel:Lcom/coremedia/iso/boxes/Container;

    .line 33
    const-class v25, Lcom/coremedia/iso/boxes/MovieBox;

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/coremedia/iso/boxes/Container;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v25

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/coremedia/iso/boxes/MovieBox;

    .line 34
    .local v12, "movieBox":Lcom/coremedia/iso/boxes/MovieBox;
    const-class v25, Lcom/coremedia/iso/boxes/TrackBox;

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Lcom/coremedia/iso/boxes/MovieBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v24

    .line 36
    .local v24, "trackBoxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/TrackBox;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_3f
    :goto_3f
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_66

    .line 41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->trackBox:Lcom/coremedia/iso/boxes/TrackBox;

    move-object/from16 v25, v0

    if-nez v25, :cond_7f

    .line 42
    new-instance v25, Ljava/lang/RuntimeException;

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "This MP4 does not contain track "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 36
    :cond_66
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/coremedia/iso/boxes/TrackBox;

    .line 37
    .local v21, "tb":Lcom/coremedia/iso/boxes/TrackBox;
    invoke-virtual/range {v21 .. v21}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J

    move-result-wide v26

    cmp-long v26, v26, p1

    if-nez v26, :cond_3f

    .line 38
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->trackBox:Lcom/coremedia/iso/boxes/TrackBox;

    goto :goto_3f

    .line 44
    .end local v21    # "tb":Lcom/coremedia/iso/boxes/TrackBox;
    :cond_7f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->trackBox:Lcom/coremedia/iso/boxes/TrackBox;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/TrackBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/SampleTableBox;->getChunkOffsetBox()Lcom/coremedia/iso/boxes/ChunkOffsetBox;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/ChunkOffsetBox;->getChunkOffsets()[J

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->chunkOffsets:[J

    .line 45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->chunkOffsets:[J

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v0, v0, [J

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->chunkSizes:[J

    .line 47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->chunkOffsets:[J

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v0, v0, [[Ljava/nio/ByteBuffer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->cache:[[Ljava/nio/ByteBuffer;

    .line 48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->chunkOffsets:[J

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v0, v0, [[J

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->sampleOffsetsWithinChunks:[[J

    .line 49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->trackBox:Lcom/coremedia/iso/boxes/TrackBox;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/TrackBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleSizeBox()Lcom/coremedia/iso/boxes/SampleSizeBox;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->ssb:Lcom/coremedia/iso/boxes/SampleSizeBox;

    .line 50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->trackBox:Lcom/coremedia/iso/boxes/TrackBox;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/TrackBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleToChunkBox()Lcom/coremedia/iso/boxes/SampleToChunkBox;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/SampleToChunkBox;->getEntries()Ljava/util/List;

    move-result-object v19

    .line 51
    .local v19, "s2chunkEntries":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;

    .line 54
    .local v9, "entries":[Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;
    const/16 v17, 0x0

    .line 55
    .local v17, "s2cIndex":I
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "s2cIndex":I
    .local v18, "s2cIndex":I
    aget-object v13, v9, v17

    .line 56
    .local v13, "next":Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;
    const/4 v5, 0x0

    .line 57
    .local v5, "currentChunkNo":I
    const/4 v8, 0x0

    .line 59
    .local v8, "currentSamplePerChunk":I
    invoke-virtual {v13}, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;->getFirstChunk()J

    move-result-wide v14

    .line 60
    .local v14, "nextFirstChunk":J
    invoke-virtual {v13}, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;->getSamplesPerChunk()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v16

    .line 62
    .local v16, "nextSamplePerChunk":I
    const/4 v7, 0x1

    .line 63
    .local v7, "currentSampleNo":I
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->size()I

    move-result v11

    .line 68
    .local v11, "lastSampleNo":I
    :goto_12f
    add-int/lit8 v5, v5, 0x1

    .line 69
    int-to-long v0, v5

    move-wide/from16 v26, v0

    cmp-long v25, v26, v14

    if-nez v25, :cond_24c

    .line 70
    move/from16 v8, v16

    .line 71
    array-length v0, v9

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v18

    if-le v0, v1, :cond_1db

    .line 72
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "s2cIndex":I
    .restart local v17    # "s2cIndex":I
    aget-object v13, v9, v18

    .line 73
    invoke-virtual {v13}, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;->getSamplesPerChunk()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v16

    .line 74
    invoke-virtual {v13}, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;->getFirstChunk()J

    move-result-wide v14

    .line 80
    :goto_153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->sampleOffsetsWithinChunks:[[J

    move-object/from16 v25, v0

    add-int/lit8 v26, v5, -0x1

    new-array v0, v8, [J

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    .line 82
    add-int/2addr v7, v8

    .line 66
    if-le v7, v11, :cond_248

    .line 83
    add-int/lit8 v25, v5, 0x1

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->chunkNumsStartSampleNum:[I

    .line 85
    const/16 v17, 0x0

    .line 86
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "s2cIndex":I
    .restart local v18    # "s2cIndex":I
    aget-object v13, v9, v17

    .line 87
    const/4 v5, 0x0

    .line 88
    const/4 v8, 0x0

    .line 90
    invoke-virtual {v13}, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;->getFirstChunk()J

    move-result-wide v14

    .line 91
    invoke-virtual {v13}, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;->getSamplesPerChunk()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v16

    .line 93
    const/4 v7, 0x1

    move/from16 v17, v18

    .line 95
    .end local v18    # "s2cIndex":I
    .restart local v17    # "s2cIndex":I
    :goto_189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->chunkNumsStartSampleNum:[I

    move-object/from16 v25, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "currentChunkNo":I
    .local v6, "currentChunkNo":I
    aput v7, v25, v5

    .line 96
    int-to-long v0, v6

    move-wide/from16 v26, v0

    cmp-long v25, v26, v14

    if-nez v25, :cond_1b7

    .line 97
    move/from16 v8, v16

    .line 98
    array-length v0, v9

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v17

    if-le v0, v1, :cond_1e6

    .line 99
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "s2cIndex":I
    .restart local v18    # "s2cIndex":I
    aget-object v13, v9, v17

    .line 100
    invoke-virtual {v13}, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;->getSamplesPerChunk()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v16

    .line 101
    invoke-virtual {v13}, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;->getFirstChunk()J

    move-result-wide v14

    move/from16 v17, v18

    .line 108
    .end local v18    # "s2cIndex":I
    .restart local v17    # "s2cIndex":I
    :cond_1b7
    :goto_1b7
    add-int/2addr v7, v8

    .line 94
    if-le v7, v11, :cond_245

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->chunkNumsStartSampleNum:[I

    move-object/from16 v25, v0

    const v26, 0x7fffffff

    aput v26, v25, v6

    .line 111
    const/4 v5, 0x0

    .line 112
    .end local v6    # "currentChunkNo":I
    .restart local v5    # "currentChunkNo":I
    const-wide/16 v22, 0x0

    .line 113
    .local v22, "sampleSum":J
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_1c9
    int-to-long v0, v10

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->ssb:Lcom/coremedia/iso/boxes/SampleSizeBox;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleCount()J

    move-result-wide v28

    cmp-long v25, v26, v28

    if-lez v25, :cond_1f2

    .line 126
    return-void

    .line 76
    .end local v10    # "i":I
    .end local v17    # "s2cIndex":I
    .end local v22    # "sampleSum":J
    .restart local v18    # "s2cIndex":I
    :cond_1db
    const/16 v16, -0x1

    .line 77
    const-wide v14, 0x7fffffffffffffffL

    move/from16 v17, v18

    .end local v18    # "s2cIndex":I
    .restart local v17    # "s2cIndex":I
    goto/16 :goto_153

    .line 103
    .end local v5    # "currentChunkNo":I
    .restart local v6    # "currentChunkNo":I
    :cond_1e6
    const/16 v16, -0x1

    .line 104
    const-wide v14, 0x7fffffffffffffffL

    goto :goto_1b7

    .line 116
    .end local v6    # "currentChunkNo":I
    .restart local v5    # "currentChunkNo":I
    .restart local v10    # "i":I
    .restart local v22    # "sampleSum":J
    :cond_1ee
    add-int/lit8 v5, v5, 0x1

    .line 117
    const-wide/16 v22, 0x0

    .line 114
    :cond_1f2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->chunkNumsStartSampleNum:[I

    move-object/from16 v25, v0

    aget v25, v25, v5

    move/from16 v0, v25

    if-eq v10, v0, :cond_1ee

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->chunkSizes:[J

    move-object/from16 v25, v0

    add-int/lit8 v26, v5, -0x1

    aget-wide v28, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->ssb:Lcom/coremedia/iso/boxes/SampleSizeBox;

    move-object/from16 v27, v0

    add-int/lit8 v30, v10, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleSizeAtIndex(I)J

    move-result-wide v30

    add-long v28, v28, v30

    aput-wide v28, v25, v26

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->sampleOffsetsWithinChunks:[[J

    move-object/from16 v25, v0

    add-int/lit8 v26, v5, -0x1

    aget-object v20, v25, v26

    .line 121
    .local v20, "sampleOffsetsWithinChunkscurrentChunkNo":[J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->chunkNumsStartSampleNum:[I

    move-object/from16 v25, v0

    add-int/lit8 v26, v5, -0x1

    aget v4, v25, v26

    .line 122
    .local v4, "chunkNumsStartSampleNumcurrentChunkNo":I
    sub-int v25, v10, v4

    aput-wide v22, v20, v25

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->ssb:Lcom/coremedia/iso/boxes/SampleSizeBox;

    move-object/from16 v25, v0

    add-int/lit8 v26, v10, -0x1

    invoke-virtual/range {v25 .. v26}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleSizeAtIndex(I)J

    move-result-wide v26

    add-long v22, v22, v26

    .line 113
    add-int/lit8 v10, v10, 0x1

    goto :goto_1c9

    .end local v4    # "chunkNumsStartSampleNumcurrentChunkNo":I
    .end local v5    # "currentChunkNo":I
    .end local v10    # "i":I
    .end local v20    # "sampleOffsetsWithinChunkscurrentChunkNo":[J
    .end local v22    # "sampleSum":J
    .restart local v6    # "currentChunkNo":I
    :cond_245
    move v5, v6

    .end local v6    # "currentChunkNo":I
    .restart local v5    # "currentChunkNo":I
    goto/16 :goto_189

    :cond_248
    move/from16 v18, v17

    .end local v17    # "s2cIndex":I
    .restart local v18    # "s2cIndex":I
    goto/16 :goto_12f

    :cond_24c
    move/from16 v17, v18

    .end local v18    # "s2cIndex":I
    .restart local v17    # "s2cIndex":I
    goto/16 :goto_153
.end method


# virtual methods
.method public get(I)Lcom/googlecode/mp4parser/authoring/Sample;
    .registers 36
    .param p1, "index"    # I

    .prologue
    .line 156
    move/from16 v0, p1

    int-to-long v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->ssb:Lcom/coremedia/iso/boxes/SampleSizeBox;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleCount()J

    move-result-wide v28

    cmp-long v4, v4, v28

    if-ltz v4, :cond_17

    .line 157
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 160
    :cond_17
    invoke-virtual/range {p0 .. p1}, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->getChunkForSample(I)I

    move-result v14

    .line 161
    .local v14, "chunkNumber":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->chunkNumsStartSampleNum:[I

    aget v4, v4, v14

    add-int/lit8 v15, v4, -0x1

    .line 162
    .local v15, "chunkStartSample":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->chunkOffsets:[J

    int-to-long v0, v14

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v5

    aget-wide v16, v4, v5

    .line 163
    .local v16, "chunkOffset":J
    sub-int v23, p1, v15

    .line 164
    .local v23, "sampleInChunk":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->sampleOffsetsWithinChunks:[[J

    int-to-long v0, v14

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v5

    aget-object v26, v4, v5

    .line 165
    .local v26, "sampleOffsetsWithinChunk":[J
    aget-wide v24, v26, v23

    .line 168
    .local v24, "offsetWithInChunk":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->cache:[[Ljava/nio/ByteBuffer;

    int-to-long v0, v14

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v5

    aget-object v13, v4, v5

    .line 169
    .local v13, "chunkBuffers":[Ljava/nio/ByteBuffer;
    if-nez v13, :cond_af

    .line 170
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v11, "_chunkBuffers":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    const-wide/16 v20, 0x0

    .line 173
    .local v20, "currentStart":J
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_59
    :try_start_59
    move-object/from16 v0, v26

    array-length v4, v0

    move/from16 v0, v22

    if-lt v0, v4, :cond_cb

    .line 181
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->topLevel:Lcom/coremedia/iso/boxes/Container;

    .line 182
    add-long v28, v16, v20

    .line 183
    move-wide/from16 v0, v20

    neg-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, v26

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-wide v32, v26, v5

    add-long v30, v30, v32

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->ssb:Lcom/coremedia/iso/boxes/SampleSizeBox;

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    add-int v27, v27, v15

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleSizeAtIndex(I)J

    move-result-wide v32

    add-long v30, v30, v32

    .line 181
    move-wide/from16 v0, v28

    move-wide/from16 v2, v30

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/coremedia/iso/boxes/Container;->getByteBuffer(JJ)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/nio/ByteBuffer;

    invoke-interface {v11, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [Ljava/nio/ByteBuffer;

    move-object v13, v0

    .line 185
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->cache:[[Ljava/nio/ByteBuffer;

    int-to-long v0, v14

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v5

    aput-object v13, v4, v5
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_af} :catch_ff

    .line 191
    .end local v11    # "_chunkBuffers":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    .end local v20    # "currentStart":J
    .end local v22    # "i":I
    :cond_af
    const/16 v18, 0x0

    .line 193
    .local v18, "correctPartOfChunk":Ljava/nio/ByteBuffer;
    array-length v5, v13

    const/4 v4, 0x0

    :goto_b3
    if-lt v4, v5, :cond_10a

    .line 202
    :goto_b5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->ssb:Lcom/coremedia/iso/boxes/SampleSizeBox;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleSizeAtIndex(I)J

    move-result-wide v6

    .line 203
    .local v6, "sampleSize":J
    move-object/from16 v8, v18

    .line 204
    .local v8, "finalCorrectPartOfChunk":Ljava/nio/ByteBuffer;
    move-wide/from16 v9, v24

    .line 205
    .local v9, "finalOffsetWithInChunk":J
    new-instance v4, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList$1;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList$1;-><init>(Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;JLjava/nio/ByteBuffer;J)V

    return-object v4

    .line 174
    .end local v6    # "sampleSize":J
    .end local v8    # "finalCorrectPartOfChunk":Ljava/nio/ByteBuffer;
    .end local v9    # "finalOffsetWithInChunk":J
    .end local v18    # "correctPartOfChunk":Ljava/nio/ByteBuffer;
    .restart local v11    # "_chunkBuffers":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    .restart local v20    # "currentStart":J
    .restart local v22    # "i":I
    :cond_cb
    :try_start_cb
    aget-wide v4, v26, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->ssb:Lcom/coremedia/iso/boxes/SampleSizeBox;

    move-object/from16 v27, v0

    add-int v28, v22, v15

    invoke-virtual/range {v27 .. v28}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleSizeAtIndex(I)J

    move-result-wide v28

    add-long v4, v4, v28

    sub-long v4, v4, v20

    const-wide/32 v28, 0x10000000

    cmp-long v4, v4, v28

    if-lez v4, :cond_fb

    .line 175
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->topLevel:Lcom/coremedia/iso/boxes/Container;

    .line 176
    add-long v28, v16, v20

    .line 177
    aget-wide v30, v26, v22

    sub-long v30, v30, v20

    .line 175
    move-wide/from16 v0, v28

    move-wide/from16 v2, v30

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/coremedia/iso/boxes/Container;->getByteBuffer(JJ)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    aget-wide v20, v26, v22
    :try_end_fb
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_fb} :catch_ff

    .line 173
    :cond_fb
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_59

    .line 186
    :catch_ff
    move-exception v19

    .line 187
    .local v19, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 193
    .end local v11    # "_chunkBuffers":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    .end local v19    # "e":Ljava/io/IOException;
    .end local v20    # "currentStart":J
    .end local v22    # "i":I
    .restart local v18    # "correctPartOfChunk":Ljava/nio/ByteBuffer;
    :cond_10a
    aget-object v12, v13, v4

    .line 194
    .local v12, "chunkBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->limit()I

    move-result v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v28, v0

    cmp-long v27, v24, v28

    if-gez v27, :cond_11c

    .line 195
    move-object/from16 v18, v12

    .line 196
    goto :goto_b5

    .line 198
    :cond_11c
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->limit()I

    move-result v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v28, v0

    sub-long v24, v24, v28

    .line 193
    add-int/lit8 v4, v4, 0x1

    goto :goto_b3
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->get(I)Lcom/googlecode/mp4parser/authoring/Sample;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getChunkForSample(I)I
    .registers 5
    .param p1, "index"    # I

    .prologue
    .line 129
    monitor-enter p0

    add-int/lit8 v0, p1, 0x1

    .line 131
    .local v0, "sampleNum":I
    :try_start_3
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->chunkNumsStartSampleNum:[I

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->lastChunk:I

    aget v1, v1, v2

    if-lt v0, v1, :cond_19

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->chunkNumsStartSampleNum:[I

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->lastChunk:I

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    if-ge v0, v1, :cond_19

    .line 132
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->lastChunk:I
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_38

    .line 149
    :goto_17
    monitor-exit p0

    return v1

    .line 133
    :cond_19
    :try_start_19
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->chunkNumsStartSampleNum:[I

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->lastChunk:I

    aget v1, v1, v2

    if-ge v0, v1, :cond_3b

    .line 136
    const/4 v1, 0x0

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->lastChunk:I

    .line 138
    :goto_24
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->chunkNumsStartSampleNum:[I

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->lastChunk:I

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    if-le v1, v0, :cond_31

    .line 141
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->lastChunk:I

    goto :goto_17

    .line 139
    :cond_31
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->lastChunk:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->lastChunk:I
    :try_end_37
    .catchall {:try_start_19 .. :try_end_37} :catchall_38

    goto :goto_24

    .line 129
    :catchall_38
    move-exception v1

    monitor-exit p0

    throw v1

    .line 144
    :cond_3b
    :try_start_3b
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->lastChunk:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->lastChunk:I

    .line 146
    :goto_41
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->chunkNumsStartSampleNum:[I

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->lastChunk:I

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    if-le v1, v0, :cond_4e

    .line 149
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->lastChunk:I

    goto :goto_17

    .line 147
    :cond_4e
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->lastChunk:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->lastChunk:I
    :try_end_54
    .catchall {:try_start_3b .. :try_end_54} :catchall_38

    goto :goto_41
.end method

.method public size()I
    .registers 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->trackBox:Lcom/coremedia/iso/boxes/TrackBox;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/TrackBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleSizeBox()Lcom/coremedia/iso/boxes/SampleSizeBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v0

    return v0
.end method
