.class Lorg/telegram/messenger/MessagesStorage$82;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->setDialogPinned(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$did:J

.field final synthetic val$pinned:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;IJ)V
    .registers 6
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 6138
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$82;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$82;->val$pinned:I

    iput-wide p3, p0, Lorg/telegram/messenger/MessagesStorage$82;->val$did:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 6142
    :try_start_0
    iget v5, p0, Lorg/telegram/messenger/MessagesStorage$82;->val$pinned:I

    if-nez v5, :cond_81

    iget-wide v6, p0, Lorg/telegram/messenger/MessagesStorage$82;->val$did:J

    long-to-int v5, v6

    if-eqz v5, :cond_81

    .line 6143
    const/4 v1, 0x0

    .line 6144
    .local v1, "dialogDate":I
    const/4 v3, 0x0

    .line 6145
    .local v3, "minDate":I
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$82;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v5}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT date FROM dialogs WHERE did = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lorg/telegram/messenger/MessagesStorage$82;->val$did:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    .line 6146
    .local v0, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 6147
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v1

    .line 6149
    :cond_38
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 6150
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$82;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v5}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "SELECT min(date) FROM dialogs WHERE date != 0 AND pinned = 0"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    .line 6151
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v5

    if-eqz v5, :cond_55

    .line 6152
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v3

    .line 6154
    :cond_55
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 6155
    if-gt v1, v3, :cond_81

    .line 6156
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$82;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v5}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DELETE FROM dialogs WHERE did = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lorg/telegram/messenger/MessagesStorage$82;->val$did:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 6168
    .end local v0    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v1    # "dialogDate":I
    .end local v3    # "minDate":I
    :goto_80
    return-void

    .line 6160
    :cond_81
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$82;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v5}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "UPDATE dialogs SET pinned = ? WHERE did = ?"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v4

    .line 6161
    .local v4, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/4 v5, 0x1

    iget v6, p0, Lorg/telegram/messenger/MessagesStorage$82;->val$pinned:I

    invoke-virtual {v4, v5, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 6162
    const/4 v5, 0x2

    iget-wide v6, p0, Lorg/telegram/messenger/MessagesStorage$82;->val$did:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 6163
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 6164
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9f} :catch_a0

    goto :goto_80

    .line 6165
    .end local v4    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :catch_a0
    move-exception v2

    .line 6166
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_80
.end method
