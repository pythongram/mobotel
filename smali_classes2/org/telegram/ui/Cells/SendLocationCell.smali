.class public Lorg/telegram/ui/Cells/SendLocationCell;
.super Landroid/widget/FrameLayout;
.source "SendLocationCell.java"


# instance fields
.field private accurateTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private imageView:Landroid/widget/ImageView;

.field private titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v1, 0x42200000    # 40.0f

    const/high16 v12, 0x41800000    # 16.0f

    const/4 v10, 0x5

    const/4 v11, 0x3

    const/4 v6, 0x0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SendLocationCell;->imageView:Landroid/widget/ImageView;

    .line 37
    iget-object v0, p0, Lorg/telegram/ui/Cells/SendLocationCell;->imageView:Landroid/widget/ImageView;

    const v2, 0x7f020225

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 38
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const-string v2, "location_sendLocationBackground"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "location_sendLocationBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 39
    .local v7, "circle":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SendLocationCell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020225

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 40
    .local v9, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "location_sendLocationIcon"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 41
    new-instance v8, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v8, v7, v9}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 42
    .local v8, "combinedDrawable":Lorg/telegram/ui/Components/CombinedDrawable;
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v8, v0, v2}, Lorg/telegram/ui/Components/CombinedDrawable;->setCustomSize(II)V

    .line 43
    iget-object v0, p0, Lorg/telegram/ui/Cells/SendLocationCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    iget-object v13, p0, Lorg/telegram/ui/Cells/SendLocationCell;->imageView:Landroid/widget/ImageView;

    const/16 v0, 0x28

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_10d

    move v2, v10

    :goto_66
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_110

    move v3, v6

    :goto_6d
    const/high16 v4, 0x41500000    # 13.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_114

    const/high16 v5, 0x41880000    # 17.0f

    :goto_75
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v13, v0}, Lorg/telegram/ui/Cells/SendLocationCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SendLocationCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 47
    iget-object v0, p0, Lorg/telegram/ui/Cells/SendLocationCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 48
    iget-object v0, p0, Lorg/telegram/ui/Cells/SendLocationCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v1, "windowBackgroundWhiteBlueText7"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 49
    iget-object v1, p0, Lorg/telegram/ui/Cells/SendLocationCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_117

    move v0, v10

    :goto_9c
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Cells/SendLocationCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 51
    iget-object v13, p0, Lorg/telegram/ui/Cells/SendLocationCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, -0x1

    const/high16 v1, 0x41a00000    # 20.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_119

    move v2, v10

    :goto_b4
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_11b

    move v3, v12

    :goto_bb
    const/high16 v4, 0x41400000    # 12.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_11e

    const/high16 v5, 0x42920000    # 73.0f

    :goto_c3
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v13, v0}, Lorg/telegram/ui/Cells/SendLocationCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SendLocationCell;->accurateTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 54
    iget-object v0, p0, Lorg/telegram/ui/Cells/SendLocationCell;->accurateTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 55
    iget-object v0, p0, Lorg/telegram/ui/Cells/SendLocationCell;->accurateTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v1, "windowBackgroundWhiteGrayText3"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 56
    iget-object v1, p0, Lorg/telegram/ui/Cells/SendLocationCell;->accurateTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_120

    move v0, v10

    :goto_ea
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 57
    iget-object v13, p0, Lorg/telegram/ui/Cells/SendLocationCell;->accurateTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, -0x1

    const/high16 v1, 0x41a00000    # 20.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_122

    :goto_f6
    or-int/lit8 v2, v10, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_124

    move v3, v12

    :goto_fd
    const/high16 v4, 0x42140000    # 37.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_127

    const/high16 v5, 0x42920000    # 73.0f

    :goto_105
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v13, v0}, Lorg/telegram/ui/Cells/SendLocationCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    return-void

    :cond_10d
    move v2, v11

    .line 44
    goto/16 :goto_66

    :cond_110
    const/high16 v3, 0x41880000    # 17.0f

    goto/16 :goto_6d

    :cond_114
    move v5, v6

    goto/16 :goto_75

    :cond_117
    move v0, v11

    .line 49
    goto :goto_9c

    :cond_119
    move v2, v11

    .line 51
    goto :goto_b4

    :cond_11b
    const/high16 v3, 0x42920000    # 73.0f

    goto :goto_bb

    :cond_11e
    move v5, v12

    goto :goto_c3

    :cond_120
    move v0, v11

    .line 56
    goto :goto_ea

    :cond_122
    move v10, v11

    .line 57
    goto :goto_f6

    :cond_124
    const/high16 v3, 0x42920000    # 73.0f

    goto :goto_fd

    :cond_127
    move v5, v12

    goto :goto_105
.end method

.method private getImageView()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Cells/SendLocationCell;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 66
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v1, 0x42840000    # 66.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 67
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Cells/SendLocationCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Cells/SendLocationCell;->accurateTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method
