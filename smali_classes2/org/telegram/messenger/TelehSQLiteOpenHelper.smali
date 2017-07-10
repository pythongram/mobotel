.class public Lorg/telegram/messenger/TelehSQLiteOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TelehSQLiteOpenHelper.java"


# static fields
.field private static final QUERY_CREATE_TABLE_CATEGORIES:Ljava/lang/String;

.field private static final QUERY_CREATE_TABLE_CATEGORY_DIALOGS:Ljava/lang/String;

.field private static final QUERY_CREATE_TABLE_CONTACTS:Ljava/lang/String;

.field private static final QUERY_CREATE_TABLE_CONTACT_CHANGES:Ljava/lang/String;

.field private static final QUERY_CREATE_TABLE_DIALOGS:Ljava/lang/String;

.field private static final QUERY_CREATE_TABLE_DIALOG_TYPES:Ljava/lang/String;

.field private static final QUERY_CREATE_TABLE_DOWNLOAD_MANAGER_QUEUE:Ljava/lang/String;

.field private static final QUERY_CREATE_TABLE_MAIN_MENU:Ljava/lang/String;

.field private static final QUERY_CREATE_TABLE_MULTI_FORWARD_DIALOG_TYPES:Ljava/lang/String;

.field private static final QUERY_CREATE_TABLE_SPECIAL_CONTACTS:Ljava/lang/String;

.field private static final QUERY_CREATE_TABLE_SPECIAL_CONTACTS_STATISTICS:Ljava/lang/String;

.field private static mInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lorg/telegram/messenger/TelehSQLiteOpenHelper;",
            ">;"
        }
    .end annotation
.end field

.field public static telegraphDatabaseQueue:Lorg/telegram/messenger/DispatchQueue;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 12
    const-string v0, "CREATE TABLE IF NOT EXISTS %s (`%s` INTEGER primary key autoincrement, `%s` TEXT, `%s` INTEGER);"

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "categories"

    aput-object v2, v1, v4

    const-string v2, "id"

    aput-object v2, v1, v5

    const-string v2, "name"

    aput-object v2, v1, v6

    const-string v2, "ordering"

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->QUERY_CREATE_TABLE_CATEGORIES:Ljava/lang/String;

    .line 13
    const-string v0, "CREATE TABLE IF NOT EXISTS %s (`%s` INTEGER, `%s` INTEGER, `%s` INTEGER, PRIMARY KEY (user, cat_id, did));"

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "category_dialogs"

    aput-object v2, v1, v4

    const-string v2, "user"

    aput-object v2, v1, v5

    const-string v2, "cat_id"

    aput-object v2, v1, v6

    const-string v2, "did"

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->QUERY_CREATE_TABLE_CATEGORY_DIALOGS:Ljava/lang/String;

    .line 14
    const-string v0, "CREATE TABLE IF NOT EXISTS %s (`%s` INTEGER primary key autoincrement, `%s` INTEGER, `%s` INTEGER, `%s` INTEGER, `%s` INTEGER);"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "contacts"

    aput-object v2, v1, v4

    const-string v2, "id"

    aput-object v2, v1, v5

    const-string v2, "user"

    aput-object v2, v1, v6

    const-string v2, "cid"

    aput-object v2, v1, v7

    const-string v2, "hidden"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "lock"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->QUERY_CREATE_TABLE_CONTACTS:Ljava/lang/String;

    .line 15
    const-string v0, "CREATE TABLE IF NOT EXISTS %s (`%s` INTEGER primary key autoincrement, `%s` INTEGER, `%s` INTEGER, `%s` INTEGER, `%s` INTEGER, `%s` INTEGER DEFAULT (strftime(\'%%s\',\'now\') * 1000), `%s` TEXT, `%s` TEXT);"

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "contact_changes"

    aput-object v2, v1, v4

    const-string v2, "id"

    aput-object v2, v1, v5

    const-string v2, "user"

    aput-object v2, v1, v6

    const-string v2, "uid"

    aput-object v2, v1, v7

    const-string v2, "mode"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "view"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "date"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "old_data"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "new_data"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->QUERY_CREATE_TABLE_CONTACT_CHANGES:Ljava/lang/String;

    .line 16
    const-string v0, "CREATE TABLE IF NOT EXISTS %s (`%s` INTEGER primary key autoincrement, `%s` INTEGER, `%s` INTEGER, `%s` INTEGER, `%s` INTEGER, `%s` INTEGER, `%s` INTEGER, `%s` INTEGER, `%s` INTEGER, `%s` INTEGER);"

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "dialogs"

    aput-object v2, v1, v4

    const-string v2, "id"

    aput-object v2, v1, v5

    const-string v2, "user"

    aput-object v2, v1, v6

    const-string v2, "did"

    aput-object v2, v1, v7

    const-string v2, "fav"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "hidden"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "lock"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "private_read"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "private_typing"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "auto_download"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "bookmark_mid"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->QUERY_CREATE_TABLE_DIALOGS:Ljava/lang/String;

    .line 17
    const-string v0, "CREATE TABLE IF NOT EXISTS %s (`%s` INTEGER primary key autoincrement, `%s` TEXT, `%s` INTEGER, `%s` INTEGER);"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "tabs"

    aput-object v2, v1, v4

    const-string v2, "id"

    aput-object v2, v1, v5

    const-string v2, "name"

    aput-object v2, v1, v6

    const-string v2, "show"

    aput-object v2, v1, v7

    const-string v2, "ordering"

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->QUERY_CREATE_TABLE_DIALOG_TYPES:Ljava/lang/String;

    .line 18
    const-string v0, "CREATE TABLE IF NOT EXISTS %s (`%s` INTEGER primary key autoincrement, `%s` TEXT, `%s` INTEGER, `%s` INTEGER, `%s` INTEGER, `%s` INTEGER, `%s` INTEGER, `%s` INTEGER, `%s` INTEGER, `%s` INTEGER, `%s` INTEGER, `%s` INTEGER);"

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "download_manager_queue"

    aput-object v2, v1, v4

    const-string v2, "id"

    aput-object v2, v1, v5

    const-string v2, "name"

    aput-object v2, v1, v6

    const-string v2, "ordering"

    aput-object v2, v1, v7

    const-string v2, "schedule"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "start_time"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "stop_time"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "start_wifi"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "stop_wifi"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "start_data"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "stop_data"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "day_of_week"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "simultaneous"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->QUERY_CREATE_TABLE_DOWNLOAD_MANAGER_QUEUE:Ljava/lang/String;

    .line 19
    const-string v0, "CREATE TABLE IF NOT EXISTS %s (`%s` INTEGER primary key autoincrement, `%s` TEXT, `%s` INTEGER, `%s` INTEGER, `%s` INTEGER, `%s` INTEGER, `%s` TEXT);"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "main_menu"

    aput-object v2, v1, v4

    const-string v2, "id"

    aput-object v2, v1, v5

    const-string v2, "name"

    aput-object v2, v1, v6

    const-string v2, "type"

    aput-object v2, v1, v7

    const-string v2, "show"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "ordering"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "parent"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "data"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->QUERY_CREATE_TABLE_MAIN_MENU:Ljava/lang/String;

    .line 20
    const-string v0, "CREATE TABLE IF NOT EXISTS %s (`%s` INTEGER primary key autoincrement, `%s` TEXT, `%s` INTEGER, `%s` INTEGER);"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "multi_forward_dialog_types"

    aput-object v2, v1, v4

    const-string v2, "id"

    aput-object v2, v1, v5

    const-string v2, "name"

    aput-object v2, v1, v6

    const-string v2, "show"

    aput-object v2, v1, v7

    const-string v2, "ordering"

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->QUERY_CREATE_TABLE_MULTI_FORWARD_DIALOG_TYPES:Ljava/lang/String;

    .line 21
    const-string v0, "CREATE TABLE IF NOT EXISTS %s (`%s` INTEGER primary key autoincrement, `%s` INTEGER, `%s` INTEGER, `%s` INTEGER, `%s` INTEGER, `%s` INTEGER, `%s` INTEGER, `%s` INTEGER, `%s` INTEGER, `%s` INTEGER);"

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "special_contacts"

    aput-object v2, v1, v4

    const-string v2, "id"

    aput-object v2, v1, v5

    const-string v2, "user"

    aput-object v2, v1, v6

    const-string v2, "uid"

    aput-object v2, v1, v7

    const-string v2, "online"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "offline"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "avatar"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "name"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "username"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "phone"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "log"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->QUERY_CREATE_TABLE_SPECIAL_CONTACTS:Ljava/lang/String;

    .line 22
    const-string v0, "CREATE TABLE IF NOT EXISTS %s (`%s` INTEGER primary key autoincrement, `%s` INTEGER, `%s` INTEGER, `%s` INTEGER DEFAULT (strftime(\'%%s\',\'now\') * 1000));"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "special_contacts_statistics"

    aput-object v2, v1, v4

    const-string v2, "id"

    aput-object v2, v1, v5

    const-string v2, "user"

    aput-object v2, v1, v6

    const-string v2, "type"

    aput-object v2, v1, v7

    const-string v2, "date"

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->QUERY_CREATE_TABLE_SPECIAL_CONTACTS_STATISTICS:Ljava/lang/String;

    .line 24
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string v1, "telehDatabaseQueue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->telegraphDatabaseQueue:Lorg/telegram/messenger/DispatchQueue;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const-string v0, "teleh.db"

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 28
    return-void
.end method

.method public static createMainMenu(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 161
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'\', 3, 1, 0)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 162
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'\', 2, 1, 1)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 163
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'account_change\', 0, 1, 2)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 164
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'account_manage\', 0, 1, 3)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 165
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'\', 1, 1, 4)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 166
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'download_manager\', 0, 1, 5)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 167
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'file_manager\', 0, 1, 6)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 168
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'categories\', 0, 1, 7)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 169
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'time_line\', 0, 1, 8)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 170
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'favorite_messages\', 0, 1, 9)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 171
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'\', 1, 1, 10)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 172
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'new_group\', 0, 1, 11)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 173
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'new_secret\', 0, 1, 12)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 174
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'new_channel\', 0, 1, 13)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 175
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'\', 1, 1, 14)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 176
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'contacts\', 0, 1, 15)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 177
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'contacts_online\', 0, 1, 16)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 178
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'contacts_changes\', 0, 1, 17)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 179
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'id_finder\', 0, 1, 18)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 180
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'contacts_special\', 0, 1, 19)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 181
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'calls\', 0, 1, 20)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 182
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'\', 1, 1, 21)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 183
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'settings\', 0, 1, 22)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 184
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'settings_telegraph\', 0, 1, 23)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 185
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'theme\', 0, 1, 24)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 186
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'screen_light\', 0, 1, 25)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 187
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'anti_ads\', 0, 1, 26)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 188
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'tutorial\', 0, 1, 27)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 189
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'store_comment\', 0, 1, 28)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 190
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'invite\', 0, 1, 29)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 191
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'channel\', 0, 1, 30)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 192
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'support\', 0, 1, 31)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 193
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'delete_account\', 0, 1, 32)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/telegram/messenger/TelehSQLiteOpenHelper;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    sget-object v0, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->mInstances:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->mInstances:Ljava/util/HashMap;

    .line 34
    :cond_b
    sget-object v0, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->mInstances:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_24

    .line 35
    sget-object v0, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->mInstances:Ljava/util/HashMap;

    new-instance v1, Lorg/telegram/messenger/TelehSQLiteOpenHelper;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/TelehSQLiteOpenHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->telegraphDatabaseQueue:Lorg/telegram/messenger/DispatchQueue;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->setPriority(I)V

    .line 38
    :cond_24
    sget-object v0, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->mInstances:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/TelehSQLiteOpenHelper;

    return-object v0
.end method

.method public static getTableNextIndex(Ljava/lang/String;)I
    .registers 9
    .param p0, "tableName"    # Ljava/lang/String;

    .prologue
    .line 197
    const/4 v2, 0x1

    .line 198
    .local v2, "index":I
    const/4 v0, 0x0

    .line 200
    .local v0, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :try_start_2
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "SELECT seq FROM SQLITE_SEQUENCE WHERE name = %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 202
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 204
    :cond_2c
    if-eqz v0, :cond_31

    .line 205
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_31} :catch_32

    .line 213
    :cond_31
    :goto_31
    return v2

    .line 207
    :catch_32
    move-exception v1

    .line 208
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 209
    if-eqz v0, :cond_31

    .line 210
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_31
.end method

.method public static getTableNextIndexNative(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .registers 13
    .param p0, "tDB"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 217
    const/4 v9, 0x1

    .line 218
    .local v9, "index":I
    move-object v0, p0

    .line 219
    .local v0, "sQLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "SQLITE_SEQUENCE"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "seq"

    aput-object v3, v2, v10

    const-string v3, "name = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v10

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 220
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_2a

    .line 221
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 222
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    add-int/lit8 v9, v1, 0x1

    .line 224
    :cond_27
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 226
    :cond_2a
    return v9
.end method

.method private version1(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 118
    sget-object v0, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->QUERY_CREATE_TABLE_CONTACT_CHANGES:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method private version2(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 122
    sget-object v0, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->QUERY_CREATE_TABLE_DIALOG_TYPES:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 123
    sget-object v0, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->QUERY_CREATE_TABLE_DOWNLOAD_MANAGER_QUEUE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 124
    sget-object v0, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->QUERY_CREATE_TABLE_CATEGORIES:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 125
    sget-object v0, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->QUERY_CREATE_TABLE_CATEGORY_DIALOGS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 126
    sget-object v0, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->QUERY_CREATE_TABLE_DIALOGS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 127
    sget-object v0, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->QUERY_CREATE_TABLE_CONTACTS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 128
    sget-object v0, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->QUERY_CREATE_TABLE_SPECIAL_CONTACTS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 129
    sget-object v0, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->QUERY_CREATE_TABLE_SPECIAL_CONTACTS_STATISTICS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 130
    sget-object v0, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->QUERY_CREATE_TABLE_MAIN_MENU:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 131
    const-string v0, "INSERT INTO tabs (name, show, ordering) VALUES (\'all\', 1, 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 132
    const-string v0, "INSERT INTO tabs (name, show, ordering) VALUES (\'unread\', 1, 1)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 133
    const-string v0, "INSERT INTO tabs (name, show, ordering) VALUES (\'fav\', 1, 2)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 134
    const-string v0, "INSERT INTO tabs (name, show, ordering) VALUES (\'user\', 1, 3)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 135
    const-string v0, "INSERT INTO tabs (name, show, ordering) VALUES (\'groups\', 0, 4)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 136
    const-string v0, "INSERT INTO tabs (name, show, ordering) VALUES (\'group\', 1, 5)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 137
    const-string v0, "INSERT INTO tabs (name, show, ordering) VALUES (\'supergroup\', 1, 6)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 138
    const-string v0, "INSERT INTO tabs (name, show, ordering) VALUES (\'channel\', 1, 7)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 139
    const-string v0, "INSERT INTO tabs (name, show, ordering) VALUES (\'bot\', 1, 8)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 140
    const-string v0, "INSERT INTO download_manager_queue VALUES (1, \'\', 0, 0, 120, 480, 0, 0, 0, 0, 127, 1)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method private version3(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 144
    const-string v0, "INSERT INTO tabs (name, show, ordering) VALUES (\'secret\', 0, 3)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method private version4(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 148
    sget-object v0, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->QUERY_CREATE_TABLE_MULTI_FORWARD_DIALOG_TYPES:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 149
    const-string v0, "INSERT INTO multi_forward_dialog_types (name, show, ordering) VALUES (\'all\', 1, 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 150
    const-string v0, "INSERT INTO multi_forward_dialog_types (name, show, ordering) VALUES (\'fav\', 1, 1)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 151
    const-string v0, "INSERT INTO multi_forward_dialog_types (name, show, ordering) VALUES (\'user\', 1, 2)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 152
    const-string v0, "INSERT INTO multi_forward_dialog_types (name, show, ordering) VALUES (\'groups\', 0, 3)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 153
    const-string v0, "INSERT INTO multi_forward_dialog_types (name, show, ordering) VALUES (\'group\', 1, 4)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 154
    const-string v0, "INSERT INTO multi_forward_dialog_types (name, show, ordering) VALUES (\'supergroup\', 1, 5)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 155
    const-string v0, "INSERT INTO multi_forward_dialog_types (name, show, ordering) VALUES (\'channel\', 1, 6)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 156
    const-string v0, "INSERT INTO multi_forward_dialog_types (name, show, ordering) VALUES (\'bot\', 1, 7)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 157
    const-string v0, "INSERT INTO multi_forward_dialog_types (name, show, ordering) VALUES (\'contact\', 1, 8)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 158
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->version1(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 43
    invoke-direct {p0, p1}, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->version2(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 44
    invoke-direct {p0, p1}, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->version3(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 45
    invoke-direct {p0, p1}, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->version4(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 46
    invoke-static {p1}, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->createMainMenu(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 47
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 50
    const/4 v0, 0x2

    if-ge p2, v0, :cond_6

    .line 51
    invoke-direct {p0, p1}, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->version2(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 53
    :cond_6
    const/4 v0, 0x3

    if-ge p2, v0, :cond_16

    .line 54
    const-string v0, "DROP TABLE IF EXISTS fav_emojies"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 55
    const-string v0, "DROP TABLE IF EXISTS fav_stickers"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, p1}, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->version3(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 58
    :cond_16
    const/4 v0, 0x4

    if-ge p2, v0, :cond_1c

    .line 59
    invoke-direct {p0, p1}, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->version4(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 61
    :cond_1c
    const/4 v0, 0x5

    if-ge p2, v0, :cond_3d

    .line 62
    const-string v0, "DROP TABLE IF EXISTS download_manager"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 63
    const-string v0, "DROP TABLE IF EXISTS download_manager_queue"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    const-string v0, "DROP TABLE IF EXISTS dialogs"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 65
    sget-object v0, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->QUERY_CREATE_TABLE_DOWNLOAD_MANAGER_QUEUE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 66
    sget-object v0, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->QUERY_CREATE_TABLE_DIALOGS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    const-string v0, "INSERT INTO download_manager_queue VALUES (1, \'\', 0, 0, 120, 480, 0, 0, 0, 0, 127, 1)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    :cond_3d
    const/4 v0, 0x6

    if-ge p2, v0, :cond_f9

    .line 70
    const-string v0, "DROP TABLE IF EXISTS messages"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    const-string v0, "DROP TABLE IF EXISTS main_menu"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 72
    sget-object v0, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->QUERY_CREATE_TABLE_MAIN_MENU:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    const-string v0, "DROP TABLE IF EXISTS special_contacts"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 74
    sget-object v0, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->QUERY_CREATE_TABLE_SPECIAL_CONTACTS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 75
    const-string v0, "DROP TABLE IF EXISTS category_dialogs"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 76
    sget-object v0, Lorg/telegram/messenger/TelehSQLiteOpenHelper;->QUERY_CREATE_TABLE_CATEGORY_DIALOGS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 77
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'\', 3, 1, 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 78
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'\', 2, 1, 1)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 79
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'account_change\', 0, 1, 2)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 80
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'account_manage\', 0, 1, 3)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 81
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'\', 1, 1, 4)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 82
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'download_manager\', 0, 1, 5)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 83
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'file_manager\', 0, 1, 6)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 84
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'categories\', 0, 1, 7)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 85
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'time_line\', 0, 1, 8)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 86
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'favorite_messages\', 0, 1, 9)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 87
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'\', 1, 1, 10)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 88
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'new_group\', 0, 1, 11)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 89
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'new_secret\', 0, 1, 12)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 90
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'new_channel\', 0, 1, 13)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 91
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'\', 1, 1, 14)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 92
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'contacts\', 0, 1, 15)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 93
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'contacts_online\', 0, 1, 16)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 94
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'contacts_changes\', 0, 1, 17)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 95
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'id_finder\', 0, 1, 18)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 96
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'contacts_special\', 0, 1, 19)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 97
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'\', 1, 1, 20)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 98
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'settings\', 0, 1, 21)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'settings_telegraph\', 0, 1, 22)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 100
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'theme\', 0, 1, 23)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 101
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'tutorial\', 0, 1, 24)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 102
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'store_comment\', 0, 1, 25)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 103
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'invite\', 0, 1, 26)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 104
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'channel\', 0, 1, 27)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 105
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'support\', 0, 1, 28)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 106
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'delete_account\', 0, 1, 29)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 108
    :cond_f9
    const/4 v0, 0x7

    if-ge p2, v0, :cond_101

    .line 109
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'anti_ads\', 0, 1, 23)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 111
    :cond_101
    const/16 v0, 0x8

    if-ge p2, v0, :cond_10f

    .line 112
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'calls\', 0, 1, 19)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 113
    const-string v0, "INSERT INTO main_menu (name, type, show, ordering) VALUES (\'screen_light\', 0, 1, 23)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 115
    :cond_10f
    return-void
.end method
