.class Lorg/telegram/ui/ArticleViewer$13;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer;->setParentActivity(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 1614
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$13;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1617
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$13;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$4600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1618
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$13;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->isPlaying:Z
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$4900(Lorg/telegram/ui/ArticleViewer;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1619
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$13;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$4600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 1624
    :cond_19
    :goto_19
    return-void

    .line 1621
    :cond_1a
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$13;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$4600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    goto :goto_19
.end method
