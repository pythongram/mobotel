.class Lorg/telegram/messenger/MessagesController$96$2;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$96;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$96;

.field final synthetic val$chatsDict:Ljava/util/HashMap;

.field final synthetic val$msgUpdates:Ljava/util/ArrayList;

.field final synthetic val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

.field final synthetic val$usersDict:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$96;Lorg/telegram/tgnet/TLRPC$updates_Difference;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .registers 6
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$96;

    .prologue
    .line 5674
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$96$2;->this$1:Lorg/telegram/messenger/MessagesController$96;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$96$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$96$2;->val$msgUpdates:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$96$2;->val$usersDict:Ljava/util/HashMap;

    iput-object p5, p0, Lorg/telegram/messenger/MessagesController$96$2;->val$chatsDict:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v6, 0x0

    .line 5677
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$96$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$updates_Difference;->users:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$96$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$updates_Difference;->chats:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v6}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 5678
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$96$2;->val$msgUpdates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5a

    .line 5679
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 5680
    .local v9, "corrected":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[J>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1f
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$96$2;->val$msgUpdates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4c

    .line 5681
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$96$2;->val$msgUpdates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    .line 5682
    .local v11, "update":Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-wide v2, v11, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;->random_id:J

    const/4 v4, 0x0

    iget v5, v11, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;->id:I

    move v7, v6

    move v8, v6

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesStorage;->updateMessageStateAndId(JLjava/lang/Integer;IIZI)[J

    move-result-object v10

    .line 5683
    .local v10, "ids":[J
    if-eqz v10, :cond_49

    .line 5684
    iget v1, v11, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5680
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 5688
    .end local v10    # "ids":[J
    .end local v11    # "update":Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;
    :cond_4c
    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5a

    .line 5689
    new-instance v1, Lorg/telegram/messenger/MessagesController$96$2$1;

    invoke-direct {v1, p0, v9}, Lorg/telegram/messenger/MessagesController$96$2$1;-><init>(Lorg/telegram/messenger/MessagesController$96$2;Ljava/util/HashMap;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 5704
    .end local v0    # "a":I
    .end local v9    # "corrected":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[J>;"
    :cond_5a
    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/MessagesController$96$2$2;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MessagesController$96$2$2;-><init>(Lorg/telegram/messenger/MessagesController$96$2;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 5837
    return-void
.end method
