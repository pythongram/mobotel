.class public Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;
.super Ljava/lang/Object;
.source "AbstractH26XTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LookAhead"
.end annotation


# instance fields
.field buffer:Ljava/nio/ByteBuffer;

.field bufferStartPos:J

.field dataSource:Lcom/googlecode/mp4parser/DataSource;

.field inBufferPos:I

.field start:J


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/DataSource;)V
    .registers 4
    .param p1, "dataSource"    # Lcom/googlecode/mp4parser/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->bufferStartPos:J

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->inBufferPos:I

    .line 61
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    .line 62
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->fillBuffer()V

    .line 63
    return-void
.end method


# virtual methods
.method public discardByte()V
    .registers 2

    .prologue
    .line 95
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->inBufferPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->inBufferPos:I

    .line 96
    return-void
.end method

.method public discardNext3AndMarkStart()V
    .registers 5

    .prologue
    .line 99
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->inBufferPos:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->inBufferPos:I

    .line 100
    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->bufferStartPos:J

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->inBufferPos:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->start:J

    .line 101
    return-void
.end method

.method public fillBuffer()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    iget-wide v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->bufferStartPos:J

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    invoke-interface {v1}, Lcom/googlecode/mp4parser/DataSource;->size()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->bufferStartPos:J

    sub-long/2addr v4, v6

    sget v1, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack;->BUFFER:I

    int-to-long v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/googlecode/mp4parser/DataSource;->map(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->buffer:Ljava/nio/ByteBuffer;

    .line 57
    return-void
.end method

.method public getNal()Ljava/nio/ByteBuffer;
    .registers 9

    .prologue
    .line 104
    iget-wide v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->start:J

    iget-wide v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->bufferStartPos:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_29

    .line 106
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->buffer:Ljava/nio/ByteBuffer;

    iget-wide v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->start:J

    iget-wide v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->bufferStartPos:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 107
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 108
    .local v0, "sample":Ljava/nio/Buffer;
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->inBufferPos:I

    int-to-long v2, v1

    iget-wide v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->start:J

    iget-wide v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->bufferStartPos:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 109
    check-cast v0, Ljava/nio/ByteBuffer;

    .end local v0    # "sample":Ljava/nio/Buffer;
    return-object v0

    .line 111
    :cond_29
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "damn! NAL exceeds buffer"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextThreeEquals000or001orEof()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 78
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->inBufferPos:I

    sub-int/2addr v2, v3

    const/4 v3, 0x3

    if-lt v2, v3, :cond_3f

    .line 79
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->buffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->inBufferPos:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-nez v2, :cond_3d

    .line 80
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->buffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->inBufferPos:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-nez v2, :cond_3d

    .line 81
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->buffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->inBufferPos:I

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->buffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->inBufferPos:I

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-ne v2, v0, :cond_3d

    .line 89
    :cond_3c
    :goto_3c
    return v0

    :cond_3d
    move v0, v1

    .line 79
    goto :goto_3c

    .line 83
    :cond_3f
    iget-wide v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->bufferStartPos:J

    iget v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->inBufferPos:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    invoke-interface {v4}, Lcom/googlecode/mp4parser/DataSource;->size()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_64

    .line 84
    iget-wide v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->bufferStartPos:J

    iget v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->inBufferPos:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    invoke-interface {v4}, Lcom/googlecode/mp4parser/DataSource;->size()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3c

    move v0, v1

    goto :goto_3c

    .line 86
    :cond_64
    iget-wide v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->start:J

    iput-wide v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->bufferStartPos:J

    .line 87
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->inBufferPos:I

    .line 88
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->fillBuffer()V

    .line 89
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->nextThreeEquals000or001orEof()Z

    move-result v0

    goto :goto_3c
.end method

.method public nextThreeEquals001()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 66
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->inBufferPos:I

    sub-int/2addr v2, v3

    const/4 v3, 0x3

    if-lt v2, v3, :cond_33

    .line 67
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->buffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->inBufferPos:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-nez v2, :cond_31

    .line 68
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->buffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->inBufferPos:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-nez v2, :cond_31

    .line 69
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->buffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->inBufferPos:I

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-ne v2, v0, :cond_31

    .line 74
    :goto_30
    return v0

    :cond_31
    move v0, v1

    .line 67
    goto :goto_30

    .line 71
    :cond_33
    iget-wide v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->bufferStartPos:J

    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->inBufferPos:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3

    add-long/2addr v2, v4

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/DataSource;->size()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_4c

    .line 72
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_4c
    move v0, v1

    .line 74
    goto :goto_30
.end method
