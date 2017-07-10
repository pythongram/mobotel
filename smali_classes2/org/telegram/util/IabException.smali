.class public Lorg/telegram/util/IabException;
.super Ljava/lang/Exception;
.source "IabException.java"


# instance fields
.field mResult:Lorg/telegram/util/IabResult;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "response"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v0, Lorg/telegram/util/IabResult;

    invoke-direct {v0, p1, p2}, Lorg/telegram/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/telegram/util/IabException;-><init>(Lorg/telegram/util/IabResult;)V

    .line 32
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 5
    .param p1, "response"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 38
    new-instance v0, Lorg/telegram/util/IabResult;

    invoke-direct {v0, p1, p2}, Lorg/telegram/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lorg/telegram/util/IabException;-><init>(Lorg/telegram/util/IabResult;Ljava/lang/Exception;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/telegram/util/IabResult;)V
    .registers 3
    .param p1, "r"    # Lorg/telegram/util/IabResult;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/util/IabException;-><init>(Lorg/telegram/util/IabResult;Ljava/lang/Exception;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/telegram/util/IabResult;Ljava/lang/Exception;)V
    .registers 4
    .param p1, "r"    # Lorg/telegram/util/IabResult;
    .param p2, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 34
    invoke-virtual {p1}, Lorg/telegram/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    iput-object p1, p0, Lorg/telegram/util/IabException;->mResult:Lorg/telegram/util/IabResult;

    .line 36
    return-void
.end method


# virtual methods
.method public getResult()Lorg/telegram/util/IabResult;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lorg/telegram/util/IabException;->mResult:Lorg/telegram/util/IabResult;

    return-object v0
.end method
