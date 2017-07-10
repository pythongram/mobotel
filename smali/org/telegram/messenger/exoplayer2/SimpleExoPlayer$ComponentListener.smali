.class public final Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;
.implements Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;
.implements Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;
.implements Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    .prologue
    .line 845
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .registers 12
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .prologue
    .line 936
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # getter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioDebugListener:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$600(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 937
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # getter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioDebugListener:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$600(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;->onAudioDecoderInitialized(Ljava/lang/String;JJ)V

    .line 940
    :cond_14
    return-void
.end method

.method public onAudioDisabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V
    .registers 4
    .param p1, "counters"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    .prologue
    const/4 v1, 0x0

    .line 960
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # getter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioDebugListener:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$600(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 961
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # getter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioDebugListener:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$600(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;->onAudioDisabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    .line 963
    :cond_12
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # setter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioFormat:Lorg/telegram/messenger/exoplayer2/Format;
    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$802(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/Format;

    .line 964
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # setter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioDecoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;
    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$502(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    .line 965
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioSessionId:I
    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$702(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;I)I

    .line 966
    return-void
.end method

.method public onAudioEnabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V
    .registers 3
    .param p1, "counters"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    .prologue
    .line 919
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # setter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioDecoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;
    invoke-static {v0, p1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$502(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    .line 920
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # getter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioDebugListener:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$600(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 921
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # getter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioDebugListener:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$600(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;->onAudioEnabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    .line 923
    :cond_16
    return-void
.end method

.method public onAudioInputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V
    .registers 3
    .param p1, "format"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 944
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # setter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioFormat:Lorg/telegram/messenger/exoplayer2/Format;
    invoke-static {v0, p1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$802(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/Format;

    .line 945
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # getter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioDebugListener:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$600(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 946
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # getter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioDebugListener:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$600(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;->onAudioInputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 948
    :cond_16
    return-void
.end method

.method public onAudioSessionId(I)V
    .registers 3
    .param p1, "sessionId"    # I

    .prologue
    .line 927
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # setter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioSessionId:I
    invoke-static {v0, p1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$702(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;I)I

    .line 928
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # getter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioDebugListener:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$600(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 929
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # getter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioDebugListener:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$600(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;->onAudioSessionId(I)V

    .line 931
    :cond_16
    return-void
.end method

.method public onAudioTrackUnderrun(IJJ)V
    .registers 12
    .param p1, "bufferSize"    # I
    .param p2, "bufferSizeMs"    # J
    .param p4, "elapsedSinceLastFeedMs"    # J

    .prologue
    .line 953
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # getter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioDebugListener:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$600(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 954
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # getter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioDebugListener:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$600(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;->onAudioTrackUnderrun(IJJ)V

    .line 956
    :cond_14
    return-void
.end method

.method public onCues(Ljava/util/List;)V
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
    .line 972
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/text/Cue;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # getter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->textOutput:Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$900(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 973
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # getter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->textOutput:Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$900(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;->onCues(Ljava/util/List;)V

    .line 975
    :cond_11
    return-void
.end method

.method public onDroppedFrames(IJ)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "elapsed"    # J

    .prologue
    .line 878
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # getter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoDebugListener:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 879
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # getter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoDebugListener:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;->onDroppedFrames(IJ)V

    .line 881
    :cond_11
    return-void
.end method

.method public onMetadata(Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V
    .registers 3
    .param p1, "metadata"    # Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    .prologue
    .line 981
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # getter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->metadataOutput:Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$1000(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 982
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # getter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->metadataOutput:Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$1000(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;->onMetadata(Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)V

    .line 984
    :cond_11
    return-void
.end method

.method public onRenderedFirstFrame(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 898
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # getter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$300(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # getter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$400(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Landroid/view/Surface;

    move-result-object v0

    if-ne v0, p1, :cond_19

    .line 899
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # getter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$300(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;->onRenderedFirstFrame()V

    .line 901
    :cond_19
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # getter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoDebugListener:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 902
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # getter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoDebugListener:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;->onRenderedFirstFrame(Landroid/view/Surface;)V

    .line 904
    :cond_2a
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 7
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 1007
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # getter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->needSetSurface:Z
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$1200(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1008
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 v2, 0x1

    # invokes: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$1100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Landroid/view/Surface;Z)V

    .line 1009
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->needSetSurface:Z
    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$1202(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Z)Z

    .line 1011
    :cond_19
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 5
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v0, 0x1

    .line 1020
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # getter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$300(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;->onSurfaceDestroyed(Landroid/graphics/SurfaceTexture;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1021
    const/4 v0, 0x0

    .line 1025
    :goto_e
    return v0

    .line 1023
    :cond_f
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    const/4 v2, 0x0

    # invokes: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V
    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$1100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Landroid/view/Surface;Z)V

    .line 1024
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # setter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->needSetSurface:Z
    invoke-static {v1, v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$1202(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Z)Z

    goto :goto_e
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 1016
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 1030
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # getter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$300(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    .line 1031
    return-void
.end method

.method public onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .registers 12
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .prologue
    .line 862
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # getter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoDebugListener:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 863
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # getter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoDebugListener:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;->onVideoDecoderInitialized(Ljava/lang/String;JJ)V

    .line 866
    :cond_14
    return-void
.end method

.method public onVideoDisabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V
    .registers 4
    .param p1, "counters"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    .prologue
    const/4 v1, 0x0

    .line 908
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # getter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoDebugListener:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 909
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # getter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoDebugListener:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;->onVideoDisabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    .line 911
    :cond_12
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # setter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoFormat:Lorg/telegram/messenger/exoplayer2/Format;
    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$202(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/Format;

    .line 912
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # setter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoDecoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;
    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$002(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    .line 913
    return-void
.end method

.method public onVideoEnabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V
    .registers 3
    .param p1, "counters"    # Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    .prologue
    .line 853
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # setter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoDecoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;
    invoke-static {v0, p1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$002(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    .line 854
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # getter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoDebugListener:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 855
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # getter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoDebugListener:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;->onVideoEnabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    .line 857
    :cond_16
    return-void
.end method

.method public onVideoInputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V
    .registers 3
    .param p1, "format"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 870
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # setter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoFormat:Lorg/telegram/messenger/exoplayer2/Format;
    invoke-static {v0, p1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$202(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/Format;

    .line 871
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # getter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoDebugListener:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 872
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # getter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoDebugListener:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;->onVideoInputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 874
    :cond_16
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    .line 886
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # getter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$300(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 887
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # getter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$300(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;->onVideoSizeChanged(IIIF)V

    .line 890
    :cond_11
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # getter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoDebugListener:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 891
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    # getter for: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoDebugListener:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;->onVideoSizeChanged(IIIF)V

    .line 894
    :cond_22
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 996
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 990
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$1100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Landroid/view/Surface;Z)V

    .line 991
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1000
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;->this$0:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    # invokes: Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->access$1100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Landroid/view/Surface;Z)V

    .line 1001
    return-void
.end method
