.class Lorg/telegram/ui/Components/EmojiView$22;
.super Lorg/telegram/ui/Components/ScrollSlidingTabStrip;
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
.field first:Z

.field lastTranslateX:F

.field lastX:F

.field startedScroll:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 988
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$22;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;-><init>(Landroid/content/Context;)V

    .line 989
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$22;->first:Z

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 995
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$22;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 996
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$22;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 998
    :cond_e
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1002
    iget-boolean v4, p0, Lorg/telegram/ui/Components/EmojiView$22;->first:Z

    if-eqz v4, :cond_f

    .line 1003
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView$22;->first:Z

    .line 1004
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Components/EmojiView$22;->lastX:F

    .line 1006
    :cond_f
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$22;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;
    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$4700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getTranslationX()F

    move-result v1

    .line 1007
    .local v1, "newTranslationX":F
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$22;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;
    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$4700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getScrollX()I

    move-result v4

    if-nez v4, :cond_5e

    cmpl-float v4, v1, v6

    if-nez v4, :cond_5e

    .line 1008
    iget-boolean v4, p0, Lorg/telegram/ui/Components/EmojiView$22;->startedScroll:Z

    if-nez v4, :cond_38

    iget v4, p0, Lorg/telegram/ui/Components/EmojiView$22;->lastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_aa

    .line 1009
    :cond_38
    iget-boolean v4, p0, Lorg/telegram/ui/Components/EmojiView$22;->startedScroll:Z

    if-eqz v4, :cond_5e

    iget v4, p0, Lorg/telegram/ui/Components/EmojiView$22;->lastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    cmpl-float v4, v4, v6

    if-lez v4, :cond_5e

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$22;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$1700(Lorg/telegram/ui/Components/EmojiView;)Landroid/support/v4/view/ViewPager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 1010
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$22;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$1700(Lorg/telegram/ui/Components/EmojiView;)Landroid/support/v4/view/ViewPager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    .line 1011
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView$22;->startedScroll:Z

    .line 1018
    :cond_5e
    :goto_5e
    iget-boolean v4, p0, Lorg/telegram/ui/Components/EmojiView$22;->startedScroll:Z

    if-eqz v4, :cond_7a

    .line 1020
    :try_start_62
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$22;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$1700(Lorg/telegram/ui/Components/EmojiView;)Landroid/support/v4/view/ViewPager;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lorg/telegram/ui/Components/EmojiView$22;->lastX:F

    sub-float/2addr v5, v6

    add-float/2addr v5, v1

    iget v6, p0, Lorg/telegram/ui/Components/EmojiView$22;->lastTranslateX:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    .line 1021
    iput v1, p0, Lorg/telegram/ui/Components/EmojiView$22;->lastTranslateX:F
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_7a} :catch_c5

    .line 1031
    :cond_7a
    :goto_7a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Components/EmojiView$22;->lastX:F

    .line 1032
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_8d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_9e

    .line 1033
    :cond_8d
    iput-boolean v3, p0, Lorg/telegram/ui/Components/EmojiView$22;->first:Z

    .line 1034
    iget-boolean v4, p0, Lorg/telegram/ui/Components/EmojiView$22;->startedScroll:Z

    if-eqz v4, :cond_9e

    .line 1035
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$22;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$1700(Lorg/telegram/ui/Components/EmojiView;)Landroid/support/v4/view/ViewPager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    .line 1036
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView$22;->startedScroll:Z

    .line 1039
    :cond_9e
    iget-boolean v4, p0, Lorg/telegram/ui/Components/EmojiView$22;->startedScroll:Z

    if-nez v4, :cond_a8

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_a9

    :cond_a8
    move v2, v3

    .line 1042
    :cond_a9
    return v2

    .line 1013
    :cond_aa
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$22;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$1700(Lorg/telegram/ui/Components/EmojiView;)Landroid/support/v4/view/ViewPager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 1014
    iput-boolean v3, p0, Lorg/telegram/ui/Components/EmojiView$22;->startedScroll:Z

    .line 1015
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$22;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;
    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$4700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getTranslationX()F

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Components/EmojiView$22;->lastTranslateX:F

    goto :goto_5e

    .line 1022
    :catch_c5
    move-exception v0

    .line 1024
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_c6
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$22;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$1700(Lorg/telegram/ui/Components/EmojiView;)Landroid/support/v4/view/ViewPager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_cf} :catch_d5

    .line 1027
    :goto_cf
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView$22;->startedScroll:Z

    .line 1028
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_7a

    .line 1025
    :catch_d5
    move-exception v4

    goto :goto_cf
.end method
