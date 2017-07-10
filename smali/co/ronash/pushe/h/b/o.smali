.class public abstract Lco/ronash/pushe/h/b/o;
.super Lco/ronash/pushe/h/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lco/ronash/pushe/h/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lco/ronash/pushe/h/b;
    .registers 2

    sget-object v0, Lco/ronash/pushe/h/b;->b:Lco/ronash/pushe/h/b;

    return-object v0
.end method

.method public b()Lco/ronash/pushe/k/l;
    .registers 2

    invoke-super {p0}, Lco/ronash/pushe/h/a;->b()Lco/ronash/pushe/k/l;

    move-result-object v0

    return-object v0
.end method

.method public abstract d()Lco/ronash/pushe/h/b/p;
.end method
