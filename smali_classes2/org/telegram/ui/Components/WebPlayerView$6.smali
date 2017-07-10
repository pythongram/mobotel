.class Lorg/telegram/ui/Components/WebPlayerView$6;
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
    .line 1375
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$6;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 1378
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$6;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->initied:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$1700(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$6;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->changingTextureView:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$2700(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$6;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->switchingInlineMode:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$2800(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$6;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->firstFrameRendered:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$4500(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 1383
    :cond_21
    :goto_21
    return-void

    .line 1381
    :cond_22
    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView$6;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$6;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$4300(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v0

    if-nez v0, :cond_36

    move v0, v1

    :goto_2d
    # setter for: Lorg/telegram/ui/Components/WebPlayerView;->inFullscreen:Z
    invoke-static {v2, v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$4302(Lorg/telegram/ui/Components/WebPlayerView;Z)Z

    .line 1382
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$6;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # invokes: Lorg/telegram/ui/Components/WebPlayerView;->updateFullscreenState(Z)V
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/WebPlayerView;->access$5100(Lorg/telegram/ui/Components/WebPlayerView;Z)V

    goto :goto_21

    .line 1381
    :cond_36
    const/4 v0, 0x0

    goto :goto_2d
.end method
