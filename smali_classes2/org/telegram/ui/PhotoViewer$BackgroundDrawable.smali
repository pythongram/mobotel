.class Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;
.super Landroid/graphics/drawable/ColorDrawable;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundDrawable"
.end annotation


# instance fields
.field private allowDrawContent:Z

.field private drawRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PhotoViewer;I)V
    .registers 3
    .param p2, "color"    # I

    .prologue
    .line 361
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->this$0:Lorg/telegram/ui/PhotoViewer;

    .line 362
    invoke-direct {p0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 363
    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    .prologue
    .line 356
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->allowDrawContent:Z

    return v0
.end method

.method static synthetic access$13102(Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 356
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->drawRunnable:Ljava/lang/Runnable;

    return-object p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 392
    invoke-super {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 393
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_15

    .line 394
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->drawRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_15

    .line 395
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->drawRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 396
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->drawRunnable:Ljava/lang/Runnable;

    .line 399
    :cond_15
    return-void
.end method

.method public setAlpha(I)V
    .registers 6
    .param p1, "alpha"    # I

    .prologue
    .line 367
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$900(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_3e

    .line 368
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->isVisible:Z
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1000(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0xff

    if-eq p1, v0, :cond_42

    :cond_16
    const/4 v0, 0x1

    :goto_17
    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->allowDrawContent:Z

    .line 369
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$900(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->allowDrawContent:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowDrawContent(Z)V

    .line 370
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 371
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->allowDrawContent:Z

    if-nez v0, :cond_44

    .line 372
    new-instance v0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable$1;-><init>(Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;)V

    const-wide/16 v2, 0x32

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 387
    :cond_3e
    :goto_3e
    invoke-super {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 388
    return-void

    .line 368
    :cond_42
    const/4 v0, 0x0

    goto :goto_17

    .line 381
    :cond_44
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 382
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->allowDrawContent:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAllowDrawContent(Z)V

    goto :goto_3e
.end method
