.class public Lorg/telegram/ui/StickerPreviewViewer;
.super Ljava/lang/Object;
.source "StickerPreviewViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;,
        Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/ui/StickerPreviewViewer;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static textPaint:Landroid/text/TextPaint;


# instance fields
.field private backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private centerImage:Lorg/telegram/messenger/ImageReceiver;

.field private containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

.field private currentSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

.field private currentSticker:Lorg/telegram/tgnet/TLRPC$Document;

.field private currentStickerPreviewCell:Landroid/view/View;

.field private delegate:Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;

.field private isVisible:Z

.field private keyboardHeight:I

.field private lastUpdateTime:J

.field private openStickerPreviewRunnable:Ljava/lang/Runnable;

.field private parentActivity:Landroid/app/Activity;

.field private showProgress:F

.field private showSheetRunnable:Ljava/lang/Runnable;

.field private startX:I

.field private startY:I

.field private stickerEmojiLayout:Landroid/text/StaticLayout;

.field private visibleDialog:Landroid/app/Dialog;

.field private windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private windowView:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 127
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/StickerPreviewViewer;->Instance:Lorg/telegram/ui/StickerPreviewViewer;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, 0x71000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 81
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->isVisible:Z

    .line 86
    const/high16 v0, 0x43480000    # 200.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->keyboardHeight:I

    .line 87
    new-instance v0, Lorg/telegram/ui/StickerPreviewViewer$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/StickerPreviewViewer$1;-><init>(Lorg/telegram/ui/StickerPreviewViewer;)V

    iput-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/StickerPreviewViewer;Landroid/graphics/Canvas;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/StickerPreviewViewer;
    .param p1, "x1"    # Landroid/graphics/Canvas;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/telegram/ui/StickerPreviewViewer;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/StickerPreviewViewer;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->parentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/StickerPreviewViewer;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/StickerPreviewViewer;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/StickerPreviewViewer;)Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/StickerPreviewViewer;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->delegate:Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/StickerPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/StickerPreviewViewer;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentSticker:Lorg/telegram/tgnet/TLRPC$Document;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/app/Dialog;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/StickerPreviewViewer;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->visibleDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/StickerPreviewViewer;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/StickerPreviewViewer;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 48
    iput-object p1, p0, Lorg/telegram/ui/StickerPreviewViewer;->visibleDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/StickerPreviewViewer;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/StickerPreviewViewer;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/StickerPreviewViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/StickerPreviewViewer;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 48
    iput-object p1, p0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/StickerPreviewViewer;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/StickerPreviewViewer;)Lorg/telegram/messenger/ImageReceiver;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/StickerPreviewViewer;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method public static getInstance()Lorg/telegram/ui/StickerPreviewViewer;
    .registers 4

    .prologue
    .line 129
    sget-object v0, Lorg/telegram/ui/StickerPreviewViewer;->Instance:Lorg/telegram/ui/StickerPreviewViewer;

    .line 130
    .local v0, "localInstance":Lorg/telegram/ui/StickerPreviewViewer;
    if-nez v0, :cond_14

    .line 131
    const-class v3, Lorg/telegram/ui/PhotoViewer;

    monitor-enter v3

    .line 132
    :try_start_7
    sget-object v0, Lorg/telegram/ui/StickerPreviewViewer;->Instance:Lorg/telegram/ui/StickerPreviewViewer;

    .line 133
    if-nez v0, :cond_13

    .line 134
    new-instance v1, Lorg/telegram/ui/StickerPreviewViewer;

    invoke-direct {v1}, Lorg/telegram/ui/StickerPreviewViewer;-><init>()V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_15

    .end local v0    # "localInstance":Lorg/telegram/ui/StickerPreviewViewer;
    .local v1, "localInstance":Lorg/telegram/ui/StickerPreviewViewer;
    :try_start_10
    sput-object v1, Lorg/telegram/ui/StickerPreviewViewer;->Instance:Lorg/telegram/ui/StickerPreviewViewer;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_18

    move-object v0, v1

    .line 136
    .end local v1    # "localInstance":Lorg/telegram/ui/StickerPreviewViewer;
    .restart local v0    # "localInstance":Lorg/telegram/ui/StickerPreviewViewer;
    :cond_13
    :try_start_13
    monitor-exit v3

    .line 138
    :cond_14
    return-object v0

    .line 136
    :catchall_15
    move-exception v2

    :goto_16
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_15

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/ui/StickerPreviewViewer;
    .restart local v1    # "localInstance":Lorg/telegram/ui/StickerPreviewViewer;
    :catchall_18
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/ui/StickerPreviewViewer;
    .restart local v0    # "localInstance":Lorg/telegram/ui/StickerPreviewViewer;
    goto :goto_16
.end method

.method private onDraw(Landroid/graphics/Canvas;)V
    .registers 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    .line 516
    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    if-nez v9, :cond_9

    .line 577
    :cond_8
    :goto_8
    return-void

    .line 519
    :cond_9
    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    const/high16 v10, 0x43340000    # 180.0f

    iget v11, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 520
    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v12}, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;->getWidth()I

    move-result v12

    iget-object v13, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v13}, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;->getHeight()I

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    .line 521
    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 523
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 524
    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v9}, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;->getWidth()I

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v10}, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;->getHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    const v10, 0x3fe66666

    div-float/2addr v9, v10

    float-to-int v7, v9

    .line 525
    .local v7, "size":I
    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v9}, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, v7, 0x2

    sget v11, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v11}, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;->getHeight()I

    move-result v11

    iget v12, p0, Lorg/telegram/ui/StickerPreviewViewer;->keyboardHeight:I

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 526
    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 527
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_93

    .line 528
    const v9, 0x3f4ccccd

    iget v10, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    mul-float/2addr v9, v10

    const v10, 0x3f4ccccd

    div-float v6, v9, v10

    .line 529
    .local v6, "scale":F
    int-to-float v9, v7

    mul-float/2addr v9, v6

    float-to-int v7, v9

    .line 530
    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget v10, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 531
    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    neg-int v10, v7

    div-int/lit8 v10, v10, 0x2

    neg-int v11, v7

    div-int/lit8 v11, v11, 0x2

    invoke-virtual {v9, v10, v11, v7, v7}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 532
    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 534
    .end local v6    # "scale":F
    :cond_93
    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->stickerEmojiLayout:Landroid/text/StaticLayout;

    if-eqz v9, :cond_b8

    .line 535
    const/high16 v9, 0x42480000    # 50.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    iget-object v10, p0, Lorg/telegram/ui/StickerPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v10}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()I

    move-result v10

    neg-int v10, v10

    div-int/lit8 v10, v10, 0x2

    const/high16 v11, 0x41f00000    # 30.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 536
    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->stickerEmojiLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 538
    :cond_b8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 539
    iget-boolean v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->isVisible:Z

    if-eqz v9, :cond_ed

    .line 540
    iget v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_8

    .line 541
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 542
    .local v4, "newTime":J
    iget-wide v10, p0, Lorg/telegram/ui/StickerPreviewViewer;->lastUpdateTime:J

    sub-long v2, v4, v10

    .line 543
    .local v2, "dt":J
    iput-wide v4, p0, Lorg/telegram/ui/StickerPreviewViewer;->lastUpdateTime:J

    .line 544
    iget v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    long-to-float v10, v2

    const/high16 v11, 0x42f00000    # 120.0f

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    .line 545
    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v9}, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;->invalidate()V

    .line 546
    iget v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_8

    .line 547
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    goto/16 :goto_8

    .line 550
    .end local v2    # "dt":J
    .end local v4    # "newTime":J
    :cond_ed
    iget v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_8

    .line 551
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 552
    .restart local v4    # "newTime":J
    iget-wide v10, p0, Lorg/telegram/ui/StickerPreviewViewer;->lastUpdateTime:J

    sub-long v2, v4, v10

    .line 553
    .restart local v2    # "dt":J
    iput-wide v4, p0, Lorg/telegram/ui/StickerPreviewViewer;->lastUpdateTime:J

    .line 554
    iget v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    long-to-float v10, v2

    const/high16 v11, 0x42f00000    # 120.0f

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    .line 555
    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v9}, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;->invalidate()V

    .line 556
    iget v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gez v9, :cond_116

    .line 557
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    .line 559
    :cond_116
    iget v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_8

    .line 560
    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->parentActivity:Landroid/app/Activity;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->unlockOrientation(Landroid/app/Activity;)V

    .line 561
    new-instance v9, Lorg/telegram/ui/StickerPreviewViewer$5;

    invoke-direct {v9, p0}, Lorg/telegram/ui/StickerPreviewViewer$5;-><init>(Lorg/telegram/ui/StickerPreviewViewer;)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 568
    :try_start_12a
    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 569
    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->parentActivity:Landroid/app/Activity;

    const-string v10, "window"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 570
    .local v8, "wm":Landroid/view/WindowManager;
    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v8, v9}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_141} :catch_143

    goto/16 :goto_8

    .line 572
    .end local v8    # "wm":Landroid/view/WindowManager;
    :catch_143
    move-exception v1

    .line 573
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_8
.end method


# virtual methods
.method public close()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 465
    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer;->visibleDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_a

    .line 484
    :cond_9
    :goto_9
    return-void

    .line 468
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 469
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    .line 470
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->lastUpdateTime:J

    .line 471
    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v1}, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;->invalidate()V

    .line 473
    :try_start_1e
    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer;->visibleDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_2a

    .line 474
    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 475
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer;->visibleDialog:Landroid/app/Dialog;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2a} :catch_34

    .line 480
    :cond_2a
    :goto_2a
    iput-object v4, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentSticker:Lorg/telegram/tgnet/TLRPC$Document;

    .line 481
    iput-object v4, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 482
    iput-object v4, p0, Lorg/telegram/ui/StickerPreviewViewer;->delegate:Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;

    .line 483
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/StickerPreviewViewer;->isVisible:Z

    goto :goto_9

    .line 477
    :catch_34
    move-exception v0

    .line 478
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2a
.end method

.method public destroy()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 487
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->isVisible:Z

    .line 488
    iput-object v4, p0, Lorg/telegram/ui/StickerPreviewViewer;->delegate:Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;

    .line 489
    iput-object v4, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentSticker:Lorg/telegram/tgnet/TLRPC$Document;

    .line 490
    iput-object v4, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 492
    :try_start_a
    iget-object v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->visibleDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_16

    .line 493
    iget-object v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 494
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->visibleDialog:Landroid/app/Dialog;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_1f

    .line 499
    :cond_16
    :goto_16
    iget-object v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    if-nez v2, :cond_24

    .line 512
    :cond_1e
    :goto_1e
    return-void

    .line 496
    :catch_1f
    move-exception v0

    .line 497
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_16

    .line 503
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_24
    :try_start_24
    iget-object v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 504
    iget-object v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->parentActivity:Landroid/app/Activity;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 505
    .local v1, "wm":Landroid/view/WindowManager;
    iget-object v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 507
    .end local v1    # "wm":Landroid/view/WindowManager;
    :cond_3b
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3e} :catch_41

    .line 511
    :goto_3e
    sput-object v4, Lorg/telegram/ui/StickerPreviewViewer;->Instance:Lorg/telegram/ui/StickerPreviewViewer;

    goto :goto_1e

    .line 508
    :catch_41
    move-exception v0

    .line 509
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3e
.end method

.method public isVisible()Z
    .registers 2

    .prologue
    .line 461
    iget-boolean v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->isVisible:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;ILorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;)Z
    .registers 23
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "listView"    # Landroid/view/View;
    .param p3, "height"    # I
    .param p4, "stickerPreviewViewerDelegate"    # Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;

    .prologue
    .line 267
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/StickerPreviewViewer;->delegate:Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;

    .line 268
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v15

    if-nez v15, :cond_ce

    .line 269
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    float-to-int v13, v15

    .line 270
    .local v13, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    float-to-int v14, v15

    .line 271
    .local v14, "y":I
    const/4 v7, 0x0

    .line 272
    .local v7, "count":I
    move-object/from16 v0, p2

    instance-of v15, v0, Landroid/widget/AbsListView;

    if-eqz v15, :cond_3b

    move-object/from16 v15, p2

    .line 273
    check-cast v15, Landroid/widget/AbsListView;

    invoke-virtual {v15}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v7

    .line 277
    :cond_25
    :goto_25
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_26
    if-ge v4, v7, :cond_ce

    .line 278
    const/4 v12, 0x0

    .line 279
    .local v12, "view":Landroid/view/View;
    move-object/from16 v0, p2

    instance-of v15, v0, Landroid/widget/AbsListView;

    if-eqz v15, :cond_4a

    move-object/from16 v15, p2

    .line 280
    check-cast v15, Landroid/widget/AbsListView;

    invoke-virtual {v15, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 284
    :cond_37
    :goto_37
    if-nez v12, :cond_59

    .line 285
    const/4 v15, 0x0

    .line 341
    .end local v4    # "a":I
    .end local v7    # "count":I
    .end local v12    # "view":Landroid/view/View;
    .end local v13    # "x":I
    .end local v14    # "y":I
    :goto_3a
    return v15

    .line 274
    .restart local v7    # "count":I
    .restart local v13    # "x":I
    .restart local v14    # "y":I
    :cond_3b
    move-object/from16 v0, p2

    instance-of v15, v0, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v15, :cond_25

    move-object/from16 v15, p2

    .line 275
    check-cast v15, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v15}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v7

    goto :goto_25

    .line 281
    .restart local v4    # "a":I
    .restart local v12    # "view":Landroid/view/View;
    :cond_4a
    move-object/from16 v0, p2

    instance-of v15, v0, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v15, :cond_37

    move-object/from16 v15, p2

    .line 282
    check-cast v15, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v15, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    goto :goto_37

    .line 287
    :cond_59
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v11

    .line 288
    .local v11, "top":I
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 289
    .local v5, "bottom":I
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 290
    .local v8, "left":I
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v10

    .line 291
    .local v10, "right":I
    if-gt v11, v14, :cond_71

    if-lt v5, v14, :cond_71

    if-gt v8, v13, :cond_71

    if-ge v10, v13, :cond_74

    .line 277
    :cond_71
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 294
    :cond_74
    const/4 v9, 0x0

    .line 295
    .local v9, "ok":Z
    instance-of v15, v12, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v15, :cond_84

    move-object v15, v12

    .line 296
    check-cast v15, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {v15}, Lorg/telegram/ui/Cells/StickerEmojiCell;->showingBitmap()Z

    move-result v9

    .line 303
    :cond_80
    :goto_80
    if-nez v9, :cond_a7

    .line 304
    const/4 v15, 0x0

    goto :goto_3a

    .line 297
    :cond_84
    instance-of v15, v12, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v15, :cond_90

    move-object v15, v12

    .line 298
    check-cast v15, Lorg/telegram/ui/Cells/StickerCell;

    invoke-virtual {v15}, Lorg/telegram/ui/Cells/StickerCell;->showingBitmap()Z

    move-result v9

    goto :goto_80

    .line 299
    :cond_90
    instance-of v15, v12, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v15, :cond_80

    move-object v6, v12

    .line 300
    check-cast v6, Lorg/telegram/ui/Cells/ContextLinkCell;

    .line 301
    .local v6, "cell":Lorg/telegram/ui/Cells/ContextLinkCell;
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ContextLinkCell;->isSticker()Z

    move-result v15

    if-eqz v15, :cond_a5

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ContextLinkCell;->showingBitmap()Z

    move-result v15

    if-eqz v15, :cond_a5

    const/4 v9, 0x1

    :goto_a4
    goto :goto_80

    :cond_a5
    const/4 v9, 0x0

    goto :goto_a4

    .line 306
    .end local v6    # "cell":Lorg/telegram/ui/Cells/ContextLinkCell;
    :cond_a7
    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/StickerPreviewViewer;->startX:I

    .line 307
    move-object/from16 v0, p0

    iput v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->startY:I

    .line 308
    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    .line 309
    new-instance v15, Lorg/telegram/ui/StickerPreviewViewer$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v15, v0, v1, v2}, Lorg/telegram/ui/StickerPreviewViewer$3;-><init>(Lorg/telegram/ui/StickerPreviewViewer;Landroid/view/View;I)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    .line 337
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    const-wide/16 v16, 0xc8

    invoke-static/range {v15 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 338
    const/4 v15, 0x1

    goto/16 :goto_3a

    .line 341
    .end local v4    # "a":I
    .end local v5    # "bottom":I
    .end local v7    # "count":I
    .end local v8    # "left":I
    .end local v9    # "ok":Z
    .end local v10    # "right":I
    .end local v11    # "top":I
    .end local v12    # "view":Landroid/view/View;
    .end local v13    # "x":I
    .end local v14    # "y":I
    :cond_ce
    const/4 v15, 0x0

    goto/16 :goto_3a
.end method

.method public onTouch(Landroid/view/MotionEvent;Landroid/view/View;ILjava/lang/Object;Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;)Z
    .registers 24
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "listView"    # Landroid/view/View;
    .param p3, "height"    # I
    .param p4, "listener"    # Ljava/lang/Object;
    .param p5, "stickerPreviewViewerDelegate"    # Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;

    .prologue
    .line 159
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/StickerPreviewViewer;->delegate:Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;

    .line 160
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    if-nez v14, :cond_12

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/StickerPreviewViewer;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_4b

    .line 161
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_27

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    const/4 v15, 0x3

    if-eq v14, v15, :cond_27

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    const/4 v15, 0x6

    if-ne v14, v15, :cond_9a

    .line 162
    :cond_27
    new-instance v14, Lorg/telegram/ui/StickerPreviewViewer$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v14, v0, v1, v2}, Lorg/telegram/ui/StickerPreviewViewer$2;-><init>(Lorg/telegram/ui/StickerPreviewViewer;Landroid/view/View;Ljava/lang/Object;)V

    const-wide/16 v16, 0x96

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 172
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    if-eqz v14, :cond_4d

    .line 173
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 174
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    .line 263
    :cond_4b
    :goto_4b
    const/4 v14, 0x0

    :goto_4c
    return v14

    .line 175
    :cond_4d
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/StickerPreviewViewer;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_4b

    .line 176
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/StickerPreviewViewer;->close()V

    .line 177
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    if-eqz v14, :cond_4b

    .line 178
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    instance-of v14, v14, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v14, :cond_74

    .line 179
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/StickerEmojiCell;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setScaled(Z)V

    .line 185
    :cond_6e
    :goto_6e
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    goto :goto_4b

    .line 180
    :cond_74
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    instance-of v14, v14, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v14, :cond_87

    .line 181
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/StickerCell;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Cells/StickerCell;->setScaled(Z)V

    goto :goto_6e

    .line 182
    :cond_87
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    instance-of v14, v14, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v14, :cond_6e

    .line 183
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/ContextLinkCell;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Cells/ContextLinkCell;->setScaled(Z)V

    goto :goto_6e

    .line 188
    :cond_9a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    if-eqz v14, :cond_4b

    .line 189
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/StickerPreviewViewer;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_1f0

    .line 190
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_124

    .line 191
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    float-to-int v12, v14

    .line 192
    .local v12, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v13, v14

    .line 193
    .local v13, "y":I
    const/4 v6, 0x0

    .line 194
    .local v6, "count":I
    move-object/from16 v0, p2

    instance-of v14, v0, Landroid/widget/AbsListView;

    if-eqz v14, :cond_dd

    move-object/from16 v14, p2

    .line 195
    check-cast v14, Landroid/widget/AbsListView;

    invoke-virtual {v14}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    .line 199
    :cond_c6
    :goto_c6
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_c7
    if-ge v4, v6, :cond_124

    .line 200
    const/4 v11, 0x0

    .line 201
    .local v11, "view":Landroid/view/View;
    move-object/from16 v0, p2

    instance-of v14, v0, Landroid/widget/AbsListView;

    if-eqz v14, :cond_ec

    move-object/from16 v14, p2

    .line 202
    check-cast v14, Landroid/widget/AbsListView;

    invoke-virtual {v14, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 206
    :cond_d8
    :goto_d8
    if-nez v11, :cond_fb

    .line 207
    const/4 v14, 0x0

    goto/16 :goto_4c

    .line 196
    .end local v4    # "a":I
    .end local v11    # "view":Landroid/view/View;
    :cond_dd
    move-object/from16 v0, p2

    instance-of v14, v0, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v14, :cond_c6

    move-object/from16 v14, p2

    .line 197
    check-cast v14, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v14}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v6

    goto :goto_c6

    .line 203
    .restart local v4    # "a":I
    .restart local v11    # "view":Landroid/view/View;
    :cond_ec
    move-object/from16 v0, p2

    instance-of v14, v0, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v14, :cond_d8

    move-object/from16 v14, p2

    .line 204
    check-cast v14, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v14, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    goto :goto_d8

    .line 209
    :cond_fb
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v10

    .line 210
    .local v10, "top":I
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 211
    .local v5, "bottom":I
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 212
    .local v7, "left":I
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v9

    .line 213
    .local v9, "right":I
    if-gt v10, v13, :cond_113

    if-lt v5, v13, :cond_113

    if-gt v7, v12, :cond_113

    if-ge v9, v12, :cond_116

    .line 199
    :cond_113
    add-int/lit8 v4, v4, 0x1

    goto :goto_c7

    .line 216
    :cond_116
    const/4 v8, 0x0

    .line 217
    .local v8, "ok":Z
    instance-of v14, v11, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v14, :cond_127

    .line 218
    const/4 v8, 0x1

    .line 224
    :cond_11c
    :goto_11c
    if-eqz v8, :cond_124

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    if-ne v11, v14, :cond_139

    .line 249
    .end local v4    # "a":I
    .end local v5    # "bottom":I
    .end local v6    # "count":I
    .end local v7    # "left":I
    .end local v8    # "ok":Z
    .end local v9    # "right":I
    .end local v10    # "top":I
    .end local v11    # "view":Landroid/view/View;
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_124
    const/4 v14, 0x1

    goto/16 :goto_4c

    .line 219
    .restart local v4    # "a":I
    .restart local v5    # "bottom":I
    .restart local v6    # "count":I
    .restart local v7    # "left":I
    .restart local v8    # "ok":Z
    .restart local v9    # "right":I
    .restart local v10    # "top":I
    .restart local v11    # "view":Landroid/view/View;
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_127
    instance-of v14, v11, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v14, :cond_12d

    .line 220
    const/4 v8, 0x1

    goto :goto_11c

    .line 221
    :cond_12d
    instance-of v14, v11, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v14, :cond_11c

    move-object v14, v11

    .line 222
    check-cast v14, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {v14}, Lorg/telegram/ui/Cells/ContextLinkCell;->isSticker()Z

    move-result v8

    goto :goto_11c

    .line 227
    :cond_139
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    instance-of v14, v14, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v14, :cond_184

    .line 228
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/StickerEmojiCell;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setScaled(Z)V

    .line 234
    :cond_14b
    :goto_14b
    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    .line 235
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/StickerPreviewViewer;->setKeyboardHeight(I)V

    .line 236
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    instance-of v14, v14, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v14, :cond_1aa

    .line 237
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {v14}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {v14}, Lorg/telegram/ui/Cells/StickerEmojiCell;->isRecent()Z

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v14}, Lorg/telegram/ui/StickerPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    .line 238
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/StickerEmojiCell;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setScaled(Z)V

    .line 246
    :cond_181
    :goto_181
    const/4 v14, 0x1

    goto/16 :goto_4c

    .line 229
    :cond_184
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    instance-of v14, v14, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v14, :cond_197

    .line 230
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/StickerCell;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Cells/StickerCell;->setScaled(Z)V

    goto :goto_14b

    .line 231
    :cond_197
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    instance-of v14, v14, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v14, :cond_14b

    .line 232
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/ContextLinkCell;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Cells/ContextLinkCell;->setScaled(Z)V

    goto :goto_14b

    .line 239
    :cond_1aa
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    instance-of v14, v14, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v14, :cond_1cd

    .line 240
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/StickerCell;

    invoke-virtual {v14}, Lorg/telegram/ui/Cells/StickerCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lorg/telegram/ui/StickerPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    .line 241
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/StickerCell;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Cells/StickerCell;->setScaled(Z)V

    goto :goto_181

    .line 242
    :cond_1cd
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    instance-of v14, v14, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v14, :cond_181

    .line 243
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {v14}, Lorg/telegram/ui/Cells/ContextLinkCell;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lorg/telegram/ui/StickerPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    .line 244
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/ContextLinkCell;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Cells/ContextLinkCell;->setScaled(Z)V

    goto :goto_181

    .line 250
    .end local v4    # "a":I
    .end local v5    # "bottom":I
    .end local v6    # "count":I
    .end local v7    # "left":I
    .end local v8    # "ok":Z
    .end local v9    # "right":I
    .end local v10    # "top":I
    .end local v11    # "view":Landroid/view/View;
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_1f0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    if-eqz v14, :cond_4b

    .line 251
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_23f

    .line 252
    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->startX:I

    int-to-float v14, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    sub-float/2addr v14, v15

    float-to-double v14, v14

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/StickerPreviewViewer;->startY:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    sub-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v14

    const/high16 v16, 0x41200000    # 10.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_4b

    .line 253
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 254
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    goto/16 :goto_4b

    .line 257
    :cond_23f
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 258
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    goto/16 :goto_4b
.end method

.method public open(Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .registers 16
    .param p1, "sticker"    # Lorg/telegram/tgnet/TLRPC$Document;
    .param p2, "isRecent"    # Z

    .prologue
    .line 395
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_6

    if-nez p1, :cond_7

    .line 458
    :cond_6
    :goto_6
    return-void

    .line 398
    :cond_7
    sget-object v0, Lorg/telegram/ui/StickerPreviewViewer;->textPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_1f

    .line 399
    new-instance v0, Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/StickerPreviewViewer;->textPaint:Landroid/text/TextPaint;

    .line 400
    sget-object v0, Lorg/telegram/ui/StickerPreviewViewer;->textPaint:Landroid/text/TextPaint;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 403
    :cond_1f
    const/4 v11, 0x0

    .line 404
    .local v11, "newSet":Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    if-eqz p2, :cond_5e

    .line 405
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_23
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_3d

    .line 406
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 407
    .local v9, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v0, v9, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v0, :cond_fd

    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz v0, :cond_fd

    .line 408
    iget-object v11, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 412
    .end local v9    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_3d
    if-eqz v11, :cond_5e

    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eq v0, v11, :cond_5e

    .line 414
    :try_start_43
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->visibleDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_52

    .line 415
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->visibleDialog:Landroid/app/Dialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 416
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_52} :catch_101

    .line 421
    :cond_52
    :goto_52
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 422
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->showSheetRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 425
    .end local v8    # "a":I
    :cond_5e
    iput-object v11, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 426
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v2, 0x0

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v4, 0x0

    const-string v5, "webp"

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 427
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->stickerEmojiLayout:Landroid/text/StaticLayout;

    .line 428
    const/4 v8, 0x0

    .restart local v8    # "a":I
    :goto_73
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_b7

    .line 429
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 430
    .restart local v9    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v0, v9, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v0, :cond_107

    .line 431
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_107

    .line 432
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    sget-object v2, Lorg/telegram/ui/StickerPreviewViewer;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v1

    .line 433
    .local v1, "emoji":Ljava/lang/CharSequence;
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v2, Lorg/telegram/ui/StickerPreviewViewer;->textPaint:Landroid/text/TextPaint;

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->stickerEmojiLayout:Landroid/text/StaticLayout;

    .line 439
    .end local v1    # "emoji":Ljava/lang/CharSequence;
    .end local v9    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_b7
    iput-object p1, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentSticker:Lorg/telegram/tgnet/TLRPC$Document;

    .line 440
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;->invalidate()V

    .line 442
    iget-boolean v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->isVisible:Z

    if-nez v0, :cond_6

    .line 443
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->parentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;)V

    .line 445
    :try_start_c7
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_de

    .line 446
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->parentActivity:Landroid/app/Activity;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    .line 447
    .local v12, "wm":Landroid/view/WindowManager;
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v12, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_de} :catch_10b

    .line 452
    .end local v12    # "wm":Landroid/view/WindowManager;
    :cond_de
    :goto_de
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->parentActivity:Landroid/app/Activity;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    .line 453
    .restart local v12    # "wm":Landroid/view/WindowManager;
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v12, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->isVisible:Z

    .line 455
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    .line 456
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->lastUpdateTime:J

    goto/16 :goto_6

    .line 405
    .end local v12    # "wm":Landroid/view/WindowManager;
    .restart local v9    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_fd
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_23

    .line 418
    .end local v9    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :catch_101
    move-exception v10

    .line 419
    .local v10, "e":Ljava/lang/Exception;
    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_52

    .line 428
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v9    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_107
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_73

    .line 449
    .end local v9    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :catch_10b
    move-exception v10

    .line 450
    .restart local v10    # "e":Ljava/lang/Exception;
    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_de
.end method

.method public reset()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 142
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_d

    .line 143
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 144
    iput-object v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    .line 146
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    if-eqz v0, :cond_20

    .line 147
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v0, :cond_21

    .line 148
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setScaled(Z)V

    .line 154
    :cond_1e
    :goto_1e
    iput-object v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    .line 156
    :cond_20
    return-void

    .line 149
    :cond_21
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v0, :cond_2f

    .line 150
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/StickerCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/StickerCell;->setScaled(Z)V

    goto :goto_1e

    .line 151
    :cond_2f
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v0, :cond_1e

    .line 152
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ContextLinkCell;->setScaled(Z)V

    goto :goto_1e
.end method

.method public setDelegate(Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;)V
    .registers 2
    .param p1, "stickerPreviewViewerDelegate"    # Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;

    .prologue
    .line 345
    iput-object p1, p0, Lorg/telegram/ui/StickerPreviewViewer;->delegate:Lorg/telegram/ui/StickerPreviewViewer$StickerPreviewViewerDelegate;

    .line 346
    return-void
.end method

.method public setKeyboardHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .prologue
    .line 391
    iput p1, p0, Lorg/telegram/ui/StickerPreviewViewer;->keyboardHeight:I

    .line 392
    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 349
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->parentActivity:Landroid/app/Activity;

    if-ne v0, p1, :cond_7

    .line 388
    :goto_6
    return-void

    .line 352
    :cond_7
    iput-object p1, p0, Lorg/telegram/ui/StickerPreviewViewer;->parentActivity:Landroid/app/Activity;

    .line 354
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    .line 355
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 356
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 357
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_25

    .line 358
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 361
    :cond_25
    new-instance v0, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;-><init>(Lorg/telegram/ui/StickerPreviewViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    .line 362
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;->setFocusable(Z)V

    .line 363
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    const/16 v2, 0x33

    invoke-static {v4, v4, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    new-instance v1, Lorg/telegram/ui/StickerPreviewViewer$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/StickerPreviewViewer$4;-><init>(Lorg/telegram/ui/StickerPreviewViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 374
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 375
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 376
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 377
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 378
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 379
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x63

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 380
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_89

    .line 381
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, -0x7ffffff8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 385
    :goto_76
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V

    .line 386
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    .line 387
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    goto/16 :goto_6

    .line 383
    :cond_89
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_76
.end method
