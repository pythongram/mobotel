.class Lorg/telegram/ui/ChatActivity$53;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/Adapters/StickersAdapter$StickersAdapterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->initStickers()V
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
    .line 3791
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$53;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public needChangePanelVisibility(Z)V
    .registers 12
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v9, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 3794
    if-eqz p1, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$53;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->stickersPanel:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_24

    :cond_14
    if-nez p1, :cond_25

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$53;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->stickersPanel:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v5, 0x8

    if-ne v0, v5, :cond_25

    .line 3838
    :cond_24
    :goto_24
    return-void

    .line 3797
    :cond_25
    if-eqz p1, :cond_42

    .line 3798
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$53;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->stickersListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->scrollToPosition(I)V

    .line 3799
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$53;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->stickersPanel:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v5

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$53;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->allowStickersPanel:Z
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11200(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_b8

    move v0, v1

    :goto_3f
    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3801
    :cond_42
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$53;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->runningAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14700(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 3802
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$53;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->runningAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14700(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3803
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$53;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x0

    # setter for: Lorg/telegram/ui/ChatActivity;->runningAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v5}, Lorg/telegram/ui/ChatActivity;->access$14702(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 3805
    :cond_59
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$53;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->stickersPanel:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_be

    .line 3806
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$53;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    # setter for: Lorg/telegram/ui/ChatActivity;->runningAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->access$14702(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 3807
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$53;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->runningAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14700(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v5, v9, [Landroid/animation/Animator;

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$53;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 3808
    # getter for: Lorg/telegram/ui/ChatActivity;->stickersPanel:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v6

    const-string v7, "alpha"

    const/4 v0, 0x2

    new-array v8, v0, [F

    if-eqz p1, :cond_ba

    move v0, v3

    :goto_85
    aput v0, v8, v1

    if-eqz p1, :cond_bc

    :goto_89
    aput v4, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v5, v1

    .line 3807
    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3810
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$53;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->runningAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14700(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3811
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$53;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->runningAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14700(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ChatActivity$53$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ChatActivity$53$1;-><init>(Lorg/telegram/ui/ChatActivity$53;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3834
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$53;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->runningAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14700(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_24

    :cond_b8
    move v0, v2

    .line 3799
    goto :goto_3f

    :cond_ba
    move v0, v4

    .line 3808
    goto :goto_85

    :cond_bc
    move v4, v3

    goto :goto_89

    .line 3835
    :cond_be
    if-nez p1, :cond_24

    .line 3836
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$53;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->stickersPanel:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_24
.end method
