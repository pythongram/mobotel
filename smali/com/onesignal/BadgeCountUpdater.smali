.class Lcom/onesignal/BadgeCountUpdater;
.super Ljava/lang/Object;
.source "BadgeCountUpdater.java"


# static fields
.field private static badgesEnabled:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const/4 v0, -0x1

    sput v0, Lcom/onesignal/BadgeCountUpdater;->badgesEnabled:I

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static areBadgeSettingsEnabled(Landroid/content/Context;)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 45
    sget v6, Lcom/onesignal/BadgeCountUpdater;->badgesEnabled:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_e

    .line 46
    sget v6, Lcom/onesignal/BadgeCountUpdater;->badgesEnabled:I

    if-ne v6, v4, :cond_c

    .line 58
    :cond_b
    :goto_b
    return v4

    :cond_c
    move v4, v5

    .line 46
    goto :goto_b

    .line 49
    :cond_e
    :try_start_e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 50
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 51
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v6, "com.onesignal.BadgeCount"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "defaultStr":Ljava/lang/String;
    const-string v6, "DISABLE"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    move v6, v5

    :goto_2d
    sput v6, Lcom/onesignal/BadgeCountUpdater;->badgesEnabled:I
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_2f} :catch_37

    .line 58
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "defaultStr":Ljava/lang/String;
    :goto_2f
    sget v6, Lcom/onesignal/BadgeCountUpdater;->badgesEnabled:I

    if-eq v6, v4, :cond_b

    move v4, v5

    goto :goto_b

    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "defaultStr":Ljava/lang/String;
    :cond_35
    move v6, v4

    .line 52
    goto :goto_2d

    .line 53
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "defaultStr":Ljava/lang/String;
    :catch_37
    move-exception v3

    .line 54
    .local v3, "t":Ljava/lang/Throwable;
    sput v5, Lcom/onesignal/BadgeCountUpdater;->badgesEnabled:I

    .line 55
    sget-object v6, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v7, "Error reading meta-data tag \'com.onesignal.BadgeCount\'. Disabling badge setting."

    invoke-static {v6, v7, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2f
.end method

.method private static areBadgesEnabled(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-static {p0}, Lcom/onesignal/BadgeCountUpdater;->areBadgeSettingsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/onesignal/OSUtils;->areNotificationsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
    .registers 11
    .param p0, "readableDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-static {p1}, Lcom/onesignal/BadgeCountUpdater;->areBadgesEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 83
    :goto_7
    return-void

    .line 69
    :cond_8
    const-string v1, "notification"

    const-string v3, "dismissed = 0 AND opened = 0 AND is_summary = 0 "

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 81
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0, p1}, Lcom/onesignal/BadgeCountUpdater;->updateCount(ILandroid/content/Context;)V

    .line 82
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_7
.end method

.method static updateCount(ILandroid/content/Context;)V
    .registers 3
    .param p0, "count"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-static {p1}, Lcom/onesignal/BadgeCountUpdater;->areBadgeSettingsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 94
    :goto_6
    return-void

    .line 92
    :cond_7
    :try_start_7
    invoke-static {p1, p0}, Lcom/onesignal/shortcutbadger/ShortcutBadger;->applyCountOrThrow(Landroid/content/Context;I)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_6

    .line 93
    :catch_b
    move-exception v0

    goto :goto_6
.end method
