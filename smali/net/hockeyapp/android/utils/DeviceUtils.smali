.class public Lnet/hockeyapp/android/utils/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hockeyapp/android/utils/DeviceUtils$DeviceUtilsHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lnet/hockeyapp/android/utils/DeviceUtils$1;)V
    .registers 2
    .param p1, "x0"    # Lnet/hockeyapp/android/utils/DeviceUtils$1;

    .prologue
    .line 16
    invoke-direct {p0}, Lnet/hockeyapp/android/utils/DeviceUtils;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/hockeyapp/android/utils/DeviceUtils;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lnet/hockeyapp/android/utils/DeviceUtils$DeviceUtilsHolder;->INSTANCE:Lnet/hockeyapp/android/utils/DeviceUtils;

    return-object v0
.end method


# virtual methods
.method public getAppName(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    if-nez p1, :cond_5

    .line 53
    const-string v3, ""

    .line 69
    :goto_4
    return-object v3

    .line 57
    :cond_5
    :try_start_5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 58
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-nez v2, :cond_e

    .line 59
    const-string v3, ""

    goto :goto_4

    .line 62
    :cond_e
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 64
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_1e} :catch_20

    move-result-object v3

    goto :goto_4

    .line 65
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_20
    move-exception v1

    .line 66
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 69
    const-string v3, ""

    goto :goto_4
.end method

.method public getCurrentVersionCode(Landroid/content/Context;)I
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    sget-object v0, Lnet/hockeyapp/android/Constants;->APP_VERSION:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
