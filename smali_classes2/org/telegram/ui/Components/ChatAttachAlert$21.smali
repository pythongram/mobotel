.class Lorg/telegram/ui/Components/ChatAttachAlert$21;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatAttachAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;->startRevealAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

.field final synthetic val$animatorSet:Landroid/animation/AnimatorSet;

.field final synthetic val$open:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;ZLandroid/animation/AnimatorSet;)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 2176
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$21;->val$open:Z

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$21;->val$animatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2195
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->currentSheetAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$7600(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$21;->val$animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2196
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Components/ChatAttachAlert;->currentSheetAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$7702(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2198
    :cond_16
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    .line 2178
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->currentSheetAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$7000(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;

    move-result-object v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->currentSheetAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$7100(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 2179
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # setter for: Lorg/telegram/ui/Components/ChatAttachAlert;->currentSheetAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v1, v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$7202(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2180
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$21;->val$open:Z

    # invokes: Lorg/telegram/ui/Components/ChatAttachAlert;->onRevealAnimationEnd(Z)V
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$7300(Lorg/telegram/ui/Components/ChatAttachAlert;Z)V

    .line 2181
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$7400(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    .line 2182
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$7500(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2183
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$21;->val$open:Z

    if-nez v1, :cond_3d

    .line 2185
    :try_start_38
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismissInternal()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3d} :catch_3e

    .line 2191
    :cond_3d
    :goto_3d
    return-void

    .line 2186
    :catch_3e
    move-exception v0

    .line 2187
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3d
.end method
