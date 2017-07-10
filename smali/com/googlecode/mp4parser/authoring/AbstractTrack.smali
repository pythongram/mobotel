.class public abstract Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.super Ljava/lang/Object;
.source "AbstractTrack.java"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/Track;


# instance fields
.field edits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Edit;",
            ">;"
        }
    .end annotation
.end field

.field name:Ljava/lang/String;

.field sampleGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;",
            "[J>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/AbstractTrack;->edits:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/AbstractTrack;->sampleGroups:Ljava/util/Map;

    .line 38
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/AbstractTrack;->name:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
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
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDuration()J
    .registers 8

    .prologue
    .line 58
    const-wide/16 v2, 0x0

    .line 59
    .local v2, "duration":J
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;->getSampleDurations()[J

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_8
    if-lt v4, v6, :cond_b

    .line 62
    return-wide v2

    .line 59
    :cond_b
    aget-wide v0, v5, v4

    .line 60
    .local v0, "delta":J
    add-long/2addr v2, v0

    .line 59
    add-int/lit8 v4, v4, 0x1

    goto :goto_8
.end method

.method public getEdits()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Edit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/AbstractTrack;->edits:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/AbstractTrack;->name:Ljava/lang/String;

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
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSampleGroups()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;",
            "[J>;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/AbstractTrack;->sampleGroups:Ljava/util/Map;

    return-object v0
.end method

.method public getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;
    .registers 2

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSyncSamples()[J
    .registers 2

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method
