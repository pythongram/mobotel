.class Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "EmojiView.java"

# interfaces
.implements Lorg/telegram/ui/Components/PagerSlidingTabStrip$IconTabProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmojiPagesAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/EmojiView;)V
    .registers 2

    .prologue
    .line 2670
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p2, "x1"    # Lorg/telegram/ui/Components/EmojiView$1;

    .prologue
    .line 2670
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    return-void
.end method


# virtual methods
.method public customOnDraw(Landroid/graphics/Canvas;I)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "position"    # I

    .prologue
    .line 2695
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->showFavEmojies:Z
    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v2

    if-eqz v2, :cond_4c

    const/4 v2, 0x7

    :goto_9
    if-ne p2, v2, :cond_4b

    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getUnreadStickerSets()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4b

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->dotPaint:Landroid/graphics/Paint;
    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$8000(Lorg/telegram/ui/Components/EmojiView;)Landroid/graphics/Paint;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 2696
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/high16 v3, 0x41100000    # 9.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int v0, v2, v3

    .line 2697
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v1, v2, v3

    .line 2698
    .local v1, "y":I
    int-to-float v2, v0

    int-to-float v3, v1

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->dotPaint:Landroid/graphics/Paint;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$8000(Lorg/telegram/ui/Components/EmojiView;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2700
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_4b
    return-void

    .line 2695
    :cond_4c
    const/4 v2, 0x6

    goto :goto_9
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 6
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 2674
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->showFavEmojies:Z
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x7

    :goto_9
    if-ne p2, v1, :cond_17

    .line 2675
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->stickersWrap:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$7700(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;

    move-result-object v0

    .line 2679
    .local v0, "view":Landroid/view/View;
    :goto_11
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2680
    return-void

    .line 2674
    .end local v0    # "view":Landroid/view/View;
    :cond_15
    const/4 v1, 0x6

    goto :goto_9

    .line 2677
    :cond_17
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->views:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$7800(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_11
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 2683
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->views:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$7800(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPageIconDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 2687
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->showFavEmojies:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2688
    add-int/lit8 p1, p1, 0x1

    .line 2690
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->icons:[Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$7900(Lorg/telegram/ui/Components/EmojiView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 5
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 2704
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->showFavEmojies:Z
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x7

    :goto_9
    if-ne p2, v1, :cond_17

    .line 2705
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->stickersWrap:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$7700(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;

    move-result-object v0

    .line 2709
    .local v0, "view":Landroid/view/View;
    :goto_11
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2710
    return-object v0

    .line 2704
    .end local v0    # "view":Landroid/view/View;
    :cond_15
    const/4 v1, 0x6

    goto :goto_9

    .line 2707
    :cond_17
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->views:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$7800(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_11
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 2714
    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 2
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 2719
    if-eqz p1, :cond_5

    .line 2720
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2722
    :cond_5
    return-void
.end method
