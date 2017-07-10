.class Lorg/telegram/ui/PhotoViewer$3;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 1284
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1288
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->lastInsets:Ljava/lang/Object;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$3100(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;

    .line 1289
    .local v0, "oldInsets":Landroid/view/WindowInsets;
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    # setter for: Lorg/telegram/ui/PhotoViewer;->lastInsets:Ljava/lang/Object;
    invoke-static {v1, p2}, Lorg/telegram/ui/PhotoViewer;->access$3102(Lorg/telegram/ui/PhotoViewer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/view/WindowInsets;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/WindowInsets;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 1291
    :cond_1d
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$3;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$4300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1293
    :cond_26
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    return-object v1
.end method
