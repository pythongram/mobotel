.class public Lcom/koushikdutta/async/AsyncSSLException;
.super Ljava/lang/Exception;
.source "AsyncSSLException.java"


# instance fields
.field private mIgnore:Z


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 5
    const-string v0, "Peer not trusted by any of the system trust managers."

    invoke-direct {p0, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncSSLException;->mIgnore:Z

    .line 6
    return-void
.end method


# virtual methods
.method public getIgnore()Z
    .registers 2

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncSSLException;->mIgnore:Z

    return v0
.end method

.method public setIgnore(Z)V
    .registers 2
    .param p1, "ignore"    # Z

    .prologue
    .line 9
    iput-boolean p1, p0, Lcom/koushikdutta/async/AsyncSSLException;->mIgnore:Z

    .line 10
    return-void
.end method
