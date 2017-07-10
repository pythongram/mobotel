.class public Lorg/telegram/ui/Components/LetterSectionsListView;
.super Landroid/widget/ListView;
.source "LetterSectionsListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private currentFirst:I

.field private currentVisible:I

.field private headers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private headersCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private sectionsCount:I

.field private startSection:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headers:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headersCache:Ljava/util/ArrayList;

    .line 33
    iput v1, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->currentFirst:I

    .line 34
    iput v1, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->currentVisible:I

    .line 40
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, -0x1

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headers:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headersCache:Ljava/util/ArrayList;

    .line 33
    iput v1, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->currentFirst:I

    .line 34
    iput v1, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->currentVisible:I

    .line 45
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, -0x1

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headers:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headersCache:Ljava/util/ArrayList;

    .line 33
    iput v1, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->currentFirst:I

    .line 34
    iput v1, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->currentVisible:I

    .line 50
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 51
    return-void
.end method

.method private ensurePinnedHeaderLayout(Landroid/view/View;Z)V
    .registers 10
    .param p1, "header"    # Landroid/view/View;
    .param p2, "forceLayout"    # Z

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 170
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-nez v4, :cond_b

    if-eqz p2, :cond_29

    .line 171
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 172
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 173
    .local v1, "heightSpec":I
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 175
    .local v3, "widthSpec":I
    :try_start_1b
    invoke-virtual {p1, v3, v1}, Landroid/view/View;->measure(II)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_2a

    .line 179
    :goto_1e
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p1, v6, v6, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 181
    .end local v1    # "heightSpec":I
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "widthSpec":I
    :cond_29
    return-void

    .line 176
    .restart local v1    # "heightSpec":I
    .restart local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v3    # "widthSpec":I
    :catch_2a
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "tmessages"

    invoke-static {v4, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e
.end method

.method private getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;
    .registers 7
    .param p1, "section"    # I
    .param p2, "oldView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 150
    if-nez p2, :cond_10

    const/4 v0, 0x1

    .line 151
    .local v0, "shouldLayout":Z
    :goto_4
    iget-object v3, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    invoke-virtual {v3, p1, p2, p0}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 152
    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_f

    .line 153
    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/Components/LetterSectionsListView;->ensurePinnedHeaderLayout(Landroid/view/View;Z)V

    .line 155
    :cond_f
    return-object v1

    .end local v0    # "shouldLayout":Z
    .end local v1    # "view":Landroid/view/View;
    :cond_10
    move v0, v2

    .line 150
    goto :goto_4
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x0

    const/4 v1, 0x0

    .line 185
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 186
    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 200
    :cond_11
    return-void

    .line 189
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_18
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 190
    .local v7, "header":Landroid/view/View;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 191
    .local v8, "saveCount":I
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 192
    .local v9, "top":I
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_77

    invoke-virtual {p0}, Lorg/telegram/ui/Components/LetterSectionsListView;->getWidth()I

    move-result v0

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    :goto_40
    int-to-float v2, v9

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 193
    invoke-virtual {p0}, Lorg/telegram/ui/Components/LetterSectionsListView;->getWidth()I

    move-result v0

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v12, v12, v0, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 194
    if-gez v9, :cond_70

    .line 195
    int-to-float v2, v9

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    add-int/2addr v0, v9

    int-to-float v4, v0

    const/high16 v0, 0x437f0000    # 255.0f

    const/high16 v5, 0x3f800000    # 1.0f

    int-to-float v6, v9

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v6, v11

    add-float/2addr v5, v6

    mul-float/2addr v0, v5

    float-to-int v5, v0

    const/4 v6, 0x4

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 197
    :cond_70
    invoke-virtual {v7, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 198
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_18

    :cond_77
    move v0, v1

    .line 192
    goto :goto_40
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 15
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 69
    iget-object v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v7, :cond_9

    .line 70
    iget-object v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v7, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 72
    :cond_9
    iget-object v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    if-nez v7, :cond_e

    .line 140
    :cond_d
    return-void

    .line 76
    :cond_e
    iget-object v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headersCache:Ljava/util/ArrayList;

    iget-object v8, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 77
    iget-object v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 79
    iget-object v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    invoke-virtual {v7}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getCount()I

    move-result v7

    if-eqz v7, :cond_d

    .line 83
    iget v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->currentFirst:I

    if-ne v7, p2, :cond_2a

    iget v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->currentVisible:I

    if-eq v7, p3, :cond_4e

    .line 84
    :cond_2a
    iput p2, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->currentFirst:I

    .line 85
    iput p3, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->currentVisible:I

    .line 87
    const/4 v7, 0x1

    iput v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->sectionsCount:I

    .line 88
    iget-object v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    invoke-virtual {v7, p2}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getSectionForPosition(I)I

    move-result v7

    iput v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->startSection:I

    .line 89
    iget-object v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    iget v8, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->startSection:I

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getCountForSection(I)I

    move-result v7

    add-int/2addr v7, p2

    iget-object v8, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    invoke-virtual {v8, p2}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v8

    sub-int v5, v7, v8

    .line 91
    .local v5, "itemNum":I
    :goto_4a
    add-int v7, p2, p3

    if-lt v5, v7, :cond_a5

    .line 99
    .end local v5    # "itemNum":I
    :cond_4e
    move v5, p2

    .line 100
    .restart local v5    # "itemNum":I
    iget v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->startSection:I

    .local v0, "a":I
    :goto_51
    iget v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->startSection:I

    iget v8, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->sectionsCount:I

    add-int/2addr v7, v8

    if-ge v0, v7, :cond_d

    .line 101
    const/4 v3, 0x0

    .line 102
    .local v3, "header":Landroid/view/View;
    iget-object v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headersCache:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_70

    .line 103
    iget-object v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headersCache:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "header":Landroid/view/View;
    check-cast v3, Landroid/view/View;

    .line 104
    .restart local v3    # "header":Landroid/view/View;
    iget-object v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headersCache:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 106
    :cond_70
    invoke-direct {p0, v0, v3}, Lorg/telegram/ui/Components/LetterSectionsListView;->getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 107
    iget-object v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getCountForSection(I)I

    move-result v2

    .line 109
    .local v2, "count":I
    iget v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->startSection:I

    if-ne v0, v7, :cond_ec

    .line 110
    iget-object v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v6

    .line 111
    .local v6, "pos":I
    add-int/lit8 v7, v2, -0x1

    if-ne v6, v7, :cond_b8

    .line 112
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v7

    neg-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 129
    :goto_99
    iget-object v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    invoke-virtual {v7, p2}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v7

    sub-int v7, v2, v7

    add-int/2addr v5, v7

    .line 100
    .end local v6    # "pos":I
    :goto_a2
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 94
    .end local v0    # "a":I
    .end local v2    # "count":I
    .end local v3    # "header":Landroid/view/View;
    :cond_a5
    iget-object v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    iget v8, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->startSection:I

    iget v9, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->sectionsCount:I

    add-int/2addr v8, v9

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getCountForSection(I)I

    move-result v7

    add-int/2addr v5, v7

    .line 95
    iget v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->sectionsCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->sectionsCount:I

    goto :goto_4a

    .line 113
    .restart local v0    # "a":I
    .restart local v2    # "count":I
    .restart local v3    # "header":Landroid/view/View;
    .restart local v6    # "pos":I
    :cond_b8
    add-int/lit8 v7, v2, -0x2

    if-ne v6, v7, :cond_e3

    .line 114
    sub-int v7, v5, p2

    invoke-virtual {p0, v7}, Lorg/telegram/ui/Components/LetterSectionsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 116
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_d2

    .line 117
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 121
    .local v4, "headerTop":I
    :goto_c8
    if-gez v4, :cond_da

    .line 122
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_99

    .line 119
    .end local v4    # "headerTop":I
    :cond_d2
    const/high16 v7, 0x42c80000    # 100.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    neg-int v4, v7

    .restart local v4    # "headerTop":I
    goto :goto_c8

    .line 124
    :cond_da
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_99

    .line 127
    .end local v1    # "child":Landroid/view/View;
    .end local v4    # "headerTop":I
    :cond_e3
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_99

    .line 131
    .end local v6    # "pos":I
    :cond_ec
    sub-int v7, v5, p2

    invoke-virtual {p0, v7}, Lorg/telegram/ui/Components/LetterSectionsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 132
    .restart local v1    # "child":Landroid/view/View;
    if-eqz v1, :cond_101

    .line 133
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 137
    :goto_ff
    add-int/2addr v5, v2

    goto :goto_a2

    .line 135
    :cond_101
    const/high16 v7, 0x42c80000    # 100.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    neg-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_ff
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_9

    .line 145
    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 147
    :cond_9
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 8
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 160
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 161
    iget-object v1, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 167
    :cond_f
    return-void

    .line 164
    :cond_10
    iget-object v1, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 165
    .local v0, "header":Landroid/view/View;
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/Components/LetterSectionsListView;->ensurePinnedHeaderLayout(Landroid/view/View;Z)V

    goto :goto_16
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2

    .prologue
    .line 27
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/LetterSectionsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 3
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    if-eq v0, p1, :cond_1a

    .line 56
    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headersCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 58
    instance-of v0, p1, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    if-eqz v0, :cond_1b

    move-object v0, p1

    .line 59
    check-cast v0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    iput-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    .line 63
    :goto_17
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    :cond_1a
    return-void

    .line 61
    :cond_1b
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    goto :goto_17
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 208
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 209
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .registers 2
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 204
    iput-object p1, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 205
    return-void
.end method
