.class public abstract Lco/ronash/pushe/h/a/u;
.super Lco/ronash/pushe/h/a/i;


# instance fields
.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lco/ronash/pushe/h/a/i;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4

    invoke-static {p0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    const-string v1, "otk"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/d/c;->a(Ljava/lang/String;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/k/l;

    move-result-object v0

    if-nez v0, :cond_12

    new-instance v0, Lco/ronash/pushe/k/l;

    invoke-direct {v0}, Lco/ronash/pushe/k/l;-><init>()V

    :cond_12
    const-string v1, "welcome"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Z)V

    invoke-static {p0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v1

    const-string v2, "otk"

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/d/c;->b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-static {p0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v1

    const-string v2, "otk"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lco/ronash/pushe/d/c;->a(Ljava/lang/String;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/k/l;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1, p1, v0}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Z)Z

    move-result v0

    :cond_12
    return v0
.end method


# virtual methods
.method public E()Z
    .registers 2

    iget-boolean v0, p0, Lco/ronash/pushe/h/a/u;->a:Z

    return v0
.end method

.method public F()I
    .registers 2

    iget v0, p0, Lco/ronash/pushe/h/a/u;->b:I

    return v0
.end method

.method public G()Z
    .registers 2

    invoke-virtual {p0}, Lco/ronash/pushe/h/a/u;->F()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public b(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "welcome"

    invoke-static {p1, v2}, Lco/ronash/pushe/h/a/u;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    move v2, v0

    :goto_b
    if-eqz v2, :cond_13

    invoke-static {p1}, Lco/ronash/pushe/h/a/u;->a(Landroid/content/Context;)V

    :goto_10
    return v0

    :cond_11
    move v2, v1

    goto :goto_b

    :cond_13
    move v0, v1

    goto :goto_10
.end method

.method public c(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p0}, Lco/ronash/pushe/h/a/u;->F()I
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_13} :catch_18

    move-result v2

    if-le v2, v1, :cond_17

    const/4 v0, 0x1

    :cond_17
    :goto_17
    return v0

    :catch_18
    move-exception v1

    goto :goto_17
.end method

.method public e(I)V
    .registers 2

    iput p1, p0, Lco/ronash/pushe/h/a/u;->b:I

    return-void
.end method

.method public h(Z)V
    .registers 2

    iput-boolean p1, p0, Lco/ronash/pushe/h/a/u;->a:Z

    return-void
.end method
