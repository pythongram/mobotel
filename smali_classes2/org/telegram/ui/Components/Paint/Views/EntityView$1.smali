.class Lorg/telegram/ui/Components/Paint/Views/EntityView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "EntityView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Views/EntityView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .prologue
    .line 55
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    # getter for: Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasPanned:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$000(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    # getter for: Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasTransformed:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$100(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    # getter for: Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasReleased:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$200(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 66
    :cond_18
    :goto_18
    return-void

    .line 61
    :cond_19
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/ui/Components/Paint/Views/EntityView;->recognizedLongPress:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$302(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z

    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    # getter for: Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$400(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->performHapticFeedback(I)Z

    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    # getter for: Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$400(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->onEntityLongClicked(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    goto :goto_18
.end method
