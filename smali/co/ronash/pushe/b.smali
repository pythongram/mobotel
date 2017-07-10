.class public Lco/ronash/pushe/b;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:Ljava/lang/String;


# direct methods
.method public static a(Landroid/content/Context;)I
    .registers 5

    sget v0, Lco/ronash/pushe/b;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.android.gms"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v0, Lco/ronash/pushe/b;->a:I
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_14} :catch_17

    :cond_14
    :goto_14
    sget v0, Lco/ronash/pushe/b;->a:I

    return v0

    :catch_17
    move-exception v0

    new-instance v1, Lco/ronash/pushe/log/c;

    invoke-direct {v1}, Lco/ronash/pushe/log/c;-><init>()V

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/ronash/pushe/log/c;->b(Ljava/lang/String;)Lco/ronash/pushe/log/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lco/ronash/pushe/log/c;->a(Ljava/lang/Throwable;)Lco/ronash/pushe/log/c;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lco/ronash/pushe/log/c;->a(J)Lco/ronash/pushe/log/c;

    move-result-object v0

    invoke-static {v0}, Lco/ronash/pushe/log/g;->a(Lco/ronash/pushe/log/c;)V

    goto :goto_14
.end method

.method public static a(Landroid/content/Context;Z)Z
    .registers 9

    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    :try_start_10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.google.android.gms"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1d} :catch_28

    if-eqz v3, :cond_29

    if-eqz v2, :cond_27

    if-eq v2, v6, :cond_27

    const/16 v3, 0x12

    if-ne v2, v3, :cond_29

    :cond_27
    :goto_27
    return v0

    :catch_28
    move-exception v3

    :cond_29
    const-string v3, "Checking google play service availability returned false"

    new-instance v4, Lco/ronash/pushe/log/d;

    new-array v5, v6, [Ljava/lang/String;

    const-string v6, "Connection Result Status Code"

    aput-object v6, v5, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-direct {v4, v5}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v3, v4}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    invoke-static {p0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v3

    const-string v4, "google_play_stat"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lco/ronash/pushe/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_8a

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isUserResolvableError(I)Z

    move-result v2

    if-eqz v2, :cond_8a

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lco/ronash/pushe/R$string;->pushe_missing_google_play_services_title:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lco/ronash/pushe/R$string;->pushe_missing_google_play_services_text:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lco/ronash/pushe/R$string;->pushe_missing_google_play_services_dismiss:I

    new-instance v3, Lco/ronash/pushe/d;

    invoke-direct {v3}, Lco/ronash/pushe/d;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lco/ronash/pushe/R$string;->pushe_missing_google_play_services_install:I

    new-instance v3, Lco/ronash/pushe/c;

    invoke-direct {v3, p0}, Lco/ronash/pushe/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_8a
    move v0, v1

    goto :goto_27
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    sget-object v0, Lco/ronash/pushe/b;->b:Ljava/lang/String;

    if-nez v0, :cond_13

    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.android.gms"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lco/ronash/pushe/b;->b:Ljava/lang/String;
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_13} :catch_16

    :cond_13
    :goto_13
    sget-object v0, Lco/ronash/pushe/b;->b:Ljava/lang/String;

    return-object v0

    :catch_16
    move-exception v0

    new-instance v1, Lco/ronash/pushe/log/c;

    invoke-direct {v1}, Lco/ronash/pushe/log/c;-><init>()V

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/ronash/pushe/log/c;->b(Ljava/lang/String;)Lco/ronash/pushe/log/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lco/ronash/pushe/log/c;->a(Ljava/lang/Throwable;)Lco/ronash/pushe/log/c;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lco/ronash/pushe/log/c;->a(J)Lco/ronash/pushe/log/c;

    move-result-object v0

    invoke-static {v0}, Lco/ronash/pushe/log/g;->a(Lco/ronash/pushe/log/c;)V

    goto :goto_13
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p0}, Lco/ronash/pushe/b;->a(Landroid/content/Context;)I

    move-result v0

    const v1, 0x7270e0

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
