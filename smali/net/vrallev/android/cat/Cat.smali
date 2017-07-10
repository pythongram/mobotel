.class public final Lnet/vrallev/android/cat/Cat;
.super Ljava/lang/Object;
.source "Cat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-static {}, Lnet/vrallev/android/cat/CatGlobal;->getDefaultCatLog()Lnet/vrallev/android/cat/CatLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/vrallev/android/cat/CatLog;->d(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 18
    invoke-static {}, Lnet/vrallev/android/cat/CatGlobal;->getDefaultCatLog()Lnet/vrallev/android/cat/CatLog;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lnet/vrallev/android/cat/CatLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    return-void
.end method

.method public static varargs d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 22
    invoke-static {}, Lnet/vrallev/android/cat/CatGlobal;->getDefaultCatLog()Lnet/vrallev/android/cat/CatLog;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lnet/vrallev/android/cat/CatLog;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {}, Lnet/vrallev/android/cat/CatGlobal;->getDefaultCatLog()Lnet/vrallev/android/cat/CatLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 62
    invoke-static {}, Lnet/vrallev/android/cat/CatGlobal;->getDefaultCatLog()Lnet/vrallev/android/cat/CatLog;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .registers 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 54
    invoke-static {}, Lnet/vrallev/android/cat/CatGlobal;->getDefaultCatLog()Lnet/vrallev/android/cat/CatLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/Throwable;)V

    .line 55
    return-void
.end method

.method public static varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 66
    invoke-static {}, Lnet/vrallev/android/cat/CatGlobal;->getDefaultCatLog()Lnet/vrallev/android/cat/CatLog;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-static {}, Lnet/vrallev/android/cat/CatGlobal;->getDefaultCatLog()Lnet/vrallev/android/cat/CatLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/vrallev/android/cat/CatLog;->i(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 30
    invoke-static {}, Lnet/vrallev/android/cat/CatGlobal;->getDefaultCatLog()Lnet/vrallev/android/cat/CatLog;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lnet/vrallev/android/cat/CatLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public static varargs i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 34
    invoke-static {}, Lnet/vrallev/android/cat/CatGlobal;->getDefaultCatLog()Lnet/vrallev/android/cat/CatLog;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lnet/vrallev/android/cat/CatLog;->i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-static {}, Lnet/vrallev/android/cat/CatGlobal;->getDefaultCatLog()Lnet/vrallev/android/cat/CatLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/vrallev/android/cat/CatLog;->v(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 74
    invoke-static {}, Lnet/vrallev/android/cat/CatGlobal;->getDefaultCatLog()Lnet/vrallev/android/cat/CatLog;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lnet/vrallev/android/cat/CatLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method public static varargs v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 78
    invoke-static {}, Lnet/vrallev/android/cat/CatGlobal;->getDefaultCatLog()Lnet/vrallev/android/cat/CatLog;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lnet/vrallev/android/cat/CatLog;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {}, Lnet/vrallev/android/cat/CatGlobal;->getDefaultCatLog()Lnet/vrallev/android/cat/CatLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/vrallev/android/cat/CatLog;->w(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 42
    invoke-static {}, Lnet/vrallev/android/cat/CatGlobal;->getDefaultCatLog()Lnet/vrallev/android/cat/CatLog;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lnet/vrallev/android/cat/CatLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public static w(Ljava/lang/Throwable;)V
    .registers 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 50
    invoke-static {}, Lnet/vrallev/android/cat/CatGlobal;->getDefaultCatLog()Lnet/vrallev/android/cat/CatLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/vrallev/android/cat/CatLog;->w(Ljava/lang/Throwable;)V

    .line 51
    return-void
.end method

.method public static varargs w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 46
    invoke-static {}, Lnet/vrallev/android/cat/CatGlobal;->getDefaultCatLog()Lnet/vrallev/android/cat/CatLog;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lnet/vrallev/android/cat/CatLog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    return-void
.end method
