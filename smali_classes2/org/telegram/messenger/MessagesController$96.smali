.class Lorg/telegram/messenger/MessagesController$96;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->getDifference(IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 5633
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$96;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 16
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    const/4 v1, 0x0

    .line 5636
    if-nez p2, :cond_ab

    move-object v2, p1

    .line 5637
    check-cast v2, Lorg/telegram/tgnet/TLRPC$updates_Difference;

    .line 5639
    .local v2, "res":Lorg/telegram/tgnet/TLRPC$updates_Difference;
    instance-of v0, v2, Lorg/telegram/tgnet/TLRPC$TL_updates_differenceSlice;

    if-eqz v0, :cond_1c

    .line 5640
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$96;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$updates_Difference;->intermediate_state:Lorg/telegram/tgnet/TLRPC$TL_updates_state;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->pts:I

    iget-object v10, v2, Lorg/telegram/tgnet/TLRPC$updates_Difference;->intermediate_state:Lorg/telegram/tgnet/TLRPC$TL_updates_state;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->date:I

    iget-object v11, v2, Lorg/telegram/tgnet/TLRPC$updates_Difference;->intermediate_state:Lorg/telegram/tgnet/TLRPC$TL_updates_state;

    iget v11, v11, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->qts:I

    const/4 v12, 0x1

    invoke-virtual {v0, v1, v10, v11, v12}, Lorg/telegram/messenger/MessagesController;->getDifference(IIIZ)V

    .line 5643
    :cond_1c
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 5644
    .local v4, "usersDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 5645
    .local v5, "chatsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_27
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$updates_Difference;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_43

    .line 5646
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$updates_Difference;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$User;

    .line 5647
    .local v9, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget v0, v9, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5645
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    .line 5649
    .end local v9    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_43
    const/4 v6, 0x0

    :goto_44
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$updates_Difference;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_60

    .line 5650
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$updates_Difference;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 5651
    .local v7, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget v0, v7, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5649
    add-int/lit8 v6, v6, 0x1

    goto :goto_44

    .line 5654
    .end local v7    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_60
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5655
    .local v3, "msgUpdates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;>;"
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$updates_Difference;->other_updates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_91

    .line 5656
    const/4 v6, 0x0

    :goto_6e
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$updates_Difference;->other_updates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_91

    .line 5657
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$updates_Difference;->other_updates:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Update;

    .line 5658
    .local v8, "upd":Lorg/telegram/tgnet/TLRPC$Update;
    instance-of v0, v8, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    if-eqz v0, :cond_8e

    .line 5659
    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    .end local v8    # "upd":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5660
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$updates_Difference;->other_updates:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5661
    add-int/lit8 v6, v6, -0x1

    .line 5656
    :cond_8e
    add-int/lit8 v6, v6, 0x1

    goto :goto_6e

    .line 5666
    :cond_91
    new-instance v0, Lorg/telegram/messenger/MessagesController$96$1;

    invoke-direct {v0, p0, v2}, Lorg/telegram/messenger/MessagesController$96$1;-><init>(Lorg/telegram/messenger/MessagesController$96;Lorg/telegram/tgnet/TLRPC$updates_Difference;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 5674
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v10

    new-instance v0, Lorg/telegram/messenger/MessagesController$96$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController$96$2;-><init>(Lorg/telegram/messenger/MessagesController$96;Lorg/telegram/tgnet/TLRPC$updates_Difference;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-virtual {v10, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 5843
    .end local v2    # "res":Lorg/telegram/tgnet/TLRPC$updates_Difference;
    .end local v3    # "msgUpdates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;>;"
    .end local v4    # "usersDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    .end local v5    # "chatsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    .end local v6    # "a":I
    :goto_aa
    return-void

    .line 5840
    :cond_ab
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$96;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-boolean v1, v0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    .line 5841
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->setIsUpdating(Z)V

    goto :goto_aa
.end method
