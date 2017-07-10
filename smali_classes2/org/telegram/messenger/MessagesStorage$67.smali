.class Lorg/telegram/messenger/MessagesStorage$67;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->putChannelViews(Landroid/util/SparseArray;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$channelViews:Landroid/util/SparseArray;

.field final synthetic val$isChannel:Z


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;Landroid/util/SparseArray;Z)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 4179
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$67;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$67;->val$channelViews:Landroid/util/SparseArray;

    iput-boolean p3, p0, Lorg/telegram/messenger/MessagesStorage$67;->val$isChannel:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 4183
    :try_start_0
    iget-object v9, p0, Lorg/telegram/messenger/MessagesStorage$67;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v9}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 4184
    iget-object v9, p0, Lorg/telegram/messenger/MessagesStorage$67;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v9}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v9

    const-string v10, "UPDATE messages SET media = max((SELECT media FROM messages WHERE mid = ?), ?) WHERE mid = ?"

    invoke-virtual {v9, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v7

    .line 4185
    .local v7, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_16
    iget-object v9, p0, Lorg/telegram/messenger/MessagesStorage$67;->val$channelViews:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v0, v9, :cond_62

    .line 4186
    iget-object v9, p0, Lorg/telegram/messenger/MessagesStorage$67;->val$channelViews:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 4187
    .local v6, "peer":I
    iget-object v9, p0, Lorg/telegram/messenger/MessagesStorage$67;->val$channelViews:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    .line 4188
    .local v3, "messages":Landroid/util/SparseIntArray;
    const/4 v1, 0x0

    .local v1, "b":I
    :goto_2d
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v1, v9, :cond_5f

    .line 4189
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    .line 4190
    .local v8, "views":I
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    int-to-long v4, v9

    .line 4191
    .local v4, "messageId":J
    iget-boolean v9, p0, Lorg/telegram/messenger/MessagesStorage$67;->val$isChannel:Z

    if-eqz v9, :cond_4a

    .line 4192
    neg-int v9, v6

    int-to-long v10, v9

    const/16 v9, 0x20

    shl-long/2addr v10, v9

    or-long/2addr v4, v10

    .line 4194
    :cond_4a
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 4195
    const/4 v9, 0x1

    invoke-virtual {v7, v9, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4196
    const/4 v9, 0x2

    invoke-virtual {v7, v9, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 4197
    const/4 v9, 0x3

    invoke-virtual {v7, v9, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 4198
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 4188
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 4185
    .end local v4    # "messageId":J
    .end local v8    # "views":I
    :cond_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 4201
    .end local v1    # "b":I
    .end local v3    # "messages":Landroid/util/SparseIntArray;
    .end local v6    # "peer":I
    :cond_62
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 4202
    iget-object v9, p0, Lorg/telegram/messenger/MessagesStorage$67;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v9}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6e} :catch_6f

    .line 4206
    .end local v0    # "a":I
    .end local v7    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :goto_6e
    return-void

    .line 4203
    :catch_6f
    move-exception v2

    .line 4204
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6e
.end method
