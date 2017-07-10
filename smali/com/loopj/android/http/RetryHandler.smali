.class Lcom/loopj/android/http/RetryHandler;
.super Ljava/lang/Object;
.source "RetryHandler.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# static fields
.field private static final RETRY_SLEEP_TIME_MILLIS:I = 0x5dc

.field private static exceptionBlacklist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static exceptionWhitelist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final maxRetries:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/loopj/android/http/RetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/loopj/android/http/RetryHandler;->exceptionBlacklist:Ljava/util/HashSet;

    .line 50
    sget-object v0, Lcom/loopj/android/http/RetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    const-class v1, Lorg/apache/http/NoHttpResponseException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/loopj/android/http/RetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    const-class v1, Ljava/net/UnknownHostException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/loopj/android/http/RetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    const-class v1, Ljava/net/SocketException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/loopj/android/http/RetryHandler;->exceptionBlacklist:Ljava/util/HashSet;

    const-class v1, Ljava/io/InterruptedIOException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/loopj/android/http/RetryHandler;->exceptionBlacklist:Ljava/util/HashSet;

    const-class v1, Ljavax/net/ssl/SSLHandshakeException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lcom/loopj/android/http/RetryHandler;->maxRetries:I

    .line 66
    return-void
.end method


# virtual methods
.method protected isInList(Ljava/util/HashSet;Ljava/lang/Throwable;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 106
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 107
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 108
    const/4 v0, 0x1

    .line 111
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 69
    .line 71
    const-string v0, "http.request_sent"

    invoke-interface {p3, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 72
    if-eqz v0, :cond_36

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_36

    move v0, v1

    .line 74
    :goto_13
    iget v3, p0, Lcom/loopj/android/http/RetryHandler;->maxRetries:I

    if-le p2, v3, :cond_38

    move v0, v2

    .line 88
    :goto_18
    if-eqz v0, :cond_56

    .line 90
    const-string v0, "http.request"

    invoke-interface {p3, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;

    .line 91
    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 92
    const-string v3, "POST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 95
    :goto_2e
    if-eqz v1, :cond_52

    .line 96
    const-wide/16 v2, 0x5dc

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 101
    :goto_35
    return v1

    :cond_36
    move v0, v2

    .line 72
    goto :goto_13

    .line 77
    :cond_38
    sget-object v3, Lcom/loopj/android/http/RetryHandler;->exceptionBlacklist:Ljava/util/HashSet;

    invoke-virtual {p0, v3, p1}, Lcom/loopj/android/http/RetryHandler;->isInList(Ljava/util/HashSet;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_42

    move v0, v2

    .line 79
    goto :goto_18

    .line 80
    :cond_42
    sget-object v3, Lcom/loopj/android/http/RetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    invoke-virtual {p0, v3, p1}, Lcom/loopj/android/http/RetryHandler;->isInList(Ljava/util/HashSet;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_4c

    move v0, v1

    .line 82
    goto :goto_18

    .line 83
    :cond_4c
    if-nez v0, :cond_58

    move v0, v1

    .line 85
    goto :goto_18

    :cond_50
    move v1, v2

    .line 92
    goto :goto_2e

    .line 98
    :cond_52
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_35

    :cond_56
    move v1, v0

    goto :goto_2e

    :cond_58
    move v0, v1

    goto :goto_18
.end method
