.class public abstract Lco/ronash/pushe/h/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lco/ronash/pushe/h/b;
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/h/a;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Lco/ronash/pushe/k/l;
    .registers 4

    new-instance v0, Lco/ronash/pushe/k/l;

    invoke-direct {v0}, Lco/ronash/pushe/k/l;-><init>()V

    const-string v1, "message_id"

    iget-object v2, p0, Lco/ronash/pushe/h/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/h/a;->a:Ljava/lang/String;

    return-object v0
.end method
