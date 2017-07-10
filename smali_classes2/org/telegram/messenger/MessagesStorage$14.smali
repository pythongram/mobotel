.class Lorg/telegram/messenger/MessagesStorage$14;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->addRecentLocalFile(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$document:Lorg/telegram/tgnet/TLRPC$Document;

.field final synthetic val$imageUrl:Ljava/lang/String;

.field final synthetic val$localUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 1131
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$14;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$14;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$14;->val$imageUrl:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesStorage$14;->val$localUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1135
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$14;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_37

    .line 1136
    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$14;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v3}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "UPDATE web_recent_v3 SET document = ? WHERE image_url = ?"

    invoke-virtual {v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    .line 1137
    .local v2, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 1138
    new-instance v0, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$14;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v3}, Lorg/telegram/tgnet/TLRPC$Document;->getObjectSize()I

    move-result v3

    invoke-direct {v0, v3}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 1139
    .local v0, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$14;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v3, v0}, Lorg/telegram/tgnet/TLRPC$Document;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 1140
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 1141
    const/4 v3, 0x2

    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$14;->val$imageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 1142
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 1143
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1144
    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 1156
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v2    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :goto_36
    return-void

    .line 1146
    :cond_37
    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$14;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v3}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "UPDATE web_recent_v3 SET local_url = ? WHERE image_url = ?"

    invoke-virtual {v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    .line 1147
    .restart local v2    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 1148
    const/4 v3, 0x1

    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$14;->val$localUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 1149
    const/4 v3, 0x2

    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$14;->val$imageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 1150
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 1151
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_58} :catch_59

    goto :goto_36

    .line 1153
    .end local v2    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :catch_59
    move-exception v1

    .line 1154
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_36
.end method
