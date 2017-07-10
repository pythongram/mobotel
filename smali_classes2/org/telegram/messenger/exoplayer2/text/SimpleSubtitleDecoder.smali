.class public abstract Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;
.super Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;
.source "SimpleSubtitleDecoder.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder",
        "<",
        "Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;",
        "Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;",
        "Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;",
        ">;",
        "Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;"
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    .line 34
    new-array v0, v1, [Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    new-array v1, v1, [Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;-><init>([Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;[Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;)V

    .line 35
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;->name:Ljava/lang/String;

    .line 36
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;->setInitialInputBufferSize(I)V

    .line 37
    return-void
.end method


# virtual methods
.method protected bridge synthetic createInputBuffer()Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;
    .registers 2

    .prologue
    .line 24
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;->createInputBuffer()Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected final createInputBuffer()Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;
    .registers 2

    .prologue
    .line 51
    new-instance v0, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createOutputBuffer()Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;
    .registers 2

    .prologue
    .line 24
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;->createOutputBuffer()Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected final createOutputBuffer()Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;
    .registers 2

    .prologue
    .line 56
    new-instance v0, Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleOutputBuffer;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleOutputBuffer;-><init>(Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;)V

    return-object v0
.end method

.method protected bridge synthetic decode(Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;Z)Ljava/lang/Exception;
    .registers 5

    .prologue
    .line 24
    check-cast p1, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    check-cast p2, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;->decode(Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;Z)Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;

    move-result-object v0

    return-object v0
.end method

.method protected abstract decode([BI)Lorg/telegram/messenger/exoplayer2/text/Subtitle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation
.end method

.method protected final decode(Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;Z)Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
    .registers 12
    .param p1, "inputBuffer"    # Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;
    .param p2, "outputBuffer"    # Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;
    .param p3, "reset"    # Z

    .prologue
    .line 68
    :try_start_0
    iget-object v7, p1, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 69
    .local v7, "inputData":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;->decode([BI)Lorg/telegram/messenger/exoplayer2/text/Subtitle;

    move-result-object v3

    .line 70
    .local v3, "subtitle":Lorg/telegram/messenger/exoplayer2/text/Subtitle;
    iget-wide v1, p1, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;->timeUs:J

    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;->subsampleOffsetUs:J

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->setContent(JLorg/telegram/messenger/exoplayer2/text/Subtitle;J)V
    :try_end_16
    .catch Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_16} :catch_18

    .line 71
    const/4 v6, 0x0

    .line 73
    .end local v3    # "subtitle":Lorg/telegram/messenger/exoplayer2/text/Subtitle;
    .end local v7    # "inputData":Ljava/nio/ByteBuffer;
    :goto_17
    return-object v6

    .line 72
    :catch_18
    move-exception v6

    .line 73
    .local v6, "e":Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
    goto :goto_17
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected bridge synthetic releaseOutputBuffer(Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;)V
    .registers 2

    .prologue
    .line 24
    check-cast p1, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;->releaseOutputBuffer(Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;)V

    return-void
.end method

.method protected final releaseOutputBuffer(Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;)V
    .registers 2
    .param p1, "buffer"    # Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->releaseOutputBuffer(Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;)V

    .line 62
    return-void
.end method

.method public setPositionUs(J)V
    .registers 3
    .param p1, "timeUs"    # J

    .prologue
    .line 47
    return-void
.end method
