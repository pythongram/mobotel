.class public enum Lcom/koushikdutta/async/http/Protocol;
.super Ljava/lang/Enum;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/koushikdutta/async/http/Protocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/koushikdutta/async/http/Protocol;

.field public static final enum HTTP_1_0:Lcom/koushikdutta/async/http/Protocol;

.field public static final enum HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

.field public static final enum HTTP_2:Lcom/koushikdutta/async/http/Protocol;

.field public static final enum SPDY_3:Lcom/koushikdutta/async/http/Protocol;

.field private static final protocols:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/Protocol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final protocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/koushikdutta/async/http/Protocol;

    const-string v1, "HTTP_1_0"

    const-string v2, "http/1.0"

    invoke-direct {v0, v1, v3, v2}, Lcom/koushikdutta/async/http/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_0:Lcom/koushikdutta/async/http/Protocol;

    .line 31
    new-instance v0, Lcom/koushikdutta/async/http/Protocol;

    const-string v1, "HTTP_1_1"

    const-string v2, "http/1.1"

    invoke-direct {v0, v1, v4, v2}, Lcom/koushikdutta/async/http/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

    .line 43
    new-instance v0, Lcom/koushikdutta/async/http/Protocol$1;

    const-string v1, "SPDY_3"

    const-string v2, "spdy/3.1"

    invoke-direct {v0, v1, v5, v2}, Lcom/koushikdutta/async/http/Protocol$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/koushikdutta/async/http/Protocol;->SPDY_3:Lcom/koushikdutta/async/http/Protocol;

    .line 62
    new-instance v0, Lcom/koushikdutta/async/http/Protocol$2;

    const-string v1, "HTTP_2"

    const-string v2, "h2-13"

    invoke-direct {v0, v1, v6, v2}, Lcom/koushikdutta/async/http/Protocol$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/koushikdutta/async/http/Protocol;->HTTP_2:Lcom/koushikdutta/async/http/Protocol;

    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/koushikdutta/async/http/Protocol;

    sget-object v1, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_0:Lcom/koushikdutta/async/http/Protocol;

    aput-object v1, v0, v3

    sget-object v1, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

    aput-object v1, v0, v4

    sget-object v1, Lcom/koushikdutta/async/http/Protocol;->SPDY_3:Lcom/koushikdutta/async/http/Protocol;

    aput-object v1, v0, v5

    sget-object v1, Lcom/koushikdutta/async/http/Protocol;->HTTP_2:Lcom/koushikdutta/async/http/Protocol;

    aput-object v1, v0, v6

    sput-object v0, Lcom/koushikdutta/async/http/Protocol;->$VALUES:[Lcom/koushikdutta/async/http/Protocol;

    .line 70
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/http/Protocol;->protocols:Ljava/util/Hashtable;

    .line 73
    sget-object v0, Lcom/koushikdutta/async/http/Protocol;->protocols:Ljava/util/Hashtable;

    sget-object v1, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_0:Lcom/koushikdutta/async/http/Protocol;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/Protocol;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_0:Lcom/koushikdutta/async/http/Protocol;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/koushikdutta/async/http/Protocol;->protocols:Ljava/util/Hashtable;

    sget-object v1, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/Protocol;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/koushikdutta/async/http/Protocol;->protocols:Ljava/util/Hashtable;

    sget-object v1, Lcom/koushikdutta/async/http/Protocol;->SPDY_3:Lcom/koushikdutta/async/http/Protocol;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/Protocol;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/koushikdutta/async/http/Protocol;->SPDY_3:Lcom/koushikdutta/async/http/Protocol;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/koushikdutta/async/http/Protocol;->protocols:Ljava/util/Hashtable;

    sget-object v1, Lcom/koushikdutta/async/http/Protocol;->HTTP_2:Lcom/koushikdutta/async/http/Protocol;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/Protocol;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/koushikdutta/async/http/Protocol;->HTTP_2:Lcom/koushikdutta/async/http/Protocol;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    iput-object p3, p0, Lcom/koushikdutta/async/http/Protocol;->protocol:Ljava/lang/String;

    .line 82
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/koushikdutta/async/http/Protocol$1;)V
    .registers 5
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/koushikdutta/async/http/Protocol$1;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/http/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/koushikdutta/async/http/Protocol;
    .registers 3
    .param p0, "protocol"    # Ljava/lang/String;

    .prologue
    .line 88
    if-nez p0, :cond_4

    .line 89
    const/4 v0, 0x0

    .line 90
    :goto_3
    return-object v0

    :cond_4
    sget-object v0, Lcom/koushikdutta/async/http/Protocol;->protocols:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/Protocol;

    goto :goto_3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/koushikdutta/async/http/Protocol;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/koushikdutta/async/http/Protocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/Protocol;

    return-object v0
.end method

.method public static values()[Lcom/koushikdutta/async/http/Protocol;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/koushikdutta/async/http/Protocol;->$VALUES:[Lcom/koushikdutta/async/http/Protocol;

    invoke-virtual {v0}, [Lcom/koushikdutta/async/http/Protocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/koushikdutta/async/http/Protocol;

    return-object v0
.end method


# virtual methods
.method public needsSpdyConnection()Z
    .registers 2

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/koushikdutta/async/http/Protocol;->protocol:Ljava/lang/String;

    return-object v0
.end method
