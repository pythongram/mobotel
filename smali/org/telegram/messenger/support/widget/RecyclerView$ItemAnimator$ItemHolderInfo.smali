.class public Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemHolderInfo"
.end annotation


# instance fields
.field public bottom:I

.field public changeFlags:I

.field public left:I

.field public right:I

.field public top:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12231
    return-void
.end method


# virtual methods
.method public setFrom(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .registers 3
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 12241
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->setFrom(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method public setFrom(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .registers 5
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "flags"    # I

    .prologue
    .line 12256
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 12257
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 12258
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    .line 12259
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->right:I

    .line 12260
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->bottom:I

    .line 12261
    return-object p0
.end method
