.class public Lorg/telegram/ui/Cells/ThemeCell;
.super Landroid/widget/FrameLayout;
.source "ThemeCell.java"


# static fields
.field private static bytes:[B


# instance fields
.field private checkImage:Landroid/widget/ImageView;

.field private currentThemeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

.field private needDivider:Z

.field private optionsButton:Landroid/widget/ImageView;

.field private paint:Landroid/graphics/Paint;

.field private textView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const/16 v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Lorg/telegram/ui/Cells/ThemeCell;->bytes:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x5

    const/4 v8, 0x3

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v10, 0x0

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p0, v10}, Lorg/telegram/ui/Cells/ThemeCell;->setWillNotDraw(Z)V

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->paint:Landroid/graphics/Paint;

    .line 52
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->textView:Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->textView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 55
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLines(I)V

    .line 56
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 58
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v10, v10, v10, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->textView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->textView:Landroid/widget/TextView;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->textView:Landroid/widget/TextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 63
    iget-object v9, p0, Lorg/telegram/ui/Cells/ThemeCell;->textView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_108

    move v2, v7

    :goto_68
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_10b

    const/high16 v3, 0x42ca0000    # 101.0f

    :goto_70
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_10f

    const/high16 v5, 0x42700000    # 60.0f

    :goto_76
    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/Cells/ThemeCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->checkImage:Landroid/widget/ImageView;

    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->checkImage:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "featuredStickers_addedIcon"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 67
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->checkImage:Landroid/widget/ImageView;

    const v1, 0x7f02025a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    iget-object v9, p0, Lorg/telegram/ui/Cells/ThemeCell;->checkImage:Landroid/widget/ImageView;

    const/16 v0, 0x13

    const/high16 v1, 0x41600000    # 14.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_113

    move v2, v8

    :goto_aa
    or-int/lit8 v2, v2, 0x10

    const/high16 v3, 0x425c0000    # 55.0f

    const/high16 v5, 0x425c0000    # 55.0f

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/Cells/ThemeCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->optionsButton:Landroid/widget/ImageView;

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->optionsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 72
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->optionsButton:Landroid/widget/ImageView;

    const-string v1, "stickers_menuSelector"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->optionsButton:Landroid/widget/ImageView;

    const v1, 0x7f0200e7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->optionsButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "stickers_menu"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->optionsButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->optionsButton:Landroid/widget/ImageView;

    const/16 v1, 0x30

    const/16 v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_115

    :goto_fe
    or-int/lit8 v3, v8, 0x30

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/ThemeCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    return-void

    :cond_108
    move v2, v8

    .line 63
    goto/16 :goto_68

    :cond_10b
    const/high16 v3, 0x42700000    # 60.0f

    goto/16 :goto_70

    :cond_10f
    const/high16 v5, 0x42ca0000    # 101.0f

    goto/16 :goto_76

    :cond_113
    move v2, v7

    .line 68
    goto :goto_aa

    :cond_115
    move v8, v7

    .line 76
    goto :goto_fe
.end method


# virtual methods
.method public getCurrentThemeInfo()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->currentThemeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 187
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->needDivider:Z

    if-eqz v0, :cond_27

    .line 188
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ThemeCell;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ThemeCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ThemeCell;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ThemeCell;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ThemeCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 190
    :cond_27
    const/high16 v0, 0x41d80000    # 27.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    .line 191
    .local v6, "x":I
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_37

    .line 192
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ThemeCell;->getWidth()I

    move-result v0

    sub-int v6, v0, v6

    .line 194
    :cond_37
    int-to-float v0, v6

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/ThemeCell;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 195
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 81
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->needDivider:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_15
    add-int/2addr v0, v2

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 82
    return-void

    .line 81
    :cond_1e
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public setOnOptionsClick(Landroid/view/View$OnClickListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 85
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->optionsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method

.method public setTextColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemeCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    return-void
.end method

.method public setTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Z)V
    .registers 29
    .param p1, "themeInfo"    # Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    .param p2, "divider"    # Z

    .prologue
    .line 101
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Cells/ThemeCell;->currentThemeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 102
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 103
    .local v21, "text":Ljava/lang/String;
    const-string v23, ".attheme"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_2e

    .line 104
    const/16 v23, 0x0

    const/16 v24, 0x2e

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 106
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Cells/ThemeCell;->textView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Cells/ThemeCell;->needDivider:Z

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Cells/ThemeCell;->checkImage:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_f3

    const/16 v23, 0x0

    :goto_53
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    const/4 v8, 0x0

    .line 111
    .local v8, "finished":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_6b

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_e1

    .line 112
    :cond_6b
    const/16 v19, 0x0

    .line 114
    .local v19, "stream":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 116
    .local v5, "currentPosition":I
    :try_start_6e
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_f7

    .line 117
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/Theme;->getAssetFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 121
    .local v7, "file":Ljava/io/File;
    :goto_80
    new-instance v20, Ljava/io/FileInputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_87} :catch_1a9
    .catchall {:try_start_6e .. :try_end_87} :catchall_199

    .line 124
    .end local v19    # "stream":Ljava/io/FileInputStream;
    .local v20, "stream":Ljava/io/FileInputStream;
    const/4 v14, 0x0

    .line 125
    .local v14, "linesRead":I
    :cond_88
    :try_start_88
    sget-object v23, Lorg/telegram/ui/Cells/ThemeCell;->bytes:[B

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v17

    .local v17, "read":I
    const/16 v23, -0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-eq v0, v1, :cond_dc

    .line 126
    move/from16 v16, v5

    .line 127
    .local v16, "previousPosition":I
    const/16 v18, 0x0

    .line 128
    .local v18, "start":I
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_9f
    move/from16 v0, v17

    if-ge v4, v0, :cond_d2

    .line 129
    sget-object v23, Lorg/telegram/ui/Cells/ThemeCell;->bytes:[B

    aget-byte v23, v23, v4

    const/16 v24, 0xa

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_181

    .line 130
    add-int/lit8 v14, v14, 0x1

    .line 131
    sub-int v23, v4, v18

    add-int/lit8 v12, v23, 0x1

    .line 132
    .local v12, "len":I
    new-instance v13, Ljava/lang/String;

    sget-object v23, Lorg/telegram/ui/Cells/ThemeCell;->bytes:[B

    add-int/lit8 v24, v12, -0x1

    const-string v25, "UTF-8"

    move-object/from16 v0, v23

    move/from16 v1, v18

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-direct {v13, v0, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 133
    .local v13, "line":Ljava/lang/String;
    const-string v23, "WPS"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_cf
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_cf} :catch_158
    .catchall {:try_start_88 .. :try_end_cf} :catchall_1a5

    move-result v23

    if-eqz v23, :cond_106

    .line 160
    .end local v12    # "len":I
    .end local v13    # "line":Ljava/lang/String;
    :cond_d2
    :goto_d2
    move/from16 v0, v16

    if-eq v0, v5, :cond_dc

    const/16 v23, 0x1f4

    move/from16 v0, v23

    if-lt v14, v0, :cond_185

    .line 172
    .end local v4    # "a":I
    .end local v16    # "previousPosition":I
    .end local v18    # "start":I
    :cond_dc
    :goto_dc
    if-eqz v20, :cond_e1

    .line 173
    :try_start_de
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileInputStream;->close()V
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_e1} :catch_193

    .line 180
    .end local v5    # "currentPosition":I
    .end local v7    # "file":Ljava/io/File;
    .end local v14    # "linesRead":I
    .end local v17    # "read":I
    .end local v20    # "stream":Ljava/io/FileInputStream;
    :cond_e1
    :goto_e1
    if-nez v8, :cond_f2

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Cells/ThemeCell;->paint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    const-string v24, "actionBarDefault"

    invoke-static/range {v24 .. v24}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultColor(Ljava/lang/String;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    :cond_f2
    return-void

    .line 108
    .end local v8    # "finished":Z
    :cond_f3
    const/16 v23, 0x4

    goto/16 :goto_53

    .line 119
    .restart local v5    # "currentPosition":I
    .restart local v8    # "finished":Z
    .restart local v19    # "stream":Ljava/io/FileInputStream;
    :cond_f7
    :try_start_f7
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_104
    .catch Ljava/lang/Throwable; {:try_start_f7 .. :try_end_104} :catch_1a9
    .catchall {:try_start_f7 .. :try_end_104} :catchall_199

    .restart local v7    # "file":Ljava/io/File;
    goto/16 :goto_80

    .line 136
    .end local v19    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "a":I
    .restart local v12    # "len":I
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v14    # "linesRead":I
    .restart local v16    # "previousPosition":I
    .restart local v17    # "read":I
    .restart local v18    # "start":I
    .restart local v20    # "stream":Ljava/io/FileInputStream;
    :cond_106
    const/16 v23, 0x3d

    :try_start_108
    move/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .local v9, "idx":I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v9, v0, :cond_17e

    .line 137
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v13, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 138
    .local v11, "key":Ljava/lang/String;
    const-string v23, "actionBarDefault"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_17e

    .line 139
    add-int/lit8 v23, v9, 0x1

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 141
    .local v15, "param":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_175

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C
    :try_end_13b
    .catch Ljava/lang/Throwable; {:try_start_108 .. :try_end_13b} :catch_158
    .catchall {:try_start_108 .. :try_end_13b} :catchall_1a5

    move-result v23

    const/16 v24, 0x23

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_175

    .line 143
    :try_start_144
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_144 .. :try_end_147} :catch_16b
    .catch Ljava/lang/Throwable; {:try_start_144 .. :try_end_147} :catch_158
    .catchall {:try_start_144 .. :try_end_147} :catchall_1a5

    move-result v22

    .line 150
    .local v22, "value":I
    :goto_148
    const/4 v8, 0x1

    .line 151
    :try_start_149
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Cells/ThemeCell;->paint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_156
    .catch Ljava/lang/Throwable; {:try_start_149 .. :try_end_156} :catch_158
    .catchall {:try_start_149 .. :try_end_156} :catchall_1a5

    goto/16 :goto_d2

    .line 168
    .end local v4    # "a":I
    .end local v9    # "idx":I
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "len":I
    .end local v13    # "line":Ljava/lang/String;
    .end local v15    # "param":Ljava/lang/String;
    .end local v16    # "previousPosition":I
    .end local v17    # "read":I
    .end local v18    # "start":I
    .end local v22    # "value":I
    :catch_158
    move-exception v6

    move-object/from16 v19, v20

    .line 169
    .end local v7    # "file":Ljava/io/File;
    .end local v14    # "linesRead":I
    .end local v20    # "stream":Ljava/io/FileInputStream;
    .local v6, "e":Ljava/lang/Throwable;
    .restart local v19    # "stream":Ljava/io/FileInputStream;
    :goto_15b
    :try_start_15b
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_15e
    .catchall {:try_start_15b .. :try_end_15e} :catchall_199

    .line 172
    if-eqz v19, :cond_e1

    .line 173
    :try_start_160
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_163} :catch_165

    goto/16 :goto_e1

    .line 175
    :catch_165
    move-exception v6

    .line 176
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_e1

    .line 144
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v19    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "a":I
    .restart local v7    # "file":Ljava/io/File;
    .restart local v9    # "idx":I
    .restart local v11    # "key":Ljava/lang/String;
    .restart local v12    # "len":I
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v14    # "linesRead":I
    .restart local v15    # "param":Ljava/lang/String;
    .restart local v16    # "previousPosition":I
    .restart local v17    # "read":I
    .restart local v18    # "start":I
    .restart local v20    # "stream":Ljava/io/FileInputStream;
    :catch_16b
    move-exception v10

    .line 145
    .local v10, "ignore":Ljava/lang/Exception;
    :try_start_16c
    invoke-static {v15}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 146
    .restart local v22    # "value":I
    goto :goto_148

    .line 148
    .end local v10    # "ignore":Ljava/lang/Exception;
    .end local v22    # "value":I
    :cond_175
    invoke-static {v15}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .restart local v22    # "value":I
    goto :goto_148

    .line 156
    .end local v11    # "key":Ljava/lang/String;
    .end local v15    # "param":Ljava/lang/String;
    .end local v22    # "value":I
    :cond_17e
    add-int v18, v18, v12

    .line 157
    add-int/2addr v5, v12

    .line 128
    .end local v9    # "idx":I
    .end local v12    # "len":I
    .end local v13    # "line":Ljava/lang/String;
    :cond_181
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_9f

    .line 163
    :cond_185
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v23

    int-to-long v0, v5

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_18f
    .catch Ljava/lang/Throwable; {:try_start_16c .. :try_end_18f} :catch_158
    .catchall {:try_start_16c .. :try_end_18f} :catchall_1a5

    .line 164
    if-eqz v8, :cond_88

    goto/16 :goto_dc

    .line 175
    .end local v4    # "a":I
    .end local v16    # "previousPosition":I
    .end local v18    # "start":I
    :catch_193
    move-exception v6

    .line 176
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_e1

    .line 171
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "file":Ljava/io/File;
    .end local v14    # "linesRead":I
    .end local v17    # "read":I
    .end local v20    # "stream":Ljava/io/FileInputStream;
    .restart local v19    # "stream":Ljava/io/FileInputStream;
    :catchall_199
    move-exception v23

    .line 172
    :goto_19a
    if-eqz v19, :cond_19f

    .line 173
    :try_start_19c
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_19f
    .catch Ljava/lang/Exception; {:try_start_19c .. :try_end_19f} :catch_1a0

    .line 177
    :cond_19f
    :goto_19f
    throw v23

    .line 175
    :catch_1a0
    move-exception v6

    .line 176
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_19f

    .line 171
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v19    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v14    # "linesRead":I
    .restart local v20    # "stream":Ljava/io/FileInputStream;
    :catchall_1a5
    move-exception v23

    move-object/from16 v19, v20

    .end local v20    # "stream":Ljava/io/FileInputStream;
    .restart local v19    # "stream":Ljava/io/FileInputStream;
    goto :goto_19a

    .line 168
    .end local v7    # "file":Ljava/io/File;
    .end local v14    # "linesRead":I
    :catch_1a9
    move-exception v6

    goto :goto_15b
.end method
