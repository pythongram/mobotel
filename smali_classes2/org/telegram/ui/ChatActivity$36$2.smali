.class Lorg/telegram/ui/ChatActivity$36$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$36;->needChangePanelVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$36;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$36;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$36;

    .prologue
    .line 2800
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$36$2;->this$1:Lorg/telegram/ui/ChatActivity$36;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2812
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$36$2;->this$1:Lorg/telegram/ui/ChatActivity$36;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11100(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$36$2;->this$1:Lorg/telegram/ui/ChatActivity$36;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11100(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2813
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$36$2;->this$1:Lorg/telegram/ui/ChatActivity$36;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$11102(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2815
    :cond_20
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 2803
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$36$2;->this$1:Lorg/telegram/ui/ChatActivity$36;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11100(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$36$2;->this$1:Lorg/telegram/ui/ChatActivity$36;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11100(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 2804
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$36$2;->this$1:Lorg/telegram/ui/ChatActivity$36;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6600(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2805
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$36$2;->this$1:Lorg/telegram/ui/ChatActivity$36;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6600(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 2806
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$36$2;->this$1:Lorg/telegram/ui/ChatActivity$36;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # setter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->access$11102(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2808
    :cond_38
    return-void
.end method
