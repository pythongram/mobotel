.class public Lorg/telegram/ui/Components/GroupCreateDividerItemDecoration;
.super Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;
.source "GroupCreateDividerItemDecoration.java"


# instance fields
.field private searching:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V
    .registers 8
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p4, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    const/4 v2, 0x1

    .line 45
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V

    .line 46
    invoke-virtual {p3, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 47
    .local v0, "position":I
    if-eqz v0, :cond_10

    iget-boolean v1, p0, Lorg/telegram/ui/Components/GroupCreateDividerItemDecoration;->searching:Z

    if-nez v1, :cond_11

    if-ne v0, v2, :cond_11

    .line 51
    :cond_10
    :goto_10
    return-void

    .line 50
    :cond_11
    iput v2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_10
.end method

.method public onDraw(Landroid/graphics/Canvas;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V
    .registers 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p3, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 29
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v11

    .line 31
    .local v11, "width":I
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildCount()I

    move-result v7

    .line 32
    .local v7, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_9
    add-int/lit8 v0, v7, -0x1

    if-ge v8, v0, :cond_43

    .line 33
    invoke-virtual {p2, v8}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 34
    .local v6, "child":Landroid/view/View;
    invoke-virtual {p2, v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v9

    .line 35
    .local v9, "position":I
    if-nez v9, :cond_1a

    .line 32
    :goto_17
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 38
    :cond_1a
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v10

    .line 39
    .local v10, "top":I
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_39

    const/4 v1, 0x0

    :goto_23
    int-to-float v2, v10

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_41

    const/high16 v0, 0x42900000    # 72.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_2e
    sub-int v0, v11, v0

    int-to-float v3, v0

    int-to-float v4, v10

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_17

    :cond_39
    const/high16 v0, 0x42900000    # 72.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v1, v0

    goto :goto_23

    :cond_41
    const/4 v0, 0x0

    goto :goto_2e

    .line 41
    .end local v6    # "child":Landroid/view/View;
    .end local v9    # "position":I
    .end local v10    # "top":I
    :cond_43
    return-void
.end method

.method public setSearching(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lorg/telegram/ui/Components/GroupCreateDividerItemDecoration;->searching:Z

    .line 25
    return-void
.end method
