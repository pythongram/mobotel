.class Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;
.super Ljava/lang/Object;
.source "RecyclerListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->onSingleTapUp(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;

.field final synthetic val$position:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;Landroid/view/View;I)V
    .registers 4
    .param p1, "this$2"    # Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;

    .prologue
    .line 470
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;->this$2:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;

    iput-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;->val$view:Landroid/view/View;

    iput p3, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 473
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;->this$2:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->clickRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->access$600(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/lang/Runnable;

    move-result-object v0

    if-ne p0, v0, :cond_17

    .line 474
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;->this$2:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Components/RecyclerListView;->clickRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->access$602(Lorg/telegram/ui/Components/RecyclerListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 476
    :cond_17
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;->val$view:Landroid/view/View;

    if-eqz v0, :cond_53

    .line 477
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 478
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;->this$2:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->instantClick:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->access$500(Lorg/telegram/ui/Components/RecyclerListView;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 479
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->playSoundEffect(I)V

    .line 480
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;->this$2:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->onItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;
    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->access$300(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_53

    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;->val$position:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_53

    .line 481
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;->this$2:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->onItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;
    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->access$300(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;->val$view:Landroid/view/View;

    iget v2, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;->val$position:I

    invoke-interface {v0, v1, v2}, Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    .line 485
    :cond_53
    return-void
.end method
