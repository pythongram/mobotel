.class final Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;
.super Ljava/lang/Object;
.source "SingleSampleMediaPeriod.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SampleStreamImpl"
.end annotation


# static fields
.field private static final STREAM_STATE_END_OF_STREAM:I = 0x2

.field private static final STREAM_STATE_SEND_FORMAT:I = 0x0

.field private static final STREAM_STATE_SEND_SAMPLE:I = 0x1


# instance fields
.field private streamState:I

.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;)V
    .registers 2

    .prologue
    .line 182
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;
    .param p2, "x1"    # Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$1;

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;-><init>(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;)V

    return-void
.end method


# virtual methods
.method public isReady()Z
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->loadingFinished:Z

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
    .line 203
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->maybeThrowError()V

    .line 204
    return-void
.end method

.method public readData(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;)I
    .registers 10
    .param p1, "formatHolder"    # Lorg/telegram/messenger/exoplayer2/FormatHolder;
    .param p2, "buffer"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x4

    const/4 v1, 0x1

    .line 208
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    if-ne v0, v6, :cond_e

    .line 209
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->addFlag(I)V

    move v0, v3

    .line 226
    :goto_d
    return v0

    .line 211
    :cond_e
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    if-nez v0, :cond_1c

    .line 212
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iput-object v0, p1, Lorg/telegram/messenger/exoplayer2/FormatHolder;->format:Lorg/telegram/messenger/exoplayer2/Format;

    .line 213
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    .line 214
    const/4 v0, -0x5

    goto :goto_d

    .line 217
    :cond_1c
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    if-ne v0, v1, :cond_2c

    move v0, v1

    :goto_21
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 218
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->loadingFinished:Z

    if-nez v0, :cond_2e

    .line 219
    const/4 v0, -0x3

    goto :goto_d

    :cond_2c
    move v0, v2

    .line 217
    goto :goto_21

    .line 221
    :cond_2e
    const-wide/16 v4, 0x0

    iput-wide v4, p2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    .line 222
    invoke-virtual {p2, v1}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->addFlag(I)V

    .line 223
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->sampleSize:I

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 224
    iget-object v0, p2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->sampleData:[B

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;

    iget v4, v4, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->sampleSize:I

    invoke-virtual {v0, v1, v2, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 225
    iput v6, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    move v0, v3

    .line 226
    goto :goto_d
.end method

.method public seekToUs(J)V
    .registers 5
    .param p1, "positionUs"    # J

    .prologue
    .line 191
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 192
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    .line 194
    :cond_8
    return-void
.end method

.method public skipToKeyframeBefore(J)V
    .registers 3
    .param p1, "timeUs"    # J

    .prologue
    .line 233
    return-void
.end method
