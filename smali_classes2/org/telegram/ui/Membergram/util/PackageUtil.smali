.class public Lorg/telegram/ui/Membergram/util/PackageUtil;
.super Ljava/lang/Object;
.source "PackageUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 13
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-static {v0, p1}, Lorg/telegram/ui/Membergram/util/PackageUtil;->isPackageInstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isPackageInstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .registers 5
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 18
    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_5} :catch_6

    .line 21
    :goto_5
    return v1

    .line 20
    :catch_6
    move-exception v0

    .line 21
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_5
.end method
