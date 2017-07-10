.class public final Lorg/telegram/messenger/exoplayer2/text/TextRenderer;
.super Lorg/telegram/messenger/exoplayer2/BaseRenderer;
.source "TextRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_OUTPUT:I


# instance fields
.field private decoder:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

.field private final decoderFactory:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory;

.field private final formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

.field private inputStreamEnded:Z

.field private nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

.field private nextSubtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

.field private nextSubtitleEventIndex:I

.field private final output:Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;

.field private final outputHandler:Landroid/os/Handler;

.field private outputStreamEnded:Z

.field private subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;Landroid/os/Looper;)V
    .registers 4
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;
    .param p2, "outputLooper"    # Landroid/os/Looper;

    .prologue
    .line 79
    sget-object v0, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory;->DEFAULT:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory;

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;-><init>(Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;Landroid/os/Looper;Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;Landroid/os/Looper;Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory;)V
    .registers 5
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;
    .param p2, "outputLooper"    # Landroid/os/Looper;
    .param p3, "decoderFactory"    # Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory;

    .prologue
    .line 92
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;-><init>(I)V

    .line 93
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->output:Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;

    .line 94
    if-nez p2, :cond_1b

    const/4 v0, 0x0

    :goto_f
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->outputHandler:Landroid/os/Handler;

    .line 95
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoderFactory:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory;

    .line 96
    new-instance v0, Lorg/telegram/messenger/exoplayer2/FormatHolder;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/FormatHolder;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

    .line 97
    return-void

    .line 94
    :cond_1b
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    goto :goto_f
.end method

.method private clearOutput()V
    .registers 2

    .prologue
    .line 262
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->updateOutput(Ljava/util/List;)V

    .line 263
    return-void
.end method

.method private getNextEventTime()J
    .registers 3

    .prologue
    .line 248
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    .line 249
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->getEventTimeCount()I

    move-result v1

    if-lt v0, v1, :cond_15

    :cond_f
    const-wide v0, 0x7fffffffffffffffL

    .line 248
    :goto_14
    return-wide v0

    .line 249
    :cond_15
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 250
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->getEventTime(I)J

    move-result-wide v0

    goto :goto_14
.end method

.method private invokeUpdateOutputInternal(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/text/Cue;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->output:Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;->onCues(Ljava/util/List;)V

    .line 278
    return-void
.end method

.method private resetBuffers()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 235
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    .line 236
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 237
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz v0, :cond_11

    .line 238
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->release()V

    .line 239
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    .line 241
    :cond_11
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz v0, :cond_1c

    .line 242
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->release()V

    .line 243
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    .line 245
    :cond_1c
    return-void
.end method

.method private updateOutput(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/text/Cue;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->outputHandler:Landroid/os/Handler;

    if-eqz v0, :cond_f

    .line 255
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->outputHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 259
    :goto_e
    return-void

    .line 257
    :cond_f
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->invokeUpdateOutputInternal(Ljava/util/List;)V

    goto :goto_e
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 268
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    .line 273
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 270
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->invokeUpdateOutputInternal(Ljava/util/List;)V

    .line 271
    const/4 v0, 0x1

    goto :goto_6

    .line 268
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method public isEnded()Z
    .registers 2

    .prologue
    .line 224
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->outputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .registers 2

    .prologue
    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method protected onDisabled()V
    .registers 2

    .prologue
    .line 215
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->clearOutput()V

    .line 216
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->resetBuffers()V

    .line 217
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;->release()V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

    .line 219
    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->onDisabled()V

    .line 220
    return-void
.end method

.method protected onPositionReset(JZ)V
    .registers 6
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->clearOutput()V

    .line 118
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->resetBuffers()V

    .line 119
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;->flush()V

    .line 120
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->inputStreamEnded:Z

    .line 121
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->outputStreamEnded:Z

    .line 122
    return-void
.end method

.method protected onStreamChanged([Lorg/telegram/messenger/exoplayer2/Format;)V
    .registers 4
    .param p1, "formats"    # [Lorg/telegram/messenger/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

    if-eqz v0, :cond_c

    .line 109
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;->release()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    .line 112
    :cond_c
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoderFactory:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory;->createDecoder(Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

    .line 113
    return-void
.end method

.method public render(JJ)V
    .registers 16
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 126
    iget-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->outputStreamEnded:Z

    if-eqz v5, :cond_5

    .line 211
    :cond_4
    :goto_4
    return-void

    .line 130
    :cond_5
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    if-nez v5, :cond_18

    .line 131
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v5, p1, p2}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;->setPositionUs(J)V

    .line 133
    :try_start_e
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v5}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;->dequeueOutputBuffer()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;
    :try_end_18
    .catch Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException; {:try_start_e .. :try_end_18} :catch_38

    .line 139
    :cond_18
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->getState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 143
    const/4 v4, 0x0

    .line 144
    .local v4, "textRendererNeedsUpdate":Z
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz v5, :cond_42

    .line 147
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->getNextEventTime()J

    move-result-wide v2

    .line 148
    .local v2, "subtitleNextEventTimeUs":J
    :goto_28
    cmp-long v5, v2, p1

    if-gtz v5, :cond_42

    .line 149
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 150
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->getNextEventTime()J

    move-result-wide v2

    .line 151
    const/4 v4, 0x1

    goto :goto_28

    .line 134
    .end local v2    # "subtitleNextEventTimeUs":J
    .end local v4    # "textRendererNeedsUpdate":Z
    :catch_38
    move-exception v0

    .line 135
    .local v0, "e":Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->getIndex()I

    move-result v5

    invoke-static {v0, v5}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v5

    throw v5

    .line 155
    .end local v0    # "e":Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
    .restart local v4    # "textRendererNeedsUpdate":Z
    :cond_42
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz v5, :cond_74

    .line 156
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->isEndOfStream()Z

    move-result v5

    if-eqz v5, :cond_c7

    .line 157
    if-nez v4, :cond_74

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->getNextEventTime()J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v5, v6, v8

    if-nez v5, :cond_74

    .line 158
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz v5, :cond_69

    .line 159
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->release()V

    .line 160
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    .line 162
    :cond_69
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->release()V

    .line 163
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    .line 164
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->outputStreamEnded:Z

    .line 178
    :cond_74
    :goto_74
    if-eqz v4, :cond_7f

    .line 180
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v5, p1, p2}, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->getCues(J)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->updateOutput(Ljava/util/List;)V

    .line 184
    :cond_7f
    :goto_7f
    :try_start_7f
    iget-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->inputStreamEnded:Z

    if-nez v5, :cond_4

    .line 185
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    if-nez v5, :cond_95

    .line 186
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v5}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    .line 187
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    if-eqz v5, :cond_4

    .line 192
    :cond_95
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    invoke-virtual {p0, v5, v6}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->readSource(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;)I

    move-result v1

    .line 193
    .local v1, "result":I
    const/4 v5, -0x4

    if-ne v1, v5, :cond_f9

    .line 195
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    const/high16 v6, -0x80000000

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;->clearFlag(I)V

    .line 196
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;->isEndOfStream()Z

    move-result v5

    if-eqz v5, :cond_e9

    .line 197
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->inputStreamEnded:Z

    .line 202
    :goto_b2
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoder:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    invoke-interface {v5, v6}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 203
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;
    :try_end_bc
    .catch Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException; {:try_start_7f .. :try_end_bc} :catch_bd

    goto :goto_7f

    .line 208
    .end local v1    # "result":I
    :catch_bd
    move-exception v0

    .line 209
    .restart local v0    # "e":Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->getIndex()I

    move-result v5

    invoke-static {v0, v5}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v5

    throw v5

    .line 166
    .end local v0    # "e":Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
    :cond_c7
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    iget-wide v6, v5, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->timeUs:J

    cmp-long v5, v6, p1

    if-gtz v5, :cond_74

    .line 168
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz v5, :cond_d8

    .line 169
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->release()V

    .line 171
    :cond_d8
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    .line 172
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    .line 173
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->subtitle:Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v5, p1, p2}, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->getNextEventTimeIndex(J)I

    move-result v5

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 174
    const/4 v4, 0x1

    goto :goto_74

    .line 199
    .restart local v1    # "result":I
    :cond_e9
    :try_start_e9
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

    iget-object v6, v6, Lorg/telegram/messenger/exoplayer2/FormatHolder;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget-wide v6, v6, Lorg/telegram/messenger/exoplayer2/Format;->subsampleOffsetUs:J

    iput-wide v6, v5, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;->subsampleOffsetUs:J

    .line 200
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->nextInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;->flip()V
    :try_end_f8
    .catch Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException; {:try_start_e9 .. :try_end_f8} :catch_bd

    goto :goto_b2

    .line 204
    :cond_f9
    const/4 v5, -0x3

    if-ne v1, v5, :cond_7f

    goto/16 :goto_4
.end method

.method public supportsFormat(Lorg/telegram/messenger/exoplayer2/Format;)I
    .registers 3
    .param p1, "format"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;->decoderFactory:Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderFactory;->supportsFormat(Lorg/telegram/messenger/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x3

    :goto_9
    return v0

    :cond_a
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 102
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_9

    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method
