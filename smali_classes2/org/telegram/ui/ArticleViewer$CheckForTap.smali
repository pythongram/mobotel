.class final Lorg/telegram/ui/ArticleViewer$CheckForTap;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/ArticleViewer;)V
    .registers 2

    .prologue
    .line 246
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$CheckForTap;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/telegram/ui/ArticleViewer;
    .param p2, "x1"    # Lorg/telegram/ui/ArticleViewer$1;

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer$CheckForTap;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 248
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$CheckForTap;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->pendingCheckForLongPress:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$300(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

    move-result-object v0

    if-nez v0, :cond_14

    .line 249
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$CheckForTap;->this$0:Lorg/telegram/ui/ArticleViewer;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$CheckForTap;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {v1, v2}, Lorg/telegram/ui/ArticleViewer$CheckForLongPress;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    # setter for: Lorg/telegram/ui/ArticleViewer;->pendingCheckForLongPress:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;
    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->access$302(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$CheckForLongPress;)Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

    .line 251
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$CheckForTap;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->pendingCheckForLongPress:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$300(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$CheckForTap;->this$0:Lorg/telegram/ui/ArticleViewer;

    # ++operator for: Lorg/telegram/ui/ArticleViewer;->pressCount:I
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$404(Lorg/telegram/ui/ArticleViewer;)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ArticleViewer$CheckForLongPress;->currentPressCount:I

    .line 252
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$CheckForTap;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$500(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$WindowView;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 253
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$CheckForTap;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$500(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$WindowView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$CheckForTap;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->pendingCheckForLongPress:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$300(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

    move-result-object v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ArticleViewer$WindowView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 255
    :cond_43
    return-void
.end method
