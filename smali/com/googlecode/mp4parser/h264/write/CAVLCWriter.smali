.class public Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;
.super Lcom/googlecode/mp4parser/h264/write/BitstreamWriter;
.source "CAVLCWriter.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/h264/write/BitstreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 38
    return-void
.end method


# virtual methods
.method public writeBool(ZLjava/lang/String;)V
    .registers 5
    .param p1, "value"    # Z
    .param p2, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/googlecode/mp4parser/h264/Debug;->print(Ljava/lang/String;)V

    .line 75
    if-eqz p1, :cond_2f

    const/4 v0, 0x1

    :goto_19
    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->write1Bit(I)V

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/googlecode/mp4parser/h264/Debug;->println(Ljava/lang/String;)V

    .line 77
    return-void

    .line 75
    :cond_2f
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public writeNBit(JILjava/lang/String;)V
    .registers 10
    .param p1, "value"    # J
    .param p3, "n"    # I
    .param p4, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/googlecode/mp4parser/h264/Debug;->print(Ljava/lang/String;)V

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    if-lt v0, p3, :cond_2c

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\t"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/googlecode/mp4parser/h264/Debug;->println(Ljava/lang/String;)V

    .line 89
    return-void

    .line 86
    :cond_2c
    sub-int v1, p3, v0

    add-int/lit8 v1, v1, -0x1

    shr-long v2, p1, v1

    long-to-int v1, v2

    and-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->write1Bit(I)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_17
.end method

.method public writeSE(ILjava/lang/String;)V
    .registers 6
    .param p1, "value"    # I
    .param p2, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/googlecode/mp4parser/h264/Debug;->print(Ljava/lang/String;)V

    .line 69
    shl-int/lit8 v2, p1, 0x1

    if-gez p1, :cond_36

    const/4 v1, -0x1

    :goto_1c
    mul-int/2addr v1, v2

    if-lez p1, :cond_38

    :goto_1f
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(I)V

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/googlecode/mp4parser/h264/Debug;->println(Ljava/lang/String;)V

    .line 71
    return-void

    :cond_36
    move v1, v0

    .line 69
    goto :goto_1c

    :cond_38
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public writeSliceTrailingBits()V
    .registers 3

    .prologue
    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "todo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeTrailingBits()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->write1Bit(I)V

    .line 93
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeRemainingZero()V

    .line 94
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->flush()V

    .line 95
    return-void
.end method

.method public writeU(II)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1, p2}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JI)V

    .line 81
    return-void
.end method

.method public writeU(IILjava/lang/String;)V
    .registers 6
    .param p1, "value"    # I
    .param p2, "n"    # I
    .param p3, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/googlecode/mp4parser/h264/Debug;->print(Ljava/lang/String;)V

    .line 42
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1, p2}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JI)V

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/googlecode/mp4parser/h264/Debug;->println(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public writeUE(I)V
    .registers 9
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "bits":I
    const/4 v1, 0x0

    .line 49
    .local v1, "cumul":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    const/16 v3, 0xf

    if-lt v2, v3, :cond_17

    .line 56
    :goto_8
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v4, v5, v0}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JI)V

    .line 57
    invoke-virtual {p0, v6}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->write1Bit(I)V

    .line 58
    sub-int v3, p1, v1

    int-to-long v4, v3

    invoke-virtual {p0, v4, v5, v0}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JI)V

    .line 59
    return-void

    .line 50
    :cond_17
    shl-int v3, v6, v2

    add-int/2addr v3, v1

    if-ge p1, v3, :cond_1e

    .line 51
    move v0, v2

    .line 52
    goto :goto_8

    .line 54
    :cond_1e
    shl-int v3, v6, v2

    add-int/2addr v1, v3

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method public writeUE(ILjava/lang/String;)V
    .registers 5
    .param p1, "value"    # I
    .param p2, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/googlecode/mp4parser/h264/Debug;->print(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(I)V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/googlecode/mp4parser/h264/Debug;->println(Ljava/lang/String;)V

    .line 65
    return-void
.end method
