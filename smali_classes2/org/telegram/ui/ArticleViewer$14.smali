.class Lorg/telegram/ui/ArticleViewer$14;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;


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
    .line 1636
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$14;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZ)V
    .registers 6
    .param p1, "imageReceiver"    # Lorg/telegram/messenger/ImageReceiver;
    .param p2, "set"    # Z
    .param p3, "thumb"    # Z

    .prologue
    .line 1639
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$14;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$5000(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    if-ne p1, v0, :cond_20

    if-eqz p2, :cond_20

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$14;->this$0:Lorg/telegram/ui/ArticleViewer;

    # invokes: Lorg/telegram/ui/ArticleViewer;->scaleToFill()Z
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$5100(Lorg/telegram/ui/ArticleViewer;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1640
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$14;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->wasLayout:Z
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$5200(Lorg/telegram/ui/ArticleViewer;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1641
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$14;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/ui/ArticleViewer;->dontResetZoomOnFirstLayout:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->access$5302(Lorg/telegram/ui/ArticleViewer;Z)Z

    .line 1646
    :cond_20
    :goto_20
    return-void

    .line 1643
    :cond_21
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$14;->this$0:Lorg/telegram/ui/ArticleViewer;

    # invokes: Lorg/telegram/ui/ArticleViewer;->setScaleToFill()V
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$5400(Lorg/telegram/ui/ArticleViewer;)V

    goto :goto_20
.end method
