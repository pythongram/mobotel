.class public Lorg/telegram/ui/Cells/TextCheckCell;
.super Landroid/widget/FrameLayout;
.source "TextCheckCell.java"


# instance fields
.field private checkBox:Lorg/telegram/ui/Components/Switch;

.field private isMultiline:Z

.field private needDivider:Z

.field private textView:Landroid/widget/TextView;

.field private valueTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    .line 37
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 39
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 40
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 41
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 42
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 44
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_11a

    const/4 v0, 0x5

    :goto_41
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 46
    iget-object v7, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_11d

    const/4 v2, 0x5

    :goto_57
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_120

    const/high16 v3, 0x42800000    # 64.0f

    :goto_5f
    const/4 v4, 0x0

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_124

    const/high16 v5, 0x41880000    # 17.0f

    :goto_66
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteGrayText2"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 51
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_128

    const/4 v0, 0x5

    :goto_8f
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 52
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 53
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 54
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 55
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 56
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 58
    iget-object v7, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_12b

    const/4 v2, 0x5

    :goto_c9
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_12d

    const/high16 v3, 0x42800000    # 64.0f

    :goto_d1
    const/high16 v4, 0x420c0000    # 35.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_130

    const/high16 v5, 0x41880000    # 17.0f

    :goto_d9
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    new-instance v0, Lorg/telegram/ui/Components/Switch;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Switch;->setDuplicateParentStateEnabled(Z)V

    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Switch;->setFocusable(Z)V

    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Switch;->setFocusableInTouchMode(Z)V

    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Switch;->setClickable(Z)V

    .line 65
    iget-object v7, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_133

    const/4 v2, 0x3

    :goto_10a
    or-int/lit8 v2, v2, 0x10

    const/high16 v3, 0x41600000    # 14.0f

    const/4 v4, 0x0

    const/high16 v5, 0x41600000    # 14.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    return-void

    .line 44
    :cond_11a
    const/4 v0, 0x3

    goto/16 :goto_41

    .line 46
    :cond_11d
    const/4 v2, 0x3

    goto/16 :goto_57

    :cond_120
    const/high16 v3, 0x41880000    # 17.0f

    goto/16 :goto_5f

    :cond_124
    const/high16 v5, 0x42800000    # 64.0f

    goto/16 :goto_66

    .line 51
    :cond_128
    const/4 v0, 0x3

    goto/16 :goto_8f

    .line 58
    :cond_12b
    const/4 v2, 0x3

    goto :goto_c9

    :cond_12d
    const/high16 v3, 0x41880000    # 17.0f

    goto :goto_d1

    :cond_130
    const/high16 v5, 0x42800000    # 64.0f

    goto :goto_d9

    .line 65
    :cond_133
    const/4 v2, 0x5

    goto :goto_10a
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->needDivider:Z

    if-eqz v0, :cond_27

    .line 136
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextCheckCell;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextCheckCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextCheckCell;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextCheckCell;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextCheckCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 138
    :cond_27
    return-void
.end method

.method protected onMeasure(II)V
    .registers 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 70
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->isMultiline:Z

    if-eqz v0, :cond_17

    .line 71
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 75
    :goto_16
    return-void

    .line 73
    :cond_17
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3b

    const/high16 v0, 0x42800000    # 64.0f

    :goto_29
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->needDivider:Z

    if-eqz v0, :cond_3e

    const/4 v0, 0x1

    :goto_32
    add-int/2addr v0, v3

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v2, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_16

    :cond_3b
    const/high16 v0, 0x42400000    # 48.0f

    goto :goto_29

    :cond_3e
    move v0, v1

    goto :goto_32
.end method

.method public setChecked(Z)V
    .registers 3
    .param p1, "checked"    # Z

    .prologue
    .line 130
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Switch;->setChecked(Z)V

    .line 131
    return-void
.end method

.method public setEnabled(Z)V
    .registers 5
    .param p1, "value"    # Z

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    .line 119
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 120
    if-eqz p1, :cond_14

    .line 121
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 127
    :goto_13
    return-void

    .line 124
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 125
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_13
.end method

.method public setTextAndCheck(Ljava/lang/String;ZZ)V
    .registers 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "checked"    # Z
    .param p3, "divider"    # Z

    .prologue
    const/4 v1, 0x0

    .line 78
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/TextCheckCell;->isMultiline:Z

    .line 80
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v2, p2}, Lorg/telegram/ui/Components/Switch;->setChecked(Z)V

    .line 81
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->needDivider:Z

    .line 82
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 84
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 85
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 86
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    if-nez p3, :cond_2b

    const/4 v1, 0x1

    :cond_2b
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setWillNotDraw(Z)V

    .line 88
    return-void
.end method

.method public setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .registers 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "checked"    # Z
    .param p4, "multiline"    # Z
    .param p5, "divider"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v3, p3}, Lorg/telegram/ui/Components/Switch;->setChecked(Z)V

    .line 94
    iput-boolean p5, p0, Lorg/telegram/ui/Cells/TextCheckCell;->needDivider:Z

    .line 95
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/TextCheckCell;->isMultiline:Z

    .line 97
    if-eqz p4, :cond_5a

    .line 98
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLines(I)V

    .line 99
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 100
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 101
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 102
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    const/high16 v4, 0x41300000    # 11.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v2, v2, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 110
    :goto_3c
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 111
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v3, -0x2

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 112
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 113
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    if-nez p5, :cond_76

    :goto_56
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setWillNotDraw(Z)V

    .line 115
    return-void

    .line 104
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_5a
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 105
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 106
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 107
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 108
    iget-object v3, p0, Lorg/telegram/ui/Cells/TextCheckCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_3c

    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_76
    move v1, v2

    .line 114
    goto :goto_56
.end method
