.class Lorg/telegram/ui/ArticleViewer$WebpageAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebpageAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
    .registers 3
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 2321
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 2322
    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    .line 2323
    return-void
.end method

.method private getTypeForBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)I
    .registers 4
    .param p1, "block"    # Lorg/telegram/tgnet/TLRPC$PageBlock;

    .prologue
    const/4 v0, 0x0

    .line 2534
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    if-eqz v1, :cond_6

    .line 2573
    :cond_5
    :goto_5
    return v0

    .line 2536
    :cond_6
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    if-eqz v1, :cond_c

    .line 2537
    const/4 v0, 0x1

    goto :goto_5

    .line 2538
    :cond_c
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDivider;

    if-eqz v1, :cond_12

    .line 2539
    const/4 v0, 0x2

    goto :goto_5

    .line 2540
    :cond_12
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    if-eqz v1, :cond_18

    .line 2541
    const/4 v0, 0x3

    goto :goto_5

    .line 2542
    :cond_18
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;

    if-eqz v1, :cond_1e

    .line 2543
    const/4 v0, 0x4

    goto :goto_5

    .line 2544
    :cond_1e
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz v1, :cond_24

    .line 2545
    const/4 v0, 0x5

    goto :goto_5

    .line 2546
    :cond_24
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    if-eqz v1, :cond_2a

    .line 2547
    const/4 v0, 0x6

    goto :goto_5

    .line 2548
    :cond_2a
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    if-eqz v1, :cond_30

    .line 2549
    const/4 v0, 0x7

    goto :goto_5

    .line 2550
    :cond_30
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    if-eqz v1, :cond_37

    .line 2551
    const/16 v0, 0x8

    goto :goto_5

    .line 2552
    :cond_37
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-eqz v1, :cond_3e

    .line 2553
    const/16 v0, 0x9

    goto :goto_5

    .line 2554
    :cond_3e
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    if-eqz v1, :cond_45

    .line 2555
    const/16 v0, 0xa

    goto :goto_5

    .line 2556
    :cond_45
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    if-eqz v1, :cond_4c

    .line 2557
    const/16 v0, 0xb

    goto :goto_5

    .line 2558
    :cond_4c
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    if-eqz v1, :cond_53

    .line 2559
    const/16 v0, 0xc

    goto :goto_5

    .line 2560
    :cond_53
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;

    if-eqz v1, :cond_5a

    .line 2561
    const/16 v0, 0xd

    goto :goto_5

    .line 2562
    :cond_5a
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

    if-eqz v1, :cond_61

    .line 2563
    const/16 v0, 0xe

    goto :goto_5

    .line 2564
    :cond_61
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

    if-eqz v1, :cond_68

    .line 2565
    const/16 v0, 0xf

    goto :goto_5

    .line 2566
    :cond_68
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    if-eqz v1, :cond_6f

    .line 2567
    const/16 v0, 0x10

    goto :goto_5

    .line 2568
    :cond_6f
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    if-eqz v1, :cond_76

    .line 2569
    const/16 v0, 0x11

    goto :goto_5

    .line 2570
    :cond_76
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    if-eqz v1, :cond_5

    .line 2571
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$PageBlock;->cover:Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->getTypeForBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)I

    move-result v0

    goto :goto_5
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 2586
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$3600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$3600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 2578
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_d

    .line 2579
    const/16 v0, 0x5a

    .line 2581
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->getTypeForBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)I

    move-result v0

    goto :goto_c
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 3
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 2426
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 10
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2431
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, v3, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p2, v3, :cond_24

    .line 2432
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, v3, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 2433
    .local v0, "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    move-object v2, v0

    .line 2434
    .local v2, "originalBlock":Lorg/telegram/tgnet/TLRPC$PageBlock;
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    if-eqz v3, :cond_1d

    .line 2435
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->cover:Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 2437
    :cond_1d
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    packed-switch v3, :pswitch_data_10a

    .line 2531
    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    .end local v2    # "originalBlock":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :cond_24
    :goto_24
    return-void

    .line 2439
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    .restart local v2    # "originalBlock":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_25
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;

    .line 2440
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;)V

    goto :goto_24

    .line 2444
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_2f
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;

    .line 2445
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;)V

    goto :goto_24

    .line 2449
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_39
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockDividerCell;

    .line 2450
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockDividerCell;
    goto :goto_24

    .line 2453
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockDividerCell;
    :pswitch_3e
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    .line 2454
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;)V

    goto :goto_24

    .line 2458
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_48
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;

    .line 2459
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;)V

    goto :goto_24

    .line 2463
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_52
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    .line 2464
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockVideoCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    if-nez p2, :cond_6e

    move v3, v4

    :goto_5b
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, v6, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p2, v6, :cond_70

    :goto_67
    invoke-virtual {v1, v0, v3, v4}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;ZZ)V

    .line 2465
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->setParentBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    goto :goto_24

    :cond_6e
    move v3, v5

    .line 2464
    goto :goto_5b

    :cond_70
    move v4, v5

    goto :goto_67

    .line 2469
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockVideoCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_72
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;

    .line 2470
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;)V

    goto :goto_24

    .line 2474
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_7c
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;

    .line 2475
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;)V

    goto :goto_24

    .line 2479
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_86
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    .line 2480
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;)V

    goto :goto_24

    .line 2484
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_90
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;

    .line 2485
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    if-nez p2, :cond_ad

    move v3, v4

    :goto_99
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, v6, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p2, v6, :cond_af

    :goto_a5
    invoke-virtual {v1, v0, v3, v4}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;ZZ)V

    .line 2486
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->setParentBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    goto/16 :goto_24

    :cond_ad
    move v3, v5

    .line 2485
    goto :goto_99

    :cond_af
    move v4, v5

    goto :goto_a5

    .line 2490
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_b1
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;

    .line 2491
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;)V

    goto/16 :goto_24

    .line 2495
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_bc
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;

    .line 2496
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockTitleCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;)V

    goto/16 :goto_24

    .line 2500
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockTitleCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_c7
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockListCell;

    .line 2501
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockListCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockListCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;)V

    goto/16 :goto_24

    .line 2505
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockListCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_d2
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;

    .line 2506
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockFooterCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;)V

    goto/16 :goto_24

    .line 2510
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockFooterCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_dd
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;

    .line 2511
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;)V

    goto/16 :goto_24

    .line 2515
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_e8
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;

    .line 2516
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;)V

    goto/16 :goto_24

    .line 2520
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_f3
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;

    .line 2521
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;)V

    goto/16 :goto_24

    .line 2525
    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_fe
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    .line 2526
    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockCollageCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;)V

    goto/16 :goto_24

    .line 2437
    nop

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_25
        :pswitch_2f
        :pswitch_39
        :pswitch_3e
        :pswitch_48
        :pswitch_52
        :pswitch_72
        :pswitch_7c
        :pswitch_86
        :pswitch_90
        :pswitch_b1
        :pswitch_bc
        :pswitch_c7
        :pswitch_d2
        :pswitch_dd
        :pswitch_e8
        :pswitch_f3
        :pswitch_fe
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 13
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 2328
    packed-switch p2, :pswitch_data_112

    .line 2403
    new-instance v7, Lorg/telegram/ui/ArticleViewer$WebpageAdapter$1;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v7, p0, v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter$1;-><init>(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/content/Context;)V

    .line 2409
    .local v7, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v8, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2410
    .local v8, "textView":Landroid/widget/TextView;
    const/high16 v1, 0x42080000    # 34.0f

    const/16 v2, 0x33

    const/high16 v4, 0x41200000    # 10.0f

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2411
    const v1, -0x877d73

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2412
    const v1, -0x121010

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 2413
    const-string v1, "PreviewFeedback"

    const v2, 0x7f070469

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2414
    const/4 v1, 0x1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v8, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2415
    const/16 v1, 0x11

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 2416
    move-object v9, v7

    .line 2420
    .end local v7    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v8    # "textView":Landroid/widget/TextView;
    .local v9, "view":Landroid/view/View;
    :goto_47
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2421
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v0

    .line 2330
    .end local v9    # "view":Landroid/view/View;
    :pswitch_56
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .line 2331
    .restart local v9    # "view":Landroid/view/View;
    goto :goto_47

    .line 2334
    .end local v9    # "view":Landroid/view/View;
    :pswitch_60
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .line 2335
    .restart local v9    # "view":Landroid/view/View;
    goto :goto_47

    .line 2338
    .end local v9    # "view":Landroid/view/View;
    :pswitch_6a
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockDividerCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockDividerCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .line 2339
    .restart local v9    # "view":Landroid/view/View;
    goto :goto_47

    .line 2342
    .end local v9    # "view":Landroid/view/View;
    :pswitch_74
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .line 2343
    .restart local v9    # "view":Landroid/view/View;
    goto :goto_47

    .line 2346
    .end local v9    # "view":Landroid/view/View;
    :pswitch_7e
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .line 2347
    .restart local v9    # "view":Landroid/view/View;
    goto :goto_47

    .line 2350
    .end local v9    # "view":Landroid/view/View;
    :pswitch_88
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2, v4}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;I)V

    .line 2351
    .restart local v9    # "view":Landroid/view/View;
    goto :goto_47

    .line 2354
    .end local v9    # "view":Landroid/view/View;
    :pswitch_92
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .line 2355
    .restart local v9    # "view":Landroid/view/View;
    goto :goto_47

    .line 2358
    .end local v9    # "view":Landroid/view/View;
    :pswitch_9c
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .line 2359
    .restart local v9    # "view":Landroid/view/View;
    goto :goto_47

    .line 2362
    .end local v9    # "view":Landroid/view/View;
    :pswitch_a6
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .line 2363
    .restart local v9    # "view":Landroid/view/View;
    goto :goto_47

    .line 2366
    .end local v9    # "view":Landroid/view/View;
    :pswitch_b0
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2, v4}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;I)V

    .line 2367
    .restart local v9    # "view":Landroid/view/View;
    goto :goto_47

    .line 2370
    .end local v9    # "view":Landroid/view/View;
    :pswitch_ba
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .line 2371
    .restart local v9    # "view":Landroid/view/View;
    goto :goto_47

    .line 2374
    .end local v9    # "view":Landroid/view/View;
    :pswitch_c4
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .line 2375
    .restart local v9    # "view":Landroid/view/View;
    goto/16 :goto_47

    .line 2378
    .end local v9    # "view":Landroid/view/View;
    :pswitch_cf
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockListCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockListCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .line 2379
    .restart local v9    # "view":Landroid/view/View;
    goto/16 :goto_47

    .line 2382
    .end local v9    # "view":Landroid/view/View;
    :pswitch_da
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .line 2383
    .restart local v9    # "view":Landroid/view/View;
    goto/16 :goto_47

    .line 2386
    .end local v9    # "view":Landroid/view/View;
    :pswitch_e5
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .line 2387
    .restart local v9    # "view":Landroid/view/View;
    goto/16 :goto_47

    .line 2390
    .end local v9    # "view":Landroid/view/View;
    :pswitch_f0
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .line 2391
    .restart local v9    # "view":Landroid/view/View;
    goto/16 :goto_47

    .line 2394
    .end local v9    # "view":Landroid/view/View;
    :pswitch_fb
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .line 2395
    .restart local v9    # "view":Landroid/view/View;
    goto/16 :goto_47

    .line 2398
    .end local v9    # "view":Landroid/view/View;
    :pswitch_106
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .line 2399
    .restart local v9    # "view":Landroid/view/View;
    goto/16 :goto_47

    .line 2328
    nop

    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_56
        :pswitch_60
        :pswitch_6a
        :pswitch_74
        :pswitch_7e
        :pswitch_88
        :pswitch_92
        :pswitch_9c
        :pswitch_a6
        :pswitch_b0
        :pswitch_ba
        :pswitch_c4
        :pswitch_cf
        :pswitch_da
        :pswitch_e5
        :pswitch_f0
        :pswitch_fb
        :pswitch_106
    .end packed-switch
.end method
