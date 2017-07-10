.class Lorg/telegram/ui/LaunchActivity$3;
.super Landroid/widget/RelativeLayout;
.source "LaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private inLayout:Z

.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/LaunchActivity;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 231
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$3;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/high16 v7, 0x43a00000    # 320.0f

    const/4 v8, 0x0

    .line 272
    sub-int v2, p4, p2

    .line 273
    .local v2, "width":I
    sub-int v0, p5, p3

    .line 275
    .local v0, "height":I
    sget-boolean v5, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v5, :cond_fb

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity$3;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_fb

    .line 276
    :cond_1e
    div-int/lit8 v5, v2, 0x64

    mul-int/lit8 v1, v5, 0x23

    .line 277
    .local v1, "leftWidth":I
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    if-ge v1, v5, :cond_2c

    .line 278
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 280
    :cond_2c
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity$3;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;
    invoke-static {v5}, Lorg/telegram/ui/LaunchActivity;->access$200(Lorg/telegram/ui/LaunchActivity;)Landroid/widget/FrameLayout;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity$3;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;
    invoke-static {v6}, Lorg/telegram/ui/LaunchActivity;->access$200(Lorg/telegram/ui/LaunchActivity;)Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v1

    iget-object v7, p0, Lorg/telegram/ui/LaunchActivity$3;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;
    invoke-static {v7}, Lorg/telegram/ui/LaunchActivity;->access$200(Lorg/telegram/ui/LaunchActivity;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v5, v1, v8, v6, v7}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 281
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity$3;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v5}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity$3;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v6}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getMeasuredWidth()I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/LaunchActivity$3;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v7}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v5, v8, v8, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->layout(IIII)V

    .line 282
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity$3;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v5}, Lorg/telegram/ui/LaunchActivity;->access$300(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity$3;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v6}, Lorg/telegram/ui/LaunchActivity;->access$300(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v1

    iget-object v7, p0, Lorg/telegram/ui/LaunchActivity$3;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v7}, Lorg/telegram/ui/LaunchActivity;->access$300(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v5, v1, v8, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->layout(IIII)V

    .line 286
    .end local v1    # "leftWidth":I
    :goto_85
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity$3;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v5}, Lorg/telegram/ui/LaunchActivity;->access$600(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v2, v5

    div-int/lit8 v3, v5, 0x2

    .line 287
    .local v3, "x":I
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity$3;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v5}, Lorg/telegram/ui/LaunchActivity;->access$600(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getMeasuredHeight()I

    move-result v5

    sub-int v5, v0, v5

    div-int/lit8 v4, v5, 0x2

    .line 288
    .local v4, "y":I
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity$3;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v5}, Lorg/telegram/ui/LaunchActivity;->access$600(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity$3;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v6}, Lorg/telegram/ui/LaunchActivity;->access$600(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v3

    iget-object v7, p0, Lorg/telegram/ui/LaunchActivity$3;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v7}, Lorg/telegram/ui/LaunchActivity;->access$600(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v5, v3, v4, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->layout(IIII)V

    .line 289
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity$3;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;
    invoke-static {v5}, Lorg/telegram/ui/LaunchActivity;->access$400(Lorg/telegram/ui/LaunchActivity;)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity$3;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;
    invoke-static {v6}, Lorg/telegram/ui/LaunchActivity;->access$400(Lorg/telegram/ui/LaunchActivity;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/LaunchActivity$3;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;
    invoke-static {v7}, Lorg/telegram/ui/LaunchActivity;->access$400(Lorg/telegram/ui/LaunchActivity;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 290
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity$3;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;
    invoke-static {v5}, Lorg/telegram/ui/LaunchActivity;->access$500(Lorg/telegram/ui/LaunchActivity;)Landroid/widget/FrameLayout;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity$3;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;
    invoke-static {v6}, Lorg/telegram/ui/LaunchActivity;->access$500(Lorg/telegram/ui/LaunchActivity;)Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/LaunchActivity$3;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;
    invoke-static {v7}, Lorg/telegram/ui/LaunchActivity;->access$500(Lorg/telegram/ui/LaunchActivity;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 291
    return-void

    .line 284
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_fb
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity$3;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v5}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity$3;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v6}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getMeasuredWidth()I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/LaunchActivity$3;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v7}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v5, v8, v8, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->layout(IIII)V

    goto/16 :goto_85
.end method

.method protected onMeasure(II)V
    .registers 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v5, 0x43a00000    # 320.0f

    const/high16 v6, 0x40000000    # 2.0f

    .line 245
    iput-boolean v8, p0, Lorg/telegram/ui/LaunchActivity$3;->inLayout:Z

    .line 246
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 247
    .local v2, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 248
    .local v0, "height":I
    invoke-virtual {p0, v2, v0}, Lorg/telegram/ui/LaunchActivity$3;->setMeasuredDimension(II)V

    .line 250
    sget-boolean v3, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v3, :cond_c3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity$3;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_c3

    .line 251
    :cond_2a
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity$3;->this$0:Lorg/telegram/ui/LaunchActivity;

    # setter for: Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z
    invoke-static {v3, v7}, Lorg/telegram/ui/LaunchActivity;->access$002(Lorg/telegram/ui/LaunchActivity;Z)Z

    .line 252
    div-int/lit8 v3, v2, 0x64

    mul-int/lit8 v1, v3, 0x23

    .line 253
    .local v1, "leftWidth":I
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    if-ge v1, v3, :cond_3d

    .line 254
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 256
    :cond_3d
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity$3;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v3}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v3

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->measure(II)V

    .line 257
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity$3;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;
    invoke-static {v3}, Lorg/telegram/ui/LaunchActivity;->access$200(Lorg/telegram/ui/LaunchActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->measure(II)V

    .line 258
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity$3;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v3}, Lorg/telegram/ui/LaunchActivity;->access$300(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v3

    sub-int v4, v2, v1

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->measure(II)V

    .line 263
    .end local v1    # "leftWidth":I
    :goto_78
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity$3;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;
    invoke-static {v3}, Lorg/telegram/ui/LaunchActivity;->access$400(Lorg/telegram/ui/LaunchActivity;)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 264
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity$3;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;
    invoke-static {v3}, Lorg/telegram/ui/LaunchActivity;->access$500(Lorg/telegram/ui/LaunchActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->measure(II)V

    .line 265
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity$3;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v3}, Lorg/telegram/ui/LaunchActivity;->access$600(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v3

    const v4, 0x44048000    # 530.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/high16 v5, 0x44040000    # 528.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->measure(II)V

    .line 267
    iput-boolean v7, p0, Lorg/telegram/ui/LaunchActivity$3;->inLayout:Z

    .line 268
    return-void

    .line 260
    :cond_c3
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity$3;->this$0:Lorg/telegram/ui/LaunchActivity;

    # setter for: Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z
    invoke-static {v3, v8}, Lorg/telegram/ui/LaunchActivity;->access$002(Lorg/telegram/ui/LaunchActivity;Z)Z

    .line 261
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity$3;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v3}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v3

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->measure(II)V

    goto :goto_78
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 237
    iget-boolean v0, p0, Lorg/telegram/ui/LaunchActivity$3;->inLayout:Z

    if-eqz v0, :cond_5

    .line 241
    :goto_4
    return-void

    .line 240
    :cond_5
    invoke-super {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    goto :goto_4
.end method
