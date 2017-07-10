.class public Lorg/telegram/ui/Telehgram/FavEmojisActivity$TouchHelperCallback;
.super Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;
.source "FavEmojisActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Telehgram/FavEmojisActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TouchHelperCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    .prologue
    .line 225
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$TouchHelperCallback;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clearView(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .registers 5
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 261
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->clearView(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 262
    iget-object v0, p2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 263
    return-void
.end method

.method public getMovementFlags(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I
    .registers 5
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v1, 0x0

    .line 231
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eqz v0, :cond_c

    .line 232
    invoke-static {v1, v1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result v0

    .line 234
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x3

    invoke-static {v0, v1}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result v0

    goto :goto_b
.end method

.method public isLongPressDragEnabled()Z
    .registers 2

    .prologue
    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;FFIZ)V
    .registers 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p3, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .prologue
    .line 246
    invoke-super/range {p0 .. p7}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 247
    return-void
.end method

.method public onMove(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 7
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "source"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 238
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    invoke-virtual {p3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    if-eq v0, v1, :cond_c

    .line 239
    const/4 v0, 0x0

    .line 242
    :goto_b
    return v0

    .line 241
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$TouchHelperCallback;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->listAdapter:Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$1200(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {p3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->swapElements(II)V

    .line 242
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public onSelectedChanged(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 5
    .param p1, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .prologue
    .line 250
    if-eqz p2, :cond_12

    .line 251
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity$TouchHelperCallback;->this$0:Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FavEmojisActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->access$1300(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    .line 252
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 254
    :cond_12
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V

    .line 255
    return-void
.end method

.method public onSwiped(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 3
    .param p1, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "direction"    # I

    .prologue
    .line 258
    return-void
.end method
