.class public Lcom/coremedia/iso/boxes/TrackBox;
.super Lcom/googlecode/mp4parser/AbstractContainerBox;
.source "TrackBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "trak"


# instance fields
.field private sampleTableBox:Lcom/coremedia/iso/boxes/SampleTableBox;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    const-string v0, "trak"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getMediaBox()Lcom/coremedia/iso/boxes/MediaBox;
    .registers 4

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackBox;->getBoxes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 76
    const/4 v0, 0x0

    :goto_f
    return-object v0

    .line 71
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    .line 72
    .local v0, "box":Lcom/coremedia/iso/boxes/Box;
    instance-of v2, v0, Lcom/coremedia/iso/boxes/MediaBox;

    if-eqz v2, :cond_8

    .line 73
    check-cast v0, Lcom/coremedia/iso/boxes/MediaBox;

    goto :goto_f
.end method

.method public getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;
    .registers 4

    .prologue
    .line 54
    iget-object v2, p0, Lcom/coremedia/iso/boxes/TrackBox;->sampleTableBox:Lcom/coremedia/iso/boxes/SampleTableBox;

    if-eqz v2, :cond_7

    .line 55
    iget-object v2, p0, Lcom/coremedia/iso/boxes/TrackBox;->sampleTableBox:Lcom/coremedia/iso/boxes/SampleTableBox;

    .line 65
    :goto_6
    return-object v2

    .line 57
    :cond_7
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackBox;->getMediaBox()Lcom/coremedia/iso/boxes/MediaBox;

    move-result-object v0

    .line 58
    .local v0, "mdia":Lcom/coremedia/iso/boxes/MediaBox;
    if-eqz v0, :cond_1c

    .line 59
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/MediaBox;->getMediaInformationBox()Lcom/coremedia/iso/boxes/MediaInformationBox;

    move-result-object v1

    .line 60
    .local v1, "minf":Lcom/coremedia/iso/boxes/MediaInformationBox;
    if-eqz v1, :cond_1c

    .line 61
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/MediaInformationBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v2

    iput-object v2, p0, Lcom/coremedia/iso/boxes/TrackBox;->sampleTableBox:Lcom/coremedia/iso/boxes/SampleTableBox;

    .line 62
    iget-object v2, p0, Lcom/coremedia/iso/boxes/TrackBox;->sampleTableBox:Lcom/coremedia/iso/boxes/SampleTableBox;

    goto :goto_6

    .line 65
    .end local v1    # "minf":Lcom/coremedia/iso/boxes/MediaInformationBox;
    :cond_1c
    const/4 v2, 0x0

    goto :goto_6
.end method

.method public getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;
    .registers 4

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackBox;->getBoxes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    .line 45
    const/4 v0, 0x0

    :goto_f
    return-object v0

    .line 40
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    .line 41
    .local v0, "box":Lcom/coremedia/iso/boxes/Box;
    instance-of v2, v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;

    if-eqz v2, :cond_8

    .line 42
    check-cast v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;

    goto :goto_f
.end method

.method public setBoxes(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/Box;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "boxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    invoke-super {p0, p1}, Lcom/googlecode/mp4parser/AbstractContainerBox;->setBoxes(Ljava/util/List;)V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/TrackBox;->sampleTableBox:Lcom/coremedia/iso/boxes/SampleTableBox;

    .line 83
    return-void
.end method
