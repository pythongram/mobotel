.class Lorg/telegram/ui/Adapters/SearchAdapterHelper$4;
.super Ljava/lang/Object;
.source "SearchAdapterHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/SearchAdapterHelper;->clearRecentHashtags()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/SearchAdapterHelper;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/SearchAdapterHelper;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    .prologue
    .line 235
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$4;->this$0:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 239
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "DELETE FROM hashtag_recent_v2 WHERE 1"

    invoke-virtual {v1, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 243
    :goto_15
    return-void

    .line 240
    :catch_16
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_15
.end method
