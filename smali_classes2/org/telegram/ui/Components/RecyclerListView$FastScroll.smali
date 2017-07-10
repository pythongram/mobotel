.class Lorg/telegram/ui/Components/RecyclerListView$FastScroll;
.super Landroid/view/View;
.source "RecyclerListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/RecyclerListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FastScroll"
.end annotation


# instance fields
.field private bubbleProgress:F

.field private colors:[I

.field private currentLetter:Ljava/lang/String;

.field private lastUpdateTime:J

.field private lastY:F

.field private letterLayout:Landroid/text/StaticLayout;

.field private letterPaint:Landroid/text/TextPaint;

.field private oldLetterLayout:Landroid/text/StaticLayout;

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private pressed:Z

.field private progress:F

.field private radii:[F

.field private rect:Landroid/graphics/RectF;

.field private scrollX:I

.field private startDy:F

.field private textX:F

.field private textY:F

.field final synthetic this$0:Lorg/telegram/ui/Components/RecyclerListView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;)V
    .registers 7
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 256
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    .line 257
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 237
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    .line 238
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    .line 245
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    .line 247
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->path:Landroid/graphics/Path;

    .line 248
    new-array v1, v3, [F

    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    .line 253
    const/4 v1, 0x6

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->colors:[I

    .line 259
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    const/high16 v2, 0x42340000    # 45.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 260
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_3a
    if-ge v0, v3, :cond_4a

    .line 261
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    const/high16 v2, 0x42300000    # 44.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    aput v2, v1, v0

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 264
    :cond_4a
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_5a

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :goto_54
    iput v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->scrollX:I

    .line 265
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->updateColors()V

    .line 266
    return-void

    .line 264
    :cond_5a
    const/high16 v1, 0x42ea0000    # 117.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_54
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/RecyclerListView$FastScroll;F)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView$FastScroll;
    .param p1, "x1"    # F

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->setProgress(F)V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/RecyclerListView$FastScroll;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    .prologue
    .line 235
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->updateColors()V

    return-void
.end method

.method private getCurrentLetter()V
    .registers 16

    .prologue
    .line 332
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getLayoutManager()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-result-object v11

    .line 333
    .local v11, "layoutManager":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
    instance-of v0, v11, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    if-eqz v0, :cond_3c

    move-object v12, v11

    .line 334
    check-cast v12, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    .line 335
    .local v12, "linearLayoutManager":Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-virtual {v12}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3c

    .line 336
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v8

    .line 337
    .local v8, "adapter":Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    instance-of v0, v8, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;

    if-eqz v0, :cond_3c

    move-object v9, v8

    .line 338
    check-cast v9, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;

    .line 339
    .local v9, "fastScrollAdapter":Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;->getPositionForScrollProgress(F)I

    move-result v14

    .line 340
    .local v14, "position":I
    const/4 v0, 0x0

    invoke-virtual {v12, v14, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 341
    invoke-virtual {v9, v14}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;->getLetter(I)Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "newLetter":Ljava/lang/String;
    if-nez v1, :cond_3d

    .line 343
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_39

    .line 344
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->oldLetterLayout:Landroid/text/StaticLayout;

    .line 346
    :cond_39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    .line 364
    .end local v1    # "newLetter":Ljava/lang/String;
    .end local v8    # "adapter":Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    .end local v9    # "fastScrollAdapter":Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;
    .end local v12    # "linearLayoutManager":Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .end local v14    # "position":I
    :cond_3c
    :goto_3c
    return-void

    .line 347
    .restart local v1    # "newLetter":Ljava/lang/String;
    .restart local v8    # "adapter":Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    .restart local v9    # "fastScrollAdapter":Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;
    .restart local v12    # "linearLayoutManager":Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .restart local v14    # "position":I
    :cond_3d
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->currentLetter:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 348
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    const/16 v3, 0x3e8

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->oldLetterLayout:Landroid/text/StaticLayout;

    .line 350
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_3c

    .line 351
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_aa

    .line 352
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v10

    .line 353
    .local v10, "lWidth":F
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v13

    .line 354
    .local v13, "lleft":F
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x42b00000    # 88.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->textX:F

    .line 358
    .end local v10    # "lWidth":F
    .end local v13    # "lleft":F
    :goto_97
    const/high16 v0, 0x42b00000    # 88.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->textY:F

    goto :goto_3c

    .line 356
    :cond_aa
    const/high16 v0, 0x42b00000    # 88.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->textX:F

    goto :goto_97
.end method

.method private setProgress(F)V
    .registers 2
    .param p1, "value"    # F

    .prologue
    .line 451
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    .line 452
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->invalidate()V

    .line 453
    return-void
.end method

.method private updateColors()V
    .registers 6

    .prologue
    .line 269
    const-string v2, "fastScrollInactive"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    .line 270
    .local v1, "inactive":I
    const-string v2, "fastScrollActive"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    .line 271
    .local v0, "active":I
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 272
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    const-string v3, "fastScrollText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 273
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->colors:[I

    const/4 v3, 0x0

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    aput v4, v2, v3

    .line 274
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->colors:[I

    const/4 v3, 0x1

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    aput v4, v2, v3

    .line 275
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->colors:[I

    const/4 v3, 0x2

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    aput v4, v2, v3

    .line 276
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->colors:[I

    const/4 v3, 0x3

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    aput v4, v2, v3

    .line 277
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->colors:[I

    const/4 v3, 0x4

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    aput v4, v2, v3

    .line 278
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->colors:[I

    const/4 v3, 0x5

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    aput v4, v2, v3

    .line 279
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->invalidate()V

    .line 280
    return-void
.end method


# virtual methods
.method public layout(IIII)V
    .registers 6
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 444
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->selfOnLayout:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->access$000(Lorg/telegram/ui/Components/RecyclerListView;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 448
    :goto_8
    return-void

    .line 447
    :cond_9
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_8
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 373
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    const/16 v13, 0xff

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->colors:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->colors:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->colors:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    sub-int v15, v15, v16

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v15, v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->colors:[I

    const/16 v16, 0x2

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->colors:[I

    move-object/from16 v16, v0

    const/16 v17, 0x3

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->colors:[I

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget v17, v17, v18

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->colors:[I

    move-object/from16 v16, v0

    const/16 v17, 0x4

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->colors:[I

    move-object/from16 v17, v0

    const/16 v18, 0x5

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->colors:[I

    move-object/from16 v18, v0

    const/16 v19, 0x4

    aget v18, v18, v19

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    add-int v16, v16, v17

    invoke-static/range {v13 .. v16}, Landroid/graphics/Color;->argb(IIII)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 374
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getMeasuredHeight()I

    move-result v12

    const/high16 v13, 0x42580000    # 54.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    mul-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v11, v12

    .line 375
    .local v11, "y":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->scrollX:I

    int-to-float v13, v13

    const/high16 v14, 0x41400000    # 12.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    add-int/2addr v14, v11

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->scrollX:I

    const/high16 v16, 0x40a00000    # 5.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    add-int v15, v15, v16

    int-to-float v15, v15

    const/high16 v16, 0x42280000    # 42.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    add-int v16, v16, v11

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/RectF;->set(FFFF)V

    .line 376
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 377
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->pressed:Z

    if-nez v12, :cond_108

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_25a

    .line 378
    :cond_108
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    const/high16 v13, 0x437f0000    # 255.0f

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    mul-float/2addr v13, v14

    float-to-int v13, v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 379
    const/high16 v12, 0x41f00000    # 30.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int v8, v11, v12

    .line 380
    .local v8, "progressY":I
    const/high16 v12, 0x42380000    # 46.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sub-int/2addr v11, v12

    .line 381
    const/4 v2, 0x0

    .line 382
    .local v2, "diff":F
    const/high16 v12, 0x41400000    # 12.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    if-gt v11, v12, :cond_13d

    .line 383
    const/high16 v12, 0x41400000    # 12.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sub-int/2addr v12, v11

    int-to-float v2, v12

    .line 384
    const/high16 v12, 0x41400000    # 12.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    .line 388
    :cond_13d
    const/high16 v12, 0x41200000    # 10.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 389
    const/high16 v12, 0x41e80000    # 29.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    cmpg-float v12, v2, v12

    if-gtz v12, :cond_2ce

    .line 390
    const/high16 v12, 0x42300000    # 44.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v10, v12

    .line 391
    .local v10, "raduisTop":F
    const/high16 v12, 0x40800000    # 4.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x41e80000    # 29.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    div-float v13, v2, v13

    const/high16 v14, 0x42200000    # 40.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    add-float v9, v12, v13

    .line 397
    .local v9, "raduisBottom":F
    :goto_176
    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v12, :cond_190

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    const/4 v13, 0x0

    aget v12, v12, v13

    cmpl-float v12, v12, v10

    if-nez v12, :cond_1aa

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    const/4 v13, 0x6

    aget v12, v12, v13

    cmpl-float v12, v12, v9

    if-nez v12, :cond_1aa

    :cond_190
    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v12, :cond_214

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    const/4 v13, 0x2

    aget v12, v12, v13

    cmpl-float v12, v12, v10

    if-nez v12, :cond_1aa

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    const/4 v13, 0x4

    aget v12, v12, v13

    cmpl-float v12, v12, v9

    if-eqz v12, :cond_214

    .line 398
    :cond_1aa
    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v12, :cond_2fc

    .line 399
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    const/4 v15, 0x1

    aput v10, v14, v15

    aput v10, v12, v13

    .line 400
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    const/4 v13, 0x6

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    const/4 v15, 0x7

    aput v9, v14, v15

    aput v9, v12, v13

    .line 405
    :goto_1ca
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->path:Landroid/graphics/Path;

    invoke-virtual {v12}, Landroid/graphics/Path;->reset()V

    .line 406
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v12, :cond_31a

    const/high16 v12, 0x41200000    # 10.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    :goto_1e0
    const/4 v15, 0x0

    sget-boolean v13, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v13, :cond_31d

    const/high16 v13, 0x42c40000    # 98.0f

    :goto_1e7
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    const/high16 v16, 0x42b00000    # 88.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v12, v15, v13, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 407
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->path:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    sget-object v15, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v12, v13, v14, v15}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->path:Landroid/graphics/Path;

    invoke-virtual {v12}, Landroid/graphics/Path;->close()V

    .line 410
    :cond_214
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    if-eqz v12, :cond_321

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    .line 411
    .local v3, "layoutToDraw":Landroid/text/StaticLayout;
    :goto_21e
    if-eqz v3, :cond_25a

    .line 412
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 413
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->scrollX:I

    int-to-float v14, v14

    sub-int v15, v8, v11

    int-to-float v15, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 414
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->path:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 415
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->textX:F

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->textY:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 416
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 417
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 420
    .end local v2    # "diff":F
    .end local v3    # "layoutToDraw":Landroid/text/StaticLayout;
    .end local v8    # "progressY":I
    .end local v9    # "raduisBottom":F
    .end local v10    # "raduisTop":F
    :cond_25a
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->pressed:Z

    if-eqz v12, :cond_270

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    if-eqz v12, :cond_270

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    const/high16 v13, 0x3f800000    # 1.0f

    cmpg-float v12, v12, v13

    if-ltz v12, :cond_285

    :cond_270
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->pressed:Z

    if-eqz v12, :cond_27c

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    if-nez v12, :cond_2cd

    :cond_27c
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2cd

    .line 421
    :cond_285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 422
    .local v6, "newTime":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastUpdateTime:J

    sub-long v4, v6, v12

    .line 423
    .local v4, "dt":J
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-ltz v12, :cond_29b

    const-wide/16 v12, 0x11

    cmp-long v12, v4, v12

    if-lez v12, :cond_29d

    .line 424
    :cond_29b
    const-wide/16 v4, 0x11

    .line 426
    :cond_29d
    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastUpdateTime:J

    .line 427
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->invalidate()V

    .line 428
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->pressed:Z

    if-eqz v12, :cond_327

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    if-eqz v12, :cond_327

    .line 429
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    long-to-float v13, v4

    const/high16 v14, 0x42f00000    # 120.0f

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    .line 430
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2cd

    .line 431
    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    .line 440
    .end local v4    # "dt":J
    .end local v6    # "newTime":J
    :cond_2cd
    :goto_2cd
    return-void

    .line 393
    .restart local v2    # "diff":F
    .restart local v8    # "progressY":I
    :cond_2ce
    const/high16 v12, 0x41e80000    # 29.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v2, v12

    .line 394
    const/high16 v12, 0x42300000    # 44.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v9, v12

    .line 395
    .restart local v9    # "raduisBottom":F
    const/high16 v12, 0x40800000    # 4.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x41e80000    # 29.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    div-float v14, v2, v14

    sub-float/2addr v13, v14

    const/high16 v14, 0x42200000    # 40.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    add-float v10, v12, v13

    .restart local v10    # "raduisTop":F
    goto/16 :goto_176

    .line 402
    :cond_2fc
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    const/4 v15, 0x3

    aput v10, v14, v15

    aput v10, v12, v13

    .line 403
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    const/4 v13, 0x4

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    const/4 v15, 0x5

    aput v9, v14, v15

    aput v9, v12, v13

    goto/16 :goto_1ca

    .line 406
    :cond_31a
    const/4 v12, 0x0

    goto/16 :goto_1e0

    :cond_31d
    const/high16 v13, 0x42b00000    # 88.0f

    goto/16 :goto_1e7

    .line 410
    :cond_321
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->oldLetterLayout:Landroid/text/StaticLayout;

    goto/16 :goto_21e

    .line 434
    .end local v2    # "diff":F
    .end local v8    # "progressY":I
    .end local v9    # "raduisBottom":F
    .end local v10    # "raduisTop":F
    .restart local v4    # "dt":J
    .restart local v6    # "newTime":J
    :cond_327
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    long-to-float v13, v4

    const/high16 v14, 0x42f00000    # 120.0f

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    .line 435
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_2cd

    .line 436
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    goto :goto_2cd
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 368
    const/high16 v0, 0x43040000    # 132.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->setMeasuredDimension(II)V

    .line 369
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v9, 0x42580000    # 54.0f

    const/high16 v12, 0x41400000    # 12.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v6, 0x1

    .line 284
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_ea

    .line 328
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    :cond_13
    :goto_13
    return v6

    .line 286
    :pswitch_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 287
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastY:F

    .line 288
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getMeasuredHeight()I

    move-result v7

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    mul-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-float v7, v8

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float v0, v7, v8

    .line 289
    .local v0, "currectY":F
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_47

    const/high16 v7, 0x41c80000    # 25.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v5, v7

    if-gtz v7, :cond_6a

    :cond_47
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v7, :cond_56

    const/high16 v7, 0x42d60000    # 107.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    cmpg-float v7, v5, v7

    if-ltz v7, :cond_6a

    :cond_56
    iget v7, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastY:F

    cmpg-float v7, v7, v0

    if-ltz v7, :cond_6a

    iget v7, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastY:F

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_6c

    .line 290
    :cond_6a
    const/4 v6, 0x0

    goto :goto_13

    .line 292
    :cond_6c
    iget v7, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastY:F

    sub-float/2addr v7, v0

    iput v7, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->startDy:F

    .line 293
    iput-boolean v6, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->pressed:Z

    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastUpdateTime:J

    .line 295
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getCurrentLetter()V

    .line 296
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->invalidate()V

    goto :goto_13

    .line 299
    .end local v0    # "currectY":F
    .end local v5    # "x":F
    :pswitch_80
    iget-boolean v7, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->pressed:Z

    if-eqz v7, :cond_13

    .line 302
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 303
    .local v4, "newY":F
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->startDy:F

    add-float v3, v7, v8

    .line 304
    .local v3, "minY":F
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getMeasuredHeight()I

    move-result v7

    const/high16 v8, 0x42280000    # 42.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->startDy:F

    add-float v2, v7, v8

    .line 305
    .local v2, "maxY":F
    cmpg-float v7, v4, v3

    if-gez v7, :cond_cd

    .line 306
    move v4, v3

    .line 310
    :cond_a6
    :goto_a6
    iget v7, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastY:F

    sub-float v1, v4, v7

    .line 311
    .local v1, "dy":F
    iput v4, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastY:F

    .line 312
    iget v7, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getMeasuredHeight()I

    move-result v8

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    div-float v8, v1, v8

    add-float/2addr v7, v8

    iput v7, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    .line 313
    iget v7, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    cmpg-float v7, v7, v10

    if-gez v7, :cond_d3

    .line 314
    iput v10, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    .line 318
    :cond_c5
    :goto_c5
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getCurrentLetter()V

    .line 319
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->invalidate()V

    goto/16 :goto_13

    .line 307
    .end local v1    # "dy":F
    :cond_cd
    cmpl-float v7, v4, v2

    if-lez v7, :cond_a6

    .line 308
    move v4, v2

    goto :goto_a6

    .line 315
    .restart local v1    # "dy":F
    :cond_d3
    iget v7, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    cmpl-float v7, v7, v11

    if-lez v7, :cond_c5

    .line 316
    iput v11, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    goto :goto_c5

    .line 323
    .end local v1    # "dy":F
    .end local v2    # "maxY":F
    .end local v3    # "minY":F
    .end local v4    # "newY":F
    :pswitch_dc
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->pressed:Z

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastUpdateTime:J

    .line 325
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->invalidate()V

    goto/16 :goto_13

    .line 284
    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_14
        :pswitch_dc
        :pswitch_80
        :pswitch_dc
    .end packed-switch
.end method
