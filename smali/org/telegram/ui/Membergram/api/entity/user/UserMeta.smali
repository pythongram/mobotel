.class public Lorg/telegram/ui/Membergram/api/entity/user/UserMeta;
.super Ljava/lang/Object;
.source "UserMeta.java"


# instance fields
.field private code:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "code"
    .end annotation
.end field

.field private data:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasError()Ljava/lang/Boolean;
    .registers 3

    .prologue
    .line 28
    iget-object v0, p0, Lorg/telegram/ui/Membergram/api/entity/user/UserMeta;->code:Ljava/lang/String;

    const-string v1, "400"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isSuccess()Ljava/lang/Boolean;
    .registers 3

    .prologue
    .line 15
    iget-object v0, p0, Lorg/telegram/ui/Membergram/api/entity/user/UserMeta;->code:Ljava/lang/String;

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isTokenConsumed()Ljava/lang/Boolean;
    .registers 3

    .prologue
    .line 22
    iget-object v0, p0, Lorg/telegram/ui/Membergram/api/entity/user/UserMeta;->code:Ljava/lang/String;

    const-string v1, "401"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public purchaseNotVerify()Ljava/lang/Boolean;
    .registers 3

    .prologue
    .line 19
    iget-object v0, p0, Lorg/telegram/ui/Membergram/api/entity/user/UserMeta;->code:Ljava/lang/String;

    const-string v1, "403"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public tokenNotFound()Ljava/lang/Boolean;
    .registers 3

    .prologue
    .line 25
    iget-object v0, p0, Lorg/telegram/ui/Membergram/api/entity/user/UserMeta;->code:Ljava/lang/String;

    const-string v1, "402"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
