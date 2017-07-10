.class public Lorg/telegram/ui/Cells/ChatActionCell;
.super Lorg/telegram/ui/Cells/BaseCell;
.source "ChatActionCell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;
    }
.end annotation


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private customDate:I

.field private customText:Ljava/lang/CharSequence;

.field private delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

.field private hasReplyMessage:Z

.field private imagePressed:Z

.field private imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private pressedLink:Landroid/text/style/URLSpan;

.field private previousWidth:I

.field private textHeight:I

.field private textLayout:Landroid/text/StaticLayout;

.field private textWidth:I

.field private textX:I

.field private textXLeft:I

.field private textY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/BaseCell;-><init>(Landroid/content/Context;)V

    .line 49
    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    .line 50
    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    .line 51
    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textX:I

    .line 52
    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    .line 53
    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textXLeft:I

    .line 54
    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    .line 55
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    .line 67
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 69
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 70
    return-void
.end method

.method private createLayout(Ljava/lang/CharSequence;I)V
    .registers 15
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "width"    # I

    .prologue
    const/4 v7, 0x0

    .line 262
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v3, p2, v0

    .line 263
    .local v3, "maxWidth":I
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_actionTextPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    .line 264
    iput v7, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    .line 265
    iput v7, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    .line 267
    :try_start_1c
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_21} :catch_5d

    move-result v11

    .line 268
    .local v11, "linesCount":I
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_23
    if-ge v8, v11, :cond_61

    .line 271
    :try_start_25
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v10

    .line 272
    .local v10, "lineWidth":F
    int-to-float v0, v3

    cmpl-float v0, v10, v0

    if-lez v0, :cond_31

    .line 273
    int-to-float v10, v3

    .line 275
    :cond_31
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    int-to-double v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v8}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v2

    int-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_46} :catch_58

    .line 280
    :try_start_46
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    int-to-double v0, v0

    float-to-double v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    .line 268
    add-int/lit8 v8, v8, 0x1

    goto :goto_23

    .line 276
    .end local v10    # "lineWidth":F
    :catch_58
    move-exception v9

    .line 277
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_5c} :catch_5d

    .line 288
    .end local v8    # "a":I
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "linesCount":I
    :goto_5c
    return-void

    .line 282
    :catch_5d
    move-exception v9

    .line 283
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 285
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_61
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    sub-int v0, p2, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textX:I

    .line 286
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    sub-int v0, p2, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textXLeft:I

    goto :goto_5c
.end method

.method private findMaxWidthAroundLine(I)I
    .registers 9
    .param p1, "line"    # I

    .prologue
    const/high16 v6, 0x41400000    # 12.0f

    .line 318
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, p1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 319
    .local v3, "width":I
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    .line 320
    .local v1, "count":I
    add-int/lit8 v0, p1, 0x1

    .local v0, "a":I
    :goto_16
    if-ge v0, v1, :cond_37

    .line 321
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v0}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 322
    .local v2, "w":I
    sub-int v4, v2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    if-ge v4, v5, :cond_37

    .line 323
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 320
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 328
    .end local v2    # "w":I
    :cond_37
    add-int/lit8 v0, p1, -0x1

    :goto_39
    if-ltz v0, :cond_5a

    .line 329
    iget-object v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v0}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 330
    .restart local v2    # "w":I
    sub-int v4, v2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    if-ge v4, v5, :cond_5a

    .line 331
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 328
    add-int/lit8 v0, v0, -0x1

    goto :goto_39

    .line 336
    .end local v2    # "w":I
    :cond_5a
    return v3
.end method


# virtual methods
.method public getCustomDate()I
    .registers 2

    .prologue
    .line 314
    iget v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customDate:I

    return v0
.end method

.method public getMessageObject()Lorg/telegram/messenger/MessageObject;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getPhotoImage()Lorg/telegram/messenger/ImageReceiver;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 27
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 341
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_19

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_19

    .line 342
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 345
    :cond_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_2d7

    .line 346
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v10

    .line 347
    .local v10, "count":I
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    .line 348
    .local v9, "corner":I
    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v24

    .line 349
    .local v24, "y":I
    const/16 v21, 0x0

    .line 352
    .local v21, "previousLineBottom":I
    const/4 v7, 0x0

    .local v7, "a":I
    :goto_36
    if-ge v7, v10, :cond_2b9

    .line 353
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/ChatActionCell;->findMaxWidthAroundLine(I)I

    move-result v22

    .line 354
    .local v22, "width":I
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v1, v22

    div-int/lit8 v1, v1, 0x2

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v23, v1, v2

    .line 355
    .local v23, "x":I
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v22, v22, v1

    .line 356
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v7}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v16

    .line 357
    .local v16, "lineBottom":I
    sub-int v15, v16, v21

    .line 358
    .local v15, "height":I
    const/4 v8, 0x0

    .line 359
    .local v8, "additionalHeight":I
    move/from16 v21, v16

    .line 361
    add-int/lit8 v1, v10, -0x1

    if-ne v7, v1, :cond_1fd

    const/4 v11, 0x1

    .line 362
    .local v11, "drawBottomCorners":Z
    :goto_68
    if-nez v7, :cond_200

    const/4 v12, 0x1

    .line 364
    .local v12, "drawTopCorners":Z
    :goto_6b
    if-eqz v12, :cond_7c

    .line 365
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v24, v24, v1

    .line 366
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v15, v1

    .line 368
    :cond_7c
    if-eqz v11, :cond_85

    .line 369
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v15, v1

    .line 372
    :cond_85
    move/from16 v0, v23

    int-to-float v2, v0

    move/from16 v0, v24

    int-to-float v3, v0

    add-int v1, v23, v22

    int-to-float v4, v1

    add-int v1, v24, v15

    int-to-float v5, v1

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 374
    if-nez v11, :cond_f9

    add-int/lit8 v1, v7, 0x1

    if-ge v1, v10, :cond_f9

    .line 375
    add-int/lit8 v1, v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->findMaxWidthAroundLine(I)I

    move-result v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v17, v1, v2

    .line 376
    .local v17, "nextLineWidth":I
    mul-int/lit8 v1, v9, 0x2

    add-int v1, v1, v17

    move/from16 v0, v22

    if-ge v1, v0, :cond_203

    .line 377
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v1, v17

    div-int/lit8 v18, v1, 0x2

    .line 378
    .local v18, "nextX":I
    const/4 v11, 0x1

    .line 379
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    .line 381
    move/from16 v0, v23

    int-to-float v2, v0

    add-int v1, v24, v15

    int-to-float v3, v1

    move/from16 v0, v18

    int-to-float v4, v0

    add-int v1, v24, v15

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v1, v5

    int-to-float v5, v1

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 382
    add-int v1, v18, v17

    int-to-float v2, v1

    add-int v1, v24, v15

    int-to-float v3, v1

    add-int v1, v23, v22

    int-to-float v4, v1

    add-int v1, v24, v15

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v1, v5

    int-to-float v5, v1

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 399
    .end local v17    # "nextLineWidth":I
    .end local v18    # "nextX":I
    :cond_f9
    :goto_f9
    if-nez v12, :cond_15f

    if-lez v7, :cond_15f

    .line 400
    add-int/lit8 v1, v7, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->findMaxWidthAroundLine(I)I

    move-result v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v19, v1, v2

    .line 401
    .local v19, "prevLineWidth":I
    mul-int/lit8 v1, v9, 0x2

    add-int v1, v1, v19

    move/from16 v0, v22

    if-ge v1, v0, :cond_259

    .line 402
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v1, v19

    div-int/lit8 v20, v1, 0x2

    .line 403
    .local v20, "prevX":I
    const/4 v12, 0x1

    .line 404
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v24, v24, v1

    .line 405
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v15, v1

    .line 407
    move/from16 v0, v23

    int-to-float v2, v0

    move/from16 v0, v24

    int-to-float v3, v0

    move/from16 v0, v20

    int-to-float v4, v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v1, v1, v24

    int-to-float v5, v1

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 408
    add-int v1, v20, v19

    int-to-float v2, v1

    move/from16 v0, v24

    int-to-float v3, v0

    add-int v1, v23, v22

    int-to-float v4, v1

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v1, v1, v24

    int-to-float v5, v1

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 428
    .end local v19    # "prevLineWidth":I
    .end local v20    # "prevX":I
    :cond_15f
    :goto_15f
    sub-int v1, v23, v9

    int-to-float v2, v1

    add-int v1, v24, v9

    int-to-float v3, v1

    move/from16 v0, v23

    int-to-float v4, v0

    add-int v1, v24, v15

    add-int/2addr v1, v8

    sub-int/2addr v1, v9

    int-to-float v5, v1

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 429
    add-int v1, v23, v22

    int-to-float v2, v1

    add-int v1, v24, v9

    int-to-float v3, v1

    add-int v1, v23, v22

    add-int/2addr v1, v9

    int-to-float v4, v1

    add-int v1, v24, v15

    add-int/2addr v1, v8

    sub-int/2addr v1, v9

    int-to-float v5, v1

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 431
    if-eqz v12, :cond_1c0

    .line 432
    sub-int v13, v23, v9

    .line 433
    .local v13, "dx":I
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerOuter:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    add-int v2, v13, v9

    add-int v3, v24, v9

    move/from16 v0, v24

    invoke-virtual {v1, v13, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 434
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerOuter:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 436
    add-int v13, v23, v22

    .line 437
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerOuter:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    add-int v2, v13, v9

    add-int v3, v24, v9

    move/from16 v0, v24

    invoke-virtual {v1, v13, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 438
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerOuter:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 441
    .end local v13    # "dx":I
    :cond_1c0
    if-eqz v11, :cond_1f7

    .line 442
    add-int v1, v24, v15

    add-int/2addr v1, v8

    sub-int v14, v1, v9

    .line 444
    .local v14, "dy":I
    add-int v13, v23, v22

    .line 445
    .restart local v13    # "dx":I
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerOuter:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    add-int v2, v13, v9

    add-int v3, v14, v9

    invoke-virtual {v1, v13, v14, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 446
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerOuter:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 448
    sub-int v13, v23, v9

    .line 449
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerOuter:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    add-int v2, v13, v9

    add-int v3, v14, v9

    invoke-virtual {v1, v13, v14, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 450
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerOuter:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 453
    .end local v13    # "dx":I
    .end local v14    # "dy":I
    :cond_1f7
    add-int v24, v24, v15

    .line 352
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_36

    .line 361
    .end local v11    # "drawBottomCorners":Z
    .end local v12    # "drawTopCorners":Z
    :cond_1fd
    const/4 v11, 0x0

    goto/16 :goto_68

    .line 362
    .restart local v11    # "drawBottomCorners":Z
    :cond_200
    const/4 v12, 0x0

    goto/16 :goto_6b

    .line 383
    .restart local v12    # "drawTopCorners":Z
    .restart local v17    # "nextLineWidth":I
    :cond_203
    mul-int/lit8 v1, v9, 0x2

    add-int v1, v1, v22

    move/from16 v0, v17

    if-ge v1, v0, :cond_251

    .line 384
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    .line 386
    add-int v1, v24, v15

    const/high16 v2, 0x41100000    # 9.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v14, v1, v2

    .line 388
    .restart local v14    # "dy":I
    mul-int/lit8 v1, v9, 0x2

    sub-int v13, v23, v1

    .line 389
    .restart local v13    # "dx":I
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerInner:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    add-int v2, v13, v9

    add-int v3, v14, v9

    invoke-virtual {v1, v13, v14, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 390
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerInner:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 392
    add-int v1, v23, v22

    add-int v13, v1, v9

    .line 393
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerInner:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    add-int v2, v13, v9

    add-int v3, v14, v9

    invoke-virtual {v1, v13, v14, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 394
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerInner:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_f9

    .line 396
    .end local v13    # "dx":I
    .end local v14    # "dy":I
    :cond_251
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    goto/16 :goto_f9

    .line 409
    .end local v17    # "nextLineWidth":I
    .restart local v19    # "prevLineWidth":I
    :cond_259
    mul-int/lit8 v1, v9, 0x2

    add-int v1, v1, v22

    move/from16 v0, v19

    if-ge v1, v0, :cond_2a8

    .line 410
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v24, v24, v1

    .line 411
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v15, v1

    .line 413
    add-int v14, v24, v9

    .line 415
    .restart local v14    # "dy":I
    mul-int/lit8 v1, v9, 0x2

    sub-int v13, v23, v1

    .line 416
    .restart local v13    # "dx":I
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerInner:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    add-int v2, v13, v9

    add-int v3, v14, v9

    invoke-virtual {v1, v13, v14, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 417
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerInner:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 419
    add-int v1, v23, v22

    add-int v13, v1, v9

    .line 420
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerInner:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    add-int v2, v13, v9

    add-int v3, v14, v9

    invoke-virtual {v1, v13, v14, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 421
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_cornerInner:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_15f

    .line 423
    .end local v13    # "dx":I
    .end local v14    # "dy":I
    :cond_2a8
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v24, v24, v1

    .line 424
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v15, v1

    goto/16 :goto_15f

    .line 456
    .end local v8    # "additionalHeight":I
    .end local v11    # "drawBottomCorners":Z
    .end local v12    # "drawTopCorners":Z
    .end local v15    # "height":I
    .end local v16    # "lineBottom":I
    .end local v19    # "prevLineWidth":I
    .end local v22    # "width":I
    .end local v23    # "x":I
    :cond_2b9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 457
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textXLeft:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 458
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 459
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 461
    .end local v7    # "a":I
    .end local v9    # "corner":I
    .end local v10    # "count":I
    .end local v21    # "previousLineBottom":I
    .end local v24    # "y":I
    :cond_2d7
    return-void
.end method

.method protected onLongPress()V
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v0, :cond_9

    .line 149
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    invoke-interface {v0, p0}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->didLongPressed(Lorg/telegram/ui/Cells/ChatActionCell;)V

    .line 151
    :cond_9
    return-void
.end method

.method protected onMeasure(II)V
    .registers 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/16 v7, 0xb

    const/high16 v6, 0x42800000    # 64.0f

    .line 292
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v2, :cond_1d

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    if-nez v2, :cond_1d

    .line 293
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->setMeasuredDimension(II)V

    .line 311
    :goto_1c
    return-void

    .line 296
    :cond_1d
    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 297
    .local v1, "width":I
    iget v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    if-eq v1, v2, :cond_64

    .line 299
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_7e

    .line 300
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 304
    .local v0, "text":Ljava/lang/CharSequence;
    :goto_37
    iput v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    .line 305
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->createLayout(Ljava/lang/CharSequence;I)V

    .line 306
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_64

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v2, v7, :cond_64

    .line 307
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v1, v3

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    const/high16 v5, 0x41700000    # 15.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 310
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_64
    iget v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_81

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v2, v7, :cond_81

    const/16 v2, 0x46

    :goto_72
    add-int/lit8 v2, v2, 0xe

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->setMeasuredDimension(II)V

    goto :goto_1c

    .line 302
    :cond_7e
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    .restart local v0    # "text":Ljava/lang/CharSequence;
    goto :goto_37

    .line 310
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_81
    const/4 v2, 0x0

    goto :goto_72
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 155
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v9, :cond_9

    .line 156
    invoke-super {p0, p1}, Lorg/telegram/ui/Cells/BaseCell;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 258
    :cond_8
    :goto_8
    return v5

    .line 158
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 159
    .local v7, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 161
    .local v8, "y":F
    const/4 v5, 0x0

    .line 162
    .local v5, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_c1

    .line 163
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v9, :cond_35

    .line 164
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v9, v9, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v10, 0xb

    if-ne v9, v10, :cond_30

    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9, v7, v8}, Lorg/telegram/messenger/ImageReceiver;->isInsideImage(FF)Z

    move-result v9

    if-eqz v9, :cond_30

    .line 165
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    .line 166
    const/4 v5, 0x1

    .line 168
    :cond_30
    if-eqz v5, :cond_35

    .line 169
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->startCheckLongPress()V

    .line 192
    :cond_35
    :goto_35
    if-nez v5, :cond_b9

    .line 193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-eqz v9, :cond_48

    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    if-eqz v9, :cond_b9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b9

    .line 194
    :cond_48
    iget v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textX:I

    int-to-float v9, v9

    cmpl-float v9, v7, v9

    if-ltz v9, :cond_143

    iget v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-ltz v9, :cond_143

    iget v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textX:I

    iget v10, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textWidth:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    cmpg-float v9, v7, v9

    if-gtz v9, :cond_143

    iget v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    iget v10, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textHeight:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    cmpg-float v9, v8, v9

    if-gtz v9, :cond_143

    .line 195
    iget v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textY:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    .line 196
    iget v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textXLeft:I

    int-to-float v9, v9

    sub-float/2addr v7, v9

    .line 198
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    float-to-int v10, v8

    invoke-virtual {v9, v10}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v2

    .line 199
    .local v2, "line":I
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9, v2, v7}, Landroid/text/StaticLayout;->getOffsetForHorizontal(IF)I

    move-result v4

    .line 200
    .local v4, "off":I
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v1

    .line 201
    .local v1, "left":F
    cmpg-float v9, v1, v7

    if-gtz v9, :cond_13e

    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v9

    add-float/2addr v9, v1

    cmpl-float v9, v9, v7

    if-ltz v9, :cond_13e

    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v9, v9, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    instance-of v9, v9, Landroid/text/Spannable;

    if-eqz v9, :cond_13e

    .line 202
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v9, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    .line 203
    .local v0, "buffer":Landroid/text/Spannable;
    const-class v9, Landroid/text/style/URLSpan;

    invoke-interface {v0, v4, v4, v9}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/URLSpan;

    .line 205
    .local v3, "link":[Landroid/text/style/URLSpan;
    array-length v9, v3

    if-eqz v9, :cond_139

    .line 206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_108

    .line 207
    const/4 v9, 0x0

    aget-object v9, v3, v9

    iput-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    .line 208
    const/4 v5, 0x1

    .line 254
    .end local v0    # "buffer":Landroid/text/Spannable;
    .end local v1    # "left":F
    .end local v2    # "line":I
    .end local v3    # "link":[Landroid/text/style/URLSpan;
    .end local v4    # "off":I
    :cond_b9
    :goto_b9
    if-nez v5, :cond_8

    .line 255
    invoke-super {p0, p1}, Lorg/telegram/ui/Cells/BaseCell;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto/16 :goto_8

    .line 173
    :cond_c1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_cb

    .line 174
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->cancelCheckLongPress()V

    .line 176
    :cond_cb
    iget-boolean v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    if-eqz v9, :cond_35

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_e8

    .line 178
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    .line 179
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v9, :cond_35

    .line 180
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    invoke-interface {v9, p0}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->didClickedImage(Lorg/telegram/ui/Cells/ChatActionCell;)V

    .line 181
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lorg/telegram/ui/Cells/ChatActionCell;->playSoundEffect(I)V

    goto/16 :goto_35

    .line 183
    :cond_e8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_f4

    .line 184
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    goto/16 :goto_35

    .line 185
    :cond_f4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_35

    .line 186
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9, v7, v8}, Lorg/telegram/messenger/ImageReceiver;->isInsideImage(FF)Z

    move-result v9

    if-nez v9, :cond_35

    .line 187
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imagePressed:Z

    goto/16 :goto_35

    .line 210
    .restart local v0    # "buffer":Landroid/text/Spannable;
    .restart local v1    # "left":F
    .restart local v2    # "line":I
    .restart local v3    # "link":[Landroid/text/style/URLSpan;
    .restart local v4    # "off":I
    :cond_108
    const/4 v9, 0x0

    aget-object v9, v3, v9

    iget-object v10, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    if-ne v9, v10, :cond_b9

    .line 211
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    if-eqz v9, :cond_12d

    .line 212
    const/4 v9, 0x0

    aget-object v9, v3, v9

    invoke-virtual {v9}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v6

    .line 213
    .local v6, "url":Ljava/lang/String;
    const-string v9, "game"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12f

    .line 214
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    iget-object v10, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v10, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    invoke-interface {v9, p0, v10}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->didPressedReplyMessage(Lorg/telegram/ui/Cells/ChatActionCell;I)V

    .line 239
    .end local v6    # "url":Ljava/lang/String;
    :cond_12d
    :goto_12d
    const/4 v5, 0x1

    goto :goto_b9

    .line 236
    .restart local v6    # "url":Ljava/lang/String;
    :cond_12f
    iget-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;->needOpenUserProfile(I)V

    goto :goto_12d

    .line 243
    .end local v6    # "url":Ljava/lang/String;
    :cond_139
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    goto/16 :goto_b9

    .line 246
    .end local v0    # "buffer":Landroid/text/Spannable;
    .end local v3    # "link":[Landroid/text/style/URLSpan;
    :cond_13e
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    goto/16 :goto_b9

    .line 249
    .end local v1    # "left":F
    .end local v2    # "line":I
    .end local v4    # "off":I
    :cond_143
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/ui/Cells/ChatActionCell;->pressedLink:Landroid/text/style/URLSpan;

    goto/16 :goto_b9
.end method

.method public setCustomDate(I)V
    .registers 6
    .param p1, "date"    # I

    .prologue
    .line 77
    iget v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customDate:I

    if-ne v1, p1, :cond_5

    .line 97
    :cond_4
    :goto_4
    return-void

    .line 80
    :cond_5
    int-to-long v2, p1

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatDateChat(J)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "newText":Ljava/lang/CharSequence;
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 84
    :cond_16
    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    .line 85
    iput p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customDate:I

    .line 86
    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    .line 87
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMeasuredWidth()I

    move-result v1

    if-eqz v1, :cond_2f

    .line 88
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->customText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMeasuredWidth()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->createLayout(Ljava/lang/CharSequence;I)V

    .line 89
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->invalidate()V

    .line 91
    :cond_2f
    new-instance v1, Lorg/telegram/ui/Cells/ChatActionCell$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Cells/ChatActionCell$1;-><init>(Lorg/telegram/ui/Cells/ChatActionCell;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method public setDelegate(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;)V
    .registers 2
    .param p1, "delegate"    # Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    .prologue
    .line 73
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->delegate:Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;

    .line 74
    return-void
.end method

.method public setMessageObject(Lorg/telegram/messenger/MessageObject;)V
    .registers 11
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 100
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v0, p1, :cond_10

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->hasReplyMessage:Z

    if-nez v0, :cond_f

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_10

    .line 136
    :cond_f
    :goto_f
    return-void

    .line 103
    :cond_10
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 104
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_6f

    move v0, v8

    :goto_17
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->hasReplyMessage:Z

    .line 105
    iput v5, p0, Lorg/telegram/ui/Cells/ChatActionCell;->previousWidth:I

    .line 106
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_b7

    .line 107
    const/4 v6, 0x0

    .line 108
    .local v6, "id":I
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v0, :cond_38

    .line 109
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v0, :cond_71

    .line 110
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    .line 120
    :cond_38
    :goto_38
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v6, v4, v4, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 121
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserUpdatedPhoto;

    if-eqz v0, :cond_91

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->newUserPhoto:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string v2, "50_50"

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V

    .line 131
    :goto_5a
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    if-nez v1, :cond_b5

    :goto_68
    invoke-virtual {v0, v8, v5}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 135
    .end local v6    # "id":I
    :goto_6b
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatActionCell;->requestLayout()V

    goto :goto_f

    :cond_6f
    move v0, v5

    .line 104
    goto :goto_17

    .line 111
    .restart local v6    # "id":I
    :cond_71
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v0, :cond_80

    .line 112
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    goto :goto_38

    .line 114
    :cond_80
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 115
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v0

    if-ne v6, v0, :cond_38

    .line 116
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    goto :goto_38

    .line 124
    :cond_91
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    const/high16 v1, 0x42800000    # 64.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v7

    .line 125
    .local v7, "photo":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v7, :cond_ad

    .line 126
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, v7, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string v2, "50_50"

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V

    goto :goto_5a

    .line 128
    :cond_ad
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatActionCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5a

    .end local v7    # "photo":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_b5
    move v8, v5

    .line 131
    goto :goto_68

    .line 133
    .end local v6    # "id":I
    :cond_b7
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatActionCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_6b
.end method
