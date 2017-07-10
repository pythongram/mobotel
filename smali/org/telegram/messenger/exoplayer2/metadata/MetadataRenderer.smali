.class public final Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;
.super Lorg/telegram/messenger/exoplayer2/BaseRenderer;
.source "MetadataRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;
    }
.end annotation


# static fields
.field private static final MSG_INVOKE_RENDERER:I


# instance fields
.field private final buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

.field private final formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

.field private inputStreamEnded:Z

.field private final metadataDecoder:Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoder;

.field private final output:Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;

.field private final outputHandler:Landroid/os/Handler;

.field private pendingMetadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

.field private pendingMetadataTimestamp:J


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;Landroid/os/Looper;Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoder;)V
    .registers 6
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;
    .param p2, "outputLooper"    # Landroid/os/Looper;
    .param p3, "metadataDecoder"    # Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoder;

    .prologue
    .line 72
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;-><init>(I)V

    .line 73
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->output:Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;

    .line 74
    if-nez p2, :cond_29

    const/4 v0, 0x0

    :goto_f
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->outputHandler:Landroid/os/Handler;

    .line 75
    invoke-static {p3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoder;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->metadataDecoder:Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoder;

    .line 76
    new-instance v0, Lorg/telegram/messenger/exoplayer2/FormatHolder;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/FormatHolder;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

    .line 77
    new-instance v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    .line 78
    return-void

    .line 74
    :cond_29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    goto :goto_f
.end method

.method private invokeRenderer(Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V
    .registers 4
    .param p1, "metadata"    # Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    .prologue
    .line 136
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->outputHandler:Landroid/os/Handler;

    if-eqz v0, :cond_f

    .line 137
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->outputHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 141
    :goto_e
    return-void

    .line 139
    :cond_f
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->invokeRendererInternal(Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    goto :goto_e
.end method

.method private invokeRendererInternal(Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V
    .registers 3
    .param p1, "metadata"    # Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    .prologue
    .line 155
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->output:Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;->onMetadata(Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    .line 156
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 146
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    .line 151
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 148
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->invokeRendererInternal(Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    .line 149
    const/4 v0, 0x1

    goto :goto_6

    .line 146
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method public isEnded()Z
    .registers 2

    .prologue
    .line 127
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->inputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .registers 2

    .prologue
    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method protected onDisabled()V
    .registers 2

    .prologue
    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    .line 122
    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/BaseRenderer;->onDisabled()V

    .line 123
    return-void
.end method

.method protected onPositionReset(JZ)V
    .registers 5
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z

    .prologue
    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->inputStreamEnded:Z

    .line 90
    return-void
.end method

.method public render(JJ)V
    .registers 12
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 94
    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->inputStreamEnded:Z

    if-nez v3, :cond_23

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    if-nez v3, :cond_23

    .line 95
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 96
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->formatHolder:Lorg/telegram/messenger/exoplayer2/FormatHolder;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v3, v4}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->readSource(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;)I

    move-result v2

    .line 97
    .local v2, "result":I
    const/4 v3, -0x4

    if-ne v2, v3, :cond_23

    .line 98
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 99
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->inputStreamEnded:Z

    .line 113
    .end local v2    # "result":I
    :cond_23
    :goto_23
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    if-eqz v3, :cond_35

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadataTimestamp:J

    cmp-long v3, v4, p1

    if-gtz v3, :cond_35

    .line 114
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    invoke-direct {p0, v3}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->invokeRenderer(Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    .line 115
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    .line 117
    :cond_35
    return-void

    .line 101
    .restart local v2    # "result":I
    :cond_36
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    iget-wide v4, v3, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadataTimestamp:J

    .line 103
    :try_start_3c
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->flip()V

    .line 104
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->buffer:Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v0, v3, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 105
    .local v0, "bufferData":Ljava/nio/ByteBuffer;
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->metadataDecoder:Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoder;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoder;->decode([BI)Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->pendingMetadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;
    :try_end_55
    .catch Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoderException; {:try_start_3c .. :try_end_55} :catch_56

    goto :goto_23

    .line 106
    .end local v0    # "bufferData":Ljava/nio/ByteBuffer;
    :catch_56
    move-exception v1

    .line 107
    .local v1, "e":Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoderException;
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->getIndex()I

    move-result v3

    invoke-static {v1, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v3

    throw v3
.end method

.method public supportsFormat(Lorg/telegram/messenger/exoplayer2/Format;)I
    .registers 4
    .param p1, "format"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;->metadataDecoder:Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoder;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoder;->canDecode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x3

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
