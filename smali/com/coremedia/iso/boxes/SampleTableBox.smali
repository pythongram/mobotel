.class public Lcom/coremedia/iso/boxes/SampleTableBox;
.super Lcom/googlecode/mp4parser/AbstractContainerBox;
.source "SampleTableBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "stbl"


# instance fields
.field private sampleToChunkBox:Lcom/coremedia/iso/boxes/SampleToChunkBox;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    const-string v0, "stbl"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getChunkOffsetBox()Lcom/coremedia/iso/boxes/ChunkOffsetBox;
    .registers 4

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SampleTableBox;->getBoxes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 82
    const/4 v0, 0x0

    :goto_f
    return-object v0

    .line 77
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    .line 78
    .local v0, "box":Lcom/coremedia/iso/boxes/Box;
    instance-of v2, v0, Lcom/coremedia/iso/boxes/ChunkOffsetBox;

    if-eqz v2, :cond_8

    .line 79
    check-cast v0, Lcom/coremedia/iso/boxes/ChunkOffsetBox;

    goto :goto_f
.end method

.method public getCompositionTimeToSample()Lcom/coremedia/iso/boxes/CompositionTimeToSample;
    .registers 4

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SampleTableBox;->getBoxes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 110
    const/4 v0, 0x0

    :goto_f
    return-object v0

    .line 105
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    .line 106
    .local v0, "box":Lcom/coremedia/iso/boxes/Box;
    instance-of v2, v0, Lcom/coremedia/iso/boxes/CompositionTimeToSample;

    if-eqz v2, :cond_8

    .line 107
    check-cast v0, Lcom/coremedia/iso/boxes/CompositionTimeToSample;

    goto :goto_f
.end method

.method public getSampleDependencyTypeBox()Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;
    .registers 4

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SampleTableBox;->getBoxes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 119
    const/4 v0, 0x0

    :goto_f
    return-object v0

    .line 114
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    .line 115
    .local v0, "box":Lcom/coremedia/iso/boxes/Box;
    instance-of v2, v0, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;

    if-eqz v2, :cond_8

    .line 116
    check-cast v0, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;

    goto :goto_f
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .registers 4

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SampleTableBox;->getBoxes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 51
    const/4 v0, 0x0

    :goto_f
    return-object v0

    .line 46
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    .line 47
    .local v0, "box":Lcom/coremedia/iso/boxes/Box;
    instance-of v2, v0, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    if-eqz v2, :cond_8

    .line 48
    check-cast v0, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    goto :goto_f
.end method

.method public getSampleSizeBox()Lcom/coremedia/iso/boxes/SampleSizeBox;
    .registers 4

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SampleTableBox;->getBoxes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 60
    const/4 v0, 0x0

    :goto_f
    return-object v0

    .line 55
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    .line 56
    .local v0, "box":Lcom/coremedia/iso/boxes/Box;
    instance-of v2, v0, Lcom/coremedia/iso/boxes/SampleSizeBox;

    if-eqz v2, :cond_8

    .line 57
    check-cast v0, Lcom/coremedia/iso/boxes/SampleSizeBox;

    goto :goto_f
.end method

.method public getSampleToChunkBox()Lcom/coremedia/iso/boxes/SampleToChunkBox;
    .registers 4

    .prologue
    .line 64
    iget-object v1, p0, Lcom/coremedia/iso/boxes/SampleTableBox;->sampleToChunkBox:Lcom/coremedia/iso/boxes/SampleToChunkBox;

    if-eqz v1, :cond_7

    .line 65
    iget-object v1, p0, Lcom/coremedia/iso/boxes/SampleTableBox;->sampleToChunkBox:Lcom/coremedia/iso/boxes/SampleToChunkBox;

    .line 73
    :goto_6
    return-object v1

    .line 67
    :cond_7
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SampleTableBox;->getBoxes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_17

    .line 73
    const/4 v1, 0x0

    goto :goto_6

    .line 67
    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    .line 68
    .local v0, "box":Lcom/coremedia/iso/boxes/Box;
    instance-of v2, v0, Lcom/coremedia/iso/boxes/SampleToChunkBox;

    if-eqz v2, :cond_f

    .line 69
    check-cast v0, Lcom/coremedia/iso/boxes/SampleToChunkBox;

    .end local v0    # "box":Lcom/coremedia/iso/boxes/Box;
    iput-object v0, p0, Lcom/coremedia/iso/boxes/SampleTableBox;->sampleToChunkBox:Lcom/coremedia/iso/boxes/SampleToChunkBox;

    .line 70
    iget-object v1, p0, Lcom/coremedia/iso/boxes/SampleTableBox;->sampleToChunkBox:Lcom/coremedia/iso/boxes/SampleToChunkBox;

    goto :goto_6
.end method

.method public getSyncSampleBox()Lcom/coremedia/iso/boxes/SyncSampleBox;
    .registers 4

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SampleTableBox;->getBoxes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 101
    const/4 v0, 0x0

    :goto_f
    return-object v0

    .line 96
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    .line 97
    .local v0, "box":Lcom/coremedia/iso/boxes/Box;
    instance-of v2, v0, Lcom/coremedia/iso/boxes/SyncSampleBox;

    if-eqz v2, :cond_8

    .line 98
    check-cast v0, Lcom/coremedia/iso/boxes/SyncSampleBox;

    goto :goto_f
.end method

.method public getTimeToSampleBox()Lcom/coremedia/iso/boxes/TimeToSampleBox;
    .registers 4

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SampleTableBox;->getBoxes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 92
    const/4 v0, 0x0

    :goto_f
    return-object v0

    .line 87
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    .line 88
    .local v0, "box":Lcom/coremedia/iso/boxes/Box;
    instance-of v2, v0, Lcom/coremedia/iso/boxes/TimeToSampleBox;

    if-eqz v2, :cond_8

    .line 89
    check-cast v0, Lcom/coremedia/iso/boxes/TimeToSampleBox;

    goto :goto_f
.end method
