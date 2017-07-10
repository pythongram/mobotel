.class Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;
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
    name = "MediaDrmHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 437
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>.MediaDrmHandler;"
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;->this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    .line 438
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 439
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>.MediaDrmHandler;"
    const/4 v2, 0x3

    .line 444
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;->this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    # getter for: Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->openCount:I
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->access$200(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;)I

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;->this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    # getter for: Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->access$300(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;)I

    move-result v0

    if-eq v0, v2, :cond_1b

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;->this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    # getter for: Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->access$300(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1b

    .line 460
    :cond_1a
    :goto_1a
    return-void

    .line 447
    :cond_1b
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_42

    goto :goto_1a

    .line 456
    :pswitch_21
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;->this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    # setter for: Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I
    invoke-static {v0, v2}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->access$302(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;I)I

    .line 457
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;->this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    # invokes: Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->postProvisionRequest()V
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->access$600(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;)V

    goto :goto_1a

    .line 449
    :pswitch_2c
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;->this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    # invokes: Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->postKeyRequest()V
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->access$400(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;)V

    goto :goto_1a

    .line 452
    :pswitch_32
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;->this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    # setter for: Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I
    invoke-static {v0, v2}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->access$302(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;I)I

    .line 453
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;->this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/drm/KeysExpiredException;

    invoke-direct {v1}, Lorg/telegram/messenger/exoplayer2/drm/KeysExpiredException;-><init>()V

    # invokes: Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V
    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->access$500(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;Ljava/lang/Exception;)V

    goto :goto_1a

    .line 447
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_21
        :pswitch_2c
        :pswitch_32
    .end packed-switch
.end method
