.class public Lorg/telegram/messenger/support/widget/LinearSnapHelper;
.super Lorg/telegram/messenger/support/widget/SnapHelper;
.source "LinearSnapHelper.java"


# static fields
.field private static final INVALID_DISTANCE:F = 1.0f


# instance fields
.field private mHorizontalHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mVerticalHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/SnapHelper;-><init>()V

    return-void
.end method

.method private computeDistancePerChild(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Lorg/telegram/messenger/support/widget/OrientationHelper;)F
    .registers 16
    .param p1, "layoutManager"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
    .param p2, "helper"    # Lorg/telegram/messenger/support/widget/OrientationHelper;

    .prologue
    .line 236
    const/4 v8, 0x0

    .line 237
    .local v8, "minPosView":Landroid/view/View;
    const/4 v6, 0x0

    .line 238
    .local v6, "maxPosView":Landroid/view/View;
    const v7, 0x7fffffff

    .line 239
    .local v7, "minPos":I
    const/high16 v5, -0x80000000

    .line 240
    .local v5, "maxPos":I
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    .line 241
    .local v1, "childCount":I
    if-nez v1, :cond_10

    .line 242
    const/high16 v11, 0x3f800000    # 1.0f

    .line 271
    :goto_f
    return v11

    .line 245
    :cond_10
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_11
    if-ge v4, v1, :cond_2a

    .line 246
    invoke-virtual {p1, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 247
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v9

    .line 248
    .local v9, "pos":I
    const/4 v11, -0x1

    if-ne v9, v11, :cond_21

    .line 245
    :cond_1e
    :goto_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 251
    :cond_21
    if-ge v9, v7, :cond_25

    .line 252
    move v7, v9

    .line 253
    move-object v8, v0

    .line 255
    :cond_25
    if-le v9, v5, :cond_1e

    .line 256
    move v5, v9

    .line 257
    move-object v6, v0

    goto :goto_1e

    .line 260
    .end local v0    # "child":Landroid/view/View;
    .end local v9    # "pos":I
    :cond_2a
    if-eqz v8, :cond_2e

    if-nez v6, :cond_31

    .line 261
    :cond_2e
    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_f

    .line 263
    :cond_31
    invoke-virtual {p2, v8}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v11

    .line 264
    invoke-virtual {p2, v6}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v12

    .line 263
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 265
    .local v10, "start":I
    invoke-virtual {p2, v8}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v11

    .line 266
    invoke-virtual {p2, v6}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v12

    .line 265
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 267
    .local v3, "end":I
    sub-int v2, v3, v10

    .line 268
    .local v2, "distance":I
    if-nez v2, :cond_50

    .line 269
    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_f

    .line 271
    :cond_50
    const/high16 v11, 0x3f800000    # 1.0f

    int-to-float v12, v2

    mul-float/2addr v11, v12

    sub-int v12, v5, v7

    add-int/lit8 v12, v12, 0x1

    int-to-float v12, v12

    div-float/2addr v11, v12

    goto :goto_f
.end method

.method private distanceToCenter(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Landroid/view/View;Lorg/telegram/messenger/support/widget/OrientationHelper;)I
    .registers 8
    .param p1, "layoutManager"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "targetView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "helper"    # Lorg/telegram/messenger/support/widget/OrientationHelper;

    .prologue
    .line 142
    invoke-virtual {p3, p2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    .line 143
    invoke-virtual {p3, p2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 145
    .local v0, "childCenter":I
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 146
    invoke-virtual {p3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    invoke-virtual {p3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpace()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 150
    .local v1, "containerCenter":I
    :goto_1e
    sub-int v2, v0, v1

    return v2

    .line 148
    .end local v1    # "containerCenter":I
    :cond_21
    invoke-virtual {p3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEnd()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .restart local v1    # "containerCenter":I
    goto :goto_1e
.end method

.method private estimateNextPositionDiffForFling(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Lorg/telegram/messenger/support/widget/OrientationHelper;II)I
    .registers 12
    .param p1, "layoutManager"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
    .param p2, "helper"    # Lorg/telegram/messenger/support/widget/OrientationHelper;
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 166
    invoke-virtual {p0, p3, p4}, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->calculateScrollDistance(II)[I

    move-result-object v2

    .line 167
    .local v2, "distances":[I
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->computeDistancePerChild(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Lorg/telegram/messenger/support/widget/OrientationHelper;)F

    move-result v1

    .line 168
    .local v1, "distancePerChild":F
    const/4 v4, 0x0

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_10

    .line 176
    :goto_f
    return v3

    .line 171
    :cond_10
    aget v4, v2, v3

    .line 172
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    aget v5, v2, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v4, v5, :cond_2b

    aget v0, v2, v3

    .line 173
    .local v0, "distance":I
    :goto_20
    if-lez v0, :cond_2e

    .line 174
    int-to-float v3, v0

    div-float/2addr v3, v1

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    goto :goto_f

    .line 172
    .end local v0    # "distance":I
    :cond_2b
    aget v0, v2, v6

    goto :goto_20

    .line 176
    .restart local v0    # "distance":I
    :cond_2e
    int-to-float v3, v0

    div-float/2addr v3, v1

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    goto :goto_f
.end method

.method private findCenterView(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Lorg/telegram/messenger/support/widget/OrientationHelper;)Landroid/view/View;
    .registers 13
    .param p1, "layoutManager"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
    .param p2, "helper"    # Lorg/telegram/messenger/support/widget/OrientationHelper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 192
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v5

    .line 193
    .local v5, "childCount":I
    if-nez v5, :cond_8

    .line 194
    const/4 v6, 0x0

    .line 218
    :cond_7
    return-object v6

    .line 197
    :cond_8
    const/4 v6, 0x0

    .line 199
    .local v6, "closestChild":Landroid/view/View;
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v8

    if-eqz v8, :cond_3e

    .line 200
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpace()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int v2, v8, v9

    .line 204
    .local v2, "center":I
    :goto_1b
    const v0, 0x7fffffff

    .line 206
    .local v0, "absClosest":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1f
    if-ge v7, v5, :cond_7

    .line 207
    invoke-virtual {p1, v7}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 208
    .local v3, "child":Landroid/view/View;
    invoke-virtual {p2, v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    .line 209
    invoke-virtual {p2, v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int v4, v8, v9

    .line 210
    .local v4, "childCenter":I
    sub-int v8, v4, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 213
    .local v1, "absDistance":I
    if-ge v1, v0, :cond_3b

    .line 214
    move v0, v1

    .line 215
    move-object v6, v3

    .line 206
    :cond_3b
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    .line 202
    .end local v0    # "absClosest":I
    .end local v1    # "absDistance":I
    .end local v2    # "center":I
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCenter":I
    .end local v7    # "i":I
    :cond_3e
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEnd()I

    move-result v8

    div-int/lit8 v2, v8, 0x2

    .restart local v2    # "center":I
    goto :goto_1b
.end method

.method private getHorizontalHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/OrientationHelper;
    .registers 3
    .param p1, "layoutManager"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->mHorizontalHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->mHorizontalHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/OrientationHelper;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eq v0, p1, :cond_10

    .line 286
    :cond_a
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->createHorizontalHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->mHorizontalHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 288
    :cond_10
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->mHorizontalHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    return-object v0
.end method

.method private getVerticalHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/OrientationHelper;
    .registers 3
    .param p1, "layoutManager"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->mVerticalHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->mVerticalHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/OrientationHelper;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eq v0, p1, :cond_10

    .line 277
    :cond_a
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/OrientationHelper;->createVerticalHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->mVerticalHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    .line 279
    :cond_10
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->mVerticalHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    return-object v0
.end method


# virtual methods
.method public calculateDistanceToFinalSnap(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .registers 7
    .param p1, "layoutManager"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "targetView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 46
    .local v0, "out":[I
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 48
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->getHorizontalHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-result-object v1

    .line 47
    invoke-direct {p0, p1, p2, v1}, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->distanceToCenter(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Landroid/view/View;Lorg/telegram/messenger/support/widget/OrientationHelper;)I

    move-result v1

    aput v1, v0, v2

    .line 53
    :goto_15
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 55
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->getVerticalHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-result-object v1

    .line 54
    invoke-direct {p0, p1, p2, v1}, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->distanceToCenter(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Landroid/view/View;Lorg/telegram/messenger/support/widget/OrientationHelper;)I

    move-result v1

    aput v1, v0, v3

    .line 59
    :goto_25
    return-object v0

    .line 50
    :cond_26
    aput v2, v0, v2

    goto :goto_15

    .line 57
    :cond_29
    aput v2, v0, v3

    goto :goto_25
.end method

.method public findSnapView(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .registers 3
    .param p1, "layoutManager"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    .prologue
    .line 132
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 133
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->getVerticalHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->findCenterView(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Lorg/telegram/messenger/support/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v0

    .line 137
    :goto_e
    return-object v0

    .line 134
    :cond_f
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 135
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->getHorizontalHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->findCenterView(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Lorg/telegram/messenger/support/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v0

    goto :goto_e

    .line 137
    :cond_1e
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public findTargetSnapPosition(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;II)I
    .registers 16
    .param p1, "layoutManager"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
    .param p2, "velocityX"    # I
    .param p3, "velocityY"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v5, -0x1

    .line 65
    instance-of v9, p1, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez v9, :cond_8

    .line 127
    :cond_7
    :goto_7
    return v5

    .line 69
    :cond_8
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v4

    .line 70
    .local v4, "itemCount":I
    if-eqz v4, :cond_7

    .line 74
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->findSnapView(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v1

    .line 75
    .local v1, "currentView":Landroid/view/View;
    if-eqz v1, :cond_7

    .line 79
    invoke-virtual {p1, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 80
    .local v0, "currentPosition":I
    if-eq v0, v5, :cond_7

    move-object v8, p1

    .line 84
    check-cast v8, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    .line 89
    .local v8, "vectorProvider":Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;
    add-int/lit8 v9, v4, -0x1

    invoke-interface {v8, v9}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v7

    .line 90
    .local v7, "vectorForEnd":Landroid/graphics/PointF;
    if-eqz v7, :cond_7

    .line 96
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v9

    if-eqz v9, :cond_62

    .line 98
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->getHorizontalHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-result-object v9

    .line 97
    invoke-direct {p0, p1, v9, p2, v11}, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->estimateNextPositionDiffForFling(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Lorg/telegram/messenger/support/widget/OrientationHelper;II)I

    move-result v3

    .line 99
    .local v3, "hDeltaJump":I
    iget v9, v7, Landroid/graphics/PointF;->x:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_3a

    .line 100
    neg-int v3, v3

    .line 105
    :cond_3a
    :goto_3a
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v9

    if-eqz v9, :cond_64

    .line 107
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->getVerticalHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/OrientationHelper;

    move-result-object v9

    .line 106
    invoke-direct {p0, p1, v9, v11, p3}, Lorg/telegram/messenger/support/widget/LinearSnapHelper;->estimateNextPositionDiffForFling(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Lorg/telegram/messenger/support/widget/OrientationHelper;II)I

    move-result v6

    .line 108
    .local v6, "vDeltaJump":I
    iget v9, v7, Landroid/graphics/PointF;->y:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_4f

    .line 109
    neg-int v6, v6

    .line 115
    :cond_4f
    :goto_4f
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v9

    if-eqz v9, :cond_66

    move v2, v6

    .line 116
    .local v2, "deltaJump":I
    :goto_56
    if-eqz v2, :cond_7

    .line 120
    add-int v5, v0, v2

    .line 121
    .local v5, "targetPos":I
    if-gez v5, :cond_5d

    .line 122
    const/4 v5, 0x0

    .line 124
    :cond_5d
    if-lt v5, v4, :cond_7

    .line 125
    add-int/lit8 v5, v4, -0x1

    goto :goto_7

    .line 103
    .end local v2    # "deltaJump":I
    .end local v3    # "hDeltaJump":I
    .end local v5    # "targetPos":I
    .end local v6    # "vDeltaJump":I
    :cond_62
    const/4 v3, 0x0

    .restart local v3    # "hDeltaJump":I
    goto :goto_3a

    .line 112
    :cond_64
    const/4 v6, 0x0

    .restart local v6    # "vDeltaJump":I
    goto :goto_4f

    :cond_66
    move v2, v3

    .line 115
    goto :goto_56
.end method
