.class public Lorg/telegram/messenger/support/widget/DividerItemDecoration;
.super Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;
.source "DividerItemDecoration.java"


# static fields
.field private static final ATTRS:[I

.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010214

    aput v2, v0, v1

    sput-object v0, Lorg/telegram/messenger/support/widget/DividerItemDecoration;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 55
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/support/widget/DividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    .line 65
    sget-object v1, Lorg/telegram/messenger/support/widget/DividerItemDecoration;->ATTRS:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/support/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 67
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/support/widget/DividerItemDecoration;->setOrientation(I)V

    .line 69
    return-void
.end method

.method private drawHorizontal(Landroid/graphics/Canvas;Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 141
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getClipToPadding()Z

    move-result v7

    if-eqz v7, :cond_5e

    .line 142
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingTop()I

    move-result v6

    .line 143
    .local v6, "top":I
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getHeight()I

    move-result v7

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingBottom()I

    move-result v8

    sub-int v0, v7, v8

    .line 144
    .local v0, "bottom":I
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingLeft()I

    move-result v7

    .line 145
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v8

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    .line 144
    invoke-virtual {p1, v7, v6, v8, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 151
    :goto_27
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildCount()I

    move-result v2

    .line 152
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2c
    if-ge v3, v2, :cond_64

    .line 153
    invoke-virtual {p2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 154
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getLayoutManager()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/DividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v1, v8}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 155
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/DividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int v5, v7, v8

    .line 156
    .local v5, "right":I
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    sub-int v4, v5, v7

    .line 157
    .local v4, "left":I
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v4, v6, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 158
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 152
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 147
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "left":I
    .end local v5    # "right":I
    .end local v6    # "top":I
    :cond_5e
    const/4 v6, 0x0

    .line 148
    .restart local v6    # "top":I
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getHeight()I

    move-result v0

    .restart local v0    # "bottom":I
    goto :goto_27

    .line 160
    .restart local v2    # "childCount":I
    .restart local v3    # "i":I
    :cond_64
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 161
    return-void
.end method

.method private drawVertical(Landroid/graphics/Canvas;Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 114
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getClipToPadding()Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 115
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingLeft()I

    move-result v4

    .line 116
    .local v4, "left":I
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v7

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingRight()I

    move-result v8

    sub-int v5, v7, v8

    .line 117
    .local v5, "right":I
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingTop()I

    move-result v7

    .line 118
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getHeight()I

    move-result v8

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    .line 117
    invoke-virtual {p1, v4, v7, v5, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 124
    :goto_27
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildCount()I

    move-result v2

    .line 125
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2c
    if-ge v3, v2, :cond_60

    .line 126
    invoke-virtual {p2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 127
    .local v1, "child":Landroid/view/View;
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/DividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v1, v7}, Lorg/telegram/messenger/support/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 128
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/DividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int v0, v7, v8

    .line 129
    .local v0, "bottom":I
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int v6, v0, v7

    .line 130
    .local v6, "top":I
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v4, v6, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 131
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 125
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 120
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "left":I
    .end local v5    # "right":I
    .end local v6    # "top":I
    :cond_5a
    const/4 v4, 0x0

    .line 121
    .restart local v4    # "left":I
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v5

    .restart local v5    # "right":I
    goto :goto_27

    .line 133
    .restart local v2    # "childCount":I
    .restart local v3    # "i":I
    :cond_60
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 134
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
    const/4 v2, 0x0

    .line 166
    iget v0, p0, Lorg/telegram/messenger/support/widget/DividerItemDecoration;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 167
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p1, v2, v2, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 171
    :goto_f
    return-void

    .line 169
    :cond_10
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1, v2, v2, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_f
.end method

.method public onDraw(Landroid/graphics/Canvas;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V
    .registers 6
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p3, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    .line 99
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getLayoutManager()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_7

    .line 107
    :goto_6
    return-void

    .line 102
    :cond_7
    iget v0, p0, Lorg/telegram/messenger/support/widget/DividerItemDecoration;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 103
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/DividerItemDecoration;->drawVertical(Landroid/graphics/Canvas;Lorg/telegram/messenger/support/widget/RecyclerView;)V

    goto :goto_6

    .line 105
    :cond_10
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/DividerItemDecoration;->drawHorizontal(Landroid/graphics/Canvas;Lorg/telegram/messenger/support/widget/RecyclerView;)V

    goto :goto_6
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 91
    if-nez p1, :cond_a

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Drawable cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_a
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 95
    return-void
.end method

.method public setOrientation(I)V
    .registers 4
    .param p1, "orientation"    # I

    .prologue
    .line 78
    if-eqz p1, :cond_d

    const/4 v0, 0x1

    if-eq p1, v0, :cond_d

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid orientation. It should be either HORIZONTAL or VERTICAL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_d
    iput p1, p0, Lorg/telegram/messenger/support/widget/DividerItemDecoration;->mOrientation:I

    .line 83
    return-void
.end method
