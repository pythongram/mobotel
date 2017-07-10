.class Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$PostResponseHandler;
.super Landroid/os/Handler;
.source "StreamingDrmSessionManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostResponseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 477
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$PostResponseHandler;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>.PostResponseHandler;"
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$PostResponseHandler;->this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    .line 478
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 479
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 483
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$PostResponseHandler;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>.PostResponseHandler;"
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_16

    .line 491
    :goto_5
    return-void

    .line 485
    :pswitch_6
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$PostResponseHandler;->this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    # invokes: Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->onProvisionResponse(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->access$700(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;Ljava/lang/Object;)V

    goto :goto_5

    .line 488
    :pswitch_e
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$PostResponseHandler;->this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    # invokes: Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->onKeyResponse(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->access$800(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;Ljava/lang/Object;)V

    goto :goto_5

    .line 483
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
        :pswitch_e
    .end packed-switch
.end method
