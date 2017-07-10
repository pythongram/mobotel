.class public Lnet/vrallev/android/cat/instance/CatStaticClass;
.super Lnet/vrallev/android/cat/instance/CatLazy;
.source "CatStaticClass.java"


# instance fields
.field private final mClassTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mStripInnerClass:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/vrallev/android/cat/instance/CatStaticClass;-><init>(Z)V

    .line 18
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "stripInnerClass"    # Z

    .prologue
    .line 20
    invoke-direct {p0}, Lnet/vrallev/android/cat/instance/CatLazy;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/vrallev/android/cat/instance/CatStaticClass;->mClassTags:Ljava/util/Map;

    .line 22
    iput-boolean p1, p0, Lnet/vrallev/android/cat/instance/CatStaticClass;->mStripInnerClass:Z

    .line 23
    return-void
.end method


# virtual methods
.method public addMapping(Ljava/lang/Class;Ljava/lang/String;)Lnet/vrallev/android/cat/instance/CatStaticClass;
    .registers 5
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lnet/vrallev/android/cat/instance/CatStaticClass;"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lnet/vrallev/android/cat/instance/CatStaticClass;->mClassTags:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-object p0
.end method

.method protected getTag()Ljava/lang/String;
    .registers 4

    .prologue
    .line 32
    invoke-static {}, Lnet/vrallev/android/cat/CatUtil;->getCallingClassName()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "callingClassName":Ljava/lang/String;
    iget-boolean v2, p0, Lnet/vrallev/android/cat/instance/CatStaticClass;->mStripInnerClass:Z

    if-eqz v2, :cond_c

    .line 34
    invoke-static {v0}, Lnet/vrallev/android/cat/CatUtil;->stripInnerClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    :cond_c
    iget-object v2, p0, Lnet/vrallev/android/cat/instance/CatStaticClass;->mClassTags:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 38
    .local v1, "tag":Ljava/lang/String;
    if-nez v1, :cond_1a

    invoke-static {v0}, Lnet/vrallev/android/cat/CatUtil;->simpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "tag":Ljava/lang/String;
    :cond_1a
    return-object v1
.end method
