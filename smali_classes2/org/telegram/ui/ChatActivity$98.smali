.class Lorg/telegram/ui/ChatActivity$98;
.super Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$SimpleCallback;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private messageObject:Lorg/telegram/messenger/MessageObject;

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;II)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;
    .param p2, "dragDirs"    # I
    .param p3, "swipeDirs"    # I

    .prologue
    .line 11211
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$98;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2, p3}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$SimpleCallback;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getSwipeDirs(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I
    .registers 10
    .param p1, "paramRecyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "paramViewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v6, 0x1

    .line 11216
    iget-object v2, p2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v2, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v2, :cond_ef

    .line 11217
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$98;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$98;->messageObject:Lorg/telegram/messenger/MessageObject;

    # invokes: Lorg/telegram/ui/ChatActivity;->getMessageType(Lorg/telegram/messenger/MessageObject;)I
    invoke-static {v2, v3}, Lorg/telegram/ui/ChatActivity;->access$19800(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)I

    move-result v0

    .line 11218
    .local v0, "i":I
    const/4 v1, 0x1

    .line 11219
    .local v1, "j":I
    iget-object v2, p2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ChatActivity$98;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 11220
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$98;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$98;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v2

    const/16 v3, 0x2e

    if-lt v2, v3, :cond_dd

    :cond_2e
    if-ne v0, v6, :cond_40

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$98;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 11221
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$98;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mergeDialogId:J
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4900(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_dd

    :cond_40
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$98;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v2, :cond_4e

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$98;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 11222
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    if-ltz v2, :cond_dd

    :cond_4e
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$98;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->isBroadcast:Z
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$19900(Lorg/telegram/ui/ChatActivity;)Z

    move-result v2

    if-nez v2, :cond_dd

    .line 11223
    move v0, v1

    .line 11224
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$98;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v2, :cond_6d

    .line 11225
    if-eqz v0, :cond_6d

    .line 11226
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$98;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    .line 11227
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$SimpleCallback;->getSwipeDirs(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I

    move-result v2

    .line 11267
    .end local v0    # "i":I
    .end local v1    # "j":I
    :goto_6c
    return v2

    .line 11230
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    :cond_6d
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$98;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_dd

    .line 11231
    move v0, v1

    .line 11232
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$98;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_92

    .line 11233
    if-eqz v0, :cond_92

    .line 11234
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$98;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    .line 11235
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$SimpleCallback;->getSwipeDirs(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I

    move-result v2

    goto :goto_6c

    .line 11238
    :cond_92
    move v0, v1

    .line 11239
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$98;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v2, :cond_ab

    .line 11240
    if-eqz v0, :cond_ab

    .line 11241
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$98;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    .line 11242
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$SimpleCallback;->getSwipeDirs(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I

    move-result v2

    goto :goto_6c

    .line 11245
    :cond_ab
    move v0, v1

    .line 11246
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$98;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    if-eqz v2, :cond_c4

    .line 11247
    if-eqz v0, :cond_c4

    .line 11248
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$98;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    .line 11249
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$SimpleCallback;->getSwipeDirs(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I

    move-result v2

    goto :goto_6c

    .line 11252
    :cond_c4
    move v0, v1

    .line 11253
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$98;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_dd

    .line 11254
    if-eqz v0, :cond_dd

    .line 11255
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$98;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    .line 11256
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$SimpleCallback;->getSwipeDirs(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I

    move-result v2

    goto :goto_6c

    .line 11261
    :cond_dd
    const/4 v0, 0x0

    .line 11262
    if-eqz v0, :cond_ef

    .line 11263
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$98;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    .line 11264
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$SimpleCallback;->getSwipeDirs(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I

    move-result v2

    goto/16 :goto_6c

    .line 11267
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_ef
    const/4 v2, 0x0

    goto/16 :goto_6c
.end method

.method public onMove(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 5
    .param p1, "paramRecyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "paramViewHolder1"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p3, "paramViewHolder2"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 11271
    const/4 v0, 0x0

    return v0
.end method

.method public onSwiped(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 9
    .param p1, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "paramInt"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 11277
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$98;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->itemTouchHelper:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$20000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->attachToRecyclerView(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 11278
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$98;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->itemTouchHelper:Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$20000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$98;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->attachToRecyclerView(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 11279
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    .line 11280
    .local v2, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$98;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->getMessageType(Lorg/telegram/messenger/MessageObject;)I
    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->access$19800(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)I

    move-result p2

    .line 11281
    if-ne p2, v1, :cond_3f

    .line 11282
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$98;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$98;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->isBroadcast:Z
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$19900(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 11283
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$98;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity;->showReplyPanel(ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$WebPage;Z)V

    .line 11286
    :cond_3f
    if-eqz p2, :cond_45

    const/16 v0, 0x14

    if-ne p2, v0, :cond_46

    .line 11290
    :cond_45
    :goto_45
    return-void

    .line 11289
    :cond_46
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$98;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity;->showReplyPanel(ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$WebPage;Z)V

    goto :goto_45
.end method
