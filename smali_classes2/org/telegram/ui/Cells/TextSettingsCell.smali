.class public Lorg/telegram/ui/Cells/TextSettingsCell;
.super Landroid/widget/FrameLayout;
.source "TextSettingsCell.java"


# instance fields
.field private needDivider:Z

.field private textView:Landroid/widget/TextView;

.field private valueImageView:Landroid/widget/ImageView;

.field private valueTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x5

    const/4 v8, 0x3

    const/high16 v3, 0x41880000    # 17.0f

    const/4 v4, 0x0

    const/4 v10, 0x1

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    .line 43
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v10, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setLines(I)V

    .line 46
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 47
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 48
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 49
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_e4

    move v0, v7

    :goto_3f
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 50
    iget-object v9, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_e7

    move v2, v7

    :goto_4e
    or-int/lit8 v2, v2, 0x30

    move v5, v3

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteValueText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v10, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 55
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setLines(I)V

    .line 56
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 58
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 59
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_ea

    move v0, v8

    :goto_8f
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 60
    iget-object v9, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40800000    # -1.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_ec

    move v2, v8

    :goto_9e
    or-int/lit8 v2, v2, 0x30

    move v5, v3

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "windowBackgroundWhiteGrayIcon"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 66
    iget-object v9, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_ee

    :goto_d8
    or-int/lit8 v2, v8, 0x10

    move v5, v3

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    return-void

    :cond_e4
    move v0, v8

    .line 49
    goto/16 :goto_3f

    :cond_e7
    move v2, v8

    .line 50
    goto/16 :goto_4e

    :cond_ea
    move v0, v7

    .line 59
    goto :goto_8f

    :cond_ec
    move v2, v7

    .line 60
    goto :goto_9e

    :cond_ee
    move v8, v7

    .line 66
    goto :goto_d8
.end method


# virtual methods
.method public getTextView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getValueTextView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 161
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->needDivider:Z

    if-eqz v0, :cond_27

    .line 162
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSettingsCell;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSettingsCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSettingsCell;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSettingsCell;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSettingsCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 164
    :cond_27
    return-void
.end method

.method protected onMeasure(II)V
    .registers 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, -0x80000000

    const/high16 v5, 0x40000000    # 2.0f

    .line 71
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget-boolean v2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->needDivider:Z

    if-eqz v2, :cond_83

    const/4 v2, 0x1

    :goto_13
    add-int/2addr v2, v4

    invoke-virtual {p0, v3, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setMeasuredDimension(II)V

    .line 73
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSettingsCell;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSettingsCell;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSettingsCell;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x42080000    # 34.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v0, v2, v3

    .line 74
    .local v0, "availableWidth":I
    div-int/lit8 v1, v0, 0x2

    .line 75
    .local v1, "width":I
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_48

    .line 76
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSettingsCell;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->measure(II)V

    .line 78
    :cond_48
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_85

    .line 79
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSettingsCell;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 80
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v0, v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v1, v2, v3

    .line 84
    :goto_71
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSettingsCell;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 85
    return-void

    .line 71
    .end local v0    # "availableWidth":I
    .end local v1    # "width":I
    :cond_83
    const/4 v2, 0x0

    goto :goto_13

    .line 82
    .restart local v0    # "availableWidth":I
    .restart local v1    # "width":I
    :cond_85
    move v1, v0

    goto :goto_71
.end method

.method public setEnabled(ZLjava/util/ArrayList;)V
    .registers 11
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 139
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setEnabled(Z)V

    .line 140
    if-eqz p2, :cond_57

    .line 141
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    const-string v4, "alpha"

    new-array v5, v7, [F

    if-eqz p1, :cond_51

    move v0, v1

    :goto_14
    aput v0, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_37

    .line 143
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    const-string v4, "alpha"

    new-array v5, v7, [F

    if-eqz p1, :cond_53

    move v0, v1

    :goto_2e
    aput v0, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_37
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_50

    .line 146
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    const-string v3, "alpha"

    new-array v4, v7, [F

    if-eqz p1, :cond_55

    :goto_47
    aput v1, v4, v6

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_50
    :goto_50
    return-void

    :cond_51
    move v0, v2

    .line 141
    goto :goto_14

    :cond_53
    move v0, v2

    .line 143
    goto :goto_2e

    :cond_55
    move v1, v2

    .line 146
    goto :goto_47

    .line 149
    :cond_57
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    if-eqz p1, :cond_7f

    move v0, v1

    :goto_5c
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 150
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6f

    .line 151
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_81

    move v0, v1

    :goto_6c
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 153
    :cond_6f
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_50

    .line 154
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_83

    :goto_7b
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_50

    :cond_7f
    move v0, v2

    .line 149
    goto :goto_5c

    :cond_81
    move v0, v2

    .line 151
    goto :goto_6c

    :cond_83
    move v1, v2

    .line 154
    goto :goto_7b
.end method

.method public setText(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "divider"    # Z

    .prologue
    const/4 v1, 0x4

    .line 104
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->needDivider:Z

    .line 108
    if-nez p2, :cond_19

    const/4 v0, 0x1

    :goto_15
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setWillNotDraw(Z)V

    .line 109
    return-void

    .line 108
    :cond_19
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public setTextAndIcon(Ljava/lang/String;IZ)V
    .registers 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "resId"    # I
    .param p3, "divider"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x0

    .line 126
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    if-eqz p2, :cond_21

    .line 129
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    :goto_18
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->needDivider:Z

    .line 135
    if-nez p3, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setWillNotDraw(Z)V

    .line 136
    return-void

    .line 132
    :cond_21
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_18
.end method

.method public setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "divider"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x0

    .line 112
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    if-eqz p2, :cond_24

    .line 115
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    :goto_18
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->needDivider:Z

    .line 121
    if-nez p3, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setWillNotDraw(Z)V

    .line 122
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSettingsCell;->requestLayout()V

    .line 123
    return-void

    .line 118
    :cond_24
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_18
.end method

.method public setTextColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    return-void
.end method

.method public setTextValueColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    return-void
.end method
