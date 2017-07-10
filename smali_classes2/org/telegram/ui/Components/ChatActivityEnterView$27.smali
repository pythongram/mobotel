.class Lorg/telegram/ui/Components/ChatActivityEnterView$27;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivityEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->checkSendButton(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field final synthetic val$caption:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 1865
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$27;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$27;->val$caption:Ljava/lang/String;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1884
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$27;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$27;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1885
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$27;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6702(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1887
    :cond_1a
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1868
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$27;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$27;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1869
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$27;->val$caption:Ljava/lang/String;

    if-eqz v0, :cond_42

    .line 1870
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$27;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1871
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$27;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1876
    :goto_2d
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$27;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1877
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$27;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6702(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1878
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$27;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationType:I
    invoke-static {v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7002(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    .line 1880
    :cond_41
    return-void

    .line 1873
    :cond_42
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$27;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1874
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$27;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2d
.end method
