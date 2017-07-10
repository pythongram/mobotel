.class Lorg/telegram/ui/ChatActivity$36;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;


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
    .line 2724
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public needChangePanelVisibility(Z)V
    .registers 11
    .param p1, "show"    # Z

    .prologue
    const/16 v7, 0x8

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 2727
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isBotContext()Z

    move-result v2

    if-eqz v2, :cond_5c

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isMediaLayout()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 2728
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionGridLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$6900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 2732
    :goto_2e
    if-eqz p1, :cond_19b

    .line 2733
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$11100(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v2

    if-eqz v2, :cond_46

    .line 2734
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$11100(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2735
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # setter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2, v4}, Lorg/telegram/ui/ChatActivity;->access$11102(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2738
    :cond_46
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6600(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6c

    .line 2739
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6600(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2824
    :cond_5b
    :goto_5b
    return-void

    .line 2730
    :cond_5c
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$10800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    goto :goto_2e

    .line 2742
    :cond_6c
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isBotContext()Z

    move-result v2

    if-eqz v2, :cond_179

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isMediaLayout()Z

    move-result v2

    if-eqz v2, :cond_179

    .line 2743
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionGridLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v2

    const/16 v3, 0x2710

    invoke-virtual {v2, v8, v3}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->scrollToPositionWithOffset(II)V

    .line 2747
    :goto_8f
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->allowStickersPanel:Z
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$11200(Lorg/telegram/ui/ChatActivity;)Z

    move-result v2

    if-eqz v2, :cond_186

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isBotContext()Z

    move-result v2

    if-eqz v2, :cond_b3

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->allowContextBotPanel:Z
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$11300(Lorg/telegram/ui/ChatActivity;)Z

    move-result v2

    if-nez v2, :cond_b3

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->allowContextBotPanelSecond:Z
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$11400(Lorg/telegram/ui/ChatActivity;)Z

    move-result v2

    if-eqz v2, :cond_186

    .line 2748
    :cond_b3
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v2, :cond_11a

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isBotContext()Z

    move-result v2

    if-eqz v2, :cond_11a

    .line 2749
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "mainconfig"

    invoke-virtual {v2, v3, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2750
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "secretbot"

    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_11a

    .line 2751
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2752
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v2, "AppName"

    const v3, 0x7f070092

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2753
    const-string v2, "SecretChatContextBotAlert"

    const v3, 0x7f0704cc

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2754
    const-string v2, "OK"

    const v3, 0x7f0703d4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2755
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 2756
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "secretbot"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2759
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_11a
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6600(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2760
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6600(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 2761
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    # setter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2, v3}, Lorg/telegram/ui/ChatActivity;->access$11102(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2762
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$11100(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v3, v6, [Landroid/animation/Animator;

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 2763
    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$6600(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    const-string v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_226

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    .line 2762
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2765
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$11100(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ChatActivity$36$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChatActivity$36$1;-><init>(Lorg/telegram/ui/ChatActivity$36;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2780
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$11100(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2781
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$11100(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_5b

    .line 2745
    :cond_179
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$10800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v2

    const/16 v3, 0x2710

    invoke-virtual {v2, v8, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto/16 :goto_8f

    .line 2783
    :cond_186
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6600(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2784
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6600(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_5b

    .line 2787
    :cond_19b
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$11100(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v2

    if-eqz v2, :cond_1b1

    .line 2788
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$11100(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2789
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # setter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2, v4}, Lorg/telegram/ui/ChatActivity;->access$11102(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2792
    :cond_1b1
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6600(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eq v2, v7, :cond_5b

    .line 2795
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->allowStickersPanel:Z
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$11200(Lorg/telegram/ui/ChatActivity;)Z

    move-result v2

    if-eqz v2, :cond_211

    .line 2796
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    # setter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2, v3}, Lorg/telegram/ui/ChatActivity;->access$11102(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2797
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$11100(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v3, v6, [Landroid/animation/Animator;

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 2798
    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$6600(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    const-string v5, "alpha"

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    .line 2797
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2800
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$11100(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ChatActivity$36$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChatActivity$36$2;-><init>(Lorg/telegram/ui/ChatActivity$36;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2817
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$11100(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2818
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$11100(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_5b

    .line 2820
    :cond_211
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6600(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 2821
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6600(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_5b

    .line 2763
    nop

    :array_226
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onContextClick(Lorg/telegram/tgnet/TLRPC$BotInlineResult;)V
    .registers 9
    .param p1, "result"    # Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .prologue
    .line 2836
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 2844
    :cond_c
    :goto_c
    return-void

    .line 2839
    :cond_d
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v1, "web_player_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 2840
    :cond_21
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->title:Ljava/lang/String;

    if-eqz v1, :cond_3b

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->title:Ljava/lang/String;

    :goto_2d
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->description:Ljava/lang/String;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    iget v5, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->w:I

    iget v6, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->h:I

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/EmbedBottomSheet;->show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_c

    :cond_3b
    const-string v1, ""

    goto :goto_2d

    .line 2842
    :cond_3e
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_c
.end method

.method public onContextSearch(Z)V
    .registers 4
    .param p1, "searching"    # Z

    .prologue
    .line 2828
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_1e

    .line 2829
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getBotCaption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setCaption(Ljava/lang/String;)V

    .line 2830
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$36;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->showContextProgress(Z)V

    .line 2832
    :cond_1e
    return-void
.end method
