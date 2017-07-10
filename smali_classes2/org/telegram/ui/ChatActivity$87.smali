.class Lorg/telegram/ui/ChatActivity$87;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createDeleteMessagesAlert(Lorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$checks:[Z

.field final synthetic val$deleteForAll:[Z

.field final synthetic val$finalSelectedObject:Lorg/telegram/messenger/MessageObject;

.field final synthetic val$userFinal:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;[ZLorg/telegram/tgnet/TLRPC$User;[Z)V
    .registers 6
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 8709
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$87;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$87;->val$finalSelectedObject:Lorg/telegram/messenger/MessageObject;

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$87;->val$deleteForAll:[Z

    iput-object p4, p0, Lorg/telegram/ui/ChatActivity$87;->val$userFinal:Lorg/telegram/tgnet/TLRPC$User;

    iput-object p5, p0, Lorg/telegram/ui/ChatActivity$87;->val$checks:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 17
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 8712
    const/4 v1, 0x0

    .line 8713
    .local v1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$87;->val$finalSelectedObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_bc

    .line 8714
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8715
    .restart local v1    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$87;->val$finalSelectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8716
    const/4 v2, 0x0

    .line 8717
    .local v2, "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$87;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$87;->val$finalSelectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v10, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-eqz v0, :cond_44

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$87;->val$finalSelectedObject:Lorg/telegram/messenger/MessageObject;

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v3, 0xa

    if-eq v0, v3, :cond_44

    .line 8718
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8719
    .restart local v2    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$87;->val$finalSelectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v10, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8721
    :cond_44
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$87;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$87;->val$finalSelectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$87;->val$deleteForAll:[Z

    const/4 v10, 0x0

    aget-boolean v5, v5, v10

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController;->deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;IZ)V

    .line 8747
    .end local v2    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_5c
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$87;->val$userFinal:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_bb

    .line 8748
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$87;->val$checks:[Z

    const/4 v3, 0x0

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_7a

    .line 8749
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$87;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$87;->val$userFinal:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v10, p0, Lorg/telegram/ui/ChatActivity$87;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v10, v10, Lorg/telegram/ui/ChatActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v0, v3, v5, v10}, Lorg/telegram/messenger/MessagesController;->deleteUserFromChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 8751
    :cond_7a
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$87;->val$checks:[Z

    const/4 v3, 0x1

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_a6

    .line 8752
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_channels_reportSpam;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_channels_reportSpam;-><init>()V

    .line 8753
    .local v9, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_reportSpam;
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$87;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    iput-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_channels_reportSpam;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 8754
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$87;->val$userFinal:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v0

    iput-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_channels_reportSpam;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 8755
    iput-object v1, v9, Lorg/telegram/tgnet/TLRPC$TL_channels_reportSpam;->id:Ljava/util/ArrayList;

    .line 8756
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/ChatActivity$87$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChatActivity$87$1;-><init>(Lorg/telegram/ui/ChatActivity$87;)V

    invoke-virtual {v0, v9, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 8763
    .end local v9    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_reportSpam;
    :cond_a6
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$87;->val$checks:[Z

    const/4 v3, 0x2

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_bb

    .line 8764
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$87;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$87;->val$userFinal:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v10, 0x0

    invoke-virtual {v0, v3, v5, v10}, Lorg/telegram/messenger/MessagesController;->deleteUserChannelHistory(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;I)V

    .line 8767
    :cond_bb
    return-void

    .line 8723
    :cond_bc
    const/4 v6, 0x1

    .local v6, "a":I
    :goto_bd
    if-ltz v6, :cond_158

    .line 8724
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$87;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->selectedMessagesIds:[Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)[Ljava/util/HashMap;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8725
    .restart local v1    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 8726
    .restart local v2    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 8727
    .local v4, "channelId":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_fb

    .line 8728
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$87;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->selectedMessagesIds:[Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)[Ljava/util/HashMap;

    move-result-object v0

    aget-object v0, v0, v6

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/MessageObject;

    .line 8729
    .local v8, "msg":Lorg/telegram/messenger/MessageObject;
    if-nez v4, :cond_fb

    iget-object v0, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v0, :cond_fb

    .line 8730
    iget-object v0, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    .line 8733
    .end local v8    # "msg":Lorg/telegram/messenger/MessageObject;
    :cond_fb
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$87;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v0, :cond_144

    .line 8734
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8735
    .restart local v2    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$87;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->selectedMessagesIds:[Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)[Ljava/util/HashMap;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_116
    :goto_116
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_144

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 8736
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/MessageObject;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/MessageObject;

    .line 8737
    .restart local v8    # "msg":Lorg/telegram/messenger/MessageObject;
    iget-object v3, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v10, v3, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-eqz v3, :cond_116

    iget v3, v8, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v5, 0xa

    if-eq v3, v5, :cond_116

    .line 8738
    iget-object v3, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v10, v3, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_116

    .line 8742
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/MessageObject;>;"
    .end local v8    # "msg":Lorg/telegram/messenger/MessageObject;
    :cond_144
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$87;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$87;->val$deleteForAll:[Z

    const/4 v10, 0x0

    aget-boolean v5, v5, v10

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController;->deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;IZ)V

    .line 8723
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_bd

    .line 8744
    .end local v2    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v4    # "channelId":I
    :cond_158
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$87;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 8745
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$87;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v3, 0x1

    # invokes: Lorg/telegram/ui/ChatActivity;->updatePinnedMessageView(Z)V
    invoke-static {v0, v3}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;Z)V

    goto/16 :goto_5c
.end method
