.class public Lco/ronash/pushe/e/k;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/ronash/pushe/e/k;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Lco/ronash/pushe/e/m;
    .registers 2

    sget-object v0, Lco/ronash/pushe/e/m;->a:Lco/ronash/pushe/e/m;

    return-object v0
.end method

.method public b()Lco/ronash/pushe/e/l;
    .registers 3

    iget-object v0, p0, Lco/ronash/pushe/e/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_17

    const/4 v0, 0x1

    :goto_12
    if-eqz v0, :cond_19

    sget-object v0, Lco/ronash/pushe/e/l;->b:Lco/ronash/pushe/e/l;

    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_12

    :cond_19
    sget-object v0, Lco/ronash/pushe/e/l;->a:Lco/ronash/pushe/e/l;

    goto :goto_16
.end method

.method public c()Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public f()Landroid/graphics/Point;
    .registers 4

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lco/ronash/pushe/e/k;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Point;->set(II)V

    return-object v0
.end method
