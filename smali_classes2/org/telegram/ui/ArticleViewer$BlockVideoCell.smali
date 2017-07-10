.class Lorg/telegram/ui/ArticleViewer$BlockVideoCell;
.super Landroid/view/View;
.source "ArticleViewer.java"

# interfaces
.implements Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockVideoCell"
.end annotation


# instance fields
.field private TAG:I

.field private buttonPressed:I

.field private buttonState:I

.field private buttonX:I

.field private buttonY:I

.field private cancelLoading:Z

.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

.field private currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

.field private currentType:I

.field private imageView:Lorg/telegram/messenger/ImageReceiver;

.field private isFirst:Z

.field private isGif:Z

.field private isLast:Z

.field private lastCreatedWidth:I

.field private parentBlock:Lorg/telegram/tgnet/TLRPC$PageBlock;

.field private photoPressed:Z

.field private radialProgress:Lorg/telegram/ui/Components/RadialProgress;

.field private textLayout:Landroid/text/StaticLayout;

.field private textX:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;I)V
    .registers 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "type"    # I

    .prologue
    .line 2616
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 2617
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2619
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    .line 2620
    iput p3, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentType:I

    .line 2621
    new-instance v0, Lorg/telegram/ui/Components/RadialProgress;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/RadialProgress;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    .line 2622
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgress;->setProgressColor(I)V

    .line 2623
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->generateObserverTag()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->TAG:I

    .line 2624
    return-void
.end method

.method static synthetic access$12100(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    .prologue
    .line 2590
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    return-object v0
.end method

.method static synthetic access$12200(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/messenger/ImageReceiver;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    .prologue
    .line 2590
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method private didPressedButton(Z)V
    .registers 10
    .param p1, "animated"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 2818
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    if-nez v0, :cond_48

    .line 2819
    iput-boolean v3, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->cancelLoading:Z

    .line 2820
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/RadialProgress;->setProgress(FZ)V

    .line 2821
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->isGif:Z

    if-eqz v0, :cond_3e

    .line 2822
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v3, :cond_3c

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :goto_23
    const-string v4, "80_80_b"

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 2826
    :goto_2d
    iput v7, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    .line 2827
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->getDrawableForCurrentState()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v7, p1}, Lorg/telegram/ui/Components/RadialProgress;->setBackground(Landroid/graphics/drawable/Drawable;ZZ)V

    .line 2828
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->invalidate()V

    .line 2847
    :cond_3b
    :goto_3b
    return-void

    :cond_3c
    move-object v3, v2

    .line 2822
    goto :goto_23

    .line 2824
    :cond_3e
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, v1, v7, v7}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    goto :goto_2d

    .line 2829
    :cond_48
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    if-ne v0, v7, :cond_70

    .line 2830
    iput-boolean v7, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->cancelLoading:Z

    .line 2831
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->isGif:Z

    if-eqz v0, :cond_66

    .line 2832
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->cancelLoadImage()V

    .line 2836
    :goto_57
    iput v3, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    .line 2837
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->getDrawableForCurrentState()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p1}, Lorg/telegram/ui/Components/RadialProgress;->setBackground(Landroid/graphics/drawable/Drawable;ZZ)V

    .line 2838
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->invalidate()V

    goto :goto_3b

    .line 2834
    :cond_66
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_57

    .line 2839
    :cond_70
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8c

    .line 2840
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    .line 2841
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    .line 2842
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    .line 2843
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->getDrawableForCurrentState()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p1}, Lorg/telegram/ui/Components/RadialProgress;->setBackground(Landroid/graphics/drawable/Drawable;ZZ)V

    goto :goto_3b

    .line 2844
    :cond_8c
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3b

    .line 2845
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer;->openPhoto(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z

    goto :goto_3b
.end method

.method private getDrawableForCurrentState()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 2770
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgress;->setAlphaForPrevious(Z)V

    .line 2771
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    if-ltz v0, :cond_1a

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1a

    .line 2772
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_photoStatesDrawables:[[Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    aget-object v0, v0, v1

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonPressed:I

    aget-object v0, v0, v1

    .line 2774
    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method


# virtual methods
.method public getObserverTag()I
    .registers 2

    .prologue
    .line 2880
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->TAG:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2750
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-nez v0, :cond_5

    .line 2767
    :cond_4
    :goto_4
    return-void

    .line 2753
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 2754
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2755
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RadialProgress;->draw(Landroid/graphics/Canvas;)V

    .line 2757
    :cond_17
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_4a

    .line 2758
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2759
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textX:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageY()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()I

    move-result v2

    add-int/2addr v1, v2

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2760
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textLayout:Landroid/text/StaticLayout;

    # invokes: Lorg/telegram/ui/ArticleViewer;->drawLayoutLink(Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V
    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ArticleViewer;->access$6800(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V

    .line 2761
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2762
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2764
    :cond_4a
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->level:I

    if-lez v0, :cond_4

    .line 2765
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v1, v0

    const/4 v2, 0x0

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->getMeasuredHeight()I

    move-result v4

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->bottom:Z

    if-eqz v0, :cond_7b

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_6f
    sub-int v0, v4, v0

    int-to-float v4, v0

    # getter for: Lorg/telegram/ui/ArticleViewer;->quoteLinePaint:Landroid/graphics/Paint;
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$6900()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_7b
    const/4 v0, 0x0

    goto :goto_6f
.end method

.method public onFailedDownload(Ljava/lang/String;)V
    .registers 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 2851
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->updateButtonState(Z)V

    .line 2852
    return-void
.end method

.method protected onMeasure(II)V
    .registers 25
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 2674
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    .line 2675
    .local v21, "width":I
    const/4 v13, 0x0

    .line 2676
    .local v13, "height":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b9

    .line 2677
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$3900(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getWidth()I

    move-result v21

    .line 2678
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 2683
    :cond_22
    :goto_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz v2, :cond_249

    .line 2684
    move/from16 v15, v21

    .line 2687
    .local v15, "photoWidth":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentType:I

    if-nez v2, :cond_1c4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->level:I

    if-lez v2, :cond_1c4

    .line 2688
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->level:I

    mul-int/lit8 v2, v2, 0xe

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int v16, v2, v3

    .local v16, "photoX":I
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textX:I

    .line 2689
    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v2, v2, v16

    sub-int/2addr v15, v2

    .line 2690
    move/from16 v19, v15

    .line 2696
    .local v19, "textWidth":I
    :goto_5e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_14b

    .line 2697
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v20, v0

    .line 2698
    .local v20, "thumb":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentType:I

    if-nez v2, :cond_8e

    .line 2700
    int-to-float v2, v15

    move-object/from16 v0, v20

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    int-to-float v3, v3

    div-float v17, v2, v3

    .line 2701
    .local v17, "scale":F
    move-object/from16 v0, v20

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    int-to-float v2, v2

    mul-float v2, v2, v17

    float-to-int v13, v2

    .line 2702
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentBlock:Lorg/telegram/tgnet/TLRPC$PageBlock;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    if-eqz v2, :cond_1da

    .line 2703
    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 2714
    .end local v17    # "scale":F
    :cond_8e
    :goto_8e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->isFirst:Z

    if-nez v2, :cond_ae

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentType:I

    const/4 v5, 0x1

    if-eq v2, v5, :cond_ae

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentType:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_ae

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->level:I

    if-lez v2, :cond_21f

    :cond_ae
    const/4 v2, 0x0

    :goto_af
    move/from16 v0, v16

    invoke-virtual {v3, v0, v2, v15, v13}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 2715
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->isGif:Z

    if-eqz v2, :cond_22d

    .line 2716
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%d_%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2717
    .local v4, "filter":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v20, :cond_227

    move-object/from16 v0, v20

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :goto_e1
    if-eqz v20, :cond_22a

    const-string v6, "80_80_b"

    :goto_e5
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v2 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 2722
    .end local v4    # "filter":Ljava/lang/String;
    :goto_f0
    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    .line 2723
    .local v18, "size":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageX()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()I

    move-result v3

    sub-int v3, v3, v18

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonX:I

    .line 2724
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageY()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()I

    move-result v3

    sub-int v3, v3, v18

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonY:I

    .line 2725
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonX:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonY:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonX:I

    add-int v6, v6, v18

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonY:I

    add-int v7, v7, v18

    invoke-virtual {v2, v3, v5, v6, v7}, Lorg/telegram/ui/Components/RadialProgress;->setProgressRect(IIII)V

    .line 2728
    .end local v18    # "size":I
    .end local v20    # "thumb":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_14b
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentType:I

    if-nez v2, :cond_188

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->lastCreatedWidth:I

    move/from16 v0, v21

    if-eq v2, v0, :cond_188

    .line 2729
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    move/from16 v0, v19

    # invokes: Lorg/telegram/ui/ArticleViewer;->createLayoutForText(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;
    invoke-static {v2, v3, v5, v0, v6}, Lorg/telegram/ui/ArticleViewer;->access$6700(Lorg/telegram/ui/ArticleViewer;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textLayout:Landroid/text/StaticLayout;

    .line 2730
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_188

    .line 2731
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v13, v2

    .line 2735
    :cond_188
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->isFirst:Z

    if-nez v2, :cond_1a3

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentType:I

    if-nez v2, :cond_1a3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->level:I

    if-gtz v2, :cond_1a3

    .line 2736
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v13, v2

    .line 2738
    :cond_1a3
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1b1

    .line 2739
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v13, v2

    .line 2745
    .end local v15    # "photoWidth":I
    .end local v16    # "photoX":I
    .end local v19    # "textWidth":I
    :cond_1b1
    :goto_1b1
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->setMeasuredDimension(II)V

    .line 2746
    return-void

    .line 2679
    :cond_1b9
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_22

    .line 2680
    move/from16 v13, v21

    goto/16 :goto_22

    .line 2692
    .restart local v15    # "photoWidth":I
    :cond_1c4
    const/16 v16, 0x0

    .line 2693
    .restart local v16    # "photoX":I
    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textX:I

    .line 2694
    const/high16 v2, 0x42100000    # 36.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v19, v21, v2

    .restart local v19    # "textWidth":I
    goto/16 :goto_5e

    .line 2705
    .restart local v17    # "scale":F
    .restart local v20    # "thumb":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_1da
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$3900(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

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

    float-to-int v14, v2

    .line 2706
    .local v14, "maxHeight":I
    if-le v13, v14, :cond_8e

    .line 2707
    move v13, v14

    .line 2708
    int-to-float v2, v13

    move-object/from16 v0, v20

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    int-to-float v3, v3

    div-float v17, v2, v3

    .line 2709
    move-object/from16 v0, v20

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    int-to-float v2, v2

    mul-float v2, v2, v17

    float-to-int v15, v2

    .line 2710
    sub-int v2, v21, v16

    sub-int/2addr v2, v15

    div-int/lit8 v2, v2, 0x2

    add-int v16, v16, v2

    goto/16 :goto_8e

    .line 2714
    .end local v14    # "maxHeight":I
    .end local v17    # "scale":F
    :cond_21f
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto/16 :goto_af

    .line 2717
    .restart local v4    # "filter":Ljava/lang/String;
    :cond_227
    const/4 v5, 0x0

    goto/16 :goto_e1

    :cond_22a
    const/4 v6, 0x0

    goto/16 :goto_e5

    .line 2719
    .end local v4    # "filter":Ljava/lang/String;
    :cond_22d
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v20, :cond_245

    move-object/from16 v0, v20

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :goto_239
    if-eqz v20, :cond_247

    const-string v9, "80_80_b"

    :goto_23d
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual/range {v5 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    goto/16 :goto_f0

    :cond_245
    const/4 v8, 0x0

    goto :goto_239

    :cond_247
    const/4 v9, 0x0

    goto :goto_23d

    .line 2742
    .end local v15    # "photoWidth":I
    .end local v16    # "photoX":I
    .end local v19    # "textWidth":I
    .end local v20    # "thumb":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_249
    const/4 v13, 0x1

    goto/16 :goto_1b1
.end method

.method public onProgressDownload(Ljava/lang/String;F)V
    .registers 5
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "progress"    # F

    .prologue
    const/4 v1, 0x1

    .line 2872
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v0, p2, v1}, Lorg/telegram/ui/Components/RadialProgress;->setProgress(FZ)V

    .line 2873
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    if-eq v0, v1, :cond_e

    .line 2874
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->updateButtonState(Z)V

    .line 2876
    :cond_e
    return-void
.end method

.method public onProgressUpload(Ljava/lang/String;FZ)V
    .registers 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "progress"    # F
    .param p3, "isEncrypted"    # Z

    .prologue
    .line 2868
    return-void
.end method

.method public onSuccessDownload(Ljava/lang/String;)V
    .registers 5
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 2856
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/RadialProgress;->setProgress(FZ)V

    .line 2857
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->isGif:Z

    if-eqz v0, :cond_13

    .line 2858
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    .line 2859
    invoke-direct {p0, v2}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->didPressedButton(Z)V

    .line 2863
    :goto_12
    return-void

    .line 2861
    :cond_13
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->updateButtonState(Z)V

    goto :goto_12
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v2, 0x42400000    # 48.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2645
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 2646
    .local v6, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 2648
    .local v7, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_71

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v6, v7}, Lorg/telegram/messenger/ImageReceiver;->isInsideImage(FF)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 2649
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_45

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonX:I

    int-to-float v0, v0

    cmpl-float v0, v6, v0

    if-ltz v0, :cond_45

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonX:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, v6, v0

    if-gtz v0, :cond_45

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonY:I

    int-to-float v0, v0

    cmpl-float v0, v7, v0

    if-ltz v0, :cond_45

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonY:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, v7, v0

    if-lez v0, :cond_49

    :cond_45
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    if-nez v0, :cond_6e

    .line 2650
    :cond_49
    iput v9, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonPressed:I

    .line 2651
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->invalidate()V

    .line 2669
    :cond_4e
    :goto_4e
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->photoPressed:Z

    if-nez v0, :cond_6c

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonPressed:I

    if-nez v0, :cond_6c

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textLayout:Landroid/text/StaticLayout;

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textX:I

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textY:I

    move-object v1, p1

    move-object v2, p0

    # invokes: Lorg/telegram/ui/ArticleViewer;->checkLayoutForLinks(Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->access$6600(Lorg/telegram/ui/ArticleViewer;Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z

    move-result v0

    if-nez v0, :cond_6c

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a8

    :cond_6c
    move v0, v9

    :goto_6d
    return v0

    .line 2653
    :cond_6e
    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->photoPressed:Z

    goto :goto_4e

    .line 2655
    :cond_71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v9, :cond_9e

    .line 2656
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->photoPressed:Z

    if-eqz v0, :cond_85

    .line 2657
    iput-boolean v8, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->photoPressed:Z

    .line 2658
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer;->openPhoto(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z

    goto :goto_4e

    .line 2659
    :cond_85
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonPressed:I

    if-ne v0, v9, :cond_4e

    .line 2660
    iput v8, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonPressed:I

    .line 2661
    invoke-virtual {p0, v8}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->playSoundEffect(I)V

    .line 2662
    invoke-direct {p0, v8}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->didPressedButton(Z)V

    .line 2663
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->getDrawableForCurrentState()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgress;->swapBackground(Landroid/graphics/drawable/Drawable;)Z

    .line 2664
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->invalidate()V

    goto :goto_4e

    .line 2666
    :cond_9e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4e

    .line 2667
    iput-boolean v8, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->photoPressed:Z

    goto :goto_4e

    :cond_a8
    move v0, v8

    .line 2669
    goto :goto_6d
.end method

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;ZZ)V
    .registers 9
    .param p1, "block"    # Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;
    .param p2, "first"    # Z
    .param p3, "last"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2627
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    .line 2628
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentBlock:Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 2629
    iput-boolean v4, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->cancelLoading:Z

    .line 2630
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->video_id:J

    # invokes: Lorg/telegram/ui/ArticleViewer;->getDocumentWithId(J)Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {v0, v2, v3}, Lorg/telegram/ui/ArticleViewer;->access$6500(Lorg/telegram/ui/ArticleViewer;J)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    .line 2631
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->isGif:Z

    .line 2632
    iput v4, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->lastCreatedWidth:I

    .line 2633
    iput-boolean p2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->isFirst:Z

    .line 2634
    iput-boolean p3, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->isLast:Z

    .line 2635
    invoke-virtual {p0, v4}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->updateButtonState(Z)V

    .line 2636
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->requestLayout()V

    .line 2637
    return-void
.end method

.method public setParentBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)V
    .registers 2
    .param p1, "block"    # Lorg/telegram/tgnet/TLRPC$PageBlock;

    .prologue
    .line 2640
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentBlock:Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 2641
    return-void
.end method

.method public updateButtonState(Z)V
    .registers 12
    .param p1, "animated"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2778
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v1

    .line 2779
    .local v1, "fileName":Ljava/lang/String;
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v6, v7}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v2

    .line 2780
    .local v2, "path":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    .line 2781
    .local v0, "fileExists":Z
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 2782
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v6, v9, v8, v8}, Lorg/telegram/ui/Components/RadialProgress;->setBackground(Landroid/graphics/drawable/Drawable;ZZ)V

    .line 2815
    :goto_1e
    return-void

    .line 2785
    :cond_1f
    if-nez v0, :cond_68

    .line 2786
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    invoke-virtual {v6, v1, v9, p0}, Lorg/telegram/messenger/MediaController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 2787
    const/4 v5, 0x0

    .line 2788
    .local v5, "setProgress":F
    const/4 v4, 0x0

    .line 2789
    .local v4, "progressVisible":Z
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_54

    .line 2790
    iget-boolean v6, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->cancelLoading:Z

    if-nez v6, :cond_51

    iget-boolean v6, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->isGif:Z

    if-eqz v6, :cond_51

    .line 2791
    const/4 v4, 0x1

    .line 2792
    iput v7, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    .line 2802
    :goto_3f
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->getDrawableForCurrentState()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7, v4, p1}, Lorg/telegram/ui/Components/RadialProgress;->setBackground(Landroid/graphics/drawable/Drawable;ZZ)V

    .line 2803
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v6, v5, v8}, Lorg/telegram/ui/Components/RadialProgress;->setProgress(FZ)V

    .line 2804
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->invalidate()V

    goto :goto_1e

    .line 2794
    :cond_51
    iput v8, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    goto :goto_3f

    .line 2797
    :cond_54
    const/4 v4, 0x1

    .line 2798
    iput v7, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    .line 2799
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    .line 2800
    .local v3, "progress":Ljava/lang/Float;
    if-eqz v3, :cond_66

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    :goto_65
    goto :goto_3f

    :cond_66
    const/4 v5, 0x0

    goto :goto_65

    .line 2806
    .end local v3    # "progress":Ljava/lang/Float;
    .end local v4    # "progressVisible":Z
    .end local v5    # "setProgress":F
    :cond_68
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    invoke-virtual {v6, p0}, Lorg/telegram/messenger/MediaController;->removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 2807
    iget-boolean v6, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->isGif:Z

    if-nez v6, :cond_83

    .line 2808
    const/4 v6, 0x3

    iput v6, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    .line 2812
    :goto_76
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->getDrawableForCurrentState()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7, v8, p1}, Lorg/telegram/ui/Components/RadialProgress;->setBackground(Landroid/graphics/drawable/Drawable;ZZ)V

    .line 2813
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->invalidate()V

    goto :goto_1e

    .line 2810
    :cond_83
    const/4 v6, -0x1

    iput v6, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    goto :goto_76
.end method
