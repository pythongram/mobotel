.class Lorg/telegram/ui/Components/AnimatedFileDrawable$1;
.super Ljava/lang/Object;
.source "AnimatedFileDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/AnimatedFileDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .prologue
    .line 79
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$1;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$1;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 83
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$1;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 87
    :cond_11
    :goto_11
    return-void

    .line 84
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$1;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->parentView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$100(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 85
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$1;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    # getter for: Lorg/telegram/ui/Components/AnimatedFileDrawable;->parentView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$100(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_11
.end method
