.class Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StickersGridAdapter"
.end annotation


# instance fields
.field private cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private onlyFavs:Z

.field private packStartRow:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private rowStartPack:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;"
        }
    .end annotation
.end field

.field private stickersPerRow:I

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;

.field private totalItems:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;Z)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "onlyFav"    # Z

    .prologue
    .line 2450
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 2444
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->rowStartPack:Ljava/util/HashMap;

    .line 2445
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->packStartRow:Ljava/util/HashMap;

    .line 2446
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->cache:Ljava/util/HashMap;

    .line 2451
    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->context:Landroid/content/Context;

    .line 2452
    iput-boolean p3, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->onlyFavs:Z

    .line 2454
    return-void
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    .prologue
    .line 2440
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    return v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    .prologue
    .line 2440
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->stickersPerRow:I

    return v0
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 2467
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->cache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 2463
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    if-eqz v0, :cond_9

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    add-int/lit8 v0, v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 2480
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->cache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 2481
    const/4 v0, 0x0

    .line 2483
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public getPositionForPack(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)I
    .registers 5
    .param p1, "stickerSet"    # Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .prologue
    .line 2471
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->packStartRow:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2472
    .local v0, "pos":Ljava/lang/Integer;
    if-nez v0, :cond_c

    .line 2473
    const/4 v1, -0x1

    .line 2475
    :goto_b
    return v1

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->stickersPerRow:I

    mul-int/2addr v1, v2

    goto :goto_b
.end method

.method public getTabForPosition(I)I
    .registers 7
    .param p1, "position"    # I

    .prologue
    .line 2487
    iget v3, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->stickersPerRow:I

    if-nez v3, :cond_1a

    .line 2488
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmojiView;->getMeasuredWidth()I

    move-result v2

    .line 2489
    .local v2, "width":I
    if-nez v2, :cond_10

    .line 2490
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v3, Landroid/graphics/Point;->x:I

    .line 2492
    :cond_10
    const/high16 v3, 0x42900000    # 72.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    div-int v3, v2, v3

    iput v3, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->stickersPerRow:I

    .line 2494
    .end local v2    # "width":I
    :cond_1a
    iget v3, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->stickersPerRow:I

    div-int v1, p1, v3

    .line 2495
    .local v1, "row":I
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->rowStartPack:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 2496
    .local v0, "pack":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    if-nez v0, :cond_33

    .line 2497
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I
    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$5800(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v3

    .line 2499
    :goto_32
    return v3

    :cond_33
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$6000(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I
    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$5900(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_32
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 3
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 2458
    const/4 v0, 0x0

    return v0
.end method

.method public notifyDataSetChanged()V
    .registers 12

    .prologue
    .line 2548
    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/EmojiView;->getMeasuredWidth()I

    move-result v7

    .line 2549
    .local v7, "width":I
    if-nez v7, :cond_c

    .line 2550
    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v8, Landroid/graphics/Point;->x:I

    .line 2552
    :cond_c
    const/high16 v8, 0x42900000    # 72.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    div-int v8, v7, v8

    iput v8, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->stickersPerRow:I

    .line 2553
    iget-boolean v8, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->onlyFavs:Z

    if-eqz v8, :cond_7c

    .line 2554
    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->favStickersLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;
    invoke-static {v8}, Lorg/telegram/ui/Components/EmojiView;->access$7400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/messenger/support/widget/GridLayoutManager;

    move-result-object v8

    iget v9, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->stickersPerRow:I

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->setSpanCount(I)V

    .line 2558
    :goto_25
    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->rowStartPack:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 2559
    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->packStartRow:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 2560
    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->cache:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 2561
    const/4 v8, 0x0

    iput v8, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    .line 2562
    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;
    invoke-static {v8}, Lorg/telegram/ui/Components/EmojiView;->access$6000(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v5

    .line 2567
    .local v5, "packs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    iget-boolean v8, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->onlyFavs:Z

    if-eqz v8, :cond_a2

    .line 2568
    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->favStickers:Ljava/util/ArrayList;
    invoke-static {v8}, Lorg/telegram/ui/Components/EmojiView;->access$7500(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2569
    .local v3, "documents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    iget v8, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    iget v9, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->stickersPerRow:I

    div-int v6, v8, v9

    .line 2570
    .local v6, "startRow":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_116

    .line 2571
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->stickersPerRow:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v2, v8

    .line 2572
    .local v2, "count":I
    const/4 v1, 0x0

    .local v1, "b":I
    :goto_63
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_88

    .line 2573
    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->cache:Ljava/util/HashMap;

    iget v9, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    add-int/2addr v9, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2572
    add-int/lit8 v1, v1, 0x1

    goto :goto_63

    .line 2556
    .end local v1    # "b":I
    .end local v2    # "count":I
    .end local v3    # "documents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    .end local v5    # "packs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .end local v6    # "startRow":I
    :cond_7c
    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->stickersLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;
    invoke-static {v8}, Lorg/telegram/ui/Components/EmojiView;->access$200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/messenger/support/widget/GridLayoutManager;

    move-result-object v8

    iget v9, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->stickersPerRow:I

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->setSpanCount(I)V

    goto :goto_25

    .line 2575
    .restart local v1    # "b":I
    .restart local v2    # "count":I
    .restart local v3    # "documents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    .restart local v5    # "packs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .restart local v6    # "startRow":I
    :cond_88
    iget v8, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    iget v9, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->stickersPerRow:I

    mul-int/2addr v9, v2

    add-int/2addr v8, v9

    iput v8, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    .line 2576
    const/4 v1, 0x0

    :goto_91
    if-ge v1, v2, :cond_116

    .line 2577
    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->rowStartPack:Ljava/util/HashMap;

    add-int v9, v6, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2576
    add-int/lit8 v1, v1, 0x1

    goto :goto_91

    .line 2581
    .end local v1    # "b":I
    .end local v2    # "count":I
    .end local v3    # "documents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    .end local v6    # "startRow":I
    :cond_a2
    const/4 v0, -0x1

    .local v0, "a":I
    :goto_a3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_116

    .line 2582
    const/4 v4, 0x0

    .line 2583
    .local v4, "pack":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    iget v8, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    iget v9, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->stickersPerRow:I

    div-int v6, v8, v9

    .line 2584
    .restart local v6    # "startRow":I
    const/4 v8, -0x1

    if-ne v0, v8, :cond_e8

    .line 2585
    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;
    invoke-static {v8}, Lorg/telegram/ui/Components/EmojiView;->access$6100(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2591
    .restart local v3    # "documents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    :goto_b9
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_113

    .line 2592
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->stickersPerRow:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v2, v8

    .line 2593
    .restart local v2    # "count":I
    const/4 v1, 0x0

    .restart local v1    # "b":I
    :goto_cf
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_fa

    .line 2594
    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->cache:Ljava/util/HashMap;

    iget v9, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    add-int/2addr v9, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2593
    add-int/lit8 v1, v1, 0x1

    goto :goto_cf

    .line 2587
    .end local v1    # "b":I
    .end local v2    # "count":I
    .end local v3    # "documents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    :cond_e8
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "pack":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 2588
    .restart local v4    # "pack":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    .line 2589
    .restart local v3    # "documents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->packStartRow:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b9

    .line 2596
    .restart local v1    # "b":I
    .restart local v2    # "count":I
    :cond_fa
    iget v8, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    iget v9, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->stickersPerRow:I

    mul-int/2addr v9, v2

    add-int/2addr v8, v9

    iput v8, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    .line 2597
    const/4 v1, 0x0

    :goto_103
    if-ge v1, v2, :cond_113

    .line 2598
    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->rowStartPack:Ljava/util/HashMap;

    add-int v9, v6, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2597
    add-int/lit8 v1, v1, 0x1

    goto :goto_103

    .line 2581
    .end local v1    # "b":I
    .end local v2    # "count":I
    :cond_113
    add-int/lit8 v0, v0, 0x1

    goto :goto_a3

    .line 2603
    .end local v0    # "a":I
    .end local v3    # "documents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    .end local v4    # "pack":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .end local v6    # "startRow":I
    :cond_116
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;->notifyDataSetChanged()V

    .line 2604
    return-void
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 12
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x1

    const/high16 v8, 0x42a40000    # 82.0f

    .line 2523
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    packed-switch v4, :pswitch_data_8c

    .line 2544
    :goto_a
    return-void

    .line 2525
    :pswitch_b
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->cache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    .line 2526
    .local v3, "sticker":Lorg/telegram/tgnet/TLRPC$Document;
    iget-object v4, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/StickerEmojiCell;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    .line 2527
    iget-object v4, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/StickerEmojiCell;

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$6100(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setRecent(Z)V

    goto :goto_a

    .line 2530
    .end local v3    # "sticker":Lorg/telegram/tgnet/TLRPC$Document;
    :pswitch_31
    iget v4, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->totalItems:I

    if-ne p2, v4, :cond_7f

    .line 2531
    add-int/lit8 v4, p2, -0x1

    iget v6, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->stickersPerRow:I

    div-int v2, v4, v6

    .line 2532
    .local v2, "row":I
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->rowStartPack:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 2533
    .local v1, "pack":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    if-nez v1, :cond_51

    .line 2534
    iget-object v4, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/EmptyCell;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto :goto_a

    .line 2536
    :cond_51
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$1700(Lorg/telegram/ui/Components/EmojiView;)Landroid/support/v4/view/ViewPager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v4

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->stickersPerRow:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    mul-int/2addr v6, v7

    sub-int v0, v4, v6

    .line 2537
    .local v0, "height":I
    iget-object v4, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/EmptyCell;

    if-lez v0, :cond_7d

    .end local v0    # "height":I
    :goto_79
    invoke-virtual {v4, v0}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto :goto_a

    .restart local v0    # "height":I
    :cond_7d
    move v0, v5

    goto :goto_79

    .line 2540
    .end local v0    # "height":I
    .end local v1    # "pack":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .end local v2    # "row":I
    :cond_7f
    iget-object v4, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/EmptyCell;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto :goto_a

    .line 2523
    nop

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_b
        :pswitch_31
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 2504
    const/4 v0, 0x0

    .line 2505
    .local v0, "view":Landroid/view/View;
    packed-switch p2, :pswitch_data_1a

    .line 2518
    :goto_4
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 2507
    :pswitch_a
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$1;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter$1;-><init>(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;Landroid/content/Context;)V

    .line 2512
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_4

    .line 2514
    :pswitch_12
    new-instance v0, Lorg/telegram/ui/Cells/EmptyCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/EmptyCell;-><init>(Landroid/content/Context;)V

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_4

    .line 2505
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_a
        :pswitch_12
    .end packed-switch
.end method
