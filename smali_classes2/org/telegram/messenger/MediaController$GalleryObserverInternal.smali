.class Lorg/telegram/messenger/MediaController$GalleryObserverInternal;
.super Landroid/database/ContentObserver;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GalleryObserverInternal"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaController;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/MediaController;)V
    .registers 3

    .prologue
    .line 493
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$GalleryObserverInternal;->this$0:Lorg/telegram/messenger/MediaController;

    .line 494
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 495
    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/MediaController$GalleryObserverInternal;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController$GalleryObserverInternal;

    .prologue
    .line 492
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController$GalleryObserverInternal;->scheduleReloadRunnable()V

    return-void
.end method

.method private scheduleReloadRunnable()V
    .registers 5

    .prologue
    .line 498
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$GalleryObserverInternal;->this$0:Lorg/telegram/messenger/MediaController;

    new-instance v1, Lorg/telegram/messenger/MediaController$GalleryObserverInternal$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$GalleryObserverInternal$1;-><init>(Lorg/telegram/messenger/MediaController$GalleryObserverInternal;)V

    invoke-static {v0, v1}, Lorg/telegram/messenger/MediaController;->access$1402(Lorg/telegram/messenger/MediaController;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 509
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 513
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 514
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$GalleryObserverInternal;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$1400(Lorg/telegram/messenger/MediaController;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 515
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$GalleryObserverInternal;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$1400(Lorg/telegram/messenger/MediaController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 517
    :cond_14
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController$GalleryObserverInternal;->scheduleReloadRunnable()V

    .line 518
    return-void
.end method
