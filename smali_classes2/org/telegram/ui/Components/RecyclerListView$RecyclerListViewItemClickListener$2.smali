.class Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$2;
.super Ljava/lang/Object;
.source "RecyclerListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->onInterceptTouchEvent(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    .prologue
    .line 559
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$2;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 562
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$2;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->selectChildRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->access$700(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$2;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->access$200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 563
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$2;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->access$200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 564
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$2;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Components/RecyclerListView;->selectChildRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->access$702(Lorg/telegram/ui/Components/RecyclerListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 566
    :cond_28
    return-void
.end method
