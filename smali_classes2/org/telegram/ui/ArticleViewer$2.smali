.class Lorg/telegram/ui/ArticleViewer$2;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


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
    .line 1256
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$2;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1260
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$2;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->lastInsets:Ljava/lang/Object;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$600(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;

    .line 1261
    .local v0, "oldInsets":Landroid/view/WindowInsets;
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$2;->this$0:Lorg/telegram/ui/ArticleViewer;

    # setter for: Lorg/telegram/ui/ArticleViewer;->lastInsets:Ljava/lang/Object;
    invoke-static {v1, p2}, Lorg/telegram/ui/ArticleViewer;->access$602(Lorg/telegram/ui/ArticleViewer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/view/WindowInsets;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/WindowInsets;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 1263
    :cond_1d
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$2;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$500(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$WindowView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$WindowView;->requestLayout()V

    .line 1265
    :cond_26
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    return-object v1
.end method
