.class public Lco/ronash/pushe/h/a/q;
.super Ljava/lang/Object;


# instance fields
.field private a:Lco/ronash/pushe/a/a;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lco/ronash/pushe/a/a;
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/h/a/q;->a:Lco/ronash/pushe/a/a;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lco/ronash/pushe/h/a/q;->d:I

    return-void
.end method

.method public a(Lco/ronash/pushe/a/a;)V
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/h/a/q;->a:Lco/ronash/pushe/a/a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/h/a/q;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/h/a/q;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lco/ronash/pushe/h/a/q;->e:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/h/a/q;->c:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lco/ronash/pushe/h/a/q;->d:I

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lco/ronash/pushe/h/a/q;->e:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lco/ronash/pushe/h/a/q;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lco/ronash/pushe/k/l;
    .registers 4

    new-instance v0, Lco/ronash/pushe/k/l;

    invoke-direct {v0}, Lco/ronash/pushe/k/l;-><init>()V

    const-string v1, "btn_id"

    iget v2, p0, Lco/ronash/pushe/h/a/q;->e:I

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string v1, "btn_order"

    iget v2, p0, Lco/ronash/pushe/h/a/q;->d:I

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;I)V

    const-string v1, "big_content"

    iget-object v2, p0, Lco/ronash/pushe/h/a/q;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "btn_icon"

    iget-object v2, p0, Lco/ronash/pushe/h/a/q;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lco/ronash/pushe/h/a/q;->a:Lco/ronash/pushe/a/a;

    if-eqz v1, :cond_30

    const-string v1, "btn_action"

    iget-object v2, p0, Lco/ronash/pushe/h/a/q;->a:Lco/ronash/pushe/a/a;

    invoke-virtual {v2}, Lco/ronash/pushe/a/a;->b()Lco/ronash/pushe/k/l;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/l;)V

    :cond_30
    return-object v0
.end method
