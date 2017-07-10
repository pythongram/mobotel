.class Lorg/telegram/ui/ChatActivity$40;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;


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
    .line 2998
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didPressedAttachButton()V
    .registers 2

    .prologue
    .line 3139
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->openAttachMenu()V
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)V

    .line 3140
    return-void
.end method

.method public needSendTyping()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 3042
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "mainconfig"

    invoke-virtual {v3, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3043
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string v3, "hide_typing"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 3044
    .local v1, "hideTyping":Z
    const-string v3, "ghost_mode"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3045
    .local v0, "ghostMode":Z
    if-nez v1, :cond_2c

    if-nez v0, :cond_2c

    .line 3046
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->classGuid:I
    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$12000(Lorg/telegram/ui/ChatActivity;)I

    move-result v6

    invoke-virtual {v3, v4, v5, v7, v6}, Lorg/telegram/messenger/MessagesController;->sendTyping(JII)V

    .line 3048
    :cond_2c
    return-void
.end method

.method public needStartRecordVideo(I)V
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 3144
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 3145
    if-nez p1, :cond_14

    .line 3146
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraView;->showCamera()V

    .line 3153
    :cond_13
    :goto_13
    return-void

    .line 3147
    :cond_14
    const/4 v0, 0x1

    if-ne p1, v0, :cond_21

    .line 3148
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraView;->send()V

    goto :goto_13

    .line 3149
    :cond_21
    const/4 v0, 0x2

    if-ne p1, v0, :cond_13

    .line 3150
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraView;->cancel()V

    goto :goto_13
.end method

.method public onAttachButtonHidden()V
    .registers 3

    .prologue
    .line 3052
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3061
    :cond_c
    :goto_c
    return-void

    .line 3055
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->attachItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 3056
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->attachItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 3058
    :cond_1f
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->headerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 3059
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->headerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    goto :goto_c
.end method

.method public onAttachButtonShow()V
    .registers 3

    .prologue
    .line 3065
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3074
    :cond_c
    :goto_c
    return-void

    .line 3068
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->attachItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 3069
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->attachItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 3071
    :cond_20
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->headerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 3072
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->headerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    goto :goto_c
.end method

.method public onMessageEditEnd(Z)V
    .registers 8
    .param p1, "loading"    # Z

    .prologue
    const/16 v5, 0x2e

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3078
    if-nez p1, :cond_c7

    .line 3079
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v0

    if-lt v0, v5, :cond_c8

    :cond_1e
    move v0, v2

    :goto_1f
    invoke-virtual {v3, v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setNeedBotContext(Z)V

    .line 3080
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->onItemLongClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 3081
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->onItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 3082
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setClickable(Z)V

    .line 3083
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setLongClickable(Z)V

    .line 3084
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setAllowNewMentions(Z)V

    .line 3085
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionModeTitleContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12300(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3086
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setVisibility(I)V

    .line 3087
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v0, :cond_83

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v0

    const/16 v3, 0x17

    if-lt v0, v3, :cond_cb

    :cond_83
    move v0, v2

    :goto_84
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v3, :cond_96

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v3

    if-lt v3, v5, :cond_cd

    :cond_96
    move v3, v2

    :goto_97
    invoke-virtual {v4, v0, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setAllowStickersAndGifs(ZZ)V

    .line 3088
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->editingMessageObjectReqId:I
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12500(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-eqz v0, :cond_b4

    .line 3089
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->editingMessageObjectReqId:I
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$12500(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    invoke-virtual {v0, v3, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 3090
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # setter for: Lorg/telegram/ui/ChatActivity;->editingMessageObjectReqId:I
    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$12502(Lorg/telegram/ui/ChatActivity;I)I

    .line 3092
    :cond_b4
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 3093
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->updatePinnedMessageView(Z)V
    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;Z)V

    .line 3094
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->updateVisibleRows()V
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2300(Lorg/telegram/ui/ChatActivity;)V

    .line 3096
    :cond_c7
    return-void

    :cond_c8
    move v0, v1

    .line 3079
    goto/16 :goto_1f

    :cond_cb
    move v0, v1

    .line 3087
    goto :goto_84

    :cond_cd
    move v3, v1

    goto :goto_97
.end method

.method public onMessageSend(Ljava/lang/CharSequence;)V
    .registers 8
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3001
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->moveScrollToLastMessage()V
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11600(Lorg/telegram/ui/ChatActivity;)V

    .line 3002
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object v3, v2

    move-object v4, v2

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity;->showReplyPanel(ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$WebPage;Z)V

    .line 3003
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 3004
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->addHashtagsFromMessage(Ljava/lang/CharSequence;)V

    .line 3006
    :cond_20
    return-void
.end method

.method public onStickersTab(Z)V
    .registers 4
    .param p1, "opened"    # Z

    .prologue
    .line 3130
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->emojiButtonRed:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12900(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 3131
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->emojiButtonRed:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12900(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3133
    :cond_13
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    if-nez p1, :cond_21

    const/4 v0, 0x1

    :goto_18
    # setter for: Lorg/telegram/ui/ChatActivity;->allowContextBotPanelSecond:Z
    invoke-static {v1, v0}, Lorg/telegram/ui/ChatActivity;->access$11402(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 3134
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->checkContextBotPanel()V
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12800(Lorg/telegram/ui/ChatActivity;)V

    .line 3135
    return-void

    .line 3133
    :cond_21
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public onTextChanged(Ljava/lang/CharSequence;Z)V
    .registers 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "bigChange"    # Z

    .prologue
    const/4 v1, 0x1

    .line 3010
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_17

    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isEditingMessage()Z

    move-result v0

    if-eqz v0, :cond_94

    :cond_17
    move v0, v1

    :goto_18
    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MediaController;->setInputFieldHasText(Z)V

    .line 3011
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->stickersAdapter:Lorg/telegram/ui/Adapters/StickersAdapter;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/StickersAdapter;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isEditingMessage()Z

    move-result v0

    if-nez v0, :cond_36

    .line 3012
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->stickersAdapter:Lorg/telegram/ui/Adapters/StickersAdapter;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/StickersAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Adapters/StickersAdapter;->loadStikersForEmoji(Ljava/lang/CharSequence;)V

    .line 3014
    :cond_36
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 3015
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getCursorPosition()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchUsernameOrHashtag(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 3017
    :cond_57
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->waitingForCharaterEnterRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11800(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 3018
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->waitingForCharaterEnterRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11800(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3019
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x0

    # setter for: Lorg/telegram/ui/ChatActivity;->waitingForCharaterEnterRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->access$11802(Lorg/telegram/ui/ChatActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 3021
    :cond_6e
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isMessageWebPageSearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_93

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isEditingMessage()Z

    move-result v0

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isEditingCaption()Z

    move-result v0

    if-nez v0, :cond_93

    .line 3022
    :cond_8c
    if-eqz p2, :cond_96

    .line 3023
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->searchLinks(Ljava/lang/CharSequence;Z)V
    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ChatActivity;->access$11900(Lorg/telegram/ui/ChatActivity;Ljava/lang/CharSequence;Z)V

    .line 3037
    :cond_93
    :goto_93
    return-void

    .line 3010
    :cond_94
    const/4 v0, 0x0

    goto :goto_18

    .line 3025
    :cond_96
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v1, Lorg/telegram/ui/ChatActivity$40$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ChatActivity$40$1;-><init>(Lorg/telegram/ui/ChatActivity$40;Ljava/lang/CharSequence;)V

    # setter for: Lorg/telegram/ui/ChatActivity;->waitingForCharaterEnterRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$11802(Lorg/telegram/ui/ChatActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 3034
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->waitingForCharaterEnterRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11800(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Runnable;

    move-result-object v2

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->WEB_URL:Ljava/util/regex/Pattern;

    if-nez v0, :cond_b0

    const-wide/16 v0, 0xbb8

    :goto_ac
    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_93

    :cond_b0
    const-wide/16 v0, 0x3e8

    goto :goto_ac
.end method

.method public onWindowSizeChanged(I)V
    .registers 8
    .param p1, "size"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x4

    const/4 v1, 0x0

    .line 3100
    const/high16 v2, 0x42900000    # 72.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    add-int/2addr v2, v3

    if-ge p1, v2, :cond_8a

    .line 3101
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # setter for: Lorg/telegram/ui/ChatActivity;->allowStickersPanel:Z
    invoke-static {v2, v1}, Lorg/telegram/ui/ChatActivity;->access$11202(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 3102
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->stickersPanel:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$12700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2a

    .line 3103
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->stickersPanel:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$12700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3105
    :cond_2a
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6600(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_47

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6600(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_47

    .line 3106
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6600(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3119
    :cond_47
    :goto_47
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v3

    if-nez v3, :cond_e9

    :goto_53
    # setter for: Lorg/telegram/ui/ChatActivity;->allowContextBotPanel:Z
    invoke-static {v2, v0}, Lorg/telegram/ui/ChatActivity;->access$11302(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 3120
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->checkContextBotPanel()V
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12800(Lorg/telegram/ui/ChatActivity;)V

    .line 3122
    int-to-double v0, p1

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    div-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_89

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusShowQuickBar:Z

    if-eqz v0, :cond_89

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatDialogsView:Lorg/telegram/ui/Components/ChatDialogsView;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatDialogsView;

    move-result-object v0

    if-eqz v0, :cond_89

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatDialogsView:Lorg/telegram/ui/Components/ChatDialogsView;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatDialogsView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 3123
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatDialogsView:Lorg/telegram/ui/Components/ChatDialogsView;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatDialogsView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->btnPressed()V

    .line 3126
    :cond_89
    return-void

    .line 3109
    :cond_8a
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # setter for: Lorg/telegram/ui/ChatActivity;->allowStickersPanel:Z
    invoke-static {v2, v0}, Lorg/telegram/ui/ChatActivity;->access$11202(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 3110
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->stickersPanel:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$12700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_a4

    .line 3111
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->stickersPanel:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$12700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3113
    :cond_a4
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6600(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_47

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6600(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_47

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isBotContext()Z

    move-result v2

    if-eqz v2, :cond_d4

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->allowContextBotPanel:Z
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$11300(Lorg/telegram/ui/ChatActivity;)Z

    move-result v2

    if-nez v2, :cond_d4

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->allowContextBotPanelSecond:Z
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$11400(Lorg/telegram/ui/ChatActivity;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 3114
    :cond_d4
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6600(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3115
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$40;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mentionContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6600(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_47

    :cond_e9
    move v0, v1

    .line 3119
    goto/16 :goto_53
.end method
