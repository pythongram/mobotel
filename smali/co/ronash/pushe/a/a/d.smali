.class public Lco/ronash/pushe/a/a/d;
.super Lco/ronash/pushe/a/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lco/ronash/pushe/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/a/a;
    .registers 4

    new-instance v0, Lco/ronash/pushe/a/a/c;

    invoke-direct {v0}, Lco/ronash/pushe/a/a/c;-><init>()V

    const-string v1, "android.intent.action.EDIT"

    iput-object v1, v0, Lco/ronash/pushe/a/a/c;->c:Ljava/lang/String;

    const-string v1, "com.farsitel.bazaar"

    iput-object v1, v0, Lco/ronash/pushe/a/a/c;->d:Ljava/lang/String;

    return-object v0
.end method
