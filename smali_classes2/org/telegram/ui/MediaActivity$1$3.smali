.class Lorg/telegram/ui/MediaActivity$1$3;
.super Ljava/lang/Object;
.source "MediaActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MediaActivity$1;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/MediaActivity$1;

.field final synthetic val$deleteForAll:[Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/MediaActivity$1;[Z)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/MediaActivity$1;

    .prologue
    .line 457
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$1$3;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iput-object p2, p0, Lorg/telegram/ui/MediaActivity$1$3;->val$deleteForAll:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 17
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 460
    const/4 v6, 0x1

    .local v6, "a":I
    :goto_1
    if-ltz v6, :cond_cb

    .line 461
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$1$3;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 462
    .local v1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 463
    .local v2, "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v3, 0x0

    .line 464
    .local v3, "currentEncryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    const/4 v4, 0x0

    .line 465
    .local v4, "channelId":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44

    .line 466
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$1$3;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v0

    aget-object v0, v0, v6

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/MessageObject;

    .line 467
    .local v8, "msg":Lorg/telegram/messenger/MessageObject;
    if-nez v4, :cond_44

    iget-object v0, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v0, :cond_44

    .line 468
    iget-object v0, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    .line 471
    .end local v8    # "msg":Lorg/telegram/messenger/MessageObject;
    :cond_44
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$1$3;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->dialog_id:J
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$000(Lorg/telegram/ui/MediaActivity;)J

    move-result-wide v10

    long-to-int v0, v10

    if-nez v0, :cond_67

    .line 472
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v5, p0, Lorg/telegram/ui/MediaActivity$1$3;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v5, v5, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->dialog_id:J
    invoke-static {v5}, Lorg/telegram/ui/MediaActivity;->access$000(Lorg/telegram/ui/MediaActivity;)J

    move-result-wide v10

    const/16 v5, 0x20

    shr-long/2addr v10, v5

    long-to-int v5, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v3

    .line 474
    :cond_67
    if-eqz v3, :cond_ae

    .line 475
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .restart local v2    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$1$3;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_80
    :goto_80
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ae

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 477
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/MessageObject;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/MessageObject;

    .line 478
    .restart local v8    # "msg":Lorg/telegram/messenger/MessageObject;
    iget-object v5, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v10, v5, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-eqz v5, :cond_80

    iget v5, v8, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v9, 0xa

    if-eq v5, v9, :cond_80

    .line 479
    iget-object v5, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v10, v5, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_80

    .line 483
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/MessageObject;>;"
    .end local v8    # "msg":Lorg/telegram/messenger/MessageObject;
    :cond_ae
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v5, p0, Lorg/telegram/ui/MediaActivity$1$3;->val$deleteForAll:[Z

    const/4 v9, 0x0

    aget-boolean v5, v5, v9

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController;->deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;IZ)V

    .line 484
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$1$3;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 460
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_1

    .line 486
    .end local v1    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v3    # "currentEncryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v4    # "channelId":I
    :cond_cb
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$1$3;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1900(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 487
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$1$3;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2000(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    .line 488
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$1$3;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    const/4 v5, 0x0

    # setter for: Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I
    invoke-static {v0, v5}, Lorg/telegram/ui/MediaActivity;->access$702(Lorg/telegram/ui/MediaActivity;I)I

    .line 489
    return-void
.end method
