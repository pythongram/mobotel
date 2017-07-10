.class public Lco/ronash/pushe/c/a/v;
.super Ljava/lang/Object;

# interfaces
.implements Lco/ronash/pushe/c/a;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/ronash/pushe/c/a/v;->a:Landroid/content/Context;

    return-void
.end method

.method private b()V
    .registers 4

    new-instance v0, Lco/ronash/pushe/k/d;

    invoke-direct {v0}, Lco/ronash/pushe/k/d;-><init>()V

    invoke-virtual {p0}, Lco/ronash/pushe/c/a/v;->a()Lco/ronash/pushe/k/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/k/d;->a(Lco/ronash/pushe/k/l;)V

    new-instance v1, Lco/ronash/pushe/k/l;

    invoke-direct {v1}, Lco/ronash/pushe/k/l;-><init>()V

    const-string v2, "t4"

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/d;)V

    const-string v0, "message_id"

    invoke-static {}, Lco/ronash/pushe/h/b/q;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lco/ronash/pushe/c/a/v;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v0

    new-instance v2, Lco/ronash/pushe/c/a/w;

    invoke-direct {v2, p0, v1}, Lco/ronash/pushe/c/a/w;-><init>(Lco/ronash/pushe/c/a/v;Lco/ronash/pushe/k/l;)V

    invoke-virtual {v0, v2}, Lco/ronash/pushe/task/d;->a(Lco/ronash/pushe/task/a;)V

    return-void
.end method


# virtual methods
.method public a()Lco/ronash/pushe/k/l;
    .registers 6

    const/4 v4, 0x0

    new-instance v0, Lco/ronash/pushe/e/k;

    iget-object v1, p0, Lco/ronash/pushe/c/a/v;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lco/ronash/pushe/e/k;-><init>(Landroid/content/Context;)V

    new-instance v1, Lco/ronash/pushe/k/l;

    invoke-direct {v1}, Lco/ronash/pushe/k/l;-><init>()V

    const-string v2, "os_version"

    invoke-virtual {v0}, Lco/ronash/pushe/e/k;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_16
    iget-object v0, p0, Lco/ronash/pushe/c/a/v;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lco/ronash/pushe/c/a/v;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v2, "app_version"

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "av_code"

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_35} :catch_a9

    :goto_35
    const-string v0, "pushe_version"

    const-string v2, "1.2.0"

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pv_code"

    const/16 v2, 0x2724

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string v0, "gplay_version"

    iget-object v2, p0, Lco/ronash/pushe/c/a/v;->a:Landroid/content/Context;

    invoke-static {v2}, Lco/ronash/pushe/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "operator"

    iget-object v2, p0, Lco/ronash/pushe/c/a/v;->a:Landroid/content/Context;

    invoke-static {v2}, Lco/ronash/pushe/k/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lco/ronash/pushe/c/a/v;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/k/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_72

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_72

    const-string v0, "operator_2"

    iget-object v2, p0, Lco/ronash/pushe/c/a/v;->a:Landroid/content/Context;

    invoke-static {v2}, Lco/ronash/pushe/k/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_72
    new-instance v0, Lco/ronash/pushe/e/h;

    iget-object v2, p0, Lco/ronash/pushe/c/a/v;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lco/ronash/pushe/e/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lco/ronash/pushe/e/h;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b2

    const-string v2, "installer"

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_84
    const-string v0, ""

    :try_start_86
    iget-object v2, p0, Lco/ronash/pushe/c/a/v;->a:Landroid/content/Context;

    invoke-static {v2}, Lco/ronash/pushe/e/a;->a(Landroid/content/Context;)Lco/ronash/pushe/e/c;

    move-result-object v2

    invoke-virtual {v2}, Lco/ronash/pushe/e/c;->a()Ljava/lang/String;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8f} :catch_ba

    move-result-object v0

    :goto_90
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9b

    const-string v2, "ad_id"

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9b
    const-string v0, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catch_a9
    move-exception v0

    const-string v0, "Getting application version failed"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lco/ronash/pushe/log/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_35

    :cond_b2
    const-string v0, "installer"

    const-string v2, "direct"

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_84

    :catch_ba
    move-exception v2

    goto :goto_90
.end method

.method public a(Lco/ronash/pushe/h/a/i;)V
    .registers 2

    invoke-direct {p0}, Lco/ronash/pushe/c/a/v;->b()V

    return-void
.end method
