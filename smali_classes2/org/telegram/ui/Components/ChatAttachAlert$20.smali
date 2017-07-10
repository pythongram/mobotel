.class Lorg/telegram/ui/Components/ChatAttachAlert$20;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatAttachAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;->showHint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 1528
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$20;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1549
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$20;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$6000(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$20;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$6000(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1550
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$20;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$6002(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1552
    :cond_1a
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1531
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$20;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$6000(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$20;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$6000(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1545
    :cond_14
    :goto_14
    return-void

    .line 1534
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$20;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$6002(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1535
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$20;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$20$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$20$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert$20;)V

    # setter for: Lorg/telegram/ui/Components/ChatAttachAlert;->hideHintRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$6302(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_14
.end method
