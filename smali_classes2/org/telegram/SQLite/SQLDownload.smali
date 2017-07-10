.class public Lorg/telegram/SQLite/SQLDownload;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLDownload.java"


# static fields
.field private static final _id:Ljava/lang/String; = "_id"

.field private static final database_NAME:Ljava/lang/String; = "SQLDownload21"

.field private static final database_VERSION:I = 0x1

.field private static final table_Favs:Ljava/lang/String; = "Download"


# instance fields
.field public access_hash:Ljava/lang/String;

.field public check_dl:Ljava/lang/String;

.field public date:Ljava/lang/String;

.field public dc_id:Ljava/lang/String;

.field public duration:Ljava/lang/String;

.field public f6329h:Ljava/lang/String;

.field public f6330w:Ljava/lang/String;

.field public file_name:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public mime_type:Ljava/lang/String;

.field public progs:Ljava/lang/String;

.field public real_name:Ljava/lang/String;

.field public size:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public type_file:Ljava/lang/String;

.field public user_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const-string v0, "SQLDownload21"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 43
    const-string v0, "id"

    iput-object v0, p0, Lorg/telegram/SQLite/SQLDownload;->id:Ljava/lang/String;

    .line 44
    const-string v0, "access_hash"

    iput-object v0, p0, Lorg/telegram/SQLite/SQLDownload;->access_hash:Ljava/lang/String;

    .line 45
    const-string v0, "date"

    iput-object v0, p0, Lorg/telegram/SQLite/SQLDownload;->date:Ljava/lang/String;

    .line 46
    const-string v0, "duration"

    iput-object v0, p0, Lorg/telegram/SQLite/SQLDownload;->duration:Ljava/lang/String;

    .line 47
    const-string v0, "mime_type"

    iput-object v0, p0, Lorg/telegram/SQLite/SQLDownload;->mime_type:Ljava/lang/String;

    .line 48
    const-string v0, "size"

    iput-object v0, p0, Lorg/telegram/SQLite/SQLDownload;->size:Ljava/lang/String;

    .line 49
    const-string v0, "dc_id"

    iput-object v0, p0, Lorg/telegram/SQLite/SQLDownload;->dc_id:Ljava/lang/String;

    .line 50
    const-string v0, "w"

    iput-object v0, p0, Lorg/telegram/SQLite/SQLDownload;->f6330w:Ljava/lang/String;

    .line 51
    const-string v0, "h"

    iput-object v0, p0, Lorg/telegram/SQLite/SQLDownload;->f6329h:Ljava/lang/String;

    .line 52
    const-string v0, "user_id"

    iput-object v0, p0, Lorg/telegram/SQLite/SQLDownload;->user_id:Ljava/lang/String;

    .line 53
    const-string v0, "check_dl"

    iput-object v0, p0, Lorg/telegram/SQLite/SQLDownload;->check_dl:Ljava/lang/String;

    .line 54
    const-string v0, "state"

    iput-object v0, p0, Lorg/telegram/SQLite/SQLDownload;->state:Ljava/lang/String;

    .line 55
    const-string v0, "progs"

    iput-object v0, p0, Lorg/telegram/SQLite/SQLDownload;->progs:Ljava/lang/String;

    .line 56
    const-string v0, "type_file"

    iput-object v0, p0, Lorg/telegram/SQLite/SQLDownload;->type_file:Ljava/lang/String;

    .line 57
    const-string v0, "real_name"

    iput-object v0, p0, Lorg/telegram/SQLite/SQLDownload;->real_name:Ljava/lang/String;

    .line 58
    const-string v0, "file_name"

    iput-object v0, p0, Lorg/telegram/SQLite/SQLDownload;->file_name:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public createDownload(Lorg/telegram/tgnet/TLRPC$Document;ILjava/lang/String;)V
    .registers 11
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;
    .param p2, "i"    # I
    .param p3, "str"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 62
    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLDownload;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 63
    .local v1, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 64
    .local v0, "contentValues":Landroid/content/ContentValues;
    iget-object v2, p0, Lorg/telegram/SQLite/SQLDownload;->id:Ljava/lang/String;

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v2, p0, Lorg/telegram/SQLite/SQLDownload;->access_hash:Ljava/lang/String;

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v2, p0, Lorg/telegram/SQLite/SQLDownload;->date:Ljava/lang/String;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v3, p0, Lorg/telegram/SQLite/SQLDownload;->duration:Ljava/lang/String;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    iget-object v2, p0, Lorg/telegram/SQLite/SQLDownload;->mime_type:Ljava/lang/String;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v2, p0, Lorg/telegram/SQLite/SQLDownload;->size:Ljava/lang/String;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v2, p0, Lorg/telegram/SQLite/SQLDownload;->dc_id:Ljava/lang/String;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v3, p0, Lorg/telegram/SQLite/SQLDownload;->f6330w:Ljava/lang/String;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    iget-object v3, p0, Lorg/telegram/SQLite/SQLDownload;->f6329h:Ljava/lang/String;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    iget-object v2, p0, Lorg/telegram/SQLite/SQLDownload;->user_id:Ljava/lang/String;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->user_id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v2, p0, Lorg/telegram/SQLite/SQLDownload;->state:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 75
    iget-object v2, p0, Lorg/telegram/SQLite/SQLDownload;->progs:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v2, p0, Lorg/telegram/SQLite/SQLDownload;->type_file:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    iget-object v3, p0, Lorg/telegram/SQLite/SQLDownload;->file_name:Ljava/lang/String;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v2, p0, Lorg/telegram/SQLite/SQLDownload;->real_name:Ljava/lang/String;

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lorg/telegram/SQLite/SQLDownload;->check_dl:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 80
    const-string v2, "Download"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 81
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 82
    return-void
.end method

.method public createDownload(Lorg/telegram/tgnet/TLRPC$Video;ILjava/lang/String;)V
    .registers 11
    .param p1, "video"    # Lorg/telegram/tgnet/TLRPC$Video;
    .param p2, "i"    # I
    .param p3, "str"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 85
    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLDownload;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 86
    .local v1, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 87
    .local v0, "contentValues":Landroid/content/ContentValues;
    iget-object v2, p0, Lorg/telegram/SQLite/SQLDownload;->id:Ljava/lang/String;

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$Video;->id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Lorg/telegram/SQLite/SQLDownload;->access_hash:Ljava/lang/String;

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$Video;->access_hash:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v2, p0, Lorg/telegram/SQLite/SQLDownload;->date:Ljava/lang/String;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$Video;->date:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v2, p0, Lorg/telegram/SQLite/SQLDownload;->duration:Ljava/lang/String;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$Video;->duration:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lorg/telegram/SQLite/SQLDownload;->mime_type:Ljava/lang/String;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Video;->mime_type:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v2, p0, Lorg/telegram/SQLite/SQLDownload;->size:Ljava/lang/String;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$Video;->size:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lorg/telegram/SQLite/SQLDownload;->dc_id:Ljava/lang/String;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$Video;->dc_id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lorg/telegram/SQLite/SQLDownload;->f6330w:Ljava/lang/String;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$Video;->w:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Lorg/telegram/SQLite/SQLDownload;->f6329h:Ljava/lang/String;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$Video;->h:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lorg/telegram/SQLite/SQLDownload;->user_id:Ljava/lang/String;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$Video;->user_id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v2, p0, Lorg/telegram/SQLite/SQLDownload;->state:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    iget-object v2, p0, Lorg/telegram/SQLite/SQLDownload;->progs:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lorg/telegram/SQLite/SQLDownload;->type_file:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    iget-object v2, p0, Lorg/telegram/SQLite/SQLDownload;->file_name:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lorg/telegram/SQLite/SQLDownload;->real_name:Ljava/lang/String;

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v2, p0, Lorg/telegram/SQLite/SQLDownload;->check_dl:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    const-string v2, "Download"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 104
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 105
    return-void
.end method

.method public deleteDownload(Ljava/lang/String;)V
    .registers 6
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLDownload;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 109
    .local v0, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "Download"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/SQLite/SQLDownload;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 110
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 111
    return-void
.end method

.method public findIndex(Ljava/lang/String;)I
    .registers 11
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 115
    const/4 v4, 0x0

    .line 116
    .local v4, "localCursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLDownload;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 119
    .local v6, "localSQLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_5
    const-string v7, "SELECT * FROM Download"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 120
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    .line 121
    .local v0, "bool1":Z
    const/4 v3, 0x0

    .line 122
    .local v3, "i":I
    if-eqz v0, :cond_30

    .line 127
    :cond_13
    const/4 v7, 0x1

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1b} :catch_3a
    .catchall {:try_start_5 .. :try_end_1b} :catchall_49

    move-result v1

    .line 128
    .local v1, "bool2":Z
    if-eqz v1, :cond_28

    .line 149
    if-eqz v4, :cond_23

    .line 150
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 151
    :cond_23
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v7, v3

    .line 135
    .end local v1    # "bool2":Z
    :goto_27
    return v7

    .line 130
    .restart local v1    # "bool2":Z
    :cond_28
    add-int/lit8 v3, v3, 0x1

    .line 131
    :try_start_2a
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_3a
    .catchall {:try_start_2a .. :try_end_2d} :catchall_49

    move-result v2

    .line 133
    .local v2, "bool3":Z
    if-nez v2, :cond_13

    .line 135
    .end local v1    # "bool2":Z
    .end local v2    # "bool3":Z
    :cond_30
    const/4 v7, -0x1

    .line 149
    if-eqz v4, :cond_36

    .line 150
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 151
    :cond_36
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_27

    .line 137
    .end local v0    # "bool1":Z
    .end local v3    # "i":I
    :catch_3a
    move-exception v5

    .line 141
    .local v5, "localException":Ljava/lang/Exception;
    :goto_3b
    :try_start_3b
    const-string v7, "tmessages"

    invoke-static {v7, v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    if-eqz v4, :cond_45

    .line 143
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_45
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_48
    .catchall {:try_start_3b .. :try_end_48} :catchall_49

    goto :goto_3b

    .line 149
    .end local v5    # "localException":Ljava/lang/Exception;
    :catchall_49
    move-exception v7

    if-eqz v4, :cond_4f

    .line 150
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 151
    :cond_4f
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v7
.end method

.method public getAllVideoInDownload()Ljava/util/List;
    .registers 6

    .prologue
    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v0, "arrayList":Ljava/util/List;
    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLDownload;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 157
    .local v2, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "SELECT * FROM Download"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 158
    .local v1, "rawQuery":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 159
    :cond_16
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_16

    .line 161
    :cond_1c
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 162
    return-object v0
.end method

.method public getAllVideoInDownloadE()Ljava/util/List;
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 166
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v4, "list":Ljava/util/ArrayList;
    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLDownload;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 169
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x1

    .line 170
    .local v0, "bool1":Z
    const-string v5, "SELECT * FROM Download"

    .line 171
    .local v5, "sql":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 172
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_d6

    .line 174
    :cond_18
    new-instance v3, Lorg/telegram/SQLite/ElementDownload;

    invoke-direct {v3}, Lorg/telegram/SQLite/ElementDownload;-><init>()V

    .line 175
    .local v3, "item":Lorg/telegram/SQLite/ElementDownload;
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/SQLite/ElementDownload;->setId(Ljava/lang/String;)V

    .line 176
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/SQLite/ElementDownload;->setId(Ljava/lang/String;)V

    .line 177
    const/4 v6, 0x2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/SQLite/ElementDownload;->setAccess_hash(Ljava/lang/String;)V

    .line 178
    const/4 v6, 0x3

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/SQLite/ElementDownload;->setDate(Ljava/lang/String;)V

    .line 179
    const/4 v6, 0x4

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/SQLite/ElementDownload;->setDuration(I)V

    .line 180
    const/4 v6, 0x5

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/SQLite/ElementDownload;->setMime_type(Ljava/lang/String;)V

    .line 181
    const/4 v6, 0x6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/SQLite/ElementDownload;->setSize(I)V

    .line 182
    const/4 v6, 0x7

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/SQLite/ElementDownload;->setDc_id(I)V

    .line 183
    const/16 v6, 0x8

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/SQLite/ElementDownload;->setW(I)V

    .line 184
    const/16 v6, 0x9

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/SQLite/ElementDownload;->setH(I)V

    .line 185
    const/16 v6, 0xa

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/SQLite/ElementDownload;->setUser_id(I)V

    .line 186
    const/16 v6, 0xb

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eq v6, v7, :cond_dd

    .line 188
    invoke-virtual {v3, v7}, Lorg/telegram/SQLite/ElementDownload;->setCheck(Z)V

    .line 189
    const/4 v0, 0x0

    .line 190
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/SQLite/ElementDownload;->setState(Z)V

    .line 197
    :goto_a5
    const/16 v6, 0xc

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/SQLite/ElementDownload;->setProg(F)V

    .line 198
    const/16 v6, 0xd

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/SQLite/ElementDownload;->setType(I)V

    .line 199
    const/16 v6, 0xe

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/SQLite/ElementDownload;->setFile_name(Ljava/lang/String;)V

    .line 200
    const/16 v6, 0xf

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/SQLite/ElementDownload;->setReal_name(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_18

    .line 206
    .end local v3    # "item":Lorg/telegram/SQLite/ElementDownload;
    :cond_d6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 207
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 208
    return-object v4

    .line 193
    .restart local v3    # "item":Lorg/telegram/SQLite/ElementDownload;
    :cond_dd
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lorg/telegram/SQLite/ElementDownload;->setCheck(Z)V

    .line 194
    const/4 v0, 0x1

    .line 195
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/SQLite/ElementDownload;->setState(Z)V

    goto :goto_a5
.end method

.method public getAllVideoInDownloadEE()Ljava/util/List;
    .registers 10

    .prologue
    .line 212
    const/4 v2, 0x0

    .line 213
    .local v2, "localCursor":Landroid/database/Cursor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v1, "localArrayList":Ljava/util/ArrayList;
    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLDownload;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 217
    .local v5, "localSQLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_a
    const-string v6, "SELECT * FROM Download"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 219
    const/4 v0, 0x1

    .line 220
    .local v0, "bool1":Z
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_d6

    .line 222
    new-instance v3, Lorg/telegram/SQLite/ElementDownload;

    invoke-direct {v3}, Lorg/telegram/SQLite/ElementDownload;-><init>()V

    .line 223
    .local v3, "localElementDownload":Lorg/telegram/SQLite/ElementDownload;
    const/4 v6, 0x1

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/SQLite/ElementDownload;->setId(Ljava/lang/String;)V

    .line 224
    const/4 v6, 0x2

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/SQLite/ElementDownload;->setAccess_hash(Ljava/lang/String;)V

    .line 225
    const/4 v6, 0x3

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/SQLite/ElementDownload;->setDate(Ljava/lang/String;)V

    .line 226
    const/4 v6, 0x4

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/SQLite/ElementDownload;->setDuration(I)V

    .line 227
    const/4 v6, 0x5

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/SQLite/ElementDownload;->setMime_type(Ljava/lang/String;)V

    .line 228
    const/4 v6, 0x6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/SQLite/ElementDownload;->setSize(I)V

    .line 229
    const/4 v6, 0x7

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/SQLite/ElementDownload;->setDc_id(I)V

    .line 230
    const/16 v6, 0x8

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/SQLite/ElementDownload;->setW(I)V

    .line 231
    const/16 v6, 0x9

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/SQLite/ElementDownload;->setH(I)V

    .line 232
    const/16 v6, 0xa

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/SQLite/ElementDownload;->setUser_id(I)V

    .line 233
    invoke-virtual {v3, v0}, Lorg/telegram/SQLite/ElementDownload;->setState(Z)V

    .line 234
    const/16 v6, 0xc

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/SQLite/ElementDownload;->setProg(F)V

    .line 235
    const/16 v6, 0xd

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/SQLite/ElementDownload;->setType(I)V

    .line 236
    const/16 v6, 0xe

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/SQLite/ElementDownload;->setFile_name(Ljava/lang/String;)V

    .line 237
    const/16 v6, 0xf

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/SQLite/ElementDownload;->setReal_name(Ljava/lang/String;)V

    .line 238
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/SQLite/ElementDownload;->setCheck(Z)V

    .line 239
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v7, "\u0628\u0647 \u0644\u06cc\u0633\u062a \u062f\u0627\u0646\u0644\u0648\u062f \u0647\u0627 \u0627\u0636\u0627\u0641\u0647 \u0634\u062f"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_cd} :catch_df
    .catchall {:try_start_a .. :try_end_cd} :catchall_ee

    .line 251
    if-eqz v2, :cond_d2

    .line 252
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 253
    :cond_d2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 255
    .end local v0    # "bool1":Z
    .end local v3    # "localElementDownload":Lorg/telegram/SQLite/ElementDownload;
    :goto_d5
    return-object v1

    .line 251
    .restart local v0    # "bool1":Z
    :cond_d6
    if-eqz v2, :cond_db

    .line 252
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 253
    :cond_db
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_d5

    .line 244
    .end local v0    # "bool1":Z
    :catch_df
    move-exception v4

    .line 246
    .local v4, "localException":Ljava/lang/Exception;
    :try_start_e0
    const-string v6, "tmessages"

    invoke-static {v6, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e5
    .catchall {:try_start_e0 .. :try_end_e5} :catchall_ee

    .line 251
    if-eqz v2, :cond_ea

    .line 252
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 253
    :cond_ea
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_d5

    .line 251
    .end local v4    # "localException":Ljava/lang/Exception;
    :catchall_ee
    move-exception v6

    if-eqz v2, :cond_f4

    .line 252
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 253
    :cond_f4
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v6
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "sQLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 260
    const-string v0, "CREATE TABLE Download ( _id INTEGER PRIMARY KEY AUTOINCREMENT, id TEXT, access_hash TEXT, date TEXT, duration TEXT, mime_type TEXT, size TEXT, dc_id TEXT, w TEXT, h TEXT, user_id TEXT, state INTEGER, progs TEXT, type_file INTEGER, file_name TEXT, real_name TEXT, check_dl INTEGER )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .param p1, "sQLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "i"    # I
    .param p3, "i2"    # I

    .prologue
    .line 264
    const-string v0, "DROP TABLE IF EXISTS Download"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0, p1}, Lorg/telegram/SQLite/SQLDownload;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 266
    return-void
.end method

.method public updateCheckState(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    .line 269
    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLDownload;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 270
    .local v2, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 271
    .local v0, "contentValues":Landroid/content/ContentValues;
    iget-object v3, p0, Lorg/telegram/SQLite/SQLDownload;->check_dl:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 272
    const-string v3, "Download"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/telegram/SQLite/SQLDownload;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 273
    .local v1, "update":I
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 274
    if-lez v1, :cond_39

    const/4 v3, 0x1

    :goto_38
    return v3

    :cond_39
    const/4 v3, 0x0

    goto :goto_38
.end method

.method public updatedetails(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;

    .prologue
    .line 278
    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLDownload;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 279
    .local v2, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 280
    .local v0, "contentValues":Landroid/content/ContentValues;
    iget-object v3, p0, Lorg/telegram/SQLite/SQLDownload;->progs:Ljava/lang/String;

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v3, "Download"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/telegram/SQLite/SQLDownload;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 282
    .local v1, "update":I
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 283
    if-lez v1, :cond_35

    const/4 v3, 0x1

    :goto_34
    return v3

    :cond_35
    const/4 v3, 0x0

    goto :goto_34
.end method

.method public updatestate(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    .line 287
    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLDownload;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 288
    .local v2, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 289
    .local v0, "contentValues":Landroid/content/ContentValues;
    iget-object v3, p0, Lorg/telegram/SQLite/SQLDownload;->state:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 290
    const-string v3, "Download"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/telegram/SQLite/SQLDownload;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 291
    .local v1, "update":I
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 292
    if-lez v1, :cond_39

    const/4 v3, 0x1

    :goto_38
    return v3

    :cond_39
    const/4 v3, 0x0

    goto :goto_38
.end method
