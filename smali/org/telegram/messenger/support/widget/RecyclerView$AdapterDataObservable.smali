.class Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObservable;
.super Landroid/database/Observable;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdapterDataObservable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable",
        "<",
        "Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 11078
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public hasObservers()Z
    .registers 2

    .prologue
    .line 11080
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public notifyChanged()V
    .registers 3

    .prologue
    .line 11088
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 11089
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 11088
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 11091
    :cond_18
    return-void
.end method

.method public notifyItemMoved(II)V
    .registers 6
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    .line 11128
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_19

    .line 11129
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;->onItemRangeMoved(III)V

    .line 11128
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 11131
    :cond_19
    return-void
.end method

.method public notifyItemRangeChanged(II)V
    .registers 4
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 11094
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 11095
    return-void
.end method

.method public notifyItemRangeChanged(IILjava/lang/Object;)V
    .registers 6
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    .line 11102
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 11103
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(IILjava/lang/Object;)V

    .line 11102
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 11105
    :cond_18
    return-void
.end method

.method public notifyItemRangeInserted(II)V
    .registers 5
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 11112
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 11113
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 11112
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 11115
    :cond_18
    return-void
.end method

.method public notifyItemRangeRemoved(II)V
    .registers 5
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 11122
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 11123
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    .line 11122
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 11125
    :cond_18
    return-void
.end method
