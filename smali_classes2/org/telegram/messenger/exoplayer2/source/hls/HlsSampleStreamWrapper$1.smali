.class Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper$1;
.super Ljava/lang/Object;
.source "HlsSampleStreamWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;-><init>(ILorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;Lorg/telegram/messenger/exoplayer2/upstream/Allocator;JLorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;ILorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .prologue
    .line 138
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper$1;->this$0:Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper$1;->this$0:Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    # invokes: Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepare()V
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->access$000(Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;)V

    .line 142
    return-void
.end method
