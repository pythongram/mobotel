.class Lorg/telegram/ui/PhotoViewer$35;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 2177
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public needChangePanelVisibility(Z)V
    .registers 11
    .param p1, "show"    # Z

    .prologue
    const/16 v8, 0x8

    const/4 v6, 0x3

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 2180
    if-eqz p1, :cond_f8

    .line 2181
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$2000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 2182
    .local v1, "layoutParams3":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$9700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCount()I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/lit8 v4, v2, 0x24

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$9700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCount()I

    move-result v2

    if-le v2, v6, :cond_7a

    const/16 v2, 0x12

    :goto_33
    add-int v0, v4, v2

    .line 2183
    .local v0, "height":I
    int-to-float v2, v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2184
    int-to-float v2, v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2185
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$2000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2187
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$9900(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v2

    if-eqz v2, :cond_64

    .line 2188
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$9900(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2189
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v4, 0x0

    # setter for: Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2, v4}, Lorg/telegram/ui/PhotoViewer;->access$9902(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2192
    :cond_64
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$2000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7c

    .line 2193
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$2000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAlpha(F)V

    .line 2247
    .end local v0    # "height":I
    .end local v1    # "layoutParams3":Landroid/widget/FrameLayout$LayoutParams;
    :cond_79
    :goto_79
    return-void

    .restart local v1    # "layoutParams3":Landroid/widget/FrameLayout$LayoutParams;
    :cond_7a
    move v2, v3

    .line 2182
    goto :goto_33

    .line 2196
    .restart local v0    # "height":I
    :cond_7c
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$10000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v2

    const/16 v4, 0x2710

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 2198
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->allowMentions:Z
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$9800(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v2

    if-eqz v2, :cond_e4

    .line 2199
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$2000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2200
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    # setter for: Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2, v4}, Lorg/telegram/ui/PhotoViewer;->access$9902(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2201
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$9900(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v4, v7, [Landroid/animation/Animator;

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    .line 2202
    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$2000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    const-string v6, "alpha"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_17a

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v3

    .line 2201
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2204
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$9900(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/PhotoViewer$35$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/PhotoViewer$35$1;-><init>(Lorg/telegram/ui/PhotoViewer$35;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2212
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$9900(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2213
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$9900(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_79

    .line 2215
    :cond_e4
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$2000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAlpha(F)V

    .line 2216
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$2000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    goto :goto_79

    .line 2219
    .end local v0    # "height":I
    .end local v1    # "layoutParams3":Landroid/widget/FrameLayout$LayoutParams;
    :cond_f8
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$9900(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v2

    if-eqz v2, :cond_10f

    .line 2220
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$9900(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2221
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v4, 0x0

    # setter for: Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2, v4}, Lorg/telegram/ui/PhotoViewer;->access$9902(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2224
    :cond_10f
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$2000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v2

    if-eq v2, v8, :cond_79

    .line 2227
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->allowMentions:Z
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$9800(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v2

    if-eqz v2, :cond_16f

    .line 2228
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    # setter for: Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2, v4}, Lorg/telegram/ui/PhotoViewer;->access$9902(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2229
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$9900(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v4, v7, [Landroid/animation/Animator;

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    .line 2230
    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->access$2000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    const-string v6, "alpha"

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v8, v7, v3

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v3

    .line 2229
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2232
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$9900(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/PhotoViewer$35$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/PhotoViewer$35$2;-><init>(Lorg/telegram/ui/PhotoViewer$35;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2241
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$9900(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2242
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$9900(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_79

    .line 2244
    :cond_16f
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$35;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$2000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    goto/16 :goto_79

    .line 2202
    :array_17a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onContextClick(Lorg/telegram/tgnet/TLRPC$BotInlineResult;)V
    .registers 2
    .param p1, "result"    # Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .prologue
    .line 2257
    return-void
.end method

.method public onContextSearch(Z)V
    .registers 2
    .param p1, "searching"    # Z

    .prologue
    .line 2252
    return-void
.end method
