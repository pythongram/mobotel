.class Lorg/telegram/ui/PhotoPickerActivity$4;
.super Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;
.source "PhotoPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoPickerActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoPickerActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoPickerActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 285
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V
    .registers 16
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p4, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    const/4 v7, 0x0

    const/high16 v10, 0x40800000    # 4.0f

    .line 288
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V

    .line 289
    invoke-virtual {p4}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    .line 290
    .local v5, "total":I
    invoke-virtual {p3, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    .line 291
    .local v1, "position":I
    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity$4;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # getter for: Lorg/telegram/ui/PhotoPickerActivity;->layoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;
    invoke-static {v6}, Lorg/telegram/ui/PhotoPickerActivity;->access$1400(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/messenger/support/widget/GridLayoutManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanCount()I

    move-result v4

    .line 292
    .local v4, "spanCount":I
    int-to-float v6, v5

    int-to-float v8, v4

    div-float/2addr v6, v8

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v3, v8

    .line 293
    .local v3, "rowsCOunt":I
    div-int v2, v1, v4

    .line 294
    .local v2, "row":I
    rem-int v0, v1, v4

    .line 295
    .local v0, "col":I
    add-int/lit8 v6, v4, -0x1

    if-eq v0, v6, :cond_3a

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    :goto_2d
    iput v6, p1, Landroid/graphics/Rect;->right:I

    .line 296
    add-int/lit8 v6, v3, -0x1

    if-eq v2, v6, :cond_37

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    :cond_37
    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    .line 297
    return-void

    :cond_3a
    move v6, v7

    .line 295
    goto :goto_2d
.end method
