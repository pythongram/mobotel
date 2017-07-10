.class public Lco/ronash/pushe/c/b/j;
.super Ljava/lang/Object;

# interfaces
.implements Lco/ronash/pushe/c/b;
.implements Lco/ronash/pushe/c/d;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lco/ronash/pushe/c/a;
    .registers 3

    new-instance v0, Lco/ronash/pushe/c/a/s;

    invoke-direct {v0, p1}, Lco/ronash/pushe/c/a/s;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public b(Landroid/content/Context;)Lco/ronash/pushe/c/c;
    .registers 3

    new-instance v0, Lco/ronash/pushe/c/a/s;

    invoke-direct {v0, p1}, Lco/ronash/pushe/c/a/s;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
