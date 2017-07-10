.class public Lcom/coremedia/iso/boxes/SampleDescriptionBox;
.super Lcom/googlecode/mp4parser/AbstractContainerBox;
.source "SampleDescriptionBox.java"

# interfaces
.implements Lcom/coremedia/iso/boxes/FullBox;


# static fields
.field public static final TYPE:Ljava/lang/String; = "stsd"


# instance fields
.field private flags:I

.field private version:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 59
    const-string v0, "stsd"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V

    .line 60
    return-void
.end method


# virtual methods
.method public getBox(Ljava/nio/channels/WritableByteChannel;)V
    .registers 6
    .param p1, "writableByteChannel"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getHeader()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 95
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 96
    .local v0, "versionFlagNumOfChildBoxes":Ljava/nio/ByteBuffer;
    iget v1, p0, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->version:I

    invoke-static {v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 97
    iget v1, p0, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->flags:I

    invoke-static {v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt24(Ljava/nio/ByteBuffer;I)V

    .line 98
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBoxes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 99
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 100
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->writeContainer(Ljava/nio/channels/WritableByteChannel;)V

    .line 101
    return-void
.end method

.method public getFlags()I
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->flags:I

    return v0
.end method

.method public getSampleEntry()Lcom/coremedia/iso/boxes/sampleentry/AbstractSampleEntry;
    .registers 4

    .prologue
    .line 104
    const-class v1, Lcom/coremedia/iso/boxes/sampleentry/AbstractSampleEntry;

    invoke-virtual {p0, v1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/sampleentry/AbstractSampleEntry;

    .line 107
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public getSize()J
    .registers 11

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getContainerSize()J

    move-result-wide v0

    .line 113
    .local v0, "s":J
    const-wide/16 v2, 0x8

    .line 114
    .local v2, "t":J
    add-long v6, v0, v2

    iget-boolean v4, p0, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->largeBox:Z

    if-nez v4, :cond_1a

    add-long v4, v0, v2

    const-wide/16 v8, 0x8

    add-long/2addr v4, v8

    const-wide v8, 0x100000000L

    cmp-long v4, v4, v8

    if-ltz v4, :cond_1f

    :cond_1a
    const/16 v4, 0x10

    :goto_1c
    int-to-long v4, v4

    add-long/2addr v4, v6

    return-wide v4

    :cond_1f
    const/16 v4, 0x8

    goto :goto_1c
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->version:I

    return v0
.end method

.method public parse(Lcom/googlecode/mp4parser/DataSource;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/BoxParser;)V
    .registers 11
    .param p1, "dataSource"    # Lcom/googlecode/mp4parser/DataSource;
    .param p2, "header"    # Ljava/nio/ByteBuffer;
    .param p3, "contentSize"    # J
    .param p5, "boxParser"    # Lcom/coremedia/iso/BoxParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 84
    .local v0, "versionFlagNumOfChildBoxes":Ljava/nio/ByteBuffer;
    invoke-interface {p1, v0}, Lcom/googlecode/mp4parser/DataSource;->read(Ljava/nio/ByteBuffer;)I

    .line 85
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 86
    invoke-static {v0}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->version:I

    .line 87
    invoke-static {v0}, Lcom/coremedia/iso/IsoTypeReader;->readUInt24(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->flags:I

    .line 89
    const-wide/16 v2, 0x8

    sub-long v2, p3, v2

    invoke-virtual {p0, p1, v2, v3, p5}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->initContainer(Lcom/googlecode/mp4parser/DataSource;JLcom/coremedia/iso/BoxParser;)V

    .line 90
    return-void
.end method

.method public setFlags(I)V
    .registers 2
    .param p1, "flags"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->flags:I

    .line 79
    return-void
.end method

.method public setVersion(I)V
    .registers 2
    .param p1, "version"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->version:I

    .line 71
    return-void
.end method
