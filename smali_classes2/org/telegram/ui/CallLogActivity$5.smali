.class Lorg/telegram/ui/CallLogActivity$5;
.super Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
.source "CallLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CallLogActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/CallLogActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CallLogActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/CallLogActivity;

    .prologue
    .line 249
    iput-object p1, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .registers 16
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 252
    iget-object v9, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v9}, Lorg/telegram/ui/CallLogActivity;->access$400(Lorg/telegram/ui/CallLogActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 253
    .local v2, "firstVisibleItem":I
    const/4 v9, -0x1

    if-ne v2, v9, :cond_c9

    const/4 v8, 0x0

    .line 254
    .local v8, "visibleItemCount":I
    :goto_e
    if-lez v8, :cond_6d

    .line 255
    iget-object v9, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->listViewAdapter:Lorg/telegram/ui/CallLogActivity$ListAdapter;
    invoke-static {v9}, Lorg/telegram/ui/CallLogActivity;->access$500(Lorg/telegram/ui/CallLogActivity;)Lorg/telegram/ui/CallLogActivity$ListAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/CallLogActivity$ListAdapter;->getItemCount()I

    move-result v7

    .line 256
    .local v7, "totalItemCount":I
    iget-object v9, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->endReached:Z
    invoke-static {v9}, Lorg/telegram/ui/CallLogActivity;->access$600(Lorg/telegram/ui/CallLogActivity;)Z

    move-result v9

    if-nez v9, :cond_6d

    iget-object v9, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->loading:Z
    invoke-static {v9}, Lorg/telegram/ui/CallLogActivity;->access$700(Lorg/telegram/ui/CallLogActivity;)Z

    move-result v9

    if-nez v9, :cond_6d

    iget-object v9, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;
    invoke-static {v9}, Lorg/telegram/ui/CallLogActivity;->access$200(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6d

    add-int v9, v2, v8

    add-int/lit8 v10, v7, -0x5

    if-lt v9, v10, :cond_6d

    .line 257
    iget-object v9, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;
    invoke-static {v9}, Lorg/telegram/ui/CallLogActivity;->access$200(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object v9

    iget-object v10, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/ui/CallLogActivity;->access$200(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;

    .line 258
    .local v4, "row":Lorg/telegram/ui/CallLogActivity$CallLogRow;
    iget-object v10, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    iget-object v9, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/List;

    iget-object v11, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Message;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    const/16 v11, 0x64

    # invokes: Lorg/telegram/ui/CallLogActivity;->getCalls(II)V
    invoke-static {v10, v9, v11}, Lorg/telegram/ui/CallLogActivity;->access$800(Lorg/telegram/ui/CallLogActivity;II)V

    .line 262
    .end local v4    # "row":Lorg/telegram/ui/CallLogActivity$CallLogRow;
    .end local v7    # "totalItemCount":I
    :cond_6d
    iget-object v9, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->floatingButton:Landroid/widget/ImageView;
    invoke-static {v9}, Lorg/telegram/ui/CallLogActivity;->access$900(Lorg/telegram/ui/CallLogActivity;)Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ImageView;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_c8

    .line 263
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 264
    .local v5, "topChild":Landroid/view/View;
    const/4 v1, 0x0

    .line 265
    .local v1, "firstViewTop":I
    if-eqz v5, :cond_87

    .line 266
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v1

    .line 269
    :cond_87
    const/4 v0, 0x1

    .line 270
    .local v0, "changed":Z
    iget-object v9, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->prevPosition:I
    invoke-static {v9}, Lorg/telegram/ui/CallLogActivity;->access$1000(Lorg/telegram/ui/CallLogActivity;)I

    move-result v9

    if-ne v9, v2, :cond_e0

    .line 271
    iget-object v9, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->prevTop:I
    invoke-static {v9}, Lorg/telegram/ui/CallLogActivity;->access$1100(Lorg/telegram/ui/CallLogActivity;)I

    move-result v9

    sub-int v6, v9, v1

    .line 272
    .local v6, "topDelta":I
    iget-object v9, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->prevTop:I
    invoke-static {v9}, Lorg/telegram/ui/CallLogActivity;->access$1100(Lorg/telegram/ui/CallLogActivity;)I

    move-result v9

    if-ge v1, v9, :cond_dc

    const/4 v3, 0x1

    .line 273
    .local v3, "goingDown":Z
    :goto_a1
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_de

    const/4 v0, 0x1

    .line 277
    .end local v6    # "topDelta":I
    :goto_a9
    if-eqz v0, :cond_b8

    iget-object v9, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->scrollUpdated:Z
    invoke-static {v9}, Lorg/telegram/ui/CallLogActivity;->access$1200(Lorg/telegram/ui/CallLogActivity;)Z

    move-result v9

    if-eqz v9, :cond_b8

    .line 278
    iget-object v9, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    # invokes: Lorg/telegram/ui/CallLogActivity;->hideFloatingButton(Z)V
    invoke-static {v9, v3}, Lorg/telegram/ui/CallLogActivity;->access$1300(Lorg/telegram/ui/CallLogActivity;Z)V

    .line 280
    :cond_b8
    iget-object v9, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    # setter for: Lorg/telegram/ui/CallLogActivity;->prevPosition:I
    invoke-static {v9, v2}, Lorg/telegram/ui/CallLogActivity;->access$1002(Lorg/telegram/ui/CallLogActivity;I)I

    .line 281
    iget-object v9, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    # setter for: Lorg/telegram/ui/CallLogActivity;->prevTop:I
    invoke-static {v9, v1}, Lorg/telegram/ui/CallLogActivity;->access$1102(Lorg/telegram/ui/CallLogActivity;I)I

    .line 282
    iget-object v9, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    const/4 v10, 0x1

    # setter for: Lorg/telegram/ui/CallLogActivity;->scrollUpdated:Z
    invoke-static {v9, v10}, Lorg/telegram/ui/CallLogActivity;->access$1202(Lorg/telegram/ui/CallLogActivity;Z)Z

    .line 284
    .end local v0    # "changed":Z
    .end local v1    # "firstViewTop":I
    .end local v3    # "goingDown":Z
    .end local v5    # "topChild":Landroid/view/View;
    :cond_c8
    return-void

    .line 253
    .end local v8    # "visibleItemCount":I
    :cond_c9
    iget-object v9, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v9}, Lorg/telegram/ui/CallLogActivity;->access$400(Lorg/telegram/ui/CallLogActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v9

    sub-int/2addr v9, v2

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/lit8 v8, v9, 0x1

    goto/16 :goto_e

    .line 272
    .restart local v0    # "changed":Z
    .restart local v1    # "firstViewTop":I
    .restart local v5    # "topChild":Landroid/view/View;
    .restart local v6    # "topDelta":I
    .restart local v8    # "visibleItemCount":I
    :cond_dc
    const/4 v3, 0x0

    goto :goto_a1

    .line 273
    .restart local v3    # "goingDown":Z
    :cond_de
    const/4 v0, 0x0

    goto :goto_a9

    .line 275
    .end local v3    # "goingDown":Z
    .end local v6    # "topDelta":I
    :cond_e0
    iget-object v9, p0, Lorg/telegram/ui/CallLogActivity$5;->this$0:Lorg/telegram/ui/CallLogActivity;

    # getter for: Lorg/telegram/ui/CallLogActivity;->prevPosition:I
    invoke-static {v9}, Lorg/telegram/ui/CallLogActivity;->access$1000(Lorg/telegram/ui/CallLogActivity;)I

    move-result v9

    if-le v2, v9, :cond_ea

    const/4 v3, 0x1

    .restart local v3    # "goingDown":Z
    :goto_e9
    goto :goto_a9

    .end local v3    # "goingDown":Z
    :cond_ea
    const/4 v3, 0x0

    goto :goto_e9
.end method
