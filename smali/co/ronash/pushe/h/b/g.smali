.class public Lco/ronash/pushe/h/b/g;
.super Lco/ronash/pushe/h/b/o;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lco/ronash/pushe/h/b/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/h/b/g;->c:Ljava/lang/Integer;

    return-void
.end method

.method public b()Lco/ronash/pushe/k/l;
    .registers 5

    new-instance v0, Lco/ronash/pushe/k/l;

    invoke-direct {v0}, Lco/ronash/pushe/k/l;-><init>()V

    const-string v1, "orig_msg_id"

    iget-object v2, p0, Lco/ronash/pushe/h/b/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "status"

    iget-object v2, p0, Lco/ronash/pushe/h/b/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lco/ronash/pushe/h/b/g;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_22

    const-string v1, "btn_id"

    iget-object v2, p0, Lco/ronash/pushe/h/b/g;->c:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    const-string v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/h/b/g;->a:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/h/b/g;->b:Ljava/lang/String;

    return-void
.end method

.method public d()Lco/ronash/pushe/h/b/p;
    .registers 2

    sget-object v0, Lco/ronash/pushe/h/b/p;->a:Lco/ronash/pushe/h/b/p;

    return-object v0
.end method
