.class Lorg/telegram/messenger/query/SearchQuery$3$1$1;
.super Ljava/lang/Object;
.source "SearchQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/SearchQuery$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/query/SearchQuery$3$1;

.field final synthetic val$inlineDatesCopy:Ljava/util/HashMap;

.field final synthetic val$topPeers:Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/SearchQuery$3$1;Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;Ljava/util/HashMap;)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/messenger/query/SearchQuery$3$1;

    .prologue
    .line 351
    iput-object p1, p0, Lorg/telegram/messenger/query/SearchQuery$3$1$1;->this$1:Lorg/telegram/messenger/query/SearchQuery$3$1;

    iput-object p2, p0, Lorg/telegram/messenger/query/SearchQuery$3$1$1;->val$topPeers:Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;

    iput-object p3, p0, Lorg/telegram/messenger/query/SearchQuery$3$1$1;->val$inlineDatesCopy:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    const/4 v10, 0x0

    .line 355
    :try_start_1
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v9

    const-string v11, "DELETE FROM chat_hints WHERE 1"

    invoke-virtual {v9, v11}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 356
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 357
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    iget-object v11, p0, Lorg/telegram/messenger/query/SearchQuery$3$1$1;->val$topPeers:Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;->users:Ljava/util/ArrayList;

    iget-object v12, p0, Lorg/telegram/messenger/query/SearchQuery$3$1$1;->val$topPeers:Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;->chats:Ljava/util/ArrayList;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v9, v11, v12, v13, v14}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 359
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v9

    const-string v11, "REPLACE INTO chat_hints VALUES(?, ?, ?, ?)"

    invoke-virtual {v9, v11}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v7

    .line 360
    .local v7, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_41
    iget-object v9, p0, Lorg/telegram/messenger/query/SearchQuery$3$1$1;->val$topPeers:Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;->categories:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_bd

    .line 362
    iget-object v9, p0, Lorg/telegram/messenger/query/SearchQuery$3$1$1;->val$topPeers:Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;->categories:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;

    .line 363
    .local v2, "category":Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;
    iget-object v9, v2, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;->category:Lorg/telegram/tgnet/TLRPC$TopPeerCategory;

    instance-of v9, v9, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryBotsInline;

    if-eqz v9, :cond_a4

    .line 364
    const/4 v8, 0x1

    .line 368
    .local v8, "type":I
    :goto_5c
    const/4 v1, 0x0

    .local v1, "b":I
    :goto_5d
    iget-object v9, v2, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;->peers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_ba

    .line 369
    iget-object v9, v2, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;->peers:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    .line 371
    .local v6, "peer":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v9, v9, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-eqz v9, :cond_a6

    .line 372
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v9, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 378
    .local v4, "did":I
    :goto_77
    iget-object v9, p0, Lorg/telegram/messenger/query/SearchQuery$3$1$1;->val$inlineDatesCopy:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 379
    .local v3, "date":Ljava/lang/Integer;
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 380
    const/4 v9, 0x1

    invoke-virtual {v7, v9, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 381
    const/4 v9, 0x2

    invoke-virtual {v7, v9, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 382
    const/4 v9, 0x3

    iget-wide v12, v6, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->rating:D

    invoke-virtual {v7, v9, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindDouble(ID)V

    .line 383
    const/4 v11, 0x4

    if-eqz v3, :cond_b8

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :goto_9b
    invoke-virtual {v7, v11, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 384
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    .line 366
    .end local v1    # "b":I
    .end local v3    # "date":Ljava/lang/Integer;
    .end local v4    # "did":I
    .end local v6    # "peer":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    .end local v8    # "type":I
    :cond_a4
    const/4 v8, 0x0

    .restart local v8    # "type":I
    goto :goto_5c

    .line 373
    .restart local v1    # "b":I
    .restart local v6    # "peer":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    :cond_a6
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v9, v9, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    if-eqz v9, :cond_b2

    .line 374
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v4, v9

    .restart local v4    # "did":I
    goto :goto_77

    .line 376
    .end local v4    # "did":I
    :cond_b2
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v4, v9

    .restart local v4    # "did":I
    goto :goto_77

    .restart local v3    # "date":Ljava/lang/Integer;
    :cond_b8
    move v9, v10

    .line 383
    goto :goto_9b

    .line 360
    .end local v3    # "date":Ljava/lang/Integer;
    .end local v4    # "did":I
    .end local v6    # "peer":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    :cond_ba
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 388
    .end local v1    # "b":I
    .end local v2    # "category":Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;
    .end local v8    # "type":I
    :cond_bd
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 390
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    .line 391
    new-instance v9, Lorg/telegram/messenger/query/SearchQuery$3$1$1$1;

    invoke-direct {v9, p0}, Lorg/telegram/messenger/query/SearchQuery$3$1$1$1;-><init>(Lorg/telegram/messenger/query/SearchQuery$3$1$1;)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d3} :catch_d4

    .line 401
    .end local v0    # "a":I
    .end local v7    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :goto_d3
    return-void

    .line 398
    :catch_d4
    move-exception v5

    .line 399
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_d3
.end method
