.class Lorg/telegram/ui/Components/WebPlayerView$5;
.super Ljava/lang/Object;
.source "WebPlayerView.java"

# interfaces
.implements Lorg/telegram/ui/Components/WebPlayerView$CallJavaResultInterface;


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
    .line 1323
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$5;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public jsCallFinished(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1326
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$5;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->currentTask:Landroid/os/AsyncTask;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$4900(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/os/AsyncTask;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$5;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->currentTask:Landroid/os/AsyncTask;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$4900(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_29

    .line 1327
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$5;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->currentTask:Landroid/os/AsyncTask;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$4900(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/os/AsyncTask;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;

    if-eqz v0, :cond_29

    .line 1328
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$5;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    # getter for: Lorg/telegram/ui/Components/WebPlayerView;->currentTask:Landroid/os/AsyncTask;
    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->access$4900(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;

    # invokes: Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->onInterfaceResult(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;->access$5000(Lorg/telegram/ui/Components/WebPlayerView$YoutubeVideoTask;Ljava/lang/String;)V

    .line 1331
    :cond_29
    return-void
.end method
