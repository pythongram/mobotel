.class Lorg/telegram/ui/ArticleViewer$BlockCollageCell$3;
.super Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$BlockCollageCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

.field final synthetic val$this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;Lorg/telegram/ui/ArticleViewer;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    .prologue
    .line 3467
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$3;->this$1:Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$3;->val$this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 3504
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$3;->this$1:Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    # getter for: Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->access$8200(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    move-result-object v0

    if-nez v0, :cond_a

    .line 3505
    const/4 v0, 0x0

    .line 3507
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$3;->this$1:Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    # getter for: Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->access$8200(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_9
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 3512
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$3;->this$1:Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    # getter for: Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->access$8200(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 3513
    .local v0, "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-eqz v1, :cond_14

    .line 3514
    const/4 v1, 0x0

    .line 3516
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x1

    goto :goto_13
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 6
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v2, 0x1

    .line 3487
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    packed-switch v1, :pswitch_data_34

    .line 3495
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    .line 3496
    .local v0, "cell":Lorg/telegram/ui/ArticleViewer$BlockVideoCell;
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$3;->this$1:Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    # getter for: Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->access$8200(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    invoke-virtual {v0, v1, v2, v2}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;ZZ)V

    .line 3500
    .end local v0    # "cell":Lorg/telegram/ui/ArticleViewer$BlockVideoCell;
    :goto_1d
    return-void

    .line 3489
    :pswitch_1e
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;

    .line 3490
    .local v0, "cell":Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$3;->this$1:Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    # getter for: Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->access$8200(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    invoke-virtual {v0, v1, v2, v2}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;ZZ)V

    goto :goto_1d

    .line 3487
    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_1e
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v3, 0x2

    .line 3471
    packed-switch p2, :pswitch_data_2a

    .line 3478
    new-instance v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$3;->this$1:Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$3;->this$1:Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;I)V

    .line 3482
    .local v0, "view":Landroid/view/View;
    :goto_13
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 3473
    .end local v0    # "view":Landroid/view/View;
    :pswitch_19
    new-instance v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$3;->this$1:Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$3;->this$1:Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;I)V

    .line 3474
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_13

    .line 3471
    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_19
    .end packed-switch
.end method
