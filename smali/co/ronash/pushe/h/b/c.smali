.class public Lco/ronash/pushe/h/b/c;
.super Lco/ronash/pushe/h/b/o;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lco/ronash/pushe/h/b/o;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lco/ronash/pushe/k/l;
    .registers 5

    invoke-super {p0}, Lco/ronash/pushe/h/b/o;->b()Lco/ronash/pushe/k/l;

    move-result-object v0

    const-string v1, "orig_msg_id"

    iget-object v2, p0, Lco/ronash/pushe/h/b/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "status"

    const-string v2, "delivered"

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

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

    iput-object p1, p0, Lco/ronash/pushe/h/b/c;->a:Ljava/lang/String;

    return-void
.end method

.method public d()Lco/ronash/pushe/h/b/p;
    .registers 2

    sget-object v0, Lco/ronash/pushe/h/b/p;->b:Lco/ronash/pushe/h/b/p;

    return-object v0
.end method
