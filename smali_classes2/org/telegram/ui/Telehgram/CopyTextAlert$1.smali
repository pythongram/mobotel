.class Lorg/telegram/ui/Telehgram/CopyTextAlert$1;
.super Landroid/widget/FrameLayout;
.source "CopyTextAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/CopyTextAlert;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private ignoreLayout:Z

.field final synthetic this$0:Lorg/telegram/ui/Telehgram/CopyTextAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/CopyTextAlert;Landroid/content/Context;)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/CopyTextAlert;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 42
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert$1;->this$0:Lorg/telegram/ui/Telehgram/CopyTextAlert;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert$1;->ignoreLayout:Z

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert$1;->this$0:Lorg/telegram/ui/Telehgram/CopyTextAlert;

    # getter for: Lorg/telegram/ui/Telehgram/CopyTextAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/CopyTextAlert;->access$200(Lorg/telegram/ui/Telehgram/CopyTextAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert$1;->this$0:Lorg/telegram/ui/Telehgram/CopyTextAlert;

    # getter for: Lorg/telegram/ui/Telehgram/CopyTextAlert;->scrollOffsetY:I
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/CopyTextAlert;->access$000(Lorg/telegram/ui/Telehgram/CopyTextAlert;)I

    move-result v2

    # getter for: Lorg/telegram/ui/Telehgram/CopyTextAlert;->backgroundPaddingTop:I
    invoke-static {}, Lorg/telegram/ui/Telehgram/CopyTextAlert;->access$100()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/CopyTextAlert$1;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/CopyTextAlert$1;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 85
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert$1;->this$0:Lorg/telegram/ui/Telehgram/CopyTextAlert;

    # getter for: Lorg/telegram/ui/Telehgram/CopyTextAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/CopyTextAlert;->access$200(Lorg/telegram/ui/Telehgram/CopyTextAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 86
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert$1;->this$0:Lorg/telegram/ui/Telehgram/CopyTextAlert;

    # getter for: Lorg/telegram/ui/Telehgram/CopyTextAlert;->scrollOffsetY:I
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/CopyTextAlert;->access$000(Lorg/telegram/ui/Telehgram/CopyTextAlert;)I

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert$1;->this$0:Lorg/telegram/ui/Telehgram/CopyTextAlert;

    # getter for: Lorg/telegram/ui/Telehgram/CopyTextAlert;->scrollOffsetY:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/CopyTextAlert;->access$000(Lorg/telegram/ui/Telehgram/CopyTextAlert;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_24

    .line 49
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert$1;->this$0:Lorg/telegram/ui/Telehgram/CopyTextAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/CopyTextAlert;->dismiss()V

    .line 50
    const/4 v0, 0x1

    .line 52
    :goto_23
    return v0

    :cond_24
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_23
.end method

.method protected onLayout(ZIIII)V
    .registers 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 71
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 72
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 62
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 63
    .local v0, "height":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_d

    .line 64
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v0, v1

    .line 66
    :cond_d
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v1, p2, v1

    invoke-super {p0, p1, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 67
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert$1;->this$0:Lorg/telegram/ui/Telehgram/CopyTextAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/CopyTextAlert;->isDismissed()Z

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
    .line 76
    iget-boolean v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert$1;->ignoreLayout:Z

    if-eqz v0, :cond_5

    .line 80
    :goto_4
    return-void

    .line 79
    :cond_5
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_4
.end method
