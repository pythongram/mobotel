.class public Lnet/vrallev/android/cat/instance/CatEmpty;
.super Lnet/vrallev/android/cat/CatLog;
.source "CatEmpty.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lnet/vrallev/android/cat/CatLog;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 18
    return-void
.end method

.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 23
    return-void
.end method

.method public varargs d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 28
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 73
    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 78
    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 68
    return-void
.end method

.method public varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 83
    return-void
.end method

.method protected getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 12
    const/4 v0, 0x0

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 33
    return-void
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 38
    return-void
.end method

.method public varargs i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 43
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 88
    return-void
.end method

.method public varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 93
    return-void
.end method

.method public varargs v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 98
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 48
    return-void
.end method

.method public varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 53
    return-void
.end method

.method public w(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 63
    return-void
.end method

.method public varargs w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 58
    return-void
.end method
