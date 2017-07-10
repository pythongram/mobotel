.class Lorg/telegram/ui/Components/ChatActivityEnterView$21;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivityEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->showTopView(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field final synthetic val$openKeyboard:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 1341
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->val$openKeyboard:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1354
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1355
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5702(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1357
    :cond_1a
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1344
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1345
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->forceShowSendButton:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->val$openKeyboard:Z

    if-eqz v0, :cond_31

    .line 1346
    :cond_2c
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboard()V

    .line 1348
    :cond_31
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5702(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1350
    :cond_37
    return-void
.end method
