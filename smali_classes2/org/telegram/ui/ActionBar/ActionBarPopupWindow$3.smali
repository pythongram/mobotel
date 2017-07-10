.class Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$3;
.super Ljava/lang/Object;
.source "ActionBarPopupWindow.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .prologue
    .line 415
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$3;->this$0:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 435
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$3;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 436
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 423
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$3;->this$0:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->windowAnimatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->access$502(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 424
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$3;->this$0:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setFocusable(Z)V

    .line 426
    :try_start_c
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$3;->this$0:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    # invokes: Landroid/widget/PopupWindow;->dismiss()V
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->access$601(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_17

    .line 430
    :goto_11
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$3;->this$0:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    # invokes: Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->unregisterListener()V
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->access$700(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V

    .line 431
    return-void

    .line 427
    :catch_17
    move-exception v0

    goto :goto_11
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 441
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 419
    return-void
.end method
