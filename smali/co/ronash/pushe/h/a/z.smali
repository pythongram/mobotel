.class public Lco/ronash/pushe/h/a/z;
.super Lco/ronash/pushe/h/a/i;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lco/ronash/pushe/h/a/i;-><init>()V

    return-void
.end method

.method static synthetic a(Lco/ronash/pushe/h/a/z;)I
    .registers 2

    iget v0, p0, Lco/ronash/pushe/h/a/z;->b:I

    return v0
.end method

.method static synthetic a(Lco/ronash/pushe/h/a/z;I)I
    .registers 2

    iput p1, p0, Lco/ronash/pushe/h/a/z;->b:I

    return p1
.end method

.method static synthetic a(Lco/ronash/pushe/h/a/z;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/h/a/z;->a:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public d()Lco/ronash/pushe/h/a/j;
    .registers 2

    sget-object v0, Lco/ronash/pushe/h/a/j;->l:Lco/ronash/pushe/h/a/j;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/h/a/z;->a:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lco/ronash/pushe/h/a/z;->b:I

    return v0
.end method
