.class Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;
.super Ljava/lang/Object;
.source "CencMp4TrackImplImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindSaioSaizPair"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private container:Lcom/coremedia/iso/boxes/Container;

.field private saio:Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;

.field private saiz:Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;

.field final synthetic this$0:Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 207
    const-class v0, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;Lcom/coremedia/iso/boxes/Container;)V
    .registers 3
    .param p2, "container"    # Lcom/coremedia/iso/boxes/Container;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;->this$0:Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p2, p0, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;->container:Lcom/coremedia/iso/boxes/Container;

    .line 214
    return-void
.end method

.method static synthetic access$0(Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;)Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;->saio:Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;

    return-object v0
.end method

.method static synthetic access$1(Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;)Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;->saiz:Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;

    return-object v0
.end method


# virtual methods
.method public getSaio()Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;->saio:Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;

    return-object v0
.end method

.method public getSaiz()Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;->saiz:Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;

    return-object v0
.end method

.method public invoke()Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 225
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;->container:Lcom/coremedia/iso/boxes/Container;

    const-class v4, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;

    invoke-interface {v3, v4}, Lcom/coremedia/iso/boxes/Container;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 226
    .local v2, "saizs":Ljava/util/List;, "Ljava/util/List<Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;>;"
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;->container:Lcom/coremedia/iso/boxes/Container;

    const-class v4, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;

    invoke-interface {v3, v4}, Lcom/coremedia/iso/boxes/Container;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 227
    .local v1, "saios":Ljava/util/List;, "Ljava/util/List<Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;>;"
    sget-boolean v3, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;->$assertionsDisabled:Z

    if-nez v3, :cond_25

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_25

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 228
    :cond_25
    iput-object v5, p0, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;->saiz:Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;

    .line 229
    iput-object v5, p0, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;->saio:Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;

    .line 231
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_31

    .line 247
    return-object p0

    .line 232
    :cond_31
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;->saiz:Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;

    if-nez v3, :cond_41

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;

    invoke-virtual {v3}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;->getAuxInfoType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_53

    :cond_41
    const-string v4, "cenc"

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;

    invoke-virtual {v3}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;->getAuxInfoType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 233
    :cond_53
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;

    iput-object v3, p0, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;->saiz:Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;

    .line 239
    :goto_5b
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;->saio:Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;

    if-nez v3, :cond_6b

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;

    invoke-virtual {v3}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;->getAuxInfoType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7d

    :cond_6b
    const-string v4, "cenc"

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;

    invoke-virtual {v3}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;->getAuxInfoType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b7

    .line 240
    :cond_7d
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;

    iput-object v3, p0, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;->saio:Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;

    .line 231
    :goto_85
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 234
    :cond_88
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;->saiz:Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;

    if-eqz v3, :cond_af

    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;->saiz:Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;

    invoke-virtual {v3}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;->getAuxInfoType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_af

    const-string v4, "cenc"

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;

    invoke-virtual {v3}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;->getAuxInfoType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    .line 235
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;

    iput-object v3, p0, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;->saiz:Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;

    goto :goto_5b

    .line 237
    :cond_af
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Are there two cenc labeled saiz?"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 241
    :cond_b7
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;->saio:Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;

    if-eqz v3, :cond_de

    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;->saio:Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;

    invoke-virtual {v3}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;->getAuxInfoType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_de

    const-string v4, "cenc"

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;

    invoke-virtual {v3}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;->getAuxInfoType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_de

    .line 242
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;

    iput-object v3, p0, Lcom/googlecode/mp4parser/authoring/CencMp4TrackImplImpl$FindSaioSaizPair;->saio:Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;

    goto :goto_85

    .line 244
    :cond_de
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Are there two cenc labeled saio?"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
