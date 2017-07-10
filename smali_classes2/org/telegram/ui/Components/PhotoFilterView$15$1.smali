.class Lorg/telegram/ui/Components/PhotoFilterView$15$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoFilterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoFilterView$15;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/PhotoFilterView$15;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoFilterView$15;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/Components/PhotoFilterView$15;

    .prologue
    .line 2336
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$15$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$15;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2339
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$15$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$15;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$15;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$15$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$15;

    iget-object v1, v1, Lorg/telegram/ui/Components/PhotoFilterView$15;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->enhanceTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5300(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    if-ne v0, v1, :cond_19

    .line 2340
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$15$1;->this$1:Lorg/telegram/ui/Components/PhotoFilterView$15;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$15;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # invokes: Lorg/telegram/ui/Components/PhotoFilterView;->checkEnhance()V
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$9300(Lorg/telegram/ui/Components/PhotoFilterView;)V

    .line 2342
    :cond_19
    return-void
.end method
