.class public Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "CroppedTrack.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private fromSample:I

.field origTrack:Lcom/googlecode/mp4parser/authoring/Track;

.field private toSample:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-class v0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/googlecode/mp4parser/authoring/Track;JJ)V
    .registers 10
    .param p1, "origTrack"    # Lcom/googlecode/mp4parser/authoring/Track;
    .param p2, "fromSample"    # J
    .param p4, "toSample"    # J

    .prologue
    const-wide/32 v2, 0x7fffffff

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "crop("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>(Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    .line 51
    sget-boolean v0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->$assertionsDisabled:Z

    if-nez v0, :cond_2f

    cmp-long v0, p2, v2

    if-lez v0, :cond_2f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 52
    :cond_2f
    sget-boolean v0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->$assertionsDisabled:Z

    if-nez v0, :cond_3d

    cmp-long v0, p4, v2

    if-lez v0, :cond_3d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 53
    :cond_3d
    long-to-int v0, p2

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->fromSample:I

    .line 54
    long-to-int v0, p4

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->toSample:I

    .line 55
    return-void
.end method

.method static getCompositionTimeEntries(Ljava/util/List;JJ)Ljava/util/List;
    .registers 14
    .param p1, "fromSample"    # J
    .param p3, "toSample"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "origSamples":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;>;"
    if-eqz p0, :cond_8e

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8e

    .line 115
    const-wide/16 v0, 0x0

    .line 116
    .local v0, "current":J
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 117
    .local v3, "e":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v4, "nuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;>;"
    :goto_13
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    .local v2, "currentEntry":Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v6, v0

    cmp-long v5, v6, p1

    if-lez v5, :cond_3d

    .line 125
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v6, v0

    cmp-long v5, v6, p3

    if-ltz v5, :cond_44

    .line 126
    new-instance v5, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    sub-long v6, p3, p1

    long-to-int v6, v6

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getOffset()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .end local v0    # "current":J
    .end local v2    # "currentEntry":Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    .end local v3    # "e":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;>;"
    .end local v4    # "nuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;>;"
    :goto_3c
    return-object v4

    .line 122
    .restart local v0    # "current":J
    .restart local v2    # "currentEntry":Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    .restart local v3    # "e":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;>;"
    .restart local v4    # "nuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;>;"
    :cond_3d
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v0, v6

    goto :goto_13

    .line 129
    :cond_44
    new-instance v5, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v0

    sub-long/2addr v6, p1

    long-to-int v6, v6

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getOffset()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v0, v6

    .line 133
    :goto_5e
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_74

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "currentEntry":Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    check-cast v2, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    .restart local v2    # "currentEntry":Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v6, v0

    cmp-long v5, v6, p3

    if-ltz v5, :cond_84

    .line 138
    :cond_74
    new-instance v5, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    sub-long v6, p3, v0

    long-to-int v6, v6

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getOffset()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 134
    :cond_84
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v0, v6

    goto :goto_5e

    .line 142
    .end local v0    # "current":J
    .end local v2    # "currentEntry":Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    .end local v3    # "e":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;>;"
    .end local v4    # "nuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;>;"
    :cond_8e
    const/4 v4, 0x0

    goto :goto_3c
.end method

.method static getDecodingTimeEntries(Ljava/util/List;JJ)Ljava/util/List;
    .registers 16
    .param p1, "fromSample"    # J
    .param p3, "toSample"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;",
            ">;JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "origSamples":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;>;"
    if-eqz p0, :cond_84

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_84

    .line 78
    const-wide/16 v0, 0x0

    .line 79
    .local v0, "current":J
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 80
    .local v3, "e":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;>;"
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 84
    .local v4, "nuList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;>;"
    :goto_13
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .local v2, "currentEntry":Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v6

    add-long/2addr v6, v0

    cmp-long v5, v6, p1

    if-lez v5, :cond_3a

    .line 88
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v6

    add-long/2addr v6, v0

    cmp-long v5, v6, p3

    if-ltz v5, :cond_40

    .line 89
    new-instance v5, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    sub-long v6, p3, p1

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 105
    .end local v0    # "current":J
    .end local v2    # "currentEntry":Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    .end local v3    # "e":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;>;"
    .end local v4    # "nuList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;>;"
    :goto_39
    return-object v4

    .line 85
    .restart local v0    # "current":J
    .restart local v2    # "currentEntry":Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    .restart local v3    # "e":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;>;"
    .restart local v4    # "nuList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;>;"
    :cond_3a
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v6

    add-long/2addr v0, v6

    goto :goto_13

    .line 92
    :cond_40
    new-instance v5, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v6

    add-long/2addr v6, v0

    sub-long/2addr v6, p1

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 96
    :goto_57
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6c

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "currentEntry":Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    check-cast v2, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .restart local v2    # "currentEntry":Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v6

    add-long/2addr v6, v0

    cmp-long v5, v6, p3

    if-ltz v5, :cond_7b

    .line 101
    :cond_6c
    new-instance v5, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    sub-long v6, p3, v0

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 97
    :cond_7b
    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v6

    add-long/2addr v0, v6

    goto :goto_57

    .line 105
    .end local v0    # "current":J
    .end local v2    # "currentEntry":Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    .end local v3    # "e":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;>;"
    .end local v4    # "nuList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;>;"
    :cond_84
    const/4 v4, 0x0

    goto :goto_39
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
    .line 58
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->close()V

    .line 59
    return-void
.end method

.method public getCompositionTimeEntries()Ljava/util/List;
    .registers 7
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
    .line 110
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getCompositionTimeEntries()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->fromSample:I

    int-to-long v2, v1

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->toSample:I

    int-to-long v4, v1

    invoke-static {v0, v2, v3, v4, v5}, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->getCompositionTimeEntries(Ljava/util/List;JJ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Ljava/lang/String;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSampleDependencies()Ljava/util/List;
    .registers 4
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
    .line 166
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    .line 167
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->fromSample:I

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->toSample:I

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 169
    :goto_22
    return-object v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getSampleDurations()[J
    .registers 6

    .prologue
    .line 71
    monitor-enter p0

    :try_start_1
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->toSample:I

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->fromSample:I

    sub-int/2addr v1, v2

    new-array v0, v1, [J

    .line 72
    .local v0, "decodingTimes":[J
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v1}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDurations()[J

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->fromSample:I

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 73
    monitor-exit p0

    return-object v0

    .line 71
    .end local v0    # "decodingTimes":[J
    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getSamples()Ljava/util/List;
    .registers 4
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
    .line 63
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->fromSample:I

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->toSample:I

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getSyncSamples()[J
    .registers 11

    .prologue
    .line 147
    monitor-enter p0

    :try_start_1
    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v5}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v5

    if-eqz v5, :cond_4b

    .line 148
    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v5}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v3

    .line 149
    .local v3, "origSyncSamples":[J
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, v3

    .line 150
    .local v1, "j":I
    :goto_11
    array-length v5, v3

    if-ge v0, v5, :cond_1d

    aget-wide v6, v3, v0

    iget v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->fromSample:I

    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-ltz v5, :cond_3a

    .line 153
    :cond_1d
    :goto_1d
    if-lez v1, :cond_2a

    iget v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->toSample:I

    int-to-long v6, v5

    add-int/lit8 v5, v1, -0x1

    aget-wide v8, v3, v5

    cmp-long v5, v6, v8

    if-ltz v5, :cond_3d

    .line 156
    :cond_2a
    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v5}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v5

    invoke-static {v5, v0, v1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v4

    .line 157
    .local v4, "syncSampleArray":[J
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_35
    array-length v5, v4
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_4d

    if-lt v2, v5, :cond_40

    .line 162
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "k":I
    .end local v3    # "origSyncSamples":[J
    .end local v4    # "syncSampleArray":[J
    :goto_38
    monitor-exit p0

    return-object v4

    .line 151
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    .restart local v3    # "origSyncSamples":[J
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 154
    :cond_3d
    add-int/lit8 v1, v1, -0x1

    goto :goto_1d

    .line 158
    .restart local v2    # "k":I
    .restart local v4    # "syncSampleArray":[J
    :cond_40
    :try_start_40
    aget-wide v6, v4, v2

    iget v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->fromSample:I

    int-to-long v8, v5

    sub-long/2addr v6, v8

    aput-wide v6, v4, v2
    :try_end_48
    .catchall {:try_start_40 .. :try_end_48} :catchall_4d

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 162
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "k":I
    .end local v3    # "origSyncSamples":[J
    .end local v4    # "syncSampleArray":[J
    :cond_4b
    const/4 v4, 0x0

    goto :goto_38

    .line 147
    :catchall_4d
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v0

    return-object v0
.end method
