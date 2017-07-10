.class Lorg/telegram/ui/Components/ChatAttachAlert$22;
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

.field final synthetic val$animatorSetInner:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 2254
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$22;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$22;->val$animatorSetInner:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2257
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$22;->val$animatorSetInner:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_9

    .line 2258
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$22;->val$animatorSetInner:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2260
    :cond_9
    return-void
.end method
