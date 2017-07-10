.class Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3;
.super Landroid/support/v4/view/PagerAdapter;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

.field final synthetic val$this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;Lorg/telegram/ui/ArticleViewer;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    .prologue
    .line 3653
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3;->val$this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 3702
    check-cast p3, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;

    .end local p3    # "object":Ljava/lang/Object;
    # getter for: Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;->view:Landroid/view/View;
    invoke-static {p3}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;->access$8600(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3703
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 3662
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    # getter for: Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$8500(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    move-result-object v0

    if-nez v0, :cond_a

    .line 3663
    const/4 v0, 0x0

    .line 3665
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    # getter for: Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$8500(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_9
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 3675
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;

    .line 3676
    .local v0, "objectContainer":Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    # getter for: Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$8500(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->items:Ljava/util/ArrayList;

    # getter for: Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;->block:Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;->access$8700(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3677
    const/4 v1, -0x1

    .line 3679
    :goto_16
    return v1

    :cond_17
    const/4 v1, -0x2

    goto :goto_16
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 9
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x1

    .line 3685
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    # getter for: Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;
    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$8500(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 3686
    .local v0, "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-eqz v3, :cond_3a

    .line 3687
    new-instance v2, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    iget-object v3, v3, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    invoke-virtual {v4}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4, v5}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;I)V

    .local v2, "view":Landroid/view/View;
    move-object v3, v2

    .line 3688
    check-cast v3, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;

    move-object v4, v0

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    invoke-virtual {v3, v4, v5, v5}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;ZZ)V

    .line 3693
    :goto_2b
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3694
    new-instance v1, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;-><init>(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3;)V

    .line 3695
    .local v1, "objectContainer":Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;
    # setter for: Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;->view:Landroid/view/View;
    invoke-static {v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;->access$8602(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;Landroid/view/View;)Landroid/view/View;

    .line 3696
    # setter for: Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;->block:Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-static {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;->access$8702(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 3697
    return-object v1

    .line 3690
    .end local v1    # "objectContainer":Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;
    .end local v2    # "view":Landroid/view/View;
    :cond_3a
    new-instance v2, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    iget-object v3, v3, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3;->this$1:Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    invoke-virtual {v4}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4, v5}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;I)V

    .restart local v2    # "view":Landroid/view/View;
    move-object v3, v2

    .line 3691
    check-cast v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    move-object v4, v0

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    invoke-virtual {v3, v4, v5, v5}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;ZZ)V

    goto :goto_2b
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 3670
    check-cast p2, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;

    .end local p2    # "object":Ljava/lang/Object;
    # getter for: Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;->view:Landroid/view/View;
    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;->access$8600(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3$ObjectContainer;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 2
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 3707
    if-eqz p1, :cond_5

    .line 3708
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3710
    :cond_5
    return-void
.end method
