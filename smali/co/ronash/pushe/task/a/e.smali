.class public Lco/ronash/pushe/task/a/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Lco/ronash/pushe/task/a/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lco/ronash/pushe/task/a/d;

    invoke-direct {v0}, Lco/ronash/pushe/task/a/d;-><init>()V

    iput-object v0, p0, Lco/ronash/pushe/task/a/e;->a:Lco/ronash/pushe/task/a/d;

    return-void
.end method


# virtual methods
.method public a()Lco/ronash/pushe/task/a/d;
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/task/a/e;->a:Lco/ronash/pushe/task/a/d;

    return-object v0
.end method

.method public a(Ljava/lang/Boolean;)Lco/ronash/pushe/task/a/e;
    .registers 3

    iget-object v0, p0, Lco/ronash/pushe/task/a/e;->a:Lco/ronash/pushe/task/a/d;

    invoke-static {v0, p1}, Lco/ronash/pushe/task/a/d;->a(Lco/ronash/pushe/task/a/d;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-object p0
.end method

.method public a(Ljava/lang/Integer;)Lco/ronash/pushe/task/a/e;
    .registers 3

    iget-object v0, p0, Lco/ronash/pushe/task/a/e;->a:Lco/ronash/pushe/task/a/d;

    invoke-static {v0, p1}, Lco/ronash/pushe/task/a/d;->a(Lco/ronash/pushe/task/a/d;Ljava/lang/Integer;)Ljava/lang/Integer;

    return-object p0
.end method

.method public a(Ljava/lang/Long;)Lco/ronash/pushe/task/a/e;
    .registers 3

    iget-object v0, p0, Lco/ronash/pushe/task/a/e;->a:Lco/ronash/pushe/task/a/d;

    invoke-static {v0, p1}, Lco/ronash/pushe/task/a/d;->a(Lco/ronash/pushe/task/a/d;Ljava/lang/Long;)Ljava/lang/Long;

    return-object p0
.end method

.method public a(Lco/ronash/pushe/task/a/a;)V
    .registers 4

    iget-object v0, p0, Lco/ronash/pushe/task/a/e;->a:Lco/ronash/pushe/task/a/d;

    invoke-virtual {v0}, Lco/ronash/pushe/task/a/d;->a()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_13

    invoke-interface {p1}, Lco/ronash/pushe/task/a/a;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/ronash/pushe/task/a/e;->a(Ljava/lang/Long;)Lco/ronash/pushe/task/a/e;

    :cond_13
    iget-object v0, p0, Lco/ronash/pushe/task/a/e;->a:Lco/ronash/pushe/task/a/d;

    invoke-virtual {v0}, Lco/ronash/pushe/task/a/d;->b()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_26

    invoke-interface {p1}, Lco/ronash/pushe/task/a/a;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/ronash/pushe/task/a/e;->b(Ljava/lang/Long;)Lco/ronash/pushe/task/a/e;

    :cond_26
    iget-object v0, p0, Lco/ronash/pushe/task/a/e;->a:Lco/ronash/pushe/task/a/d;

    invoke-virtual {v0}, Lco/ronash/pushe/task/a/d;->c()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_39

    invoke-interface {p1}, Lco/ronash/pushe/task/a/a;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/ronash/pushe/task/a/e;->c(Ljava/lang/Long;)Lco/ronash/pushe/task/a/e;

    :cond_39
    iget-object v0, p0, Lco/ronash/pushe/task/a/e;->a:Lco/ronash/pushe/task/a/d;

    invoke-virtual {v0}, Lco/ronash/pushe/task/a/d;->d()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_4c

    invoke-interface {p1}, Lco/ronash/pushe/task/a/a;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/ronash/pushe/task/a/e;->d(Ljava/lang/Long;)Lco/ronash/pushe/task/a/e;

    :cond_4c
    iget-object v0, p0, Lco/ronash/pushe/task/a/e;->a:Lco/ronash/pushe/task/a/d;

    invoke-virtual {v0}, Lco/ronash/pushe/task/a/d;->e()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_5f

    invoke-interface {p1}, Lco/ronash/pushe/task/a/a;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/ronash/pushe/task/a/e;->a(Ljava/lang/Integer;)Lco/ronash/pushe/task/a/e;

    :cond_5f
    iget-object v0, p0, Lco/ronash/pushe/task/a/e;->a:Lco/ronash/pushe/task/a/d;

    invoke-virtual {v0}, Lco/ronash/pushe/task/a/d;->f()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_72

    invoke-interface {p1}, Lco/ronash/pushe/task/a/a;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/ronash/pushe/task/a/e;->a(Ljava/lang/Boolean;)Lco/ronash/pushe/task/a/e;

    :cond_72
    iget-object v0, p0, Lco/ronash/pushe/task/a/e;->a:Lco/ronash/pushe/task/a/d;

    invoke-virtual {v0}, Lco/ronash/pushe/task/a/d;->g()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_85

    invoke-interface {p1}, Lco/ronash/pushe/task/a/a;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/ronash/pushe/task/a/e;->b(Ljava/lang/Boolean;)Lco/ronash/pushe/task/a/e;

    :cond_85
    iget-object v0, p0, Lco/ronash/pushe/task/a/e;->a:Lco/ronash/pushe/task/a/d;

    invoke-virtual {v0}, Lco/ronash/pushe/task/a/d;->h()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_98

    invoke-interface {p1}, Lco/ronash/pushe/task/a/a;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/ronash/pushe/task/a/e;->c(Ljava/lang/Boolean;)Lco/ronash/pushe/task/a/e;

    :cond_98
    return-void
.end method

.method public a(Lco/ronash/pushe/task/a/d;)V
    .registers 3

    invoke-virtual {p1}, Lco/ronash/pushe/task/a/d;->a()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lco/ronash/pushe/task/a/d;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/ronash/pushe/task/a/e;->a(Ljava/lang/Long;)Lco/ronash/pushe/task/a/e;

    :cond_d
    invoke-virtual {p1}, Lco/ronash/pushe/task/a/d;->b()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Lco/ronash/pushe/task/a/d;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/ronash/pushe/task/a/e;->b(Ljava/lang/Long;)Lco/ronash/pushe/task/a/e;

    :cond_1a
    invoke-virtual {p1}, Lco/ronash/pushe/task/a/d;->c()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Lco/ronash/pushe/task/a/d;->c()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/ronash/pushe/task/a/e;->c(Ljava/lang/Long;)Lco/ronash/pushe/task/a/e;

    :cond_27
    invoke-virtual {p1}, Lco/ronash/pushe/task/a/d;->d()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-virtual {p1}, Lco/ronash/pushe/task/a/d;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/ronash/pushe/task/a/e;->d(Ljava/lang/Long;)Lco/ronash/pushe/task/a/e;

    :cond_34
    invoke-virtual {p1}, Lco/ronash/pushe/task/a/d;->e()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_41

    invoke-virtual {p1}, Lco/ronash/pushe/task/a/d;->e()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/ronash/pushe/task/a/e;->a(Ljava/lang/Integer;)Lco/ronash/pushe/task/a/e;

    :cond_41
    invoke-virtual {p1}, Lco/ronash/pushe/task/a/d;->f()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4e

    invoke-virtual {p1}, Lco/ronash/pushe/task/a/d;->f()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/ronash/pushe/task/a/e;->a(Ljava/lang/Boolean;)Lco/ronash/pushe/task/a/e;

    :cond_4e
    invoke-virtual {p1}, Lco/ronash/pushe/task/a/d;->g()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_5b

    invoke-virtual {p1}, Lco/ronash/pushe/task/a/d;->g()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/ronash/pushe/task/a/e;->b(Ljava/lang/Boolean;)Lco/ronash/pushe/task/a/e;

    :cond_5b
    invoke-virtual {p1}, Lco/ronash/pushe/task/a/d;->h()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_68

    invoke-virtual {p1}, Lco/ronash/pushe/task/a/d;->h()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/ronash/pushe/task/a/e;->c(Ljava/lang/Boolean;)Lco/ronash/pushe/task/a/e;

    :cond_68
    return-void
.end method

.method public b(Ljava/lang/Boolean;)Lco/ronash/pushe/task/a/e;
    .registers 3

    iget-object v0, p0, Lco/ronash/pushe/task/a/e;->a:Lco/ronash/pushe/task/a/d;

    invoke-static {v0, p1}, Lco/ronash/pushe/task/a/d;->b(Lco/ronash/pushe/task/a/d;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-object p0
.end method

.method public b(Ljava/lang/Long;)Lco/ronash/pushe/task/a/e;
    .registers 3

    iget-object v0, p0, Lco/ronash/pushe/task/a/e;->a:Lco/ronash/pushe/task/a/d;

    invoke-static {v0, p1}, Lco/ronash/pushe/task/a/d;->b(Lco/ronash/pushe/task/a/d;Ljava/lang/Long;)Ljava/lang/Long;

    return-object p0
.end method

.method public c(Ljava/lang/Boolean;)Lco/ronash/pushe/task/a/e;
    .registers 3

    iget-object v0, p0, Lco/ronash/pushe/task/a/e;->a:Lco/ronash/pushe/task/a/d;

    invoke-static {v0, p1}, Lco/ronash/pushe/task/a/d;->c(Lco/ronash/pushe/task/a/d;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-object p0
.end method

.method public c(Ljava/lang/Long;)Lco/ronash/pushe/task/a/e;
    .registers 3

    iget-object v0, p0, Lco/ronash/pushe/task/a/e;->a:Lco/ronash/pushe/task/a/d;

    invoke-static {v0, p1}, Lco/ronash/pushe/task/a/d;->c(Lco/ronash/pushe/task/a/d;Ljava/lang/Long;)Ljava/lang/Long;

    return-object p0
.end method

.method public d(Ljava/lang/Long;)Lco/ronash/pushe/task/a/e;
    .registers 3

    iget-object v0, p0, Lco/ronash/pushe/task/a/e;->a:Lco/ronash/pushe/task/a/d;

    invoke-static {v0, p1}, Lco/ronash/pushe/task/a/d;->d(Lco/ronash/pushe/task/a/d;Ljava/lang/Long;)Ljava/lang/Long;

    return-object p0
.end method
