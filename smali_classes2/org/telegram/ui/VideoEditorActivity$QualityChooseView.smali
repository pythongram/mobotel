.class Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;
.super Landroid/view/View;
.source "VideoEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/VideoEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QualityChooseView"
.end annotation


# instance fields
.field private circleSize:I

.field private gapSize:I

.field private lineSize:I

.field private moving:Z

.field private paint:Landroid/graphics/Paint;

.field private sideSide:I

.field private startMoving:Z

.field private startMovingQuality:I

.field private startX:F

.field private textPaint:Landroid/text/TextPaint;

.field final synthetic this$0:Lorg/telegram/ui/VideoEditorActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/VideoEditorActivity;Landroid/content/Context;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 242
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    .line 243
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 245
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->paint:Landroid/graphics/Paint;

    .line 246
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->textPaint:Landroid/text/TextPaint;

    .line 247
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->textPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 248
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->textPaint:Landroid/text/TextPaint;

    const v1, -0x323233

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 249
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->textPaint:Landroid/text/TextPaint;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 251
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    .line 323
    invoke-virtual {p0}, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v8, v0, v1

    .line 324
    .local v8, "cy":I
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_11
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I
    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$1000(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v0

    if-ge v6, v0, :cond_df

    .line 325
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->sideSide:I

    iget v1, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->lineSize:I

    iget v2, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->gapSize:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->circleSize:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v6

    add-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->circleSize:I

    div-int/lit8 v1, v1, 0x2

    add-int v7, v0, v1

    .line 326
    .local v7, "cx":I
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I
    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$1100(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v0

    if-gt v6, v0, :cond_bb

    .line 327
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->paint:Landroid/graphics/Paint;

    const v1, -0xac5111

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 332
    :goto_3d
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I
    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$1000(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v6, v0, :cond_c5

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$1400(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "p"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 343
    .local v9, "text":Ljava/lang/String;
    :goto_60
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v10

    .line 344
    .local v10, "width":F
    int-to-float v1, v7

    int-to-float v2, v8

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I
    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$1100(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v0

    if-ne v6, v0, :cond_d9

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    :goto_77
    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 345
    int-to-float v0, v7

    div-float v1, v10, v12

    sub-float/2addr v0, v1

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v1, v8, v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v9, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 346
    if-eqz v6, :cond_b7

    .line 347
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->circleSize:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v7, v0

    iget v1, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->gapSize:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->lineSize:I

    sub-int v11, v0, v1

    .line 348
    .local v11, "x":I
    int-to-float v1, v11

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v0, v8, v0

    int-to-float v2, v0

    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->lineSize:I

    add-int/2addr v0, v11

    int-to-float v3, v0

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v8

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 324
    .end local v11    # "x":I
    :cond_b7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_11

    .line 329
    .end local v9    # "text":Ljava/lang/String;
    .end local v10    # "width":F
    :cond_bb
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->paint:Landroid/graphics/Paint;

    const v1, -0xddddde

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_3d

    .line 334
    :cond_c5
    if-nez v6, :cond_ca

    .line 335
    const-string v9, "240p"

    .restart local v9    # "text":Ljava/lang/String;
    goto :goto_60

    .line 336
    .end local v9    # "text":Ljava/lang/String;
    :cond_ca
    const/4 v0, 0x1

    if-ne v6, v0, :cond_d0

    .line 337
    const-string v9, "360p"

    .restart local v9    # "text":Ljava/lang/String;
    goto :goto_60

    .line 338
    .end local v9    # "text":Ljava/lang/String;
    :cond_d0
    const/4 v0, 0x2

    if-ne v6, v0, :cond_d6

    .line 339
    const-string v9, "480p"

    .restart local v9    # "text":Ljava/lang/String;
    goto :goto_60

    .line 341
    .end local v9    # "text":Ljava/lang/String;
    :cond_d6
    const-string v9, "720p"

    .restart local v9    # "text":Ljava/lang/String;
    goto :goto_60

    .line 344
    .restart local v10    # "width":F
    :cond_d9
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->circleSize:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    goto :goto_77

    .line 351
    .end local v7    # "cx":I
    .end local v9    # "text":Ljava/lang/String;
    .end local v10    # "width":F
    :cond_df
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 313
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 314
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 315
    .local v0, "width":I
    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->circleSize:I

    .line 316
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->gapSize:I

    .line 317
    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->sideSide:I

    .line 318
    invoke-virtual {p0}, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->circleSize:I

    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I
    invoke-static {v3}, Lorg/telegram/ui/VideoEditorActivity;->access$1000(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v3

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->gapSize:I

    mul-int/lit8 v2, v2, 0x8

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->sideSide:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$1000(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->lineSize:I

    .line 319
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v9, 0x41700000    # 15.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 255
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 256
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_60

    .line 257
    invoke-virtual {p0}, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 258
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_16
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I
    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$1000(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v6

    if-ge v0, v6, :cond_5c

    .line 259
    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->sideSide:I

    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->lineSize:I

    iget v8, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->gapSize:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iget v8, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->circleSize:I

    add-int/2addr v7, v8

    mul-int/2addr v7, v0

    add-int/2addr v6, v7

    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->circleSize:I

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 260
    .local v1, "cx":I
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v6, v1, v6

    int-to-float v6, v6

    cmpl-float v6, v3, v6

    if-lez v6, :cond_5d

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    cmpg-float v6, v3, v6

    if-gez v6, :cond_5d

    .line 261
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I
    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$1100(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v6

    if-ne v0, v6, :cond_50

    move v4, v5

    :cond_50
    iput-boolean v4, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->startMoving:Z

    .line 262
    iput v3, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->startX:F

    .line 263
    iget-object v4, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I
    invoke-static {v4}, Lorg/telegram/ui/VideoEditorActivity;->access$1100(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->startMovingQuality:I

    .line 308
    .end local v0    # "a":I
    .end local v1    # "cx":I
    :cond_5c
    :goto_5c
    return v5

    .line 258
    .restart local v0    # "a":I
    .restart local v1    # "cx":I
    :cond_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 267
    .end local v0    # "a":I
    .end local v1    # "cx":I
    :cond_60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_d6

    .line 268
    iget-boolean v6, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->startMoving:Z

    if-eqz v6, :cond_81

    .line 269
    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->startX:F

    sub-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static {v7, v5}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_5c

    .line 270
    iput-boolean v5, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->moving:Z

    .line 271
    iput-boolean v4, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->startMoving:Z

    goto :goto_5c

    .line 273
    :cond_81
    iget-boolean v6, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->moving:Z

    if-eqz v6, :cond_5c

    .line 274
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_86
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I
    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$1000(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v6

    if-ge v0, v6, :cond_5c

    .line 275
    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->sideSide:I

    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->lineSize:I

    iget v8, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->gapSize:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iget v8, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->circleSize:I

    add-int/2addr v7, v8

    mul-int/2addr v7, v0

    add-int/2addr v6, v7

    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->circleSize:I

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 276
    .restart local v1    # "cx":I
    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->lineSize:I

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->circleSize:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->gapSize:I

    add-int v2, v6, v7

    .line 277
    .local v2, "diff":I
    sub-int v6, v1, v2

    int-to-float v6, v6

    cmpl-float v6, v3, v6

    if-lez v6, :cond_d3

    add-int v6, v1, v2

    int-to-float v6, v6

    cmpg-float v6, v3, v6

    if-gez v6, :cond_d3

    .line 278
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I
    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$1100(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v6

    if-eq v6, v0, :cond_5c

    .line 279
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # setter for: Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I
    invoke-static {v6, v0}, Lorg/telegram/ui/VideoEditorActivity;->access$1102(Lorg/telegram/ui/VideoEditorActivity;I)I

    .line 280
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # invokes: Lorg/telegram/ui/VideoEditorActivity;->didChangedCompressionLevel(Z)V
    invoke-static {v6, v4}, Lorg/telegram/ui/VideoEditorActivity;->access$1200(Lorg/telegram/ui/VideoEditorActivity;Z)V

    .line 281
    invoke-virtual {p0}, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->invalidate()V

    goto :goto_5c

    .line 274
    :cond_d3
    add-int/lit8 v0, v0, 0x1

    goto :goto_86

    .line 287
    .end local v0    # "a":I
    .end local v1    # "cx":I
    .end local v2    # "diff":I
    :cond_d6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v6, v5, :cond_e3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5c

    .line 288
    :cond_e3
    iget-boolean v6, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->moving:Z

    if-nez v6, :cond_137

    .line 289
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_e8
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I
    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$1000(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v6

    if-ge v0, v6, :cond_12e

    .line 290
    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->sideSide:I

    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->lineSize:I

    iget v8, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->gapSize:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iget v8, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->circleSize:I

    add-int/2addr v7, v8

    mul-int/2addr v7, v0

    add-int/2addr v6, v7

    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->circleSize:I

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 291
    .restart local v1    # "cx":I
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v6, v1, v6

    int-to-float v6, v6

    cmpl-float v6, v3, v6

    if-lez v6, :cond_134

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    cmpg-float v6, v3, v6

    if-gez v6, :cond_134

    .line 292
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I
    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$1100(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v6

    if-eq v6, v0, :cond_12e

    .line 293
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # setter for: Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I
    invoke-static {v6, v0}, Lorg/telegram/ui/VideoEditorActivity;->access$1102(Lorg/telegram/ui/VideoEditorActivity;I)I

    .line 294
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # invokes: Lorg/telegram/ui/VideoEditorActivity;->didChangedCompressionLevel(Z)V
    invoke-static {v6, v5}, Lorg/telegram/ui/VideoEditorActivity;->access$1200(Lorg/telegram/ui/VideoEditorActivity;Z)V

    .line 295
    invoke-virtual {p0}, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->invalidate()V

    .line 305
    .end local v0    # "a":I
    .end local v1    # "cx":I
    :cond_12e
    :goto_12e
    iput-boolean v4, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->startMoving:Z

    .line 306
    iput-boolean v4, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->moving:Z

    goto/16 :goto_5c

    .line 289
    .restart local v0    # "a":I
    .restart local v1    # "cx":I
    :cond_134
    add-int/lit8 v0, v0, 0x1

    goto :goto_e8

    .line 301
    .end local v0    # "a":I
    .end local v1    # "cx":I
    :cond_137
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I
    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$1100(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->startMovingQuality:I

    if-eq v6, v7, :cond_12e

    .line 302
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # invokes: Lorg/telegram/ui/VideoEditorActivity;->requestVideoPreview(I)V
    invoke-static {v6, v5}, Lorg/telegram/ui/VideoEditorActivity;->access$1300(Lorg/telegram/ui/VideoEditorActivity;I)V

    goto :goto_12e
.end method
