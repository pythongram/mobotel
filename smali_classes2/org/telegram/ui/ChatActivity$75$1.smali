.class Lorg/telegram/ui/ChatActivity$75$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$75;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$75;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$75;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$75;

    .prologue
    .line 7805
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$75$1;->this$1:Lorg/telegram/ui/ChatActivity$75;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 7816
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$75$1;->this$1:Lorg/telegram/ui/ChatActivity$75;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$75;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->alertViewAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$75$1;->this$1:Lorg/telegram/ui/ChatActivity$75;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$75;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->alertViewAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 7817
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$75$1;->this$1:Lorg/telegram/ui/ChatActivity$75;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$75;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/ChatActivity;->alertViewAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$16402(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 7819
    :cond_20
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 7808
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$75$1;->this$1:Lorg/telegram/ui/ChatActivity$75;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$75;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->alertViewAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$75$1;->this$1:Lorg/telegram/ui/ChatActivity$75;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$75;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->alertViewAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 7809
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$75$1;->this$1:Lorg/telegram/ui/ChatActivity$75;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$75;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->alertView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16600(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7810
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$75$1;->this$1:Lorg/telegram/ui/ChatActivity$75;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$75;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/ChatActivity;->alertViewAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$16402(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 7812
    :cond_2d
    return-void
.end method
