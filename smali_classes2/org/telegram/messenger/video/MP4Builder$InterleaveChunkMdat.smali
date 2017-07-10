.class Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;
.super Ljava/lang/Object;
.source "MP4Builder.java"

# interfaces
.implements Lcom/coremedia/iso/boxes/Box;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/video/MP4Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterleaveChunkMdat"
.end annotation


# instance fields
.field private contentSize:J

.field private dataOffset:J

.field private parent:Lcom/coremedia/iso/boxes/Container;

.field final synthetic this$0:Lorg/telegram/messenger/video/MP4Builder;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/video/MP4Builder;)V
    .registers 4

    .prologue
    .line 170
    iput-object p1, p0, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->this$0:Lorg/telegram/messenger/video/MP4Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const-wide/32 v0, 0x40000000

    iput-wide v0, p0, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->contentSize:J

    .line 173
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->dataOffset:J

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/video/MP4Builder;Lorg/telegram/messenger/video/MP4Builder$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/telegram/messenger/video/MP4Builder;
    .param p2, "x1"    # Lorg/telegram/messenger/video/MP4Builder$1;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;-><init>(Lorg/telegram/messenger/video/MP4Builder;)V

    return-void
.end method

.method private isSmallBox(J)Z
    .registers 8
    .param p1, "contentSize"    # J

    .prologue
    .line 208
    const-wide/16 v0, 0x8

    add-long/2addr v0, p1

    const-wide v2, 0x100000000L

    cmp-long v0, v0, v2

    if-gez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public getBox(Ljava/nio/channels/WritableByteChannel;)V
    .registers 8
    .param p1, "writableByteChannel"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 218
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->getSize()J

    move-result-wide v2

    .line 219
    .local v2, "size":J
    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->isSmallBox(J)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 220
    invoke-static {v0, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 224
    :goto_13
    const-string v1, "mdat"

    invoke-static {v1}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 225
    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->isSmallBox(J)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 226
    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 230
    :goto_29
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 231
    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 232
    return-void

    .line 222
    :cond_30
    const-wide/16 v4, 0x1

    invoke-static {v0, v4, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    goto :goto_13

    .line 228
    :cond_36
    invoke-static {v0, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    goto :goto_29
.end method

.method public getContentSize()J
    .registers 3

    .prologue
    .line 196
    iget-wide v0, p0, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->contentSize:J

    return-wide v0
.end method

.method public getOffset()J
    .registers 3

    .prologue
    .line 180
    iget-wide v0, p0, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->dataOffset:J

    return-wide v0
.end method

.method public getParent()Lcom/coremedia/iso/boxes/Container;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->parent:Lcom/coremedia/iso/boxes/Container;

    return-object v0
.end method

.method public getSize()J
    .registers 5

    .prologue
    .line 204
    const-wide/16 v0, 0x10

    iget-wide v2, p0, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->contentSize:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 200
    const-string v0, "mdat"

    return-object v0
.end method

.method public parse(Lcom/googlecode/mp4parser/DataSource;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/BoxParser;)V
    .registers 6
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
    .line 214
    return-void
.end method

.method public setContentSize(J)V
    .registers 4
    .param p1, "contentSize"    # J

    .prologue
    .line 192
    iput-wide p1, p0, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->contentSize:J

    .line 193
    return-void
.end method

.method public setDataOffset(J)V
    .registers 4
    .param p1, "offset"    # J

    .prologue
    .line 184
    iput-wide p1, p0, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->dataOffset:J

    .line 185
    return-void
.end method

.method public setParent(Lcom/coremedia/iso/boxes/Container;)V
    .registers 2
    .param p1, "parent"    # Lcom/coremedia/iso/boxes/Container;

    .prologue
    .line 188
    iput-object p1, p0, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->parent:Lcom/coremedia/iso/boxes/Container;

    .line 189
    return-void
.end method
