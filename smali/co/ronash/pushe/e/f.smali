.class public Lco/ronash/pushe/e/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/e/f;
    .registers 7

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    new-instance v0, Lco/ronash/pushe/e/f;

    invoke-direct {v0}, Lco/ronash/pushe/e/f;-><init>()V

    const-string v1, "package_name"

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/e/f;->a(Ljava/lang/String;)V

    const-string v1, "ver"

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/e/f;->b(Ljava/lang/String;)V

    const-string v1, "src"

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/e/f;->c(Ljava/lang/String;)V

    const-string v1, "app_name"

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/e/f;->d(Ljava/lang/String;)V

    :try_start_2c
    const-string v1, "fit"

    const-string v2, "0"

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lco/ronash/pushe/e/f;->a(J)V
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_3b} :catch_5a

    :goto_3b
    :try_start_3b
    const-string v1, "lut"

    const-string v2, "0"

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lco/ronash/pushe/e/f;->b(J)V
    :try_end_4a
    .catch Ljava/lang/NumberFormatException; {:try_start_3b .. :try_end_4a} :catch_5f

    :goto_4a
    :try_start_4a
    const-string v1, "time"

    const-string v2, "0"

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lco/ronash/pushe/e/f;->c(J)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_59} :catch_64

    :goto_59
    return-object v0

    :catch_5a
    move-exception v1

    invoke-virtual {v0, v4, v5}, Lco/ronash/pushe/e/f;->a(J)V

    goto :goto_3b

    :catch_5f
    move-exception v1

    invoke-virtual {v0, v4, v5}, Lco/ronash/pushe/e/f;->b(J)V

    goto :goto_4a

    :catch_64
    move-exception v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lco/ronash/pushe/e/f;->c(J)V

    goto :goto_59
.end method


# virtual methods
.method public a(Lco/ronash/pushe/e/f;)I
    .registers 6

    invoke-virtual {p0}, Lco/ronash/pushe/e/f;->a()J

    move-result-wide v0

    invoke-virtual {p1}, Lco/ronash/pushe/e/f;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    invoke-virtual {p0}, Lco/ronash/pushe/e/f;->a()J

    move-result-wide v0

    invoke-virtual {p1}, Lco/ronash/pushe/e/f;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1c

    const/4 v0, -0x1

    goto :goto_d

    :cond_1c
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public a()J
    .registers 3

    iget-wide v0, p0, Lco/ronash/pushe/e/f;->c:J

    return-wide v0
.end method

.method public a(J)V
    .registers 4

    iput-wide p1, p0, Lco/ronash/pushe/e/f;->c:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/e/f;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Lco/ronash/pushe/k/l;
    .registers 7

    const-wide/16 v4, 0x0

    new-instance v0, Lco/ronash/pushe/k/l;

    invoke-direct {v0}, Lco/ronash/pushe/k/l;-><init>()V

    const-string v1, "package_name"

    iget-object v2, p0, Lco/ronash/pushe/e/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ver"

    iget-object v2, p0, Lco/ronash/pushe/e/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lco/ronash/pushe/e/f;->e:Ljava/lang/String;

    if-eqz v1, :cond_20

    const-string v1, "src"

    iget-object v2, p0, Lco/ronash/pushe/e/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    iget-wide v2, p0, Lco/ronash/pushe/e/f;->c:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_31

    const-string v1, "fit"

    iget-wide v2, p0, Lco/ronash/pushe/e/f;->c:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    iget-wide v2, p0, Lco/ronash/pushe/e/f;->d:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_42

    const-string v1, "lut"

    iget-wide v2, p0, Lco/ronash/pushe/e/f;->d:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_42
    iget-object v1, p0, Lco/ronash/pushe/e/f;->f:Ljava/lang/String;

    if-eqz v1, :cond_57

    iget-object v1, p0, Lco/ronash/pushe/e/f;->f:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_57

    const-string v1, "app_name"

    iget-object v2, p0, Lco/ronash/pushe/e/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_57
    const-string v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public b(J)V
    .registers 4

    iput-wide p1, p0, Lco/ronash/pushe/e/f;->d:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/e/f;->b:Ljava/lang/String;

    return-void
.end method

.method public c(J)V
    .registers 4

    iput-wide p1, p0, Lco/ronash/pushe/e/f;->g:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/e/f;->e:Ljava/lang/String;

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lco/ronash/pushe/e/f;

    invoke-virtual {p0, p1}, Lco/ronash/pushe/e/f;->a(Lco/ronash/pushe/e/f;)I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/e/f;->f:Ljava/lang/String;

    return-void
.end method
