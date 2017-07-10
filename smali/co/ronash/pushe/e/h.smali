.class public Lco/ronash/pushe/e/h;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/ronash/pushe/e/h;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lco/ronash/pushe/e/h;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-eq v4, v5, :cond_14

    new-instance v4, Lco/ronash/pushe/e/f;

    invoke-direct {v4}, Lco/ronash/pushe/e/f;-><init>()V

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lco/ronash/pushe/e/f;->a(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lco/ronash/pushe/e/f;->b(Ljava/lang/String;)V

    iget-wide v6, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v4, v6, v7}, Lco/ronash/pushe/e/f;->a(J)V

    iget-wide v6, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-virtual {v4, v6, v7}, Lco/ronash/pushe/e/f;->b(J)V

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lco/ronash/pushe/e/f;->d(Ljava/lang/String;)V

    :try_start_4d
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lco/ronash/pushe/e/f;->c(Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4d .. :try_end_56} :catch_5b

    :goto_56
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_5a
    return-object v1

    :catch_5b
    move-exception v0

    goto :goto_56
.end method

.method public b()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lco/ronash/pushe/e/h;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_6
    iget-object v1, p0, Lco/ronash/pushe/e/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_f} :catch_11

    move-result-object v0

    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    const/4 v0, 0x0

    goto :goto_10
.end method
