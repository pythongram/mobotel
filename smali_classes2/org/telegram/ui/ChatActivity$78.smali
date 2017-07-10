.class Lorg/telegram/ui/ChatActivity$78;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->updateSpamView()V
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
    .line 7980
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 7991
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->reportSpamViewAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->reportSpamViewAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 7992
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/ChatActivity;->reportSpamViewAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$16902(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 7994
    :cond_1a
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 7983
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->reportSpamViewAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->reportSpamViewAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 7984
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->reportSpamView:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7985
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/ChatActivity;->reportSpamViewAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$16902(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 7987
    :cond_25
    return-void
.end method
