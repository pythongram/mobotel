.class public Lorg/telegram/ui/Cells/StickerSetCell;
.super Landroid/widget/FrameLayout;
.source "StickerSetCell.java"


# instance fields
.field private imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private needDivider:Z

.field private optionsButton:Landroid/widget/ImageView;

.field private rect:Landroid/graphics/Rect;

.field private stickersSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

.field private textView:Landroid/widget/TextView;

.field private valueTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v9, 0x42200000    # 40.0f

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x3

    const/4 v11, 0x1

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->rect:Landroid/graphics/Rect;

    .line 48
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v11, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setLines(I)V

    .line 52
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 53
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 54
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 55
    iget-object v1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_135

    move v0, v7

    :goto_46
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 56
    iget-object v10, p0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_138

    move v2, v7

    :goto_53
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_13b

    move v3, v9

    :goto_58
    const/high16 v4, 0x41200000    # 10.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_13f

    const/high16 v5, 0x428e0000    # 71.0f

    :goto_60
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lorg/telegram/ui/Cells/StickerSetCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteGrayText2"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v11, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setLines(I)V

    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 64
    iget-object v1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_142

    move v0, v7

    :goto_96
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 65
    iget-object v10, p0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_145

    move v2, v7

    :goto_a3
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_148

    move v3, v9

    :goto_a8
    const/high16 v4, 0x420c0000    # 35.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_14c

    const/high16 v5, 0x428e0000    # 71.0f

    :goto_b0
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lorg/telegram/ui/Cells/StickerSetCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/BackupImageView;->setAspectFit(Z)V

    .line 69
    iget-object v9, p0, Lorg/telegram/ui/Cells/StickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x30

    const/high16 v1, 0x42400000    # 48.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_14f

    move v2, v7

    :goto_ce
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_152

    move v3, v6

    :goto_d5
    const/high16 v4, 0x41000000    # 8.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_155

    const/high16 v5, 0x41400000    # 12.0f

    :goto_dd
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/Cells/StickerSetCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    .line 72
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    const-string v1, "stickers_menuSelector"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    const v1, 0x7f0201d4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "stickers_menu"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    const/16 v1, 0x28

    const/16 v2, 0x28

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_157

    :goto_12b
    or-int/lit8 v3, v8, 0x30

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/StickerSetCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    return-void

    :cond_135
    move v0, v8

    .line 55
    goto/16 :goto_46

    :cond_138
    move v2, v8

    .line 56
    goto/16 :goto_53

    :cond_13b
    const/high16 v3, 0x428e0000    # 71.0f

    goto/16 :goto_58

    :cond_13f
    move v5, v9

    goto/16 :goto_60

    :cond_142
    move v0, v8

    .line 64
    goto/16 :goto_96

    :cond_145
    move v2, v8

    .line 65
    goto/16 :goto_a3

    :cond_148
    const/high16 v3, 0x428e0000    # 71.0f

    goto/16 :goto_a8

    :cond_14c
    move v5, v9

    goto/16 :goto_b0

    :cond_14f
    move v2, v8

    .line 69
    goto/16 :goto_ce

    :cond_152
    const/high16 v3, 0x41400000    # 12.0f

    goto :goto_d5

    :cond_155
    move v5, v6

    goto :goto_dd

    :cond_157
    move v8, v7

    .line 77
    goto :goto_12b
.end method


# virtual methods
.method public getStickersSet()Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->stickersSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 132
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->needDivider:Z

    if-eqz v0, :cond_23

    .line 133
    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerSetCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerSetCell;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerSetCell;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerSetCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 135
    :cond_23
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 82
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/high16 v0, 0x42800000    # 64.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->needDivider:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_15
    add-int/2addr v0, v2

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 83
    return-void

    .line 82
    :cond_1e
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_27

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerSetCell;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 123
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 124
    const/4 v0, 0x1

    .line 127
    :goto_26
    return v0

    :cond_27
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_26
.end method

.method public setOnOptionsClick(Landroid/view/View$OnClickListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 112
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerSetCell;->optionsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    return-void
.end method

.method public setStickersSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Z)V
    .registers 11
    .param p1, "set"    # Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .param p2, "divider"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    .line 86
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->needDivider:Z

    .line 87
    iput-object p1, p0, Lorg/telegram/ui/Cells/StickerSetCell;->stickersSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 89
    iget-object v2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/telegram/ui/Cells/StickerSetCell;->stickersSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->stickersSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    if-eqz v2, :cond_61

    .line 91
    iget-object v2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 92
    iget-object v2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 93
    iget-object v2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/BackupImageView;->setAlpha(F)V

    .line 99
    :goto_2c
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    .line 100
    .local v1, "documents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    if-eqz v1, :cond_71

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_71

    .line 101
    iget-object v2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    const-string v3, "Stickers"

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    .line 103
    .local v0, "document":Lorg/telegram/tgnet/TLRPC$Document;
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v2, :cond_60

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v2, :cond_60

    .line 104
    iget-object v2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string v4, "webp"

    invoke-virtual {v2, v3, v7, v4, v7}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 109
    .end local v0    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_60
    :goto_60
    return-void

    .line 95
    .end local v1    # "documents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    :cond_61
    iget-object v2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 96
    iget-object v2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 97
    iget-object v2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/BackupImageView;->setAlpha(F)V

    goto :goto_2c

    .line 107
    .restart local v1    # "documents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    :cond_71
    iget-object v2, p0, Lorg/telegram/ui/Cells/StickerSetCell;->valueTextView:Landroid/widget/TextView;

    const-string v3, "Stickers"

    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_60
.end method
