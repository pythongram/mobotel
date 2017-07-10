.class public Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;
.super Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final INVALID_SPAN_ID:I = -0x1


# instance fields
.field mSpanIndex:I

.field mSpanSize:I


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1093
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 1084
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1086
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 1094
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1089
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1084
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1086
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 1090
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1101
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1084
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1086
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 1102
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 3
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 1097
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1084
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1086
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 1098
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)V
    .registers 3
    .param p1, "source"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .prologue
    .line 1105
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)V

    .line 1084
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1086
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 1106
    return-void
.end method


# virtual methods
.method public getSpanIndex()I
    .registers 2

    .prologue
    .line 1123
    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    return v0
.end method

.method public getSpanSize()I
    .registers 2

    .prologue
    .line 1133
    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    return v0
.end method
