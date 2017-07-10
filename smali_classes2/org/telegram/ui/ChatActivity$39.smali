.class Lorg/telegram/ui/ChatActivity$39;
.super Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 2937
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lorg/telegram/messenger/support/widget/RecyclerView;I)V
    .registers 5
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    const/4 v0, 0x1

    .line 2941
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    if-ne p2, v0, :cond_9

    :goto_5
    # setter for: Lorg/telegram/ui/ChatActivity;->mentionListViewIsScrolling:Z
    invoke-static {v1, v0}, Lorg/telegram/ui/ChatActivity;->access$10502(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 2942
    return-void

    .line 2941
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .registers 7
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 2947
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isBotContext()Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isMediaLayout()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 2948
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionGridLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 2952
    .local v0, "lastVisibleItem":I
    :goto_22
    const/4 v2, -0x1

    if-ne v0, v2, :cond_50

    const/4 v1, 0x0

    .line 2953
    .local v1, "visibleItemCount":I
    :goto_26
    if-lez v1, :cond_3f

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    if-le v0, v2, :cond_3f

    .line 2954
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBotForNextOffset()V

    .line 2956
    :cond_3f
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->mentionListViewUpdateLayout()V
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$10900(Lorg/telegram/ui/ChatActivity;)V

    .line 2957
    return-void

    .line 2950
    .end local v0    # "lastVisibleItem":I
    .end local v1    # "visibleItemCount":I
    :cond_45
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$10800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .restart local v0    # "lastVisibleItem":I
    goto :goto_22

    :cond_50
    move v1, v0

    .line 2952
    goto :goto_26
.end method
