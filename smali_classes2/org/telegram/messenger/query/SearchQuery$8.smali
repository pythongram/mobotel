.class final Lorg/telegram/messenger/query/SearchQuery$8;
.super Ljava/lang/Object;
.source "SearchQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/SearchQuery;->savePeer(IID)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$did:I

.field final synthetic val$rating:D

.field final synthetic val$type:I


# direct methods
.method constructor <init>(IID)V
    .registers 6

    .prologue
    .line 575
    iput p1, p0, Lorg/telegram/messenger/query/SearchQuery$8;->val$did:I

    iput p2, p0, Lorg/telegram/messenger/query/SearchQuery$8;->val$type:I

    iput-wide p3, p0, Lorg/telegram/messenger/query/SearchQuery$8;->val$rating:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 579
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "REPLACE INTO chat_hints VALUES(?, ?, ?, ?)"

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    .line 580
    .local v1, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 581
    const/4 v2, 0x1

    iget v3, p0, Lorg/telegram/messenger/query/SearchQuery$8;->val$did:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 582
    const/4 v2, 0x2

    iget v3, p0, Lorg/telegram/messenger/query/SearchQuery$8;->val$type:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 583
    const/4 v2, 0x3

    iget-wide v4, p0, Lorg/telegram/messenger/query/SearchQuery$8;->val$rating:D

    invoke-virtual {v1, v2, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindDouble(ID)V

    .line 584
    const/4 v2, 0x4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v3, v4

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 585
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 586
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    .line 590
    .end local v1    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :goto_34
    return-void

    .line 587
    :catch_35
    move-exception v0

    .line 588
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_34
.end method
