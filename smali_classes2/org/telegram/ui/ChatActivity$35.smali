.class Lorg/telegram/ui/ChatActivity$35;
.super Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;
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
    .line 2693
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V
    .registers 10
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p4, "state"    # Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 2696
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 2697
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 2698
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 2699
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 2700
    invoke-virtual {p3}, Lorg/telegram/messenger/support/widget/RecyclerView;->getLayoutManager()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionGridLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$6900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v3

    if-ne v2, v3, :cond_29

    .line 2701
    invoke-virtual {p3, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 2702
    .local v0, "position":I
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getBotContextSwitch()Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 2703
    if-nez v0, :cond_2a

    .line 2715
    .end local v0    # "position":I
    :cond_29
    :goto_29
    return-void

    .line 2706
    .restart local v0    # "position":I
    :cond_2a
    add-int/lit8 v0, v0, -0x1

    .line 2707
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionGridLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->isFirstRow(I)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 2708
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2713
    :cond_3e
    :goto_3e
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$35;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionGridLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->isLastInRow(I)Z

    move-result v2

    if-eqz v2, :cond_54

    :goto_4a
    iput v1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_29

    .line 2711
    :cond_4d
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_3e

    .line 2713
    :cond_54
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_4a
.end method
