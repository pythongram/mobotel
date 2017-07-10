.class public Lorg/telegram/ui/Cells/ArchivedStickerSetCell;
.super Landroid/widget/FrameLayout;
.source "ArchivedStickerSetCell.java"


# instance fields
.field private checkBox:Lorg/telegram/ui/Components/Switch;

.field private imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private needDivider:Z

.field private onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private rect:Landroid/graphics/Rect;

.field private stickersSet:Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

.field private textView:Landroid/widget/TextView;

.field private valueTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "needCheckBox"    # Z

    .prologue
    const/high16 v9, 0x42200000    # 40.0f

    const/4 v7, 0x5

    const/4 v8, 0x3

    const/4 v6, 0x0

    const/4 v11, 0x1

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->rect:Landroid/graphics/Rect;

    .line 45
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->textView:Landroid/widget/TextView;

    .line 46
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->textView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v11, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 48
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setLines(I)V

    .line 49
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->textView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 52
    iget-object v1, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->textView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_117

    move v0, v7

    :goto_46
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 53
    iget-object v10, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->textView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_11a

    move v2, v7

    :goto_53
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_11d

    move v3, v9

    :goto_58
    const/high16 v4, 0x41200000    # 10.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_121

    const/high16 v5, 0x428e0000    # 71.0f

    :goto_60
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->valueTextView:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->valueTextView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteGrayText2"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->valueTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v11, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 58
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setLines(I)V

    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 61
    iget-object v1, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->valueTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_124

    move v0, v7

    :goto_96
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 62
    iget-object v10, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->valueTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_127

    move v2, v7

    :goto_a3
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_12a

    move v3, v9

    :goto_a8
    const/high16 v4, 0x420c0000    # 35.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_12e

    const/high16 v5, 0x428e0000    # 71.0f

    :goto_b0
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 65
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/BackupImageView;->setAspectFit(Z)V

    .line 66
    iget-object v9, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x30

    const/high16 v1, 0x42400000    # 48.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_130

    move v2, v7

    :goto_ce
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_132

    move v3, v6

    :goto_d5
    const/high16 v4, 0x41000000    # 8.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_135

    const/high16 v5, 0x41400000    # 12.0f

    :goto_dd
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    if-eqz p2, :cond_116

    .line 69
    new-instance v0, Lorg/telegram/ui/Components/Switch;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Switch;->setDuplicateParentStateEnabled(Z)V

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Switch;->setFocusable(Z)V

    .line 72
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Switch;->setFocusableInTouchMode(Z)V

    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_137

    :goto_108
    or-int/lit8 v4, v8, 0x10

    const/high16 v5, 0x41600000    # 14.0f

    const/high16 v7, 0x41600000    # 14.0f

    move v8, v6

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    :cond_116
    return-void

    :cond_117
    move v0, v8

    .line 52
    goto/16 :goto_46

    :cond_11a
    move v2, v8

    .line 53
    goto/16 :goto_53

    :cond_11d
    const/high16 v3, 0x428e0000    # 71.0f

    goto/16 :goto_58

    :cond_121
    move v5, v9

    goto/16 :goto_60

    :cond_124
    move v0, v8

    .line 61
    goto/16 :goto_96

    :cond_127
    move v2, v8

    .line 62
    goto/16 :goto_a3

    :cond_12a
    const/high16 v3, 0x428e0000    # 71.0f

    goto/16 :goto_a8

    :cond_12e
    move v5, v9

    goto :goto_b0

    :cond_130
    move v2, v8

    .line 66
    goto :goto_ce

    :cond_132
    const/high16 v3, 0x41400000    # 12.0f

    goto :goto_d5

    :cond_135
    move v5, v6

    goto :goto_dd

    :cond_137
    move v8, v7

    .line 73
    goto :goto_108
.end method


# virtual methods
.method public getCheckBox()Lorg/telegram/ui/Components/Switch;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    return-object v0
.end method

.method public getStickersSet()Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->stickersSet:Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getValueTextView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->valueTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 147
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->needDivider:Z

    if-eqz v0, :cond_23

    .line 148
    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 150
    :cond_23
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 91
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/high16 v0, 0x42800000    # 64.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->needDivider:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_15
    add-int/2addr v0, v2

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 92
    return-void

    .line 91
    :cond_1e
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz v0, :cond_35

    .line 136
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Switch;->getHitRect(Landroid/graphics/Rect;)V

    .line 137
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 138
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Switch;->getX()F

    move-result v0

    neg-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Switch;->getY()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 139
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Switch;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 142
    :goto_34
    return v0

    :cond_35
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_34
.end method

.method public setChecked(Z)V
    .registers 4
    .param p1, "checked"    # Z

    .prologue
    .line 120
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 121
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Switch;->setChecked(Z)V

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 123
    return-void
.end method

.method public setOnCheckClick(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 110
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    iput-object p1, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 111
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    new-instance v1, Lorg/telegram/ui/Cells/ArchivedStickerSetCell$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell$1;-><init>(Lorg/telegram/ui/Cells/ArchivedStickerSetCell;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-void
.end method

.method public setStickersSet(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;Z)V
    .registers 8
    .param p1, "set"    # Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    .param p2, "divider"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 95
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->needDivider:Z

    .line 96
    iput-object p1, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->stickersSet:Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 97
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->needDivider:Z

    if-nez v0, :cond_48

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->setWillNotDraw(Z)V

    .line 99
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->stickersSet:Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->valueTextView:Landroid/widget/TextView;

    const-string v2, "Stickers"

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->count:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_4a

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v0, :cond_4a

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v0, :cond_4a

    .line 103
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string v2, "webp"

    invoke-virtual {v0, v1, v4, v2, v4}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 107
    :cond_47
    :goto_47
    return-void

    :cond_48
    move v0, v1

    .line 97
    goto :goto_b

    .line 104
    :cond_4a
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_47

    .line 105
    iget-object v2, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string v1, "webp"

    invoke-virtual {v2, v0, v4, v1, v4}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_47
.end method
