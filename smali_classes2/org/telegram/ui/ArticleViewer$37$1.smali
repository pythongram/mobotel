.class Lorg/telegram/ui/ArticleViewer$37$1;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$37;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$37;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$37;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/ArticleViewer$37;

    .prologue
    .line 5959
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$37$1;->this$1:Lorg/telegram/ui/ArticleViewer$37;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 5962
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$37$1;->this$1:Lorg/telegram/ui/ArticleViewer$37;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$37;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$11400(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 5963
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$37$1;->this$1:Lorg/telegram/ui/ArticleViewer$37;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$37;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$11400(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 5964
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$37$1;->this$1:Lorg/telegram/ui/ArticleViewer$37;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$37;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/ArticleViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->access$11402(Lorg/telegram/ui/ArticleViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 5966
    :cond_1d
    return-void
.end method
