.class Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LazySpanLookup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    }
.end annotation


# static fields
.field private static final MIN_SIZE:I = 0xa


# instance fields
.field mData:[I

.field mFullSpanItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 2683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private invalidateFullSpansAfter(I)I
    .registers 9
    .param p1, "position"    # I

    .prologue
    const/4 v5, -0x1

    .line 2826
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-nez v6, :cond_6

    .line 2848
    :cond_5
    :goto_5
    return v5

    .line 2829
    :cond_6
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v3

    .line 2831
    .local v3, "item":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    if-eqz v3, :cond_11

    .line 2832
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2834
    :cond_11
    const/4 v4, -0x1

    .line 2835
    .local v4, "nextFsiIndex":I
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 2836
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    if-ge v2, v0, :cond_28

    .line 2837
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 2838
    .local v1, "fsi":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    iget v6, v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-lt v6, p1, :cond_3a

    .line 2839
    move v4, v2

    .line 2843
    .end local v1    # "fsi":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_28
    if-eq v4, v5, :cond_5

    .line 2844
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 2845
    .restart local v1    # "fsi":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2846
    iget v5, v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    goto :goto_5

    .line 2836
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_19
.end method

.method private offsetFullSpansForAddition(II)V
    .registers 6
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 2809
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-nez v2, :cond_5

    .line 2819
    :cond_4
    return-void

    .line 2812
    :cond_5
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_4

    .line 2813
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 2814
    .local v0, "fsi":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    iget v2, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-ge v2, p1, :cond_1e

    .line 2812
    :goto_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 2817
    :cond_1e
    iget v2, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    add-int/2addr v2, p2

    iput v2, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    goto :goto_1b
.end method

.method private offsetFullSpansForRemoval(II)V
    .registers 7
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 2779
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-nez v3, :cond_5

    .line 2794
    :cond_4
    return-void

    .line 2782
    :cond_5
    add-int v0, p1, p2

    .line 2783
    .local v0, "end":I
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_f
    if-ltz v2, :cond_4

    .line 2784
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 2785
    .local v1, "fsi":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    iget v3, v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-ge v3, p1, :cond_20

    .line 2783
    :goto_1d
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    .line 2788
    :cond_20
    iget v3, v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-ge v3, v0, :cond_2a

    .line 2789
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1d

    .line 2791
    :cond_2a
    iget v3, v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    sub-int/2addr v3, p2

    iput v3, v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    goto :goto_1d
.end method


# virtual methods
.method public addFullSpanItem(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V
    .registers 7
    .param p1, "fullSpanItem"    # Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .prologue
    .line 2852
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-nez v3, :cond_b

    .line 2853
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    .line 2855
    :cond_b
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 2856
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    if-ge v0, v2, :cond_36

    .line 2857
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 2858
    .local v1, "other":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    iget v3, v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    iget v4, p1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-ne v3, v4, :cond_27

    .line 2862
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2865
    :cond_27
    iget v3, v1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    iget v4, p1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-lt v3, v4, :cond_33

    .line 2866
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v3, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2872
    .end local v1    # "other":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :goto_32
    return-void

    .line 2856
    .restart local v1    # "other":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 2871
    .end local v1    # "other":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_36
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32
.end method

.method clear()V
    .registers 3

    .prologue
    .line 2760
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v0, :cond_a

    .line 2761
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2763
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    .line 2764
    return-void
.end method

.method ensureSize(I)V
    .registers 7
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 2748
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-nez v1, :cond_18

    .line 2749
    const/16 v1, 0xa

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 2750
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([II)V

    .line 2757
    :cond_17
    :goto_17
    return-void

    .line 2751
    :cond_18
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v1, v1

    if-lt p1, v1, :cond_17

    .line 2752
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 2753
    .local v0, "old":[I
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->sizeForPosition(I)I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 2754
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2755
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v2, v0

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_17
.end method

.method forceInvalidateAfter(I)I
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 2694
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-eqz v2, :cond_22

    .line 2695
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_22

    .line 2696
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 2697
    .local v0, "fsi":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    iget v2, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-lt v2, p1, :cond_1f

    .line 2698
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2695
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 2702
    .end local v0    # "fsi":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .end local v1    # "i":I
    :cond_22
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->invalidateAfter(I)I

    move-result v2

    return v2
.end method

.method public getFirstFullSpanItemInRange(IIIZ)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .registers 10
    .param p1, "minPos"    # I
    .param p2, "maxPos"    # I
    .param p3, "gapDir"    # I
    .param p4, "hasUnwantedGapAfter"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2896
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-nez v4, :cond_7

    move-object v0, v3

    .line 2911
    :cond_6
    :goto_6
    return-object v0

    .line 2899
    :cond_7
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 2900
    .local v2, "limit":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v2, :cond_31

    .line 2901
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 2902
    .local v0, "fsi":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    iget v4, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-lt v4, p2, :cond_1e

    move-object v0, v3

    .line 2903
    goto :goto_6

    .line 2905
    :cond_1e
    iget v4, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-lt v4, p1, :cond_2e

    if-eqz p3, :cond_6

    iget v4, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    if-eq v4, p3, :cond_6

    if-eqz p4, :cond_2e

    iget-boolean v4, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mHasUnwantedGapAfter:Z

    if-nez v4, :cond_6

    .line 2900
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .end local v0    # "fsi":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_31
    move-object v0, v3

    .line 2911
    goto :goto_6
.end method

.method public getFullSpanItem(I)Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .registers 6
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 2875
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    if-nez v3, :cond_7

    move-object v0, v2

    .line 2884
    :cond_6
    :goto_6
    return-object v0

    .line 2878
    :cond_7
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_f
    if-ltz v1, :cond_20

    .line 2879
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 2880
    .local v0, "fsi":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    iget v3, v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    if-eq v3, p1, :cond_6

    .line 2878
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .end local v0    # "fsi":Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_20
    move-object v0, v2

    .line 2884
    goto :goto_6
.end method

.method getSpan(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 2727
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v0, v0

    if-lt p1, v0, :cond_b

    .line 2728
    :cond_9
    const/4 v0, -0x1

    .line 2730
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    aget v0, v0, p1

    goto :goto_a
.end method

.method invalidateAfter(I)I
    .registers 6
    .param p1, "position"    # I

    .prologue
    const/4 v1, -0x1

    .line 2709
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-nez v2, :cond_6

    .line 2722
    :cond_5
    :goto_5
    return v1

    .line 2712
    :cond_6
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v2, v2

    if-ge p1, v2, :cond_5

    .line 2715
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->invalidateFullSpansAfter(I)I

    move-result v0

    .line 2716
    .local v0, "endPosition":I
    if-ne v0, v1, :cond_1d

    .line 2717
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v3, v3

    invoke-static {v2, p1, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 2718
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v1, v1

    goto :goto_5

    .line 2721
    :cond_1d
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, p1, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 2722
    add-int/lit8 v1, v0, 0x1

    goto :goto_5
.end method

.method offsetForAddition(II)V
    .registers 7
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 2797
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v0, v0

    if-lt p1, v0, :cond_a

    .line 2806
    :cond_9
    :goto_9
    return-void

    .line 2800
    :cond_a
    add-int v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->ensureSize(I)V

    .line 2801
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    add-int v2, p1, p2

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v3, v3

    sub-int/2addr v3, p1

    sub-int/2addr v3, p2

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2803
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    add-int v1, p1, p2

    const/4 v2, -0x1

    invoke-static {v0, p1, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 2805
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetFullSpansForAddition(II)V

    goto :goto_9
.end method

.method offsetForRemoval(II)V
    .registers 7
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 2767
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v0, v0

    if-lt p1, v0, :cond_a

    .line 2776
    :cond_9
    :goto_9
    return-void

    .line 2770
    :cond_a
    add-int v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->ensureSize(I)V

    .line 2771
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    add-int v1, p1, p2

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v3, v3

    sub-int/2addr v3, p1

    sub-int/2addr v3, p2

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2773
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v1, v1

    sub-int/2addr v1, p2

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v2, v2

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 2775
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetFullSpansForRemoval(II)V

    goto :goto_9
.end method

.method setSpan(ILorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "span"    # Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;

    .prologue
    .line 2735
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->ensureSize(I)V

    .line 2736
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iget v1, p2, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    aput v1, v0, p1

    .line 2737
    return-void
.end method

.method sizeForPosition(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 2740
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    array-length v0, v1

    .line 2741
    .local v0, "len":I
    :goto_3
    if-gt v0, p1, :cond_8

    .line 2742
    mul-int/lit8 v0, v0, 0x2

    goto :goto_3

    .line 2744
    :cond_8
    return v0
.end method
