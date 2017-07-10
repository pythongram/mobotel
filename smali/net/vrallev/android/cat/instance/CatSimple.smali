.class public Lnet/vrallev/android/cat/instance/CatSimple;
.super Lnet/vrallev/android/cat/CatLog;
.source "CatSimple.java"


# instance fields
.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/vrallev/android/cat/instance/CatSimple;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Lnet/vrallev/android/cat/CatLog;-><init>()V

    .line 18
    if-nez p1, :cond_7

    const-string p1, ""

    .end local p1    # "tag":Ljava/lang/String;
    :cond_7
    iput-object p1, p0, Lnet/vrallev/android/cat/instance/CatSimple;->mTag:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lnet/vrallev/android/cat/instance/CatSimple;->mTag:Ljava/lang/String;

    return-object v0
.end method
