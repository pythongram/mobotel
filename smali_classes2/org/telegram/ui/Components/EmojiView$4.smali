.class Lorg/telegram/ui/Components/EmojiView$4;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(ZZLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 729
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$4;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 732
    invoke-static {}, Lorg/telegram/ui/StickerPreviewViewer;->getInstance()Lorg/telegram/ui/StickerPreviewViewer;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$4;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$2700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$4;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmojiView;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$4;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->stickerPreviewViewerDelegate:Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;
    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$2800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;

    move-result-object v4

    invoke-virtual {v1, p1, v2, v3, v4}, Lorg/telegram/ui/StickerPreviewViewer;->onInterceptTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;ILorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;)Z

    move-result v0

    .line 733
    .local v0, "result":Z
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_22

    if-eqz v0, :cond_24

    :cond_22
    const/4 v1, 0x1

    :goto_23
    return v1

    :cond_24
    const/4 v1, 0x0

    goto :goto_23
.end method

.method public setVisibility(I)V
    .registers 3
    .param p1, "visibility"    # I

    .prologue
    .line 738
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$4;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$2900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$4;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$2900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_28

    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$4;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$3000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$4;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->trendingGridView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$3000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2e

    .line 739
    :cond_28
    const/16 v0, 0x8

    invoke-super {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 743
    :goto_2d
    return-void

    .line 742
    :cond_2e
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    goto :goto_2d
.end method
