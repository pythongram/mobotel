.class public final enum Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;
.super Ljava/lang/Enum;
.source "LocallyCachedStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;

.field public static final enum CACHED:Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;

.field public static final enum MAYBE_CACHED:Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;

.field public static final enum NOT_CACHED:Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;

    const-string v1, "CACHED"

    invoke-direct {v0, v1, v2}, Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;->CACHED:Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;

    .line 8
    new-instance v0, Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;

    const-string v1, "NOT_CACHED"

    invoke-direct {v0, v1, v3}, Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;->NOT_CACHED:Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;

    .line 9
    new-instance v0, Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;

    const-string v1, "MAYBE_CACHED"

    invoke-direct {v0, v1, v4}, Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;->MAYBE_CACHED:Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;

    sget-object v1, Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;->CACHED:Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;->NOT_CACHED:Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;->MAYBE_CACHED:Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;->$VALUES:[Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;

    return-object v0
.end method

.method public static values()[Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;->$VALUES:[Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;

    invoke-virtual {v0}, [Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/koushikdutta/ion/bitmap/LocallyCachedStatus;

    return-object v0
.end method
