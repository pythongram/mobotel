.class public Lorg/telegram/messenger/audioinfo/util/PositionInputStream;
.super Ljava/io/FilterInputStream;
.source "PositionInputStream.java"


# instance fields
.field private position:J

.field private positionMark:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "delegate"    # Ljava/io/InputStream;

    .prologue
    .line 27
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;-><init>(Ljava/io/InputStream;J)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;J)V
    .registers 4
    .param p1, "delegate"    # Ljava/io/InputStream;
    .param p2, "position"    # J

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 32
    iput-wide p2, p0, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->position:J

    .line 33
    return-void
.end method


# virtual methods
.method public getPosition()J
    .registers 3

    .prologue
    .line 77
    iget-wide v0, p0, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->position:J

    return-wide v0
.end method

.method public declared-synchronized mark(I)V
    .registers 4
    .param p1, "readlimit"    # I

    .prologue
    .line 37
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->position:J

    iput-wide v0, p0, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->positionMark:J

    .line 38
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 39
    monitor-exit p0

    return-void

    .line 37
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 49
    .local v0, "data":I
    if-ltz v0, :cond_d

    .line 50
    iget-wide v2, p0, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->position:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->position:J

    .line 52
    :cond_d
    return v0
.end method

.method public final read([B)I
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 10
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget-wide v0, p0, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->position:J

    .line 57
    .local v0, "p":J
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v2

    .line 58
    .local v2, "read":I
    if-lez v2, :cond_c

    .line 59
    int-to-long v4, v2

    add-long/2addr v4, v0

    iput-wide v4, p0, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->position:J

    .line 61
    :cond_c
    return v2
.end method

.method public declared-synchronized reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V

    .line 44
    iget-wide v0, p0, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->positionMark:J

    iput-wide v0, p0, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->position:J
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 45
    monitor-exit p0

    return-void

    .line 43
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 10
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-wide v0, p0, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->position:J

    .line 71
    .local v0, "p":J
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v2

    .line 72
    .local v2, "skipped":J
    add-long v4, v0, v2

    iput-wide v4, p0, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->position:J

    .line 73
    return-wide v2
.end method
