.class public Lco/ronash/pushe/a/a/i;
.super Lco/ronash/pushe/a/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lco/ronash/pushe/a/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lco/ronash/pushe/a/a/i;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/a/a/i;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lco/ronash/pushe/a/a/i;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lco/ronash/pushe/a/a/i;->a:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()Lco/ronash/pushe/a/c;
    .registers 2

    sget-object v0, Lco/ronash/pushe/a/c;->i:Lco/ronash/pushe/a/c;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lco/ronash/pushe/activities/WebviewActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "url"

    iget-object v2, p0, Lco/ronash/pushe/a/a/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "co.ronash.pushe.SHOW_WEBVIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Lco/ronash/pushe/a/a/l;

    invoke-direct {v0}, Lco/ronash/pushe/a/a/l;-><init>()V

    iget-object v1, p0, Lco/ronash/pushe/a/a/i;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lco/ronash/pushe/a/a/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public b()Lco/ronash/pushe/k/l;
    .registers 4

    invoke-super {p0}, Lco/ronash/pushe/a/a;->b()Lco/ronash/pushe/k/l;

    move-result-object v0

    const-string v1, "url"

    iget-object v2, p0, Lco/ronash/pushe/a/a/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dl_url"

    iget-object v2, p0, Lco/ronash/pushe/a/a/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
