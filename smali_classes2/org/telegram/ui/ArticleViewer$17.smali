.class Lorg/telegram/ui/ArticleViewer$17;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer;->open(Lorg/telegram/messenger/MessageObject;Z)Z
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
    .line 1866
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$17;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1869
    new-instance v0, Lorg/telegram/ui/ArticleViewer$17$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ArticleViewer$17$1;-><init>(Lorg/telegram/ui/ArticleViewer$17;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1879
    return-void
.end method
