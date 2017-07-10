.class public Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;
.super Lorg/telegram/messenger/exoplayer2/decoder/Buffer;
.source "DecoderInputBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer$BufferReplacementMode;
    }
.end annotation


# static fields
.field public static final BUFFER_REPLACEMENT_MODE_DIRECT:I = 0x2

.field public static final BUFFER_REPLACEMENT_MODE_DISABLED:I = 0x0

.field public static final BUFFER_REPLACEMENT_MODE_NORMAL:I = 0x1


# instance fields
.field private final bufferReplacementMode:I

.field public final cryptoInfo:Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;

.field public data:Ljava/nio/ByteBuffer;

.field public timeUs:J


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "bufferReplacementMode"    # I

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/decoder/Buffer;-><init>()V

    .line 73
    new-instance v0, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lorg/telegram/messenger/exoplayer2/decoder/CryptoInfo;

    .line 74
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->bufferReplacementMode:I

    .line 75
    return-void
.end method

.method private createReplacementByteBuffer(I)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "requiredCapacity"    # I

    .prologue
    .line 138
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->bufferReplacementMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 139
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 141
    :goto_9
    return-object v1

    .line 140
    :cond_a
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->bufferReplacementMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_14

    .line 141
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_9

    .line 143
    :cond_14
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_42

    const/4 v0, 0x0

    .line 144
    .local v0, "currentCapacity":I
    :goto_19
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Buffer too small ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    .end local v0    # "currentCapacity":I
    :cond_42
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    goto :goto_19
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 131
    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/decoder/Buffer;->clear()V

    .line 132
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_c

    .line 133
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 135
    :cond_c
    return-void
.end method

.method public ensureSpaceForWrite(I)V
    .registers 8
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-nez v4, :cond_b

    .line 91
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->createReplacementByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 111
    :cond_a
    :goto_a
    return-void

    .line 95
    :cond_b
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 96
    .local v0, "capacity":I
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 97
    .local v2, "position":I
    add-int v3, v2, p1

    .line 98
    .local v3, "requiredCapacity":I
    if-ge v0, v3, :cond_a

    .line 102
    invoke-direct {p0, v3}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->createReplacementByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 104
    .local v1, "newData":Ljava/nio/ByteBuffer;
    if-lez v2, :cond_31

    .line 105
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 106
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 107
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 110
    :cond_31
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    goto :goto_a
.end method

.method public final flip()V
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 127
    return-void
.end method

.method public final isEncrypted()Z
    .registers 2

    .prologue
    .line 117
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->getFlag(I)Z

    move-result v0

    return v0
.end method
