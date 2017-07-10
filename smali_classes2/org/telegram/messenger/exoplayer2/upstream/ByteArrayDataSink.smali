.class public final Lorg/telegram/messenger/exoplayer2/upstream/ByteArrayDataSink;
.super Ljava/lang/Object;
.source "ByteArrayDataSink.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/DataSink;


# instance fields
.field private stream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    .line 42
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/ByteArrayDataSink;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 43
    return-void
.end method

.method public getData()[B
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/ByteArrayDataSink;->stream:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/ByteArrayDataSink;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_5
.end method

.method public open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)V
    .registers 6
    .param p1, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    iget-wide v0, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 33
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/ByteArrayDataSink;->stream:Ljava/io/ByteArrayOutputStream;

    .line 38
    :goto_f
    return-void

    .line 35
    :cond_10
    iget-wide v0, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->length:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_28

    const/4 v0, 0x1

    :goto_1a
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 36
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget-wide v2, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->length:J

    long-to-int v1, v2

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/ByteArrayDataSink;->stream:Ljava/io/ByteArrayOutputStream;

    goto :goto_f

    .line 35
    :cond_28
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public write([BII)V
    .registers 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/ByteArrayDataSink;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 48
    return-void
.end method
