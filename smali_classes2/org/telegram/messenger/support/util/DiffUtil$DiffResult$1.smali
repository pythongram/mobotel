.class Lorg/telegram/messenger/support/util/DiffUtil$DiffResult$1;
.super Ljava/lang/Object;
.source "DiffUtil.java"

# interfaces
.implements Lorg/telegram/messenger/support/util/ListUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;->dispatchUpdatesTo(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;

.field final synthetic val$adapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;

    .prologue
    .line 659
    iput-object p1, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult$1;->this$0:Lorg/telegram/messenger/support/util/DiffUtil$DiffResult;

    iput-object p2, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult$1;->val$adapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(IILjava/lang/Object;)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "count"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    .line 677
    iget-object v0, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult$1;->val$adapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 678
    return-void
.end method

.method public onInserted(II)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .line 662
    iget-object v0, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult$1;->val$adapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 663
    return-void
.end method

.method public onMoved(II)V
    .registers 4
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    .line 672
    iget-object v0, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult$1;->val$adapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 673
    return-void
.end method

.method public onRemoved(II)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .line 667
    iget-object v0, p0, Lorg/telegram/messenger/support/util/DiffUtil$DiffResult$1;->val$adapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 668
    return-void
.end method
