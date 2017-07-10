.class public Lorg/telegram/ui/Components/Favourite;
.super Ljava/lang/Object;
.source "Favourite.java"


# instance fields
.field chat_id:J

.field id:J


# direct methods
.method public constructor <init>(J)V
    .registers 4
    .param p1, "chat_id"    # J

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide p1, p0, Lorg/telegram/ui/Components/Favourite;->chat_id:J

    .line 17
    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 6
    .param p1, "id"    # J
    .param p3, "chat_id"    # J

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide p1, p0, Lorg/telegram/ui/Components/Favourite;->id:J

    .line 12
    iput-wide p3, p0, Lorg/telegram/ui/Components/Favourite;->chat_id:J

    .line 13
    return-void
.end method

.method public static addFavourite(Ljava/lang/Long;)V
    .registers 5
    .param p0, "id"    # Ljava/lang/Long;

    .prologue
    .line 36
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->databaseHandler:Lorg/telegram/SQLite/DatabaseHandler;

    new-instance v1, Lorg/telegram/ui/Components/Favourite;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Components/Favourite;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/DatabaseHandler;->addFavourite(Lorg/telegram/ui/Components/Favourite;)V

    .line 37
    return-void
.end method

.method public static deleteFavourite(Ljava/lang/Long;)V
    .registers 2
    .param p0, "id"    # Ljava/lang/Long;

    .prologue
    .line 40
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->databaseHandler:Lorg/telegram/SQLite/DatabaseHandler;

    invoke-virtual {v0, p0}, Lorg/telegram/SQLite/DatabaseHandler;->deleteFavourite(Ljava/lang/Long;)V

    .line 41
    return-void
.end method

.method public static isFavourite(Ljava/lang/Long;)Z
    .registers 7
    .param p0, "id"    # Ljava/lang/Long;

    .prologue
    const/4 v1, 0x0

    .line 45
    :try_start_1
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->databaseHandler:Lorg/telegram/SQLite/DatabaseHandler;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/telegram/SQLite/DatabaseHandler;->getFavouriteByChatId(J)Lorg/telegram/ui/Components/Favourite;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a} :catch_f

    move-result-object v2

    if-eqz v2, :cond_e

    const/4 v1, 0x1

    .line 48
    :cond_e
    :goto_e
    return v1

    .line 46
    :catch_f
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e
.end method


# virtual methods
.method public getChatID()J
    .registers 3

    .prologue
    .line 20
    iget-wide v0, p0, Lorg/telegram/ui/Components/Favourite;->chat_id:J

    return-wide v0
.end method

.method public getID()J
    .registers 3

    .prologue
    .line 24
    iget-wide v0, p0, Lorg/telegram/ui/Components/Favourite;->id:J

    return-wide v0
.end method

.method public setChatID(J)V
    .registers 4
    .param p1, "chat_id"    # J

    .prologue
    .line 28
    iput-wide p1, p0, Lorg/telegram/ui/Components/Favourite;->chat_id:J

    .line 29
    return-void
.end method

.method public setID(J)V
    .registers 4
    .param p1, "id"    # J

    .prologue
    .line 32
    iput-wide p1, p0, Lorg/telegram/ui/Components/Favourite;->id:J

    .line 33
    return-void
.end method
