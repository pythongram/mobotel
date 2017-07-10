.class public Lco/ronash/pushe/c/a/o;
.super Ljava/lang/Object;

# interfaces
.implements Lco/ronash/pushe/c/c;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/ronash/pushe/c/a/o;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lco/ronash/pushe/c/a/o;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/c/a/o;->a:Landroid/content/Context;

    return-object v0
.end method

.method private f()V
    .registers 6

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lco/ronash/pushe/c/a/o;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lco/ronash/pushe/c/a/o;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_12} :catch_23

    move-result-object v0

    :goto_13
    if-eqz v0, :cond_22

    iget-object v1, p0, Lco/ronash/pushe/c/a/o;->a:Landroid/content/Context;

    invoke-static {v1}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v1

    const-string v2, "$latest_registered_version"

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/d/c;->b(Ljava/lang/String;I)V

    :cond_22
    return-void

    :catch_23
    move-exception v1

    const-string v1, "Retrieving application package info failed"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_13
.end method

.method private g()V
    .registers 3

    iget-object v0, p0, Lco/ronash/pushe/c/a/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v0

    new-instance v1, Lco/ronash/pushe/c/a/p;

    invoke-direct {v1, p0}, Lco/ronash/pushe/c/a/p;-><init>(Lco/ronash/pushe/c/a/o;)V

    invoke-virtual {v0, v1}, Lco/ronash/pushe/task/d;->a(Lco/ronash/pushe/task/a;)V

    return-void
.end method

.method private h()V
    .registers 3

    iget-object v0, p0, Lco/ronash/pushe/c/a/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v0

    new-instance v1, Lco/ronash/pushe/c/a/q;

    invoke-direct {v1, p0}, Lco/ronash/pushe/c/a/q;-><init>(Lco/ronash/pushe/c/a/o;)V

    invoke-virtual {v0, v1}, Lco/ronash/pushe/task/d;->a(Lco/ronash/pushe/task/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lco/ronash/pushe/c/a/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v0

    const-class v1, Lco/ronash/pushe/task/b/b;

    invoke-virtual {v0, v1}, Lco/ronash/pushe/task/d;->a(Ljava/lang/Class;)V

    return-void
.end method

.method public a(Lco/ronash/pushe/h/f;)V
    .registers 6

    const/4 v3, 0x2

    const/4 v2, 0x1

    sget-object v0, Lco/ronash/pushe/h/b/p;->c:Lco/ronash/pushe/h/b/p;

    invoke-virtual {p1}, Lco/ronash/pushe/h/f;->e()Lco/ronash/pushe/h/b/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/b/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lco/ronash/pushe/c/a/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/j;->a(Landroid/content/Context;)Lco/ronash/pushe/j;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/j;->b()I

    move-result v0

    if-eq v0, v3, :cond_e

    invoke-virtual {p1}, Lco/ronash/pushe/h/f;->d()I

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lco/ronash/pushe/c/a/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/j;->a(Landroid/content/Context;)Lco/ronash/pushe/j;

    move-result-object v0

    iget-object v1, p0, Lco/ronash/pushe/c/a/o;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lco/ronash/pushe/j;->a(Landroid/content/Context;I)V

    const-string v0, "Pushe"

    const-string v1, "Successfully registered to pushe"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lco/ronash/pushe/c/a/o;->g()V

    invoke-direct {p0}, Lco/ronash/pushe/c/a/o;->h()V

    goto :goto_e

    :cond_3a
    invoke-virtual {p1}, Lco/ronash/pushe/h/f;->d()I

    move-result v0

    if-ne v0, v2, :cond_e

    iget-object v0, p0, Lco/ronash/pushe/c/a/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/j;->a(Landroid/content/Context;)Lco/ronash/pushe/j;

    move-result-object v0

    iget-object v1, p0, Lco/ronash/pushe/c/a/o;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/j;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lco/ronash/pushe/c/a/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v0

    const-class v1, Lco/ronash/pushe/task/b/e;

    invoke-virtual {v0, v1}, Lco/ronash/pushe/task/d;->a(Ljava/lang/Class;)V

    goto :goto_e
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lco/ronash/pushe/c/a/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/j;->a(Landroid/content/Context;)Lco/ronash/pushe/j;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/j;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lco/ronash/pushe/c/a/o;->a:Landroid/content/Context;

    invoke-static {v1}, Lco/ronash/pushe/j;->a(Landroid/content/Context;)Lco/ronash/pushe/j;

    move-result-object v1

    invoke-virtual {v1}, Lco/ronash/pushe/j;->b()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1d

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    :cond_1d
    iget-object v0, p0, Lco/ronash/pushe/c/a/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/j;->a(Landroid/content/Context;)Lco/ronash/pushe/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lco/ronash/pushe/j;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lco/ronash/pushe/c/a/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/j;->a(Landroid/content/Context;)Lco/ronash/pushe/j;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/j;->a(I)V

    iget-object v0, p0, Lco/ronash/pushe/c/a/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v0

    const-class v1, Lco/ronash/pushe/task/b/e;

    invoke-virtual {v0, v1}, Lco/ronash/pushe/task/d;->a(Ljava/lang/Class;)V

    :cond_3b
    invoke-direct {p0}, Lco/ronash/pushe/c/a/o;->f()V

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lco/ronash/pushe/c/a/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/j;->a(Landroid/content/Context;)Lco/ronash/pushe/j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lco/ronash/pushe/j;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lco/ronash/pushe/c/a/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/j;->a(Landroid/content/Context;)Lco/ronash/pushe/j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lco/ronash/pushe/j;->a(I)V

    return-void
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/c/a/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/j;->a(Landroid/content/Context;)Lco/ronash/pushe/j;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/j;->f()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public d()V
    .registers 4

    const-string v0, "broadcast"

    new-instance v1, Lco/ronash/pushe/j/c;

    iget-object v2, p0, Lco/ronash/pushe/c/a/o;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lco/ronash/pushe/j/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lco/ronash/pushe/j/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lco/ronash/pushe/c/a/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/j;->a(Landroid/content/Context;)Lco/ronash/pushe/j;

    move-result-object v0

    invoke-virtual {v0}, Lco/ronash/pushe/j;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lco/ronash/pushe/c/a/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/iid/InstanceID;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/iid/InstanceID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/iid/InstanceID;->getId()Ljava/lang/String;

    move-result-object v0

    :cond_16
    iget-object v1, p0, Lco/ronash/pushe/c/a/o;->a:Landroid/content/Context;

    invoke-static {v1}, Lco/ronash/pushe/j;->a(Landroid/content/Context;)Lco/ronash/pushe/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lco/ronash/pushe/j;->c(Ljava/lang/String;)V

    return-object v0
.end method
