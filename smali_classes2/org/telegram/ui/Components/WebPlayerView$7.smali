.class Lorg/telegram/ui/Components/WebPlayerView$7;
.super Ljava/lang/Object;
.source "WebPlayerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/WebPlayerView;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/WebPlayerView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/WebPlayerView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/WebPlayerView;

    .prologue
    .line 1389
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$7;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1392
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$7;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->initied:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$1700(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$7;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->playVideoUrl:Ljava/lang/String;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$1900(Lorg/telegram/ui/Components/WebPlayerView;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    .line 1405
    :cond_10
    :goto_10
    return-void

    .line 1395
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$7;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$000(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlayerPrepared()Z

    move-result v0

    if-nez v0, :cond_22

    .line 1396
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$7;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # invokes: Lorg/telegram/ui/Components/WebPlayerView;->preparePlayer()V
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$2100(Lorg/telegram/ui/Components/WebPlayerView;)V

    .line 1398
    :cond_22
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$7;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$000(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1399
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$7;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$000(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 1404
    :goto_37
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$7;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # invokes: Lorg/telegram/ui/Components/WebPlayerView;->updatePlayButton()V
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$3600(Lorg/telegram/ui/Components/WebPlayerView;)V

    goto :goto_10

    .line 1401
    :cond_3d
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$7;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Components/WebPlayerView;->isCompleted:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$5202(Lorg/telegram/ui/Components/WebPlayerView;Z)Z

    .line 1402
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$7;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$000(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    goto :goto_37
.end method
