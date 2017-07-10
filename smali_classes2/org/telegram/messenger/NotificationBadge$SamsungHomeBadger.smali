.class public Lorg/telegram/messenger/NotificationBadge$SamsungHomeBadger;
.super Ljava/lang/Object;
.source "NotificationBadge.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationBadge$Badger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/NotificationBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamsungHomeBadger"
.end annotation


# static fields
.field private static final CONTENT_PROJECTION:[Ljava/lang/String;

.field private static final CONTENT_URI:Ljava/lang/String; = "content://com.sec.badge/apps?notify=true"

.field private static defaultBadger:Lorg/telegram/messenger/NotificationBadge$DefaultBadger;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 410
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "class"

    aput-object v2, v0, v1

    sput-object v0, Lorg/telegram/messenger/NotificationBadge$SamsungHomeBadger;->CONTENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getContentValues(Landroid/content/ComponentName;IZ)Landroid/content/ContentValues;
    .registers 7
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "badgeCount"    # I
    .param p3, "isInsert"    # Z

    .prologue
    .line 453
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 454
    .local v0, "contentValues":Landroid/content/ContentValues;
    if-eqz p3, :cond_19

    .line 455
    const-string v1, "package"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v1, "class"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_19
    const-string v1, "badgecount"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 461
    return-object v0
.end method


# virtual methods
.method public executeBadge(I)V
    .registers 14
    .param p1, "badgeCount"    # I

    .prologue
    .line 417
    :try_start_0
    sget-object v2, Lorg/telegram/messenger/NotificationBadge$SamsungHomeBadger;->defaultBadger:Lorg/telegram/messenger/NotificationBadge$DefaultBadger;

    if-nez v2, :cond_b

    .line 418
    new-instance v2, Lorg/telegram/messenger/NotificationBadge$DefaultBadger;

    invoke-direct {v2}, Lorg/telegram/messenger/NotificationBadge$DefaultBadger;-><init>()V

    sput-object v2, Lorg/telegram/messenger/NotificationBadge$SamsungHomeBadger;->defaultBadger:Lorg/telegram/messenger/NotificationBadge$DefaultBadger;

    .line 420
    :cond_b
    sget-object v2, Lorg/telegram/messenger/NotificationBadge$SamsungHomeBadger;->defaultBadger:Lorg/telegram/messenger/NotificationBadge$DefaultBadger;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/NotificationBadge$DefaultBadger;->executeBadge(I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_8b

    .line 425
    :goto_10
    const-string v2, "content://com.sec.badge/apps?notify=true"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 426
    .local v1, "mUri":Landroid/net/Uri;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 427
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 429
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_1d
    sget-object v2, Lorg/telegram/messenger/NotificationBadge$SamsungHomeBadger;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "package=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    # getter for: Lorg/telegram/messenger/NotificationBadge;->componentName:Landroid/content/ComponentName;
    invoke-static {}, Lorg/telegram/messenger/NotificationBadge;->access$000()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 430
    if-eqz v7, :cond_82

    .line 431
    # getter for: Lorg/telegram/messenger/NotificationBadge;->componentName:Landroid/content/ComponentName;
    invoke-static {}, Lorg/telegram/messenger/NotificationBadge;->access$000()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 432
    .local v9, "entryActivityName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 433
    .local v8, "entryActivityExist":Z
    :cond_3f
    :goto_3f
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 434
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 435
    .local v10, "id":I
    # getter for: Lorg/telegram/messenger/NotificationBadge;->componentName:Landroid/content/ComponentName;
    invoke-static {}, Lorg/telegram/messenger/NotificationBadge;->access$000()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, p1, v3}, Lorg/telegram/messenger/NotificationBadge$SamsungHomeBadger;->getContentValues(Landroid/content/ComponentName;IZ)Landroid/content/ContentValues;

    move-result-object v6

    .line 436
    .local v6, "contentValues":Landroid/content/ContentValues;
    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 437
    const-string v2, "class"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 438
    const/4 v8, 0x1

    goto :goto_3f

    .line 442
    .end local v6    # "contentValues":Landroid/content/ContentValues;
    .end local v10    # "id":I
    :cond_74
    if-nez v8, :cond_82

    .line 443
    # getter for: Lorg/telegram/messenger/NotificationBadge;->componentName:Landroid/content/ComponentName;
    invoke-static {}, Lorg/telegram/messenger/NotificationBadge;->access$000()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, p1, v3}, Lorg/telegram/messenger/NotificationBadge$SamsungHomeBadger;->getContentValues(Landroid/content/ComponentName;IZ)Landroid/content/ContentValues;

    move-result-object v6

    .line 444
    .restart local v6    # "contentValues":Landroid/content/ContentValues;
    invoke-virtual {v0, v1, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_82
    .catchall {:try_start_1d .. :try_end_82} :catchall_86

    .line 448
    .end local v6    # "contentValues":Landroid/content/ContentValues;
    .end local v8    # "entryActivityExist":Z
    .end local v9    # "entryActivityName":Ljava/lang/String;
    :cond_82
    invoke-static {v7}, Lorg/telegram/messenger/NotificationBadge;->close(Landroid/database/Cursor;)V

    .line 450
    return-void

    .line 448
    :catchall_86
    move-exception v2

    invoke-static {v7}, Lorg/telegram/messenger/NotificationBadge;->close(Landroid/database/Cursor;)V

    throw v2

    .line 421
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v1    # "mUri":Landroid/net/Uri;
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catch_8b
    move-exception v2

    goto :goto_10
.end method

.method public getSupportLaunchers()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.sec.android.app.launcher"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.sec.android.app.twlauncher"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
