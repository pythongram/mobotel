.class public Lcom/onesignal/shortcutbadger/impl/SonyHomeBadger;
.super Ljava/lang/Object;
.source "SonyHomeBadger.java"

# interfaces
.implements Lcom/onesignal/shortcutbadger/Badger;


# static fields
.field private static final INTENT_ACTION:Ljava/lang/String; = "com.sonyericsson.home.action.UPDATE_BADGE"

.field private static final INTENT_EXTRA_ACTIVITY_NAME:Ljava/lang/String; = "com.sonyericsson.home.intent.extra.badge.ACTIVITY_NAME"

.field private static final INTENT_EXTRA_MESSAGE:Ljava/lang/String; = "com.sonyericsson.home.intent.extra.badge.MESSAGE"

.field private static final INTENT_EXTRA_PACKAGE_NAME:Ljava/lang/String; = "com.sonyericsson.home.intent.extra.badge.PACKAGE_NAME"

.field private static final INTENT_EXTRA_SHOW_MESSAGE:Ljava/lang/String; = "com.sonyericsson.home.intent.extra.badge.SHOW_MESSAGE"

.field private static final PROVIDER_COLUMNS_ACTIVITY_NAME:Ljava/lang/String; = "activity_name"

.field private static final PROVIDER_COLUMNS_BADGE_COUNT:Ljava/lang/String; = "badge_count"

.field private static final PROVIDER_COLUMNS_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final PROVIDER_CONTENT_URI:Ljava/lang/String; = "content://com.sonymobile.home.resourceprovider/badge"

.field private static final SONY_HOME_PROVIDER_NAME:Ljava/lang/String; = "com.sonymobile.home.resourceprovider"


# instance fields
.field private final BADGE_CONTENT_URI:Landroid/net/Uri;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "content://com.sonymobile.home.resourceprovider/badge"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/shortcutbadger/impl/SonyHomeBadger;->BADGE_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private createContentValues(ILandroid/content/ComponentName;)Landroid/content/ContentValues;
    .registers 6
    .param p1, "badgeCount"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 133
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 134
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "badge_count"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    const-string v1, "package_name"

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v1, "activity_name"

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-object v0
.end method

.method private static executeBadgeByBroadcast(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "badgeCount"    # I

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.home.action.UPDATE_BADGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sonyericsson.home.intent.extra.badge.PACKAGE_NAME"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v1, "com.sonyericsson.home.intent.extra.badge.ACTIVITY_NAME"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v1, "com.sonyericsson.home.intent.extra.badge.MESSAGE"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v2, "com.sonyericsson.home.intent.extra.badge.SHOW_MESSAGE"

    if-lez p2, :cond_2e

    const/4 v1, 0x1

    :goto_27
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 63
    return-void

    .line 61
    :cond_2e
    const/4 v1, 0x0

    goto :goto_27
.end method

.method private executeBadgeByContentProvider(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "badgeCount"    # I

    .prologue
    .line 74
    if-gez p3, :cond_3

    .line 94
    :goto_2
    return-void

    .line 78
    :cond_3
    invoke-direct {p0, p3, p2}, Lcom/onesignal/shortcutbadger/impl/SonyHomeBadger;->createContentValues(ILandroid/content/ComponentName;)Landroid/content/ContentValues;

    move-result-object v0

    .line 79
    .local v0, "contentValues":Landroid/content/ContentValues;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_28

    .line 82
    iget-object v1, p0, Lcom/onesignal/shortcutbadger/impl/SonyHomeBadger;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    if-nez v1, :cond_24

    .line 83
    new-instance v1, Lcom/onesignal/shortcutbadger/impl/SonyHomeBadger$1;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/onesignal/shortcutbadger/impl/SonyHomeBadger$1;-><init>(Lcom/onesignal/shortcutbadger/impl/SonyHomeBadger;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/onesignal/shortcutbadger/impl/SonyHomeBadger;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 87
    :cond_24
    invoke-direct {p0, v0}, Lcom/onesignal/shortcutbadger/impl/SonyHomeBadger;->insertBadgeAsync(Landroid/content/ContentValues;)V

    goto :goto_2

    .line 92
    :cond_28
    invoke-direct {p0, p1, v0}, Lcom/onesignal/shortcutbadger/impl/SonyHomeBadger;->insertBadgeSync(Landroid/content/Context;Landroid/content/ContentValues;)V

    goto :goto_2
.end method

.method private insertBadgeAsync(Landroid/content/ContentValues;)V
    .registers 6
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/onesignal/shortcutbadger/impl/SonyHomeBadger;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/onesignal/shortcutbadger/impl/SonyHomeBadger;->BADGE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/content/AsyncQueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 103
    return-void
.end method

.method private insertBadgeSync(Landroid/content/Context;Landroid/content/ContentValues;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/onesignal/shortcutbadger/impl/SonyHomeBadger;->BADGE_CONTENT_URI:Landroid/net/Uri;

    .line 113
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 114
    return-void
.end method

.method private static sonyBadgeContentProviderExists(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "exists":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sonymobile.home.resourceprovider"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 149
    .local v1, "info":Landroid/content/pm/ProviderInfo;
    if-eqz v1, :cond_f

    .line 150
    const/4 v0, 0x1

    .line 152
    :cond_f
    return v0
.end method


# virtual methods
.method public executeBadge(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "badgeCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onesignal/shortcutbadger/ShortcutBadgeException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {p1}, Lcom/onesignal/shortcutbadger/impl/SonyHomeBadger;->sonyBadgeContentProviderExists(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/onesignal/shortcutbadger/impl/SonyHomeBadger;->executeBadgeByContentProvider(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 48
    :goto_9
    return-void

    .line 46
    :cond_a
    invoke-static {p1, p2, p3}, Lcom/onesignal/shortcutbadger/impl/SonyHomeBadger;->executeBadgeByBroadcast(Landroid/content/Context;Landroid/content/ComponentName;I)V

    goto :goto_9
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
    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.sonyericsson.home"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.sonymobile.home"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
