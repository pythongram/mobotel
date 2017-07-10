.class Lorg/telegram/ui/Components/StickersAlert$3;
.super Landroid/widget/FrameLayout;
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
.field private lastNotifyWidth:I

.field final synthetic this$0:Lorg/telegram/ui/Components/StickersAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickersAlert;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Components/StickersAlert;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 204
    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 277
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$2200(Lorg/telegram/ui/Components/StickersAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->scrollOffsetY:I
    invoke-static {v2}, Lorg/telegram/ui/Components/StickersAlert;->access$1300(Lorg/telegram/ui/Components/StickersAlert;)I

    move-result v2

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->backgroundPaddingTop:I
    invoke-static {}, Lorg/telegram/ui/Components/StickersAlert;->access$2100()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert$3;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert$3;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 278
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$2200(Lorg/telegram/ui/Components/StickersAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 279
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->scrollOffsetY:I
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$1300(Lorg/telegram/ui/Components/StickersAlert;)I

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->scrollOffsetY:I
    invoke-static {v1}, Lorg/telegram/ui/Components/StickersAlert;->access$1300(Lorg/telegram/ui/Components/StickersAlert;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_24

    .line 211
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickersAlert;->dismiss()V

    .line 212
    const/4 v0, 0x1

    .line 214
    :goto_23
    return v0

    :cond_24
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_23
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 257
    iget v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->lastNotifyWidth:I

    sub-int v1, p4, p2

    if-eq v0, v1, :cond_23

    .line 258
    sub-int v0, p4, p2

    iput v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->lastNotifyWidth:I

    .line 259
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$700(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->stickerSetCovereds:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$300(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 260
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$700(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->notifyDataSetChanged()V

    .line 263
    :cond_23
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 264
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # invokes: Lorg/telegram/ui/Components/StickersAlert;->updateLayout()V
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$2000(Lorg/telegram/ui/Components/StickersAlert;)V

    .line 265
    return-void
.end method

.method protected onMeasure(II)V
    .registers 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v10, 0x42a40000    # 82.0f

    const/high16 v12, 0x41200000    # 10.0f

    const/4 v5, 0x0

    .line 224
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 225
    .local v1, "height":I
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v4, v6, :cond_12

    .line 226
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v1, v4

    .line 228
    :cond_12
    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert$3;->getMeasuredWidth()I

    move-result v2

    .line 229
    .local v2, "measuredWidth":I
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    const/high16 v7, 0x42100000    # 36.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x5

    # setter for: Lorg/telegram/ui/Components/StickersAlert;->itemSize:I
    invoke-static {v4, v6}, Lorg/telegram/ui/Components/StickersAlert;->access$1402(Lorg/telegram/ui/Components/StickersAlert;I)I

    .line 231
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->stickerSetCovereds:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/Components/StickersAlert;->access$300(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_c3

    .line 232
    const/high16 v4, 0x42600000    # 56.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v6, 0x42700000    # 60.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->stickerSetCovereds:Ljava/util/ArrayList;
    invoke-static {v7}, Lorg/telegram/ui/Components/StickersAlert;->access$300(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    mul-int/2addr v6, v7

    add-int/2addr v4, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;
    invoke-static {v6}, Lorg/telegram/ui/Components/StickersAlert;->access$700(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    move-result-object v6

    # getter for: Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->stickersRowCount:I
    invoke-static {v6}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->access$1500(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;)I

    move-result v6

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    mul-int/2addr v6, v7

    add-int v0, v4, v6

    .line 236
    .local v0, "contentSize":I
    :goto_59
    int-to-double v6, v0

    div-int/lit8 v4, v1, 0x5

    int-to-double v8, v4

    const-wide v10, 0x400999999999999aL    # 3.2

    mul-double/2addr v8, v10

    cmpg-double v4, v6, v8

    if-gez v4, :cond_fc

    move v3, v5

    .line 237
    .local v3, "padding":I
    :goto_68
    if-eqz v3, :cond_6f

    if-ge v0, v1, :cond_6f

    .line 238
    sub-int v4, v1, v0

    sub-int/2addr v3, v4

    .line 240
    :cond_6f
    if-nez v3, :cond_75

    .line 241
    # getter for: Lorg/telegram/ui/Components/StickersAlert;->backgroundPaddingTop:I
    invoke-static {}, Lorg/telegram/ui/Components/StickersAlert;->access$1700()I

    move-result v3

    .line 243
    :cond_75
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->stickerSetCovereds:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/Components/StickersAlert;->access$300(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_84

    .line 244
    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    .line 246
    :cond_84
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v4}, Lorg/telegram/ui/Components/StickersAlert;->access$400(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getPaddingTop()I

    move-result v4

    if-eq v4, v3, :cond_b5

    .line 247
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    const/4 v6, 0x1

    # setter for: Lorg/telegram/ui/Components/StickersAlert;->ignoreLayout:Z
    invoke-static {v4, v6}, Lorg/telegram/ui/Components/StickersAlert;->access$1802(Lorg/telegram/ui/Components/StickersAlert;Z)Z

    .line 248
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v4}, Lorg/telegram/ui/Components/StickersAlert;->access$400(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v4, v6, v3, v7, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 249
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->emptyView:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lorg/telegram/ui/Components/StickersAlert;->access$1900(Lorg/telegram/ui/Components/StickersAlert;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v5, v3, v5, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 250
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # setter for: Lorg/telegram/ui/Components/StickersAlert;->ignoreLayout:Z
    invoke-static {v4, v5}, Lorg/telegram/ui/Components/StickersAlert;->access$1802(Lorg/telegram/ui/Components/StickersAlert;Z)Z

    .line 252
    :cond_b5
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-super {p0, p1, v4}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 253
    return-void

    .line 234
    .end local v0    # "contentSize":I
    .end local v3    # "padding":I
    :cond_c3
    const/high16 v4, 0x42c00000    # 96.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/4 v7, 0x3

    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    invoke-static {v4}, Lorg/telegram/ui/Components/StickersAlert;->access$900(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v4

    if-eqz v4, :cond_fa

    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    invoke-static {v4}, Lorg/telegram/ui/Components/StickersAlert;->access$900(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-float v4, v4

    const/high16 v8, 0x40a00000    # 5.0f

    div-float/2addr v4, v8

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v4, v8

    :goto_e8
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    mul-int/2addr v4, v7

    add-int/2addr v4, v6

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->backgroundPaddingTop:I
    invoke-static {}, Lorg/telegram/ui/Components/StickersAlert;->access$1600()I

    move-result v6

    add-int v0, v4, v6

    .restart local v0    # "contentSize":I
    goto/16 :goto_59

    .end local v0    # "contentSize":I
    :cond_fa
    move v4, v5

    goto :goto_e8

    .line 236
    .restart local v0    # "contentSize":I
    :cond_fc
    div-int/lit8 v4, v1, 0x5

    mul-int/lit8 v3, v4, 0x2

    goto/16 :goto_68
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 219
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickersAlert;->isDismissed()Z

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
    .line 269
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$3;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->ignoreLayout:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$1800(Lorg/telegram/ui/Components/StickersAlert;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 273
    :goto_8
    return-void

    .line 272
    :cond_9
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_8
.end method
