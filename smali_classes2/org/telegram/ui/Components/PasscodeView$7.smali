.class Lorg/telegram/ui/Components/PasscodeView$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PasscodeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PasscodeView;->processDone(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PasscodeView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PasscodeView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PasscodeView;

    .prologue
    .line 760
    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$7;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 763
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$7;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PasscodeView;->setVisibility(I)V

    .line 764
    return-void
.end method
