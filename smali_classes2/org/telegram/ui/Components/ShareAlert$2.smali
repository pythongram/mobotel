.class Lorg/telegram/ui/Components/ShareAlert$2;
.super Landroid/widget/FrameLayout;
.source "ShareAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ZLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private ignoreLayout:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/ShareAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ShareAlert;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 132
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert$2;->ignoreLayout:Z

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 183
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$1100(Lorg/telegram/ui/Components/ShareAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I
    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$400(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v2

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->backgroundPaddingTop:I
    invoke-static {}, Lorg/telegram/ui/Components/ShareAlert;->access$1000()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShareAlert$2;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShareAlert$2;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 184
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$1100(Lorg/telegram/ui/Components/ShareAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 185
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I
    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$400(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I
    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$400(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_24

    .line 139
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ShareAlert;->dismiss()V

    .line 140
    const/4 v0, 0x1

    .line 142
    :goto_23
    return v0

    :cond_24
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_23
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 169
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 170
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # invokes: Lorg/telegram/ui/Components/ShareAlert;->updateLayout()V
    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$900(Lorg/telegram/ui/Components/ShareAlert;)V

    .line 171
    return-void
.end method

.method protected onMeasure(II)V
    .registers 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v10, 0x41000000    # 8.0f

    const/4 v4, 0x0

    .line 152
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 153
    .local v1, "height":I
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_10

    .line 154
    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v1, v5

    .line 156
    :cond_10
    iget-object v5, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;
    invoke-static {v5}, Lorg/telegram/ui/Components/ShareAlert;->access$500(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->getItemCount()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;
    invoke-static {v6}, Lorg/telegram/ui/Components/ShareAlert;->access$600(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->getItemCount()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 157
    .local v3, "size":I
    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x3

    int-to-float v7, v3

    const/high16 v8, 0x40800000    # 4.0f

    div-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/high16 v7, 0x42c80000    # 100.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->backgroundPaddingTop:I
    invoke-static {}, Lorg/telegram/ui/Components/ShareAlert;->access$700()I

    move-result v6

    add-int v0, v5, v6

    .line 158
    .local v0, "contentSize":I
    if-ge v0, v1, :cond_7a

    move v2, v4

    .line 159
    .local v2, "padding":I
    :goto_4e
    iget-object v5, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v5}, Lorg/telegram/ui/Components/ShareAlert;->access$800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RecyclerListView;->getPaddingTop()I

    move-result v5

    if-eq v5, v2, :cond_6c

    .line 160
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/telegram/ui/Components/ShareAlert$2;->ignoreLayout:Z

    .line 161
    iget-object v5, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v5}, Lorg/telegram/ui/Components/ShareAlert;->access$800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v5, v4, v2, v4, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 162
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ShareAlert$2;->ignoreLayout:Z

    .line 164
    :cond_6c
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-super {p0, p1, v4}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 165
    return-void

    .line 158
    .end local v2    # "padding":I
    :cond_7a
    div-int/lit8 v5, v1, 0x5

    mul-int/lit8 v5, v5, 0x3

    sub-int v5, v1, v5

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int v2, v5, v6

    goto :goto_4e
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 147
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$2;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ShareAlert;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 175
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert$2;->ignoreLayout:Z

    if-eqz v0, :cond_5

    .line 179
    :goto_4
    return-void

    .line 178
    :cond_5
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_4
.end method
