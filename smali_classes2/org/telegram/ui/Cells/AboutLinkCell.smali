.class public Lorg/telegram/ui/Cells/AboutLinkCell;
.super Landroid/widget/FrameLayout;
.source "AboutLinkCell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/AboutLinkCell$AboutLinkCellDelegate;
    }
.end annotation


# instance fields
.field private delegate:Lorg/telegram/ui/Cells/AboutLinkCell$AboutLinkCellDelegate;

.field private imageView:Landroid/widget/ImageView;

.field private oldText:Ljava/lang/String;

.field private pressedLink:Landroid/text/style/ClickableSpan;

.field private stringBuilder:Landroid/text/SpannableStringBuilder;

.field private textLayout:Landroid/text/StaticLayout;

.field private textX:I

.field private textY:I

.field private urlPath:Lorg/telegram/ui/Components/LinkPath;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v5, 0x41800000    # 16.0f

    const/4 v6, 0x0

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Lorg/telegram/ui/Components/LinkPath;

    invoke-direct {v0}, Lorg/telegram/ui/Components/LinkPath;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->urlPath:Lorg/telegram/ui/Components/LinkPath;

    .line 60
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->imageView:Landroid/widget/ImageView;

    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->imageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "windowBackgroundWhiteGrayIcon"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 63
    iget-object v7, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->imageView:Landroid/widget/ImageView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_50

    const/4 v2, 0x5

    :goto_37
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_52

    move v3, v6

    :goto_3e
    const/high16 v4, 0x40a00000    # 5.0f

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_54

    :goto_44
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/AboutLinkCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/AboutLinkCell;->setWillNotDraw(Z)V

    .line 65
    return-void

    .line 63
    :cond_50
    const/4 v2, 0x3

    goto :goto_37

    :cond_52
    move v3, v5

    goto :goto_3e

    :cond_54
    move v5, v6

    goto :goto_44
.end method

.method private resetPressedLink()V
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->pressedLink:Landroid/text/style/ClickableSpan;

    if-eqz v0, :cond_7

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->pressedLink:Landroid/text/style/ClickableSpan;

    .line 79
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/AboutLinkCell;->invalidate()V

    .line 80
    return-void
.end method


# virtual methods
.method public getImageView()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 181
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 182
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_34

    const/high16 v1, 0x41800000    # 16.0f

    :goto_9
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->textX:I

    int-to-float v1, v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->textY:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 183
    iget-object v1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->pressedLink:Landroid/text/style/ClickableSpan;

    if-eqz v1, :cond_27

    .line 184
    iget-object v1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->urlPath:Lorg/telegram/ui/Components/LinkPath;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->linkSelectionPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 187
    :cond_27
    :try_start_27
    iget-object v1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_30

    .line 188
    iget-object v1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_30} :catch_37

    .line 193
    :cond_30
    :goto_30
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 194
    return-void

    .line 182
    :cond_34
    const/high16 v1, 0x428e0000    # 71.0f

    goto :goto_9

    .line 190
    :catch_37
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_30
.end method

.method protected onMeasure(II)V
    .registers 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 175
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->stringBuilder:Landroid/text/SpannableStringBuilder;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->profile_aboutTextPaint:Landroid/text/TextPaint;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/high16 v4, 0x42ae0000    # 87.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->textLayout:Landroid/text/StaticLayout;

    .line 176
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 177
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 19
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 104
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    .line 105
    .local v10, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    .line 107
    .local v12, "y":F
    const/4 v7, 0x0

    .line 108
    .local v7, "result":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v14, :cond_b5

    .line 109
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    if-eqz v14, :cond_22

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->pressedLink:Landroid/text/style/ClickableSpan;

    if-eqz v14, :cond_13f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_13f

    .line 110
    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    if-nez v14, :cond_d4

    .line 111
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/AboutLinkCell;->resetPressedLink()V

    .line 113
    :try_start_2b
    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->textX:I

    int-to-float v14, v14

    sub-float v14, v10, v14

    float-to-int v11, v14

    .line 114
    .local v11, "x2":I
    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->textY:I

    int-to-float v14, v14

    sub-float v14, v12, v14

    float-to-int v13, v14

    .line 115
    .local v13, "y2":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v14, v13}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v4

    .line 116
    .local v4, "line":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->textLayout:Landroid/text/StaticLayout;

    int-to-float v15, v11

    invoke-virtual {v14, v4, v15}, Landroid/text/StaticLayout;->getOffsetForHorizontal(IF)I

    move-result v6

    .line 118
    .local v6, "off":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v14, v4}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v3

    .line 119
    .local v3, "left":F
    int-to-float v14, v11

    cmpg-float v14, v3, v14

    if-gtz v14, :cond_d0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v14, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v14

    add-float/2addr v14, v3

    int-to-float v15, v11

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_d0

    .line 120
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v14}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 121
    .local v1, "buffer":Landroid/text/Spannable;
    const-class v14, Landroid/text/style/ClickableSpan;

    invoke-interface {v1, v6, v6, v14}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ClickableSpan;

    .line 122
    .local v5, "link":[Landroid/text/style/ClickableSpan;
    array-length v14, v5

    if-eqz v14, :cond_cc

    .line 123
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/AboutLinkCell;->resetPressedLink()V

    .line 124
    const/4 v14, 0x0

    aget-object v14, v5, v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->pressedLink:Landroid/text/style/ClickableSpan;
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_86} :catch_c4

    .line 125
    const/4 v7, 0x1

    .line 127
    :try_start_87
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->pressedLink:Landroid/text/style/ClickableSpan;

    invoke-interface {v1, v14}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 128
    .local v8, "start":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->urlPath:Lorg/telegram/ui/Components/LinkPath;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->textLayout:Landroid/text/StaticLayout;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v8, v0}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/StaticLayout;IF)V

    .line 129
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->textLayout:Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->pressedLink:Landroid/text/style/ClickableSpan;

    invoke-interface {v1, v15}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->urlPath:Lorg/telegram/ui/Components/LinkPath;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v8, v15, v0}, Landroid/text/StaticLayout;->getSelectionPath(IILandroid/graphics/Path;)V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_b5} :catch_bf

    .line 169
    .end local v1    # "buffer":Landroid/text/Spannable;
    .end local v3    # "left":F
    .end local v4    # "line":I
    .end local v5    # "link":[Landroid/text/style/ClickableSpan;
    .end local v6    # "off":I
    .end local v8    # "start":I
    .end local v11    # "x2":I
    .end local v13    # "y2":I
    :cond_b5
    :goto_b5
    if-nez v7, :cond_bd

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    if-eqz v14, :cond_14b

    :cond_bd
    const/4 v14, 0x1

    :goto_be
    return v14

    .line 130
    .restart local v1    # "buffer":Landroid/text/Spannable;
    .restart local v3    # "left":F
    .restart local v4    # "line":I
    .restart local v5    # "link":[Landroid/text/style/ClickableSpan;
    .restart local v6    # "off":I
    .restart local v11    # "x2":I
    .restart local v13    # "y2":I
    :catch_bf
    move-exception v2

    .line 131
    .local v2, "e":Ljava/lang/Exception;
    :try_start_c0
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c3} :catch_c4

    goto :goto_b5

    .line 139
    .end local v1    # "buffer":Landroid/text/Spannable;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "left":F
    .end local v4    # "line":I
    .end local v5    # "link":[Landroid/text/style/ClickableSpan;
    .end local v6    # "off":I
    .end local v11    # "x2":I
    .end local v13    # "y2":I
    :catch_c4
    move-exception v2

    .line 140
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/AboutLinkCell;->resetPressedLink()V

    .line 141
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_b5

    .line 134
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "buffer":Landroid/text/Spannable;
    .restart local v3    # "left":F
    .restart local v4    # "line":I
    .restart local v5    # "link":[Landroid/text/style/ClickableSpan;
    .restart local v6    # "off":I
    .restart local v11    # "x2":I
    .restart local v13    # "y2":I
    :cond_cc
    :try_start_cc
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/AboutLinkCell;->resetPressedLink()V

    goto :goto_b5

    .line 137
    .end local v1    # "buffer":Landroid/text/Spannable;
    .end local v5    # "link":[Landroid/text/style/ClickableSpan;
    :cond_d0
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/AboutLinkCell;->resetPressedLink()V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_d3} :catch_c4

    goto :goto_b5

    .line 143
    .end local v3    # "left":F
    .end local v4    # "line":I
    .end local v6    # "off":I
    .end local v11    # "x2":I
    .end local v13    # "y2":I
    :cond_d4
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->pressedLink:Landroid/text/style/ClickableSpan;

    if-eqz v14, :cond_b5

    .line 145
    :try_start_da
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->pressedLink:Landroid/text/style/ClickableSpan;

    instance-of v14, v14, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    if-eqz v14, :cond_116

    .line 146
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->pressedLink:Landroid/text/style/ClickableSpan;

    check-cast v14, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    invoke-virtual {v14}, Lorg/telegram/ui/Components/URLSpanNoUnderline;->getURL()Ljava/lang/String;

    move-result-object v9

    .line 147
    .local v9, "url":Ljava/lang/String;
    const-string v14, "@"

    invoke-virtual {v9, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_104

    const-string v14, "#"

    invoke-virtual {v9, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_104

    const-string v14, "/"

    invoke-virtual {v9, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_111

    .line 148
    :cond_104
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->delegate:Lorg/telegram/ui/Cells/AboutLinkCell$AboutLinkCellDelegate;

    if-eqz v14, :cond_111

    .line 149
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->delegate:Lorg/telegram/ui/Cells/AboutLinkCell$AboutLinkCellDelegate;

    invoke-interface {v14, v9}, Lorg/telegram/ui/Cells/AboutLinkCell$AboutLinkCellDelegate;->didPressUrl(Ljava/lang/String;)V
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_111} :catch_130

    .line 162
    .end local v9    # "url":Ljava/lang/String;
    :cond_111
    :goto_111
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/AboutLinkCell;->resetPressedLink()V

    .line 163
    const/4 v7, 0x1

    goto :goto_b5

    .line 153
    :cond_116
    :try_start_116
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->pressedLink:Landroid/text/style/ClickableSpan;

    instance-of v14, v14, Landroid/text/style/URLSpan;

    if-eqz v14, :cond_135

    .line 154
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/AboutLinkCell;->getContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->pressedLink:Landroid/text/style/ClickableSpan;

    check-cast v14, Landroid/text/style/URLSpan;

    invoke-virtual {v14}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_12f} :catch_130

    goto :goto_111

    .line 159
    :catch_130
    move-exception v2

    .line 160
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_111

    .line 156
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_135
    :try_start_135
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Cells/AboutLinkCell;->pressedLink:Landroid/text/style/ClickableSpan;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_13e} :catch_130

    goto :goto_111

    .line 165
    :cond_13f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_b5

    .line 166
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/AboutLinkCell;->resetPressedLink()V

    goto/16 :goto_b5

    .line 169
    :cond_14b
    const/4 v14, 0x0

    goto/16 :goto_be
.end method

.method public setDelegate(Lorg/telegram/ui/Cells/AboutLinkCell$AboutLinkCellDelegate;)V
    .registers 2
    .param p1, "botHelpCellDelegate"    # Lorg/telegram/ui/Cells/AboutLinkCell$AboutLinkCellDelegate;

    .prologue
    .line 72
    iput-object p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->delegate:Lorg/telegram/ui/Cells/AboutLinkCell$AboutLinkCellDelegate;

    .line 73
    return-void
.end method

.method public setTextAndIcon(Ljava/lang/String;I)V
    .registers 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    const/4 v3, 0x0

    .line 83
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_f

    .line 84
    :cond_9
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/AboutLinkCell;->setVisibility(I)V

    .line 100
    :cond_e
    :goto_e
    return-void

    .line 87
    :cond_f
    if-eqz p1, :cond_1d

    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->oldText:Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->oldText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 90
    :cond_1d
    iput-object p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->oldText:Ljava/lang/String;

    .line 91
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->oldText:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->stringBuilder:Landroid/text/SpannableStringBuilder;

    .line 92
    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->stringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v3, v0, v3}, Lorg/telegram/messenger/MessageObject;->addLinks(ZLjava/lang/CharSequence;Z)V

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->stringBuilder:Landroid/text/SpannableStringBuilder;

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->profile_aboutTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    .line 94
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/AboutLinkCell;->requestLayout()V

    .line 95
    if-nez p2, :cond_4a

    .line 96
    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_e

    .line 98
    :cond_4a
    iget-object v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_e
.end method
