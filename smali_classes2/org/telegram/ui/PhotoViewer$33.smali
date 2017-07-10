.class Lorg/telegram/ui/PhotoViewer$33;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "PhotoViewer.java"


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
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/PhotoViewer;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2146
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$33;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2149
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$33;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->bottomTouchEnabled:Z
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2800(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2154
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$33;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->bottomTouchEnabled:Z
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2800(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2159
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$33;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->bottomTouchEnabled:Z
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2800(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
