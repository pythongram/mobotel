.class Lorg/telegram/ui/LoginActivity$3;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LoginActivity;

.field final synthetic val$outView:Lorg/telegram/ui/Components/SlideView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity;Lorg/telegram/ui/Components/SlideView;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/LoginActivity;

    .prologue
    .line 460
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$3;->this$0:Lorg/telegram/ui/LoginActivity;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$3;->val$outView:Lorg/telegram/ui/Components/SlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 474
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 468
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$3;->val$outView:Lorg/telegram/ui/Components/SlideView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SlideView;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$3;->val$outView:Lorg/telegram/ui/Components/SlideView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SlideView;->setX(F)V

    .line 470
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 478
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 463
    return-void
.end method
