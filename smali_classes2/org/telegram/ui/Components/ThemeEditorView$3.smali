.class Lorg/telegram/ui/Components/ThemeEditorView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ThemeEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ThemeEditorView;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ThemeEditorView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ThemeEditorView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ThemeEditorView;

    .prologue
    .line 1079
    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$3;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1082
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$3;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2900(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 1083
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$3;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView;->access$3000(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$3;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2900(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1085
    :cond_17
    return-void
.end method
