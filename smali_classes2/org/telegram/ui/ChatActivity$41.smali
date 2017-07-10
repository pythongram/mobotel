.class Lorg/telegram/ui/ChatActivity$41;
.super Landroid/widget/FrameLayout;
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
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 3156
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .registers 2

    .prologue
    .line 3182
    const/4 v0, 0x0

    return v0
.end method

.method public setTranslationY(F)V
    .registers 5
    .param p1, "translationY"    # F

    .prologue
    .line 3159
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3160
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_10

    .line 3161
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->invalidate()V

    .line 3163
    :cond_10
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$41;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_62

    .line 3164
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$41;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3165
    .local v0, "height":I
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 3166
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 3168
    :cond_2f
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->progressView:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6400(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 3169
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->progressView:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6400(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3171
    :cond_40
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6600(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_51

    .line 3172
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6600(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3174
    :cond_51
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->pagedownButton:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$7300(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_62

    .line 3175
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->pagedownButton:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$7300(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3178
    .end local v0    # "height":I
    :cond_62
    return-void
.end method

.method public setVisibility(I)V
    .registers 5
    .param p1, "visibility"    # I

    .prologue
    const/4 v0, 0x0

    .line 3187
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3188
    const/16 v1, 0x8

    if-ne p1, v1, :cond_5f

    .line 3189
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 3190
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 3192
    :cond_19
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->progressView:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6400(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 3193
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->progressView:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6400(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3195
    :cond_2a
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6600(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 3196
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6600(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3198
    :cond_3b
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->pagedownButton:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$7300(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_5f

    .line 3199
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->pagedownButton:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$7300(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->pagedownButton:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$7300(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5c

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    :cond_5c
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3202
    :cond_5f
    return-void
.end method
