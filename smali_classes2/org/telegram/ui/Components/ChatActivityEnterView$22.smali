.class Lorg/telegram/ui/Components/ChatActivityEnterView$22;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivityEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->showEditDoneProgress(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 1430
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1444
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1445
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6002(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1447
    :cond_1a
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x4

    .line 1433
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1434
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->val$show:Z

    if-nez v0, :cond_23

    .line 1435
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ContextProgressView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 1440
    :cond_22
    :goto_22
    return-void

    .line 1437
    :cond_23
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$22;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_22
.end method
