.class Lorg/telegram/ui/PhotoViewer$31;
.super Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;Landroid/view/View;)V
    .registers 5
    .param p1, "this$0"    # Lorg/telegram/ui/PhotoViewer;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "parent"    # Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;
    .param p4, "window"    # Landroid/view/View;

    .prologue
    .line 2089
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$31;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 2093
    :try_start_1
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$31;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->bottomTouchEnabled:Z
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$2800(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_11

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x1

    .line 2097
    :cond_10
    :goto_10
    return v1

    .line 2094
    :catch_11
    move-exception v0

    .line 2095
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 2103
    :try_start_1
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$31;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->bottomTouchEnabled:Z
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$2800(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_11

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x1

    .line 2107
    :cond_10
    :goto_10
    return v1

    .line 2104
    :catch_11
    move-exception v0

    .line 2105
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2112
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$31;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->bottomTouchEnabled:Z
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2800(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
