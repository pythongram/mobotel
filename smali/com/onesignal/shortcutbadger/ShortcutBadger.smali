.class public final Lcom/onesignal/shortcutbadger/ShortcutBadger;
.super Ljava/lang/Object;
.source "ShortcutBadger.java"


# static fields
.field private static final BADGERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/onesignal/shortcutbadger/Badger;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "ShortcutBadger"

.field private static final SUPPORTED_CHECK_ATTEMPTS:I = 0x3

.field private static sComponentName:Landroid/content/ComponentName;

.field private static final sCounterSupportedLock:Ljava/lang/Object;

.field private static volatile sIsBadgeCounterSupported:Ljava/lang/Boolean;

.field private static sShortcutBadger:Lcom/onesignal/shortcutbadger/Badger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sCounterSupportedLock:Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    const-class v1, Lcom/onesignal/shortcutbadger/impl/AdwHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    const-class v1, Lcom/onesignal/shortcutbadger/impl/ApexHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    const-class v1, Lcom/onesignal/shortcutbadger/impl/NewHtcHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    const-class v1, Lcom/onesignal/shortcutbadger/impl/NovaHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    const-class v1, Lcom/onesignal/shortcutbadger/impl/SonyHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    const-class v1, Lcom/onesignal/shortcutbadger/impl/AsusHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    const-class v1, Lcom/onesignal/shortcutbadger/impl/HuaweiHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    const-class v1, Lcom/onesignal/shortcutbadger/impl/OPPOHomeBader;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    const-class v1, Lcom/onesignal/shortcutbadger/impl/SamsungHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    const-class v1, Lcom/onesignal/shortcutbadger/impl/ZukHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    const-class v1, Lcom/onesignal/shortcutbadger/impl/VivoHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/onesignal/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    const-class v1, Lcom/onesignal/shortcutbadger/impl/EverythingMeHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    return-void
.end method

.method public static applyCount(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "badgeCount"    # I

    .prologue
    .line 73
    :try_start_0
    invoke-static {p0, p1}, Lcom/onesignal/shortcutbadger/ShortcutBadger;->applyCountOrThrow(Landroid/content/Context;I)V
    :try_end_3
    .catch Lcom/onesignal/shortcutbadger/ShortcutBadgeException; {:try_start_0 .. :try_end_3} :catch_5

    .line 74
    const/4 v1, 0x1

    .line 79
    :goto_4
    return v1

    .line 75
    :catch_5
    move-exception v0

    .line 76
    .local v0, "e":Lcom/onesignal/shortcutbadger/ShortcutBadgeException;
    const-string v1, "ShortcutBadger"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 77
    const-string v1, "ShortcutBadger"

    const-string v2, "Unable to execute badge"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    :cond_16
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public static applyCountOrThrow(Landroid/content/Context;I)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "badgeCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onesignal/shortcutbadger/ShortcutBadgeException;
        }
    .end annotation

    .prologue
    .line 90
    sget-object v2, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sShortcutBadger:Lcom/onesignal/shortcutbadger/Badger;

    if-nez v2, :cond_12

    .line 91
    invoke-static {p0}, Lcom/onesignal/shortcutbadger/ShortcutBadger;->initBadger(Landroid/content/Context;)Z

    move-result v1

    .line 93
    .local v1, "launcherReady":Z
    if-nez v1, :cond_12

    .line 94
    new-instance v2, Lcom/onesignal/shortcutbadger/ShortcutBadgeException;

    const-string v3, "No default launcher available"

    invoke-direct {v2, v3}, Lcom/onesignal/shortcutbadger/ShortcutBadgeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    .end local v1    # "launcherReady":Z
    :cond_12
    :try_start_12
    sget-object v2, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sShortcutBadger:Lcom/onesignal/shortcutbadger/Badger;

    sget-object v3, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sComponentName:Landroid/content/ComponentName;

    invoke-interface {v2, p0, v3, p1}, Lcom/onesignal/shortcutbadger/Badger;->executeBadge(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_1a

    .line 102
    return-void

    .line 99
    :catch_1a
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/onesignal/shortcutbadger/ShortcutBadgeException;

    const-string v3, "Unable to execute badge"

    invoke-direct {v2, v3, v0}, Lcom/onesignal/shortcutbadger/ShortcutBadgeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public static applyNotification(Landroid/content/Context;Landroid/app/Notification;I)V
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "badgeCount"    # I

    .prologue
    .line 173
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v5, "Xiaomi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 175
    :try_start_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "extraNotification"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 176
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 177
    .local v1, "extraNotification":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setMessageCount"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 178
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_37} :catch_38

    .line 185
    .end local v1    # "extraNotification":Ljava/lang/Object;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_37
    :goto_37
    return-void

    .line 179
    :catch_38
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "ShortcutBadger"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 181
    const-string v4, "ShortcutBadger"

    const-string v5, "Unable to execute badge"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37
.end method

.method private static initBadger(Landroid/content/Context;)Z
    .registers 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 191
    .local v4, "launchIntent":Landroid/content/Intent;
    if-nez v4, :cond_2c

    .line 192
    const-string v8, "ShortcutBadger"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to find launch intent for package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_2b
    :goto_2b
    return v7

    .line 196
    :cond_2c
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    sput-object v8, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sComponentName:Landroid/content/ComponentName;

    .line 198
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .local v3, "intent":Landroid/content/Intent;
    const-string v8, "android.intent.category.HOME"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/high16 v9, 0x10000

    invoke-virtual {v8, v3, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 202
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v5, :cond_2b

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "resolver"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2b

    .line 205
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 207
    .local v2, "currentHomePackage":Ljava/lang/String;
    sget-object v7, Lcom/onesignal/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_64
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_87

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 208
    .local v1, "badger":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/onesignal/shortcutbadger/Badger;>;"
    const/4 v6, 0x0

    .line 210
    .local v6, "shortcutBadger":Lcom/onesignal/shortcutbadger/Badger;
    :try_start_71
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/onesignal/shortcutbadger/Badger;

    move-object v6, v0
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_79} :catch_ca

    .line 213
    :goto_79
    if-eqz v6, :cond_64

    invoke-interface {v6}, Lcom/onesignal/shortcutbadger/Badger;->getSupportLaunchers()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_64

    .line 214
    sput-object v6, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sShortcutBadger:Lcom/onesignal/shortcutbadger/Badger;

    .line 219
    .end local v1    # "badger":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/onesignal/shortcutbadger/Badger;>;"
    .end local v6    # "shortcutBadger":Lcom/onesignal/shortcutbadger/Badger;
    :cond_87
    sget-object v7, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sShortcutBadger:Lcom/onesignal/shortcutbadger/Badger;

    if-nez v7, :cond_9c

    .line 220
    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v8, "ZUK"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9e

    .line 221
    new-instance v7, Lcom/onesignal/shortcutbadger/impl/ZukHomeBadger;

    invoke-direct {v7}, Lcom/onesignal/shortcutbadger/impl/ZukHomeBadger;-><init>()V

    sput-object v7, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sShortcutBadger:Lcom/onesignal/shortcutbadger/Badger;

    .line 230
    :cond_9c
    :goto_9c
    const/4 v7, 0x1

    goto :goto_2b

    .line 222
    :cond_9e
    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v8, "OPPO"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b0

    .line 223
    new-instance v7, Lcom/onesignal/shortcutbadger/impl/OPPOHomeBader;

    invoke-direct {v7}, Lcom/onesignal/shortcutbadger/impl/OPPOHomeBader;-><init>()V

    sput-object v7, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sShortcutBadger:Lcom/onesignal/shortcutbadger/Badger;

    goto :goto_9c

    .line 224
    :cond_b0
    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v8, "VIVO"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c2

    .line 225
    new-instance v7, Lcom/onesignal/shortcutbadger/impl/VivoHomeBadger;

    invoke-direct {v7}, Lcom/onesignal/shortcutbadger/impl/VivoHomeBadger;-><init>()V

    sput-object v7, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sShortcutBadger:Lcom/onesignal/shortcutbadger/Badger;

    goto :goto_9c

    .line 227
    :cond_c2
    new-instance v7, Lcom/onesignal/shortcutbadger/impl/DefaultBadger;

    invoke-direct {v7}, Lcom/onesignal/shortcutbadger/impl/DefaultBadger;-><init>()V

    sput-object v7, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sShortcutBadger:Lcom/onesignal/shortcutbadger/Badger;

    goto :goto_9c

    .line 211
    .restart local v1    # "badger":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/onesignal/shortcutbadger/Badger;>;"
    .restart local v6    # "shortcutBadger":Lcom/onesignal/shortcutbadger/Badger;
    :catch_ca
    move-exception v7

    goto :goto_79
.end method

.method public static isBadgeCounterSupported(Landroid/content/Context;)Z
    .registers 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x3

    .line 131
    sget-object v3, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sIsBadgeCounterSupported:Ljava/lang/Boolean;

    if-nez v3, :cond_82

    .line 132
    sget-object v4, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sCounterSupportedLock:Ljava/lang/Object;

    monitor-enter v4

    .line 134
    :try_start_8
    sget-object v3, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sIsBadgeCounterSupported:Ljava/lang/Boolean;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_94

    if-nez v3, :cond_81

    .line 135
    const/4 v2, 0x0

    .line 136
    .local v2, "lastErrorMessage":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v10, :cond_5e

    .line 138
    :try_start_10
    const-string v3, "ShortcutBadger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Checking if platform supports badge counters, attempt "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%d/%d."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    add-int/lit8 v9, v1, 0x1

    .line 139
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 138
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {p0}, Lcom/onesignal/shortcutbadger/ShortcutBadger;->initBadger(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 141
    sget-object v3, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sShortcutBadger:Lcom/onesignal/shortcutbadger/Badger;

    sget-object v5, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sComponentName:Landroid/content/ComponentName;

    const/4 v6, 0x0

    invoke-interface {v3, p0, v5, v6}, Lcom/onesignal/shortcutbadger/Badger;->executeBadge(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 142
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sIsBadgeCounterSupported:Ljava/lang/Boolean;

    .line 143
    const-string v3, "ShortcutBadger"

    const-string v5, "Badge counter is supported in this platform."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_5e} :catch_8e
    .catchall {:try_start_10 .. :try_end_5e} :catchall_94

    .line 156
    :cond_5e
    :try_start_5e
    sget-object v3, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sIsBadgeCounterSupported:Ljava/lang/Boolean;

    if-nez v3, :cond_81

    .line 157
    const-string v3, "ShortcutBadger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Badge counter seems not supported for this platform: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sIsBadgeCounterSupported:Ljava/lang/Boolean;

    .line 162
    .end local v1    # "i":I
    .end local v2    # "lastErrorMessage":Ljava/lang/String;
    :cond_81
    monitor-exit v4
    :try_end_82
    .catchall {:try_start_5e .. :try_end_82} :catchall_94

    .line 164
    :cond_82
    sget-object v3, Lcom/onesignal/shortcutbadger/ShortcutBadger;->sIsBadgeCounterSupported:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 146
    .restart local v1    # "i":I
    .restart local v2    # "lastErrorMessage":Ljava/lang/String;
    :cond_89
    :try_start_89
    const-string v2, "Failed to initialize the badge counter."
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8b} :catch_8e
    .catchall {:try_start_89 .. :try_end_8b} :catchall_94

    .line 136
    :goto_8b
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 148
    :catch_8e
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    :try_start_8f
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_8b

    .line 162
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    .end local v2    # "lastErrorMessage":Ljava/lang/String;
    :catchall_94
    move-exception v3

    monitor-exit v4
    :try_end_96
    .catchall {:try_start_8f .. :try_end_96} :catchall_94

    throw v3
.end method

.method public static removeCount(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/onesignal/shortcutbadger/ShortcutBadger;->applyCount(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static removeCountOrThrow(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onesignal/shortcutbadger/ShortcutBadgeException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/onesignal/shortcutbadger/ShortcutBadger;->applyCountOrThrow(Landroid/content/Context;I)V

    .line 121
    return-void
.end method
