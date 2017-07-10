.class public abstract Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse;
.super Ljava/lang/Object;
.source "SimpleAjaxtResponse.java"

# interfaces
.implements Lorg/telegram/ui/Membergram/api/listener/AjaxResponse;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/telegram/ui/Membergram/api/listener/AjaxResponse",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    .local p0, "this":Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse;, "Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .registers 3
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 30
    .local p0, "this":Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse;, "Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse<TT;>;"
    return-void
.end method

.method public onFinish()V
    .registers 1

    .prologue
    .line 21
    .local p0, "this":Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse;, "Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse<TT;>;"
    return-void
.end method

.method public onProgress(II)V
    .registers 3
    .param p1, "progress"    # I
    .param p2, "max"    # I

    .prologue
    .line 25
    .local p0, "this":Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse;, "Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse<TT;>;"
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 9
    .local p0, "this":Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse;, "Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse<TT;>;"
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse;, "Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse<TT;>;"
    .local p1, "response":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public onSuccess(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, "this":Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse;, "Lorg/telegram/ui/Membergram/api/listener/SimpleAjaxtResponse<TT;>;"
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    return-void
.end method
