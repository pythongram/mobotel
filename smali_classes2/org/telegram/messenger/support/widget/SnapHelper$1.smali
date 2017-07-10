.class Lorg/telegram/messenger/support/widget/SnapHelper$1;
.super Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
.source "SnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/SnapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mScrolled:Z

.field final synthetic this$0:Lorg/telegram/messenger/support/widget/SnapHelper;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/widget/SnapHelper;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/messenger/support/widget/SnapHelper;

    .prologue
    .line 44
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/SnapHelper$1;->this$0:Lorg/telegram/messenger/support/widget/SnapHelper;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/SnapHelper$1;->mScrolled:Z

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lorg/telegram/messenger/support/widget/RecyclerView;I)V
    .registers 4
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Lorg/telegram/messenger/support/widget/RecyclerView;I)V

    .line 50
    if-nez p2, :cond_11

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/SnapHelper$1;->mScrolled:Z

    if-eqz v0, :cond_11

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/SnapHelper$1;->mScrolled:Z

    .line 52
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/SnapHelper$1;->this$0:Lorg/telegram/messenger/support/widget/SnapHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/SnapHelper;->snapToTargetExistingView()V

    .line 54
    :cond_11
    return-void
.end method

.method public onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .registers 5
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 58
    if-nez p2, :cond_4

    if-eqz p3, :cond_7

    .line 59
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/SnapHelper$1;->mScrolled:Z

    .line 61
    :cond_7
    return-void
.end method
