.class Lorg/telegram/ui/ChatActivity$16;
.super Lorg/telegram/ui/Components/RecyclerListView;
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
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1911
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    const/high16 v9, 0x42400000    # 48.0f

    .line 1934
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/RecyclerListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v4

    .line 1935
    .local v4, "result":Z
    instance-of v7, p2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v7, :cond_48

    move-object v0, p2

    .line 1936
    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 1937
    .local v0, "chatMessageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAvatarImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    .line 1938
    .local v2, "imageReceiver":Lorg/telegram/messenger/ImageReceiver;
    if-eqz v2, :cond_48

    .line 1939
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1940
    .local v5, "top":I
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedBottom()Z

    move-result v7

    if-eqz v7, :cond_49

    .line 1941
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    invoke-virtual {v7, p2}, Lorg/telegram/ui/Components/RecyclerListView;->getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 1942
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_49

    .line 1943
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/RecyclerListView;->findViewHolderForAdapterPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 1944
    if-eqz v1, :cond_49

    .line 1945
    const/high16 v7, 0x447a0000    # 1000.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    neg-int v7, v7

    invoke-virtual {v2, v7}, Lorg/telegram/messenger/ImageReceiver;->setImageY(I)V

    .line 1946
    invoke-virtual {v2, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1979
    .end local v0    # "chatMessageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v2    # "imageReceiver":Lorg/telegram/messenger/ImageReceiver;
    .end local v5    # "top":I
    :cond_48
    :goto_48
    return v4

    .line 1951
    .restart local v0    # "chatMessageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    .restart local v2    # "imageReceiver":Lorg/telegram/messenger/ImageReceiver;
    .restart local v5    # "top":I
    :cond_49
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedTop()Z

    move-result v7

    if-eqz v7, :cond_83

    .line 1952
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    invoke-virtual {v7, p2}, Lorg/telegram/ui/Components/RecyclerListView;->getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 1953
    .restart local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_83

    .line 1955
    :cond_5b
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/RecyclerListView;->findViewHolderForAdapterPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 1956
    if-eqz v1, :cond_83

    .line 1957
    iget-object v7, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1958
    iget-object v7, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v7, v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v7, :cond_83

    iget-object v7, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedTop()Z

    move-result v7

    if-nez v7, :cond_5b

    .line 1967
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_83
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getLayoutHeight()I

    move-result v8

    add-int v6, v7, v8

    .line 1968
    .local v6, "y":I
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/RecyclerListView;->getHeight()I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Components/RecyclerListView;->getPaddingBottom()I

    move-result v8

    sub-int v3, v7, v8

    .line 1969
    .local v3, "maxY":I
    if-le v6, v3, :cond_a6

    .line 1970
    move v6, v3

    .line 1972
    :cond_a6
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int v7, v6, v7

    if-ge v7, v5, :cond_b4

    .line 1973
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int v6, v5, v7

    .line 1975
    :cond_b4
    const/high16 v7, 0x42300000    # 44.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int v7, v6, v7

    invoke-virtual {v2, v7}, Lorg/telegram/messenger/ImageReceiver;->setImageY(I)V

    .line 1976
    invoke-virtual {v2, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    goto :goto_48
.end method

.method protected onLayout(ZIIII)V
    .registers 14
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v7, 0x0

    .line 1914
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    .line 1915
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    # setter for: Lorg/telegram/ui/ChatActivity;->forceScrollToTop:Z
    invoke-static {v5, v7}, Lorg/telegram/ui/ChatActivity;->access$7902(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 1916
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatAdapter:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$8000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v5

    # getter for: Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isBot:Z
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->access$8100(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 1917
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$16;->getChildCount()I

    move-result v2

    .line 1918
    .local v2, "childCount":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1a
    if-ge v0, v2, :cond_40

    .line 1919
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChatActivity$16;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1920
    .local v1, "child":Landroid/view/View;
    instance-of v5, v1, Lorg/telegram/ui/Cells/BotHelpCell;

    if-eqz v5, :cond_41

    .line 1921
    sub-int v3, p5, p3

    .line 1922
    .local v3, "height":I
    div-int/lit8 v5, v3, 0x2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v4, v5, v6

    .line 1923
    .local v4, "top":I
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    if-le v5, v4, :cond_40

    .line 1924
    sub-int v5, p4, p2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v1, v7, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 1930
    .end local v0    # "a":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childCount":I
    .end local v3    # "height":I
    .end local v4    # "top":I
    :cond_40
    return-void

    .line 1918
    .restart local v0    # "a":I
    .restart local v1    # "child":Landroid/view/View;
    .restart local v2    # "childCount":I
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a
.end method
