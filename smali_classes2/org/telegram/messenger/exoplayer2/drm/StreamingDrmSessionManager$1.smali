.class Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$1;
.super Ljava/lang/Object;
.source "StreamingDrmSessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->onKeyResponse(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    .prologue
    .line 399
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$1;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$1;"
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$1;->this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 402
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$1;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$1;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$1;->this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    # getter for: Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->eventListener:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->access$100(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;)Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;->onDrmKeysLoaded()V

    .line 403
    return-void
.end method
