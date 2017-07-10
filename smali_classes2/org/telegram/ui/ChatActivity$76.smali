.class Lorg/telegram/ui/ChatActivity$76;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->hidePinnedMessageView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 7838
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$76;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 7849
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$76;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->pinnedMessageViewAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16700(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$76;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->pinnedMessageViewAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16700(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 7850
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$76;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/ChatActivity;->pinnedMessageViewAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$16702(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 7852
    :cond_1a
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 7841
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$76;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->pinnedMessageViewAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16700(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$76;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->pinnedMessageViewAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16700(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 7842
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$76;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->pinnedMessageView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7843
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$76;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/ChatActivity;->pinnedMessageViewAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$16702(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 7845
    :cond_25
    return-void
.end method
