.class Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;
.super Landroid/widget/FrameLayout;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameLayoutDrawer"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 215
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 216
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 217
    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 242
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$200(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v0

    if-eq p2, v0, :cond_10

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 237
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/ArticleViewer;

    # invokes: Lorg/telegram/ui/ArticleViewer;->drawContent(Landroid/graphics/Canvas;)V
    invoke-static {v0, p1}, Lorg/telegram/ui/ArticleViewer;->access$100(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;)V

    .line 238
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 231
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->this$0:Lorg/telegram/ui/ArticleViewer;

    # invokes: Lorg/telegram/ui/ArticleViewer;->processTouchEvent(Landroid/view/MotionEvent;)Z
    invoke-static {v0, p1}, Lorg/telegram/ui/ArticleViewer;->access$000(Lorg/telegram/ui/ArticleViewer;Landroid/view/MotionEvent;)Z

    .line 232
    const/4 v0, 0x1

    return v0
.end method
