.class Lorg/telegram/ui/Adapters/DialogsSearchAdapter$4;
.super Ljava/lang/Object;
.source "DialogsSearchAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->putRecentSearch(JLorg/telegram/tgnet/TLObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

.field final synthetic val$did:J


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;J)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .prologue
    .line 480
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$4;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iput-wide p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$4;->val$did:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 484
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "REPLACE INTO search_recent VALUES(?, ?)"

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    .line 485
    .local v1, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 486
    const/4 v2, 0x1

    iget-wide v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$4;->val$did:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 487
    const/4 v2, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 488
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 489
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    .line 493
    .end local v1    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :goto_29
    return-void

    .line 490
    :catch_2a
    move-exception v0

    .line 491
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_29
.end method
