.class public Lcom/koushikdutta/async/http/filter/PrematureDataEndException;
.super Ljava/lang/Exception;
.source "PrematureDataEndException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
.end method
