.class Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PasscodeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$1;)V
    .registers 2
    .param p1, "this$2"    # Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$1;

    .prologue
    .line 190
    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$1$1;->this$2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 193
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$1$1;->this$2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$1;->this$1:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    # getter for: Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->access$300(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$1$1;->this$2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$1;->this$1:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    # getter for: Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->access$300(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$1$1;->this$2:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$1;->this$1:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->access$302(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 196
    :cond_20
    return-void
.end method