.class Lorg/telegram/ui/Adapters/SearchAdapterHelper$2;
.super Ljava/lang/Object;
.source "SearchAdapterHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/SearchAdapterHelper;->loadRecentHashtags()Z
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
    .line 107
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$2;->this$0:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 111
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "SELECT id, date FROM hashtag_recent_v2 WHERE 1"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1

    .line 112
    .local v1, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 114
    .local v3, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;>;"
    :goto_1b
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v5

    if-eqz v5, :cond_42

    .line 115
    new-instance v4, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;

    invoke-direct {v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;-><init>()V

    .line 116
    .local v4, "hashtagObject":Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->hashtag:Ljava/lang/String;

    .line 117
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    iput v5, v4, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->date:I

    .line 118
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v5, v4, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->hashtag:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_3d

    goto :goto_1b

    .line 140
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;>;"
    .end local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v3    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;>;"
    .end local v4    # "hashtagObject":Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;
    :catch_3d
    move-exception v2

    .line 141
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 143
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_41
    return-void

    .line 121
    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;>;"
    .restart local v1    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v3    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;>;"
    :cond_42
    :try_start_42
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 122
    new-instance v5, Lorg/telegram/ui/Adapters/SearchAdapterHelper$2$1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$2$1;-><init>(Lorg/telegram/ui/Adapters/SearchAdapterHelper$2;)V

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 134
    new-instance v5, Lorg/telegram/ui/Adapters/SearchAdapterHelper$2$2;

    invoke-direct {v5, p0, v0, v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$2$2;-><init>(Lorg/telegram/ui/Adapters/SearchAdapterHelper$2;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_55} :catch_3d

    goto :goto_41
.end method
