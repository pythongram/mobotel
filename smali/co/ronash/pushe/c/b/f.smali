.class public Lco/ronash/pushe/c/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Lco/ronash/pushe/c/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lco/ronash/pushe/c/a;
    .registers 3

    new-instance v0, Lco/ronash/pushe/c/a/i;

    invoke-direct {v0, p1}, Lco/ronash/pushe/c/a/i;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
