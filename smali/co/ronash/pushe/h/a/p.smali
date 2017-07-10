.class public Lco/ronash/pushe/h/a/p;
.super Lco/ronash/pushe/h/a/u;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lco/ronash/pushe/a/a;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:Ljava/util/List;

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Lco/ronash/pushe/k/l;

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Z

.field private y:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lco/ronash/pushe/h/a/u;-><init>()V

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/h/a/p;->v:Ljava/lang/String;

    return-object v0
.end method

.method public B()Z
    .registers 2

    iget-boolean v0, p0, Lco/ronash/pushe/h/a/p;->w:Z

    return v0
.end method

.method public C()Z
    .registers 2

    iget-boolean v0, p0, Lco/ronash/pushe/h/a/p;->x:Z

    return v0
.end method

.method public D()Z
    .registers 2

    iget-boolean v0, p0, Lco/ronash/pushe/h/a/p;->y:Z

    return v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lco/ronash/pushe/h/a/p;->g:I

    return-void
.end method

.method public a(Lco/ronash/pushe/a/a;)V
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/h/a/p;->f:Lco/ronash/pushe/a/a;

    return-void
.end method

.method public a(Lco/ronash/pushe/k/l;)V
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/h/a/p;->s:Lco/ronash/pushe/k/l;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/h/a/p;->o:Ljava/util/List;

    return-void
.end method

.method public b()Lco/ronash/pushe/k/l;
    .registers 5

    invoke-super {p0}, Lco/ronash/pushe/h/a/u;->b()Lco/ronash/pushe/k/l;

    move-result-object v1

    const-string v0, "title"

    iget-object v2, p0, Lco/ronash/pushe/h/a/p;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "content"

    iget-object v2, p0, Lco/ronash/pushe/h/a/p;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "big_title"

    iget-object v2, p0, Lco/ronash/pushe/h/a/p;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "big_content"

    iget-object v2, p0, Lco/ronash/pushe/h/a/p;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "summary"

    iget-object v2, p0, Lco/ronash/pushe/h/a/p;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lco/ronash/pushe/h/a/p;->f:Lco/ronash/pushe/a/a;

    if-eqz v0, :cond_36

    const-string v0, "action"

    iget-object v2, p0, Lco/ronash/pushe/h/a/p;->f:Lco/ronash/pushe/a/a;

    invoke-virtual {v2}, Lco/ronash/pushe/a/a;->b()Lco/ronash/pushe/k/l;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V

    :cond_36
    const-string v0, "priority"

    iget v2, p0, Lco/ronash/pushe/h/a/p;->g:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "icon"

    iget-object v2, p0, Lco/ronash/pushe/h/a/p;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image"

    iget-object v2, p0, Lco/ronash/pushe/h/a/p;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "big_icon"

    iget-object v2, p0, Lco/ronash/pushe/h/a/p;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "led_color"

    iget v2, p0, Lco/ronash/pushe/h/a/p;->l:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "led_on"

    iget v2, p0, Lco/ronash/pushe/h/a/p;->m:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "led_off"

    iget v2, p0, Lco/ronash/pushe/h/a/p;->n:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "use_pushe_mini_icon"

    iget-boolean v2, p0, Lco/ronash/pushe/h/a/p;->k:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "wake_screen"

    iget-boolean v2, p0, Lco/ronash/pushe/h/a/p;->p:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ticker"

    iget-object v2, p0, Lco/ronash/pushe/h/a/p;->q:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "custom_content"

    iget-object v2, p0, Lco/ronash/pushe/h/a/p;->s:Lco/ronash/pushe/k/l;

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V

    const-string v0, "show_app"

    iget-boolean v2, p0, Lco/ronash/pushe/h/a/p;->t:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bg_url"

    iget-object v2, p0, Lco/ronash/pushe/h/a/p;->u:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lco/ronash/pushe/h/a/p;->o:Ljava/util/List;

    if-eqz v0, :cond_d5

    new-instance v2, Lco/ronash/pushe/k/d;

    invoke-direct {v2}, Lco/ronash/pushe/k/d;-><init>()V

    iget-object v0, p0, Lco/ronash/pushe/h/a/p;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_bc
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/ronash/pushe/h/a/q;

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/q;->f()Lco/ronash/pushe/k/l;

    move-result-object v0

    invoke-virtual {v2, v0}, Lco/ronash/pushe/k/d;->a(Lco/ronash/pushe/k/l;)V

    goto :goto_bc

    :cond_d0
    const-string v0, "buttons"

    invoke-virtual {v1, v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/d;)V

    :cond_d5
    return-object v1
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lco/ronash/pushe/h/a/p;->l:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/h/a/p;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lco/ronash/pushe/h/a/p;->k:Z

    return-void
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lco/ronash/pushe/h/a/p;->m:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/h/a/p;->b:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .registers 2

    iput-boolean p1, p0, Lco/ronash/pushe/h/a/p;->p:Z

    return-void
.end method

.method public d()Lco/ronash/pushe/h/a/j;
    .registers 2

    sget-object v0, Lco/ronash/pushe/h/a/j;->a:Lco/ronash/pushe/h/a/j;

    return-object v0
.end method

.method public d(I)V
    .registers 2

    iput p1, p0, Lco/ronash/pushe/h/a/p;->n:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/h/a/p;->c:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .registers 2

    iput-boolean p1, p0, Lco/ronash/pushe/h/a/p;->t:Z

    return-void
.end method

.method public e()Lco/ronash/pushe/a/a;
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/h/a/p;->f:Lco/ronash/pushe/a/a;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/h/a/p;->d:Ljava/lang/String;

    return-void
.end method

.method public e(Z)V
    .registers 2

    iput-boolean p1, p0, Lco/ronash/pushe/h/a/p;->w:Z

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/h/a/p;->e:Ljava/lang/String;

    return-void
.end method

.method public f(Z)V
    .registers 2

    iput-boolean p1, p0, Lco/ronash/pushe/h/a/p;->x:Z

    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/h/a/p;->a:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/h/a/p;->h:Ljava/lang/String;

    return-void
.end method

.method public g(Z)V
    .registers 2

    iput-boolean p1, p0, Lco/ronash/pushe/h/a/p;->y:Z

    return-void
.end method

.method public h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/h/a/p;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/h/a/p;->i:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/h/a/p;->c:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/h/a/p;->j:Ljava/lang/String;

    return-void
.end method

.method public j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/h/a/p;->d:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/h/a/p;->q:Ljava/lang/String;

    return-void
.end method

.method public k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/h/a/p;->e:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/h/a/p;->r:Ljava/lang/String;

    return-void
.end method

.method public l()I
    .registers 2

    iget v0, p0, Lco/ronash/pushe/h/a/p;->g:I

    return v0
.end method

.method public l(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/h/a/p;->u:Ljava/lang/String;

    return-void
.end method

.method public m()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/h/a/p;->o:Ljava/util/List;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/h/a/p;->v:Ljava/lang/String;

    return-void
.end method

.method public n()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/h/a/p;->h:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/h/a/p;->i:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/h/a/p;->j:Ljava/lang/String;

    return-object v0
.end method

.method public q()I
    .registers 2

    iget v0, p0, Lco/ronash/pushe/h/a/p;->l:I

    return v0
.end method

.method public r()I
    .registers 2

    iget v0, p0, Lco/ronash/pushe/h/a/p;->m:I

    return v0
.end method

.method public s()I
    .registers 2

    iget v0, p0, Lco/ronash/pushe/h/a/p;->n:I

    return v0
.end method

.method public t()Z
    .registers 2

    iget-boolean v0, p0, Lco/ronash/pushe/h/a/p;->k:Z

    return v0
.end method

.method public u()Z
    .registers 2

    iget-boolean v0, p0, Lco/ronash/pushe/h/a/p;->p:Z

    return v0
.end method

.method public v()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/h/a/p;->q:Ljava/lang/String;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/h/a/p;->r:Ljava/lang/String;

    return-object v0
.end method

.method public x()Lco/ronash/pushe/k/l;
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/h/a/p;->s:Lco/ronash/pushe/k/l;

    return-object v0
.end method

.method public y()Z
    .registers 2

    iget-boolean v0, p0, Lco/ronash/pushe/h/a/p;->t:Z

    return v0
.end method

.method public z()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/h/a/p;->u:Ljava/lang/String;

    return-object v0
.end method
