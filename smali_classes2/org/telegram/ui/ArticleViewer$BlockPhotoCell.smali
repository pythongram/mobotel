.class Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;
.super Landroid/view/View;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockPhotoCell"
.end annotation


# instance fields
.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

.field private currentType:I

.field private imageView:Lorg/telegram/messenger/ImageReceiver;

.field private isFirst:Z

.field private isLast:Z

.field private lastCreatedWidth:I

.field private parentBlock:Lorg/telegram/tgnet/TLRPC$PageBlock;

.field private photoPressed:Z

.field private textLayout:Landroid/text/StaticLayout;

.field private textX:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;I)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "type"    # I

    .prologue
    .line 4203
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 4204
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4206
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    .line 4207
    iput p3, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentType:I

    .line 4209
    return-void
.end method

.method static synthetic access$11900(Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;

    .prologue
    .line 4188
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    return-object v0
.end method

.method static synthetic access$12000(Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;)Lorg/telegram/messenger/ImageReceiver;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;

    .prologue
    .line 4188
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 4317
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-nez v0, :cond_5

    .line 4331
    :cond_4
    :goto_4
    return-void

    .line 4320
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 4321
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_3d

    .line 4322
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4323
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textX:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageY()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()I

    move-result v2

    add-int/2addr v1, v2

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4324
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textLayout:Landroid/text/StaticLayout;

    # invokes: Lorg/telegram/ui/ArticleViewer;->drawLayoutLink(Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V
    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ArticleViewer;->access$6800(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V

    .line 4325
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 4326
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 4328
    :cond_3d
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->level:I

    if-lez v0, :cond_4

    .line 4329
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v1, v0

    const/4 v2, 0x0

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->getMeasuredHeight()I

    move-result v4

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->bottom:Z

    if-eqz v0, :cond_6e

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_62
    sub-int v0, v4, v0

    int-to-float v4, v0

    # getter for: Lorg/telegram/ui/ArticleViewer;->quoteLinePaint:Landroid/graphics/Paint;
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$6900()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_6e
    const/4 v0, 0x0

    goto :goto_62
.end method

.method protected onMeasure(II)V
    .registers 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 4241
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 4242
    .local v19, "width":I
    const/4 v10, 0x0

    .line 4243
    .local v10, "height":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_152

    .line 4244
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$3900(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getWidth()I

    move-result v19

    .line 4245
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 4249
    :cond_22
    :goto_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-eqz v2, :cond_1db

    .line 4250
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->photo_id:J

    # invokes: Lorg/telegram/ui/ArticleViewer;->getPhotoWithId(J)Lorg/telegram/tgnet/TLRPC$Photo;
    invoke-static {v2, v6, v7}, Lorg/telegram/ui/ArticleViewer;->access$7000(Lorg/telegram/ui/ArticleViewer;J)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v13

    .line 4251
    .local v13, "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    move/from16 v14, v19

    .line 4254
    .local v14, "photoWidth":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentType:I

    if-nez v2, :cond_15d

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->level:I

    if-lez v2, :cond_15d

    .line 4255
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->level:I

    mul-int/lit8 v2, v2, 0xe

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int v15, v2, v3

    .local v15, "photoX":I
    move-object/from16 v0, p0

    iput v15, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textX:I

    .line 4256
    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v15

    sub-int/2addr v14, v2

    .line 4257
    move/from16 v17, v14

    .line 4263
    .local v17, "textWidth":I
    :goto_69
    if-eqz v13, :cond_e4

    .line 4264
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v11

    .line 4265
    .local v11, "image":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v3, 0x50

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v18

    .line 4266
    .local v18, "thumb":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-object/from16 v0, v18

    if-ne v11, v0, :cond_84

    .line 4267
    const/16 v18, 0x0

    .line 4269
    :cond_84
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentType:I

    if-nez v2, :cond_a2

    .line 4271
    int-to-float v2, v14

    iget v3, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    int-to-float v3, v3

    div-float v16, v2, v3

    .line 4272
    .local v16, "scale":F
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    int-to-float v2, v2

    mul-float v2, v2, v16

    float-to-int v10, v2

    .line 4273
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->parentBlock:Lorg/telegram/tgnet/TLRPC$PageBlock;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    if-eqz v2, :cond_172

    .line 4274
    invoke-static {v10, v14}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 4285
    .end local v16    # "scale":F
    :cond_a2
    :goto_a2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->isFirst:Z

    if-nez v2, :cond_c2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentType:I

    const/4 v5, 0x1

    if-eq v2, v5, :cond_c2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentType:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_c2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->level:I

    if-lez v2, :cond_1b2

    :cond_c2
    const/4 v2, 0x0

    :goto_c3
    invoke-virtual {v3, v15, v2, v14, v10}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 4287
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentType:I

    if-nez v2, :cond_1ba

    .line 4288
    const/4 v4, 0x0

    .line 4292
    .local v4, "filter":Ljava/lang/String;
    :goto_cd
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    iget-object v3, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v18, :cond_1d5

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :goto_d9
    if-eqz v18, :cond_1d8

    const-string v6, "80_80_b"

    :goto_dd
    iget v7, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v2 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 4295
    .end local v4    # "filter":Ljava/lang/String;
    .end local v11    # "image":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v18    # "thumb":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_e4
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentType:I

    if-nez v2, :cond_121

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->lastCreatedWidth:I

    move/from16 v0, v19

    if-eq v2, v0, :cond_121

    .line 4296
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    move/from16 v0, v17

    # invokes: Lorg/telegram/ui/ArticleViewer;->createLayoutForText(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;
    invoke-static {v2, v3, v5, v0, v6}, Lorg/telegram/ui/ArticleViewer;->access$6700(Lorg/telegram/ui/ArticleViewer;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textLayout:Landroid/text/StaticLayout;

    .line 4297
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_121

    .line 4298
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v10, v2

    .line 4302
    :cond_121
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->isFirst:Z

    if-nez v2, :cond_13c

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentType:I

    if-nez v2, :cond_13c

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->level:I

    if-gtz v2, :cond_13c

    .line 4303
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v10, v2

    .line 4305
    :cond_13c
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_14a

    .line 4306
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v10, v2

    .line 4312
    .end local v13    # "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    .end local v14    # "photoWidth":I
    .end local v15    # "photoX":I
    .end local v17    # "textWidth":I
    :cond_14a
    :goto_14a
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->setMeasuredDimension(II)V

    .line 4313
    return-void

    .line 4246
    :cond_152
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_22

    .line 4247
    move/from16 v10, v19

    goto/16 :goto_22

    .line 4259
    .restart local v13    # "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    .restart local v14    # "photoWidth":I
    :cond_15d
    const/4 v15, 0x0

    .line 4260
    .restart local v15    # "photoX":I
    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textX:I

    .line 4261
    const/high16 v2, 0x42100000    # 36.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v17, v19, v2

    .restart local v17    # "textWidth":I
    goto/16 :goto_69

    .line 4276
    .restart local v11    # "image":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .restart local v16    # "scale":F
    .restart local v18    # "thumb":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_172
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$3900(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer;->access$3900(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const v3, 0x3f666666

    mul-float/2addr v2, v3

    float-to-int v12, v2

    .line 4277
    .local v12, "maxHeight":I
    if-le v10, v12, :cond_a2

    .line 4278
    move v10, v12

    .line 4279
    int-to-float v2, v10

    iget v3, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    int-to-float v3, v3

    div-float v16, v2, v3

    .line 4280
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    int-to-float v2, v2

    mul-float v2, v2, v16

    float-to-int v14, v2

    .line 4281
    sub-int v2, v19, v15

    sub-int/2addr v2, v14

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v15, v2

    goto/16 :goto_a2

    .line 4285
    .end local v12    # "maxHeight":I
    .end local v16    # "scale":F
    :cond_1b2
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto/16 :goto_c3

    .line 4290
    :cond_1ba
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%d_%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "filter":Ljava/lang/String;
    goto/16 :goto_cd

    .line 4292
    :cond_1d5
    const/4 v5, 0x0

    goto/16 :goto_d9

    :cond_1d8
    const/4 v6, 0x0

    goto/16 :goto_dd

    .line 4309
    .end local v4    # "filter":Ljava/lang/String;
    .end local v11    # "image":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v13    # "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    .end local v14    # "photoWidth":I
    .end local v15    # "photoX":I
    .end local v17    # "textWidth":I
    .end local v18    # "thumb":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_1db
    const/4 v10, 0x1

    goto/16 :goto_14a
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4226
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 4227
    .local v6, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 4228
    .local v7, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v6, v7}, Lorg/telegram/messenger/ImageReceiver;->isInsideImage(FF)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 4229
    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->photoPressed:Z

    .line 4236
    :cond_1a
    :goto_1a
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->photoPressed:Z

    if-nez v0, :cond_34

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textLayout:Landroid/text/StaticLayout;

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textX:I

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textY:I

    move-object v1, p1

    move-object v2, p0

    # invokes: Lorg/telegram/ui/ArticleViewer;->checkLayoutForLinks(Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->access$6600(Lorg/telegram/ui/ArticleViewer;Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z

    move-result v0

    if-nez v0, :cond_34

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_54

    :cond_34
    move v0, v9

    :goto_35
    return v0

    .line 4230
    :cond_36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v9, :cond_4a

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->photoPressed:Z

    if-eqz v0, :cond_4a

    .line 4231
    iput-boolean v8, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->photoPressed:Z

    .line 4232
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer;->openPhoto(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z

    goto :goto_1a

    .line 4233
    :cond_4a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a

    .line 4234
    iput-boolean v8, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->photoPressed:Z

    goto :goto_1a

    :cond_54
    move v0, v8

    .line 4236
    goto :goto_35
.end method

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;ZZ)V
    .registers 5
    .param p1, "block"    # Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;
    .param p2, "first"    # Z
    .param p3, "last"    # Z

    .prologue
    .line 4212
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->parentBlock:Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 4213
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    .line 4214
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->lastCreatedWidth:I

    .line 4215
    iput-boolean p2, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->isFirst:Z

    .line 4216
    iput-boolean p3, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->isLast:Z

    .line 4217
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->requestLayout()V

    .line 4218
    return-void
.end method

.method public setParentBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)V
    .registers 2
    .param p1, "block"    # Lorg/telegram/tgnet/TLRPC$PageBlock;

    .prologue
    .line 4221
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->parentBlock:Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 4222
    return-void
.end method
