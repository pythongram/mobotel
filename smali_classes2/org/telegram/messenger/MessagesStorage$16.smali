.class Lorg/telegram/messenger/MessagesStorage$16;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->putWebRecent(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$arrayList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 1174
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$16;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$16;->val$arrayList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/16 v7, 0xc8

    .line 1178
    :try_start_2
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$16;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v5}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 1179
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$16;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v5}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "REPLACE INTO web_recent_v3 VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v4

    .line 1180
    .local v4, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_18
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$16;->val$arrayList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_22

    .line 1181
    if-ne v0, v7, :cond_80

    .line 1208
    :cond_22
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1209
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$16;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v5}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    .line 1210
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$16;->val$arrayList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v5, v7, :cond_108

    .line 1211
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$16;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v5}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 1212
    const/16 v0, 0xc8

    :goto_41
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$16;->val$arrayList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_109

    .line 1213
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$16;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v5}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DELETE FROM web_recent_v3 WHERE id = \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$16;->val$arrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v5, v5, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 1212
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 1184
    :cond_80
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$16;->val$arrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 1185
    .local v3, "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 1186
    const/4 v5, 0x1

    iget-object v6, v3, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 1187
    const/4 v5, 0x2

    iget v6, v3, Lorg/telegram/messenger/MediaController$SearchImage;->type:I

    invoke-virtual {v4, v5, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1188
    const/4 v6, 0x3

    iget-object v5, v3, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    if-eqz v5, :cond_f5

    iget-object v5, v3, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    :goto_9e
    invoke-virtual {v4, v6, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 1189
    const/4 v6, 0x4

    iget-object v5, v3, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    if-eqz v5, :cond_f8

    iget-object v5, v3, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    :goto_a8
    invoke-virtual {v4, v6, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 1190
    const/4 v6, 0x5

    iget-object v5, v3, Lorg/telegram/messenger/MediaController$SearchImage;->localUrl:Ljava/lang/String;

    if-eqz v5, :cond_fb

    iget-object v5, v3, Lorg/telegram/messenger/MediaController$SearchImage;->localUrl:Ljava/lang/String;

    :goto_b2
    invoke-virtual {v4, v6, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 1191
    const/4 v5, 0x6

    iget v6, v3, Lorg/telegram/messenger/MediaController$SearchImage;->width:I

    invoke-virtual {v4, v5, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1192
    const/4 v5, 0x7

    iget v6, v3, Lorg/telegram/messenger/MediaController$SearchImage;->height:I

    invoke-virtual {v4, v5, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1193
    const/16 v5, 0x8

    iget v6, v3, Lorg/telegram/messenger/MediaController$SearchImage;->size:I

    invoke-virtual {v4, v5, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1194
    const/16 v5, 0x9

    iget v6, v3, Lorg/telegram/messenger/MediaController$SearchImage;->date:I

    invoke-virtual {v4, v5, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 1195
    const/4 v1, 0x0

    .line 1196
    .local v1, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    iget-object v5, v3, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v5, :cond_fe

    .line 1197
    new-instance v1, Lorg/telegram/tgnet/NativeByteBuffer;

    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    iget-object v5, v3, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v5}, Lorg/telegram/tgnet/TLRPC$Document;->getObjectSize()I

    move-result v5

    invoke-direct {v1, v5}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 1198
    .restart local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    iget-object v5, v3, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v5, v1}, Lorg/telegram/tgnet/TLRPC$Document;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 1199
    const/16 v5, 0xa

    invoke-virtual {v4, v5, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 1203
    :goto_e9
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 1204
    if-eqz v1, :cond_f1

    .line 1205
    invoke-virtual {v1}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 1180
    :cond_f1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_18

    .line 1188
    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_f5
    const-string v5, ""

    goto :goto_9e

    .line 1189
    :cond_f8
    const-string v5, ""

    goto :goto_a8

    .line 1190
    :cond_fb
    const-string v5, ""

    goto :goto_b2

    .line 1201
    .restart local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_fe
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindNull(I)V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_103} :catch_104

    goto :goto_e9

    .line 1217
    .end local v0    # "a":I
    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v3    # "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    .end local v4    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :catch_104
    move-exception v2

    .line 1218
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1220
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_108
    :goto_108
    return-void

    .line 1215
    .restart local v0    # "a":I
    .restart local v4    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_109
    :try_start_109
    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$16;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v5}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_112} :catch_104

    goto :goto_108
.end method
