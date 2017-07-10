.class Lorg/telegram/ui/PhotoViewer$2;
.super Landroid/widget/FrameLayout;
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
.field private attachRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/PhotoViewer;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 1141
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1245
    if-eqz p1, :cond_38

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_38

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_38

    .line 1246
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v2

    if-nez v2, :cond_29

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isKeyboardVisible()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1247
    :cond_29
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # invokes: Lorg/telegram/ui/PhotoViewer;->closeCaptionEnter(Z)V
    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$4200(Lorg/telegram/ui/PhotoViewer;Z)V

    move v0, v1

    .line 1253
    :goto_2f
    return v0

    .line 1250
    :cond_30
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto :goto_2f

    .line 1253
    :cond_38
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_2f
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 1157
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v7

    .line 1158
    .local v7, "result":Z
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_41

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$3000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/ClippingImageView;

    move-result-object v0

    if-ne p2, v0, :cond_41

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->lastInsets:Ljava/lang/Object;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$3100(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 1159
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->lastInsets:Ljava/lang/Object;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$3100(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowInsets;

    .line 1160
    .local v6, "insets":Landroid/view/WindowInsets;
    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$2;->getMeasuredHeight()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$2;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$2;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->blackPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$3200(Lorg/telegram/ui/PhotoViewer;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1162
    .end local v6    # "insets":Landroid/view/WindowInsets;
    :cond_41
    return v7
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 1232
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1233
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/ui/PhotoViewer;->attachedToWindow:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$4102(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 1234
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1238
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1239
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # setter for: Lorg/telegram/ui/PhotoViewer;->attachedToWindow:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$4102(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 1240
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # setter for: Lorg/telegram/ui/PhotoViewer;->wasLayout:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$3402(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 1241
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1147
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->isVisible:Z
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1000(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected onLayout(ZIIII)V
    .registers 12
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1196
    const/4 v0, 0x0

    .line 1197
    .local v0, "x":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1e

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->lastInsets:Ljava/lang/Object;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$3100(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 1198
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->lastInsets:Ljava/lang/Object;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$3100(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 1200
    :cond_1e
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$3000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/ClippingImageView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$3000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/ClippingImageView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ClippingImageView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;
    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$3000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/ClippingImageView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ClippingImageView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v0, v4, v2, v3}, Lorg/telegram/ui/Components/ClippingImageView;->layout(IIII)V

    .line 1201
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$3300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$3300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;
    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$3300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v0, v4, v2, v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->layout(IIII)V

    .line 1202
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v2, 0x1

    # setter for: Lorg/telegram/ui/PhotoViewer;->wasLayout:Z
    invoke-static {v1, v2}, Lorg/telegram/ui/PhotoViewer;->access$3402(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 1203
    if-eqz p1, :cond_9c

    .line 1204
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->dontResetZoomOnFirstLayout:Z
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$3500(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v1

    if-nez v1, :cond_86

    .line 1205
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/high16 v2, 0x3f800000    # 1.0f

    # setter for: Lorg/telegram/ui/PhotoViewer;->scale:F
    invoke-static {v1, v2}, Lorg/telegram/ui/PhotoViewer;->access$3602(Lorg/telegram/ui/PhotoViewer;F)F

    .line 1206
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # setter for: Lorg/telegram/ui/PhotoViewer;->translationX:F
    invoke-static {v1, v5}, Lorg/telegram/ui/PhotoViewer;->access$3702(Lorg/telegram/ui/PhotoViewer;F)F

    .line 1207
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # setter for: Lorg/telegram/ui/PhotoViewer;->translationY:F
    invoke-static {v1, v5}, Lorg/telegram/ui/PhotoViewer;->access$3802(Lorg/telegram/ui/PhotoViewer;F)F

    .line 1208
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->scale:F
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$3600(Lorg/telegram/ui/PhotoViewer;)F

    move-result v2

    # invokes: Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V
    invoke-static {v1, v2}, Lorg/telegram/ui/PhotoViewer;->access$3900(Lorg/telegram/ui/PhotoViewer;F)V

    .line 1211
    :cond_86
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$2500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object v1

    if-eqz v1, :cond_9c

    .line 1212
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$2500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/PhotoViewer$2$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoViewer$2$1;-><init>(Lorg/telegram/ui/PhotoViewer$2;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CheckBox;->post(Ljava/lang/Runnable;)Z

    .line 1224
    :cond_9c
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->dontResetZoomOnFirstLayout:Z
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$3500(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 1225
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # invokes: Lorg/telegram/ui/PhotoViewer;->setScaleToFill()V
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$4000(Lorg/telegram/ui/PhotoViewer;)V

    .line 1226
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # setter for: Lorg/telegram/ui/PhotoViewer;->dontResetZoomOnFirstLayout:Z
    invoke-static {v1, v4}, Lorg/telegram/ui/PhotoViewer;->access$3502(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 1228
    :cond_ae
    return-void
.end method

.method protected onMeasure(II)V
    .registers 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/16 v5, 0x15

    const/high16 v7, -0x80000000

    .line 1167
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 1168
    .local v3, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1169
    .local v0, "heightSize":I
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v5, :cond_8a

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->lastInsets:Ljava/lang/Object;
    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->access$3100(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8a

    .line 1170
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->lastInsets:Ljava/lang/Object;
    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->access$3100(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInsets;

    .line 1171
    .local v1, "insets":Landroid/view/WindowInsets;
    sget-boolean v4, Lorg/telegram/messenger/AndroidUtilities;->incorrectDisplaySizeFix:Z

    if-eqz v4, :cond_33

    .line 1172
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-le v0, v4, :cond_30

    .line 1173
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v4, Landroid/graphics/Point;->y:I

    .line 1175
    :cond_30
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v0, v4

    .line 1177
    :cond_33
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    sub-int/2addr v0, v4

    .line 1178
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1184
    .end local v1    # "insets":Landroid/view/WindowInsets;
    :cond_3d
    :goto_3d
    invoke-virtual {p0, v3, v0}, Lorg/telegram/ui/PhotoViewer$2;->setMeasuredDimension(II)V

    .line 1185
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v5, :cond_59

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->lastInsets:Ljava/lang/Object;
    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->access$3100(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_59

    .line 1186
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->lastInsets:Ljava/lang/Object;
    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->access$3100(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowInsets;

    invoke-virtual {v4}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1188
    :cond_59
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;
    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->access$3000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/ClippingImageView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ClippingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1189
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;
    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->access$3000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/ClippingImageView;

    move-result-object v4

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Components/ClippingImageView;->measure(II)V

    .line 1190
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;
    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->access$3300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v4

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->measure(II)V

    .line 1191
    return-void

    .line 1180
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_8a
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-le v0, v4, :cond_3d

    .line 1181
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v4, Landroid/graphics/Point;->y:I

    goto :goto_3d
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1152
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->isVisible:Z
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1000(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # invokes: Lorg/telegram/ui/PhotoViewer;->onTouchEvent(Landroid/view/MotionEvent;)Z
    invoke-static {v0, p1}, Lorg/telegram/ui/PhotoViewer;->access$2900(Lorg/telegram/ui/PhotoViewer;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 8
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .prologue
    .line 1258
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_22

    .line 1259
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$900(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1260
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_22

    .line 1262
    :try_start_17
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "view":Landroid/view/View;
    invoke-virtual {v1, p1, p2, p3}, Landroid/view/ViewGroup;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_1c} :catch_1e

    move-result-object v2

    .line 1268
    :goto_1d
    return-object v2

    .line 1263
    :catch_1e
    move-exception v0

    .line 1264
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1268
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_22
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v2

    goto :goto_1d
.end method
