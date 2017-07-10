.class public Lorg/telegram/ui/Membergram/util/LuckyPatcherUtil;
.super Ljava/lang/Object;
.source "LuckyPatcherUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkLuckyPatcher(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 11
    const-string v1, "com.dimonvideo.luckypatcher"

    invoke-static {p0, v1}, Lorg/telegram/ui/Membergram/util/LuckyPatcherUtil;->packageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 23
    :cond_9
    :goto_9
    return v0

    .line 14
    :cond_a
    const-string v1, "com.chelpus.lackypatch"

    invoke-static {p0, v1}, Lorg/telegram/ui/Membergram/util/LuckyPatcherUtil;->packageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 17
    const-string v1, "com.android.vending.billing.InAppBillingService.LUCK"

    invoke-static {p0, v1}, Lorg/telegram/ui/Membergram/util/LuckyPatcherUtil;->packageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 20
    const-string v1, "com.android.vending.billing.InAppBillingService.LACK"

    invoke-static {p0, v1}, Lorg/telegram/ui/Membergram/util/LuckyPatcherUtil;->packageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 23
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static packageExists(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 28
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_f

    move-result-object v0

    .line 30
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_d

    .line 42
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_c
    return v1

    .line 37
    .restart local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_d
    const/4 v1, 0x1

    goto :goto_c

    .line 38
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_f
    move-exception v2

    goto :goto_c
.end method
