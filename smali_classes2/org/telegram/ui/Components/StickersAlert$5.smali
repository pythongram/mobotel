.class Lorg/telegram/ui/Components/StickersAlert$5;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "StickersAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickersAlert;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/StickersAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickersAlert;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Components/StickersAlert;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 308
    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$5;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 311
    invoke-static {}, Lorg/telegram/ui/StickerPreviewViewer;->getInstance()Lorg/telegram/ui/StickerPreviewViewer;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/StickersAlert$5;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v3}, Lorg/telegram/ui/Components/StickersAlert;->access$400(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v1, v4}, Lorg/telegram/ui/StickerPreviewViewer;->onInterceptTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;ILorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;)Z

    move-result v0

    .line 312
    .local v0, "result":Z
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_18

    if-eqz v0, :cond_19

    :cond_18
    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$5;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->ignoreLayout:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$1800(Lorg/telegram/ui/Components/StickersAlert;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 321
    :goto_8
    return-void

    .line 320
    :cond_9
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->requestLayout()V

    goto :goto_8
.end method
