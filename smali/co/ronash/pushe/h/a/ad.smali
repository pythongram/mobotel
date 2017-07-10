.class public Lco/ronash/pushe/h/a/ad;
.super Lco/ronash/pushe/h/a/u;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lco/ronash/pushe/h/a/u;-><init>()V

    return-void
.end method

.method static synthetic a(Lco/ronash/pushe/h/a/ad;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/h/a/ad;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lco/ronash/pushe/h/a/ad;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/h/a/ad;->b:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public d()Lco/ronash/pushe/h/a/j;
    .registers 2

    sget-object v0, Lco/ronash/pushe/h/a/j;->k:Lco/ronash/pushe/h/a/j;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/h/a/ad;->a:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/h/a/ad;->b:Ljava/lang/String;

    return-object v0
.end method
