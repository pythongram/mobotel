.class final Lcom/koushikdutta/async/future/SimpleCancellable$1;
.super Lcom/koushikdutta/async/future/SimpleCancellable;
.source "SimpleCancellable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/future/SimpleCancellable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    .line 76
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleCancellable$1;->setComplete()Z

    .line 77
    return-void
.end method


# virtual methods
.method public bridge synthetic setParent(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/DependentCancellable;
    .registers 3
    .param p1, "x0"    # Lcom/koushikdutta/async/future/Cancellable;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/koushikdutta/async/future/SimpleCancellable;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/SimpleCancellable;

    move-result-object v0

    return-object v0
.end method
