.class Lorg/telegram/messenger/support/widget/RecyclerView$1;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/widget/RecyclerView;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    .line 328
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$1;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 331
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$1;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$1;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 345
    :cond_e
    :goto_e
    return-void

    .line 335
    :cond_f
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$1;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mIsAttached:Z

    if-nez v0, :cond_1b

    .line 336
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$1;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    goto :goto_e

    .line 340
    :cond_1b
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$1;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_27

    .line 341
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$1;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutRequestEaten:Z

    goto :goto_e

    .line 344
    :cond_27
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$1;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->consumePendingUpdateOperations()V

    goto :goto_e
.end method
