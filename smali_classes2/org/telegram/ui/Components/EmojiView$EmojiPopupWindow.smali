.class Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;
.super Landroid/widget/PopupWindow;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmojiPopupWindow"
.end annotation


# instance fields
.field private mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mViewTreeObserver:Landroid/view/ViewTreeObserver;

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;)V
    .registers 2

    .prologue
    .line 396
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->this$0:Lorg/telegram/ui/Components/EmojiView;

    .line 397
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 398
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->init()V

    .line 399
    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;II)V
    .registers 4
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 406
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->this$0:Lorg/telegram/ui/Components/EmojiView;

    .line 407
    invoke-direct {p0, p2, p3}, Landroid/widget/PopupWindow;-><init>(II)V

    .line 408
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->init()V

    .line 409
    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 401
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->this$0:Lorg/telegram/ui/Components/EmojiView;

    .line 402
    invoke-direct {p0, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 403
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->init()V

    .line 404
    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;)V
    .registers 3
    .param p2, "contentView"    # Landroid/view/View;

    .prologue
    .line 411
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->this$0:Lorg/telegram/ui/Components/EmojiView;

    .line 412
    invoke-direct {p0, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    .line 413
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->init()V

    .line 414
    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;II)V
    .registers 5
    .param p2, "contentView"    # Landroid/view/View;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 421
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->this$0:Lorg/telegram/ui/Components/EmojiView;

    .line 422
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 423
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->init()V

    .line 424
    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;IIZ)V
    .registers 6
    .param p2, "contentView"    # Landroid/view/View;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "focusable"    # Z

    .prologue
    .line 416
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->this$0:Lorg/telegram/ui/Components/EmojiView;

    .line 417
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 418
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->init()V

    .line 419
    return-void
.end method

.method private init()V
    .registers 4

    .prologue
    .line 427
    # getter for: Lorg/telegram/ui/Components/EmojiView;->superListenerField:Ljava/lang/reflect/Field;
    invoke-static {}, Lorg/telegram/ui/Components/EmojiView;->access$2500()Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 429
    :try_start_6
    # getter for: Lorg/telegram/ui/Components/EmojiView;->superListenerField:Ljava/lang/reflect/Field;
    invoke-static {}, Lorg/telegram/ui/Components/EmojiView;->access$2500()Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 430
    # getter for: Lorg/telegram/ui/Components/EmojiView;->superListenerField:Ljava/lang/reflect/Field;
    invoke-static {}, Lorg/telegram/ui/Components/EmojiView;->access$2500()Ljava/lang/reflect/Field;

    move-result-object v1

    # getter for: Lorg/telegram/ui/Components/EmojiView;->NOP:Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    invoke-static {}, Lorg/telegram/ui/Components/EmojiView;->access$2600()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1d} :catch_1e

    .line 435
    :cond_1d
    :goto_1d
    return-void

    .line 431
    :catch_1e
    move-exception v0

    .line 432
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    goto :goto_1d
.end method

.method private registerListener(Landroid/view/View;)V
    .registers 5
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 447
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v1, :cond_2e

    .line 448
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_2f

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 449
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    :goto_e
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eq v0, v1, :cond_2e

    .line 450
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 451
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 453
    :cond_25
    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_2e

    .line 454
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 458
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_2e
    return-void

    .line 448
    :cond_2f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private unregisterListener()V
    .registers 3

    .prologue
    .line 438
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1a

    .line 439
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 440
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 442
    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 444
    :cond_1a
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .prologue
    .line 490
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->setFocusable(Z)V

    .line 492
    :try_start_4
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_b

    .line 496
    :goto_7
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->unregisterListener()V

    .line 497
    return-void

    .line 493
    :catch_b
    move-exception v0

    goto :goto_7
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .registers 5
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .prologue
    .line 463
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 464
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->registerListener(Landroid/view/View;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 468
    :goto_6
    return-void

    .line 465
    :catch_7
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .registers 5
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 484
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 485
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->unregisterListener()V

    .line 486
    return-void
.end method

.method public update(Landroid/view/View;II)V
    .registers 4
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 478
    invoke-super {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->update(Landroid/view/View;II)V

    .line 479
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->registerListener(Landroid/view/View;)V

    .line 480
    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .registers 6
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 472
    invoke-super/range {p0 .. p5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 473
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->registerListener(Landroid/view/View;)V

    .line 474
    return-void
.end method
