.class final Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStream;
.super Ljava/lang/Object;
.source "HlsSampleStream.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/SampleStream;


# instance fields
.field public final group:I

.field private final sampleStreamWrapper:Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;I)V
    .registers 3
    .param p1, "sampleStreamWrapper"    # Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .param p2, "group"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStream;->sampleStreamWrapper:Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 34
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStream;->group:I

    .line 35
    return-void
.end method


# virtual methods
.method public isReady()Z
    .registers 3

    .prologue
    .line 39
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStream;->sampleStreamWrapper:Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStream;->group:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->isReady(I)Z

    move-result v0

    return v0
.end method

.method public maybeThrowError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStream;->sampleStreamWrapper:Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeThrowError()V

    .line 45
    return-void
.end method

.method public readData(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;)I
    .registers 5
    .param p1, "formatHolder"    # Lorg/telegram/messenger/exoplayer2/FormatHolder;
    .param p2, "buffer"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStream;->sampleStreamWrapper:Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStream;->group:I

    invoke-virtual {v0, v1, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->readData(ILorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;)I

    move-result v0

    return v0
.end method

.method public skipToKeyframeBefore(J)V
    .registers 6
    .param p1, "timeUs"    # J

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStream;->sampleStreamWrapper:Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStream;->group:I

    invoke-virtual {v0, v1, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->skipToKeyframeBefore(IJ)V

    .line 55
    return-void
.end method
