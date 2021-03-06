.class public Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;
.super Landroid/widget/FrameLayout;
.source "BottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/BottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BottomSheetCell"
.end annotation


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x3

    const/4 v7, -0x2

    const/4 v3, 0x0

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v5, 0x1

    .line 461
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 463
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 464
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p0, v0, v3, v2, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setPadding(IIII)V

    .line 466
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->imageView:Landroid/widget/ImageView;

    .line 467
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->imageView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 468
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->imageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string v3, "dialogIcon"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 469
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->imageView:Landroid/widget/ImageView;

    const/16 v3, 0x18

    const/16 v4, 0x18

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_8f

    const/4 v0, 0x5

    :goto_46
    or-int/lit8 v0, v0, 0x10

    invoke-static {v3, v4, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    .line 472
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 473
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 474
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 475
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 476
    if-nez p2, :cond_91

    .line 477
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    const-string v2, "dialogTextBlack"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 478
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 479
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_85

    const/4 v1, 0x5

    :cond_85
    or-int/lit8 v1, v1, 0x10

    invoke-static {v7, v7, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 487
    :cond_8e
    :goto_8e
    return-void

    :cond_8f
    move v0, v1

    .line 469
    goto :goto_46

    .line 480
    :cond_91
    if-ne p2, v5, :cond_8e

    .line 481
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 482
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    const-string v1, "dialogTextBlack"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 483
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 484
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 485
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8e
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    .prologue
    .line 455
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 491
    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 492
    return-void
.end method

.method public setGravity(I)V
    .registers 3
    .param p1, "gravity"    # I

    .prologue
    .line 499
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 500
    return-void
.end method

.method public setTextAndIcon(Ljava/lang/CharSequence;I)V
    .registers 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # I

    .prologue
    const/high16 v4, 0x42600000    # 56.0f

    const/4 v1, 0x0

    .line 503
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    if-eqz p2, :cond_2e

    .line 505
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 506
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 507
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_27

    move v0, v1

    :goto_1b
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_2c

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :goto_23
    invoke-virtual {v3, v0, v1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 512
    :goto_26
    return-void

    .line 507
    :cond_27
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_1b

    :cond_2c
    move v2, v1

    goto :goto_23

    .line 509
    :cond_2e
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->imageView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_26
.end method

.method public setTextColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 495
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 496
    return-void
.end method
