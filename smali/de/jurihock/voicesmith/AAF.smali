.class public final enum Lde/jurihock/voicesmith/AAF;
.super Ljava/lang/Enum;
.source "AAF.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/jurihock/voicesmith/AAF;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/jurihock/voicesmith/AAF;

.field public static final enum DAF:Lde/jurihock/voicesmith/AAF;

.field public static final enum FAF:Lde/jurihock/voicesmith/AAF;

.field public static final enum UnprocessedFeedback:Lde/jurihock/voicesmith/AAF;

.field private static final aafValues:[Lde/jurihock/voicesmith/AAF;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lde/jurihock/voicesmith/AAF;

    const-string v1, "FAF"

    invoke-direct {v0, v1, v2}, Lde/jurihock/voicesmith/AAF;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/jurihock/voicesmith/AAF;->FAF:Lde/jurihock/voicesmith/AAF;

    .line 35
    new-instance v0, Lde/jurihock/voicesmith/AAF;

    const-string v1, "DAF"

    invoke-direct {v0, v1, v3}, Lde/jurihock/voicesmith/AAF;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/jurihock/voicesmith/AAF;->DAF:Lde/jurihock/voicesmith/AAF;

    .line 41
    new-instance v0, Lde/jurihock/voicesmith/AAF;

    const-string v1, "UnprocessedFeedback"

    invoke-direct {v0, v1, v4}, Lde/jurihock/voicesmith/AAF;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/jurihock/voicesmith/AAF;->UnprocessedFeedback:Lde/jurihock/voicesmith/AAF;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lde/jurihock/voicesmith/AAF;

    sget-object v1, Lde/jurihock/voicesmith/AAF;->FAF:Lde/jurihock/voicesmith/AAF;

    aput-object v1, v0, v2

    sget-object v1, Lde/jurihock/voicesmith/AAF;->DAF:Lde/jurihock/voicesmith/AAF;

    aput-object v1, v0, v3

    sget-object v1, Lde/jurihock/voicesmith/AAF;->UnprocessedFeedback:Lde/jurihock/voicesmith/AAF;

    aput-object v1, v0, v4

    sput-object v0, Lde/jurihock/voicesmith/AAF;->$VALUES:[Lde/jurihock/voicesmith/AAF;

    .line 43
    invoke-static {}, Lde/jurihock/voicesmith/AAF;->values()[Lde/jurihock/voicesmith/AAF;

    move-result-object v0

    sput-object v0, Lde/jurihock/voicesmith/AAF;->aafValues:[Lde/jurihock/voicesmith/AAF;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static count()I
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lde/jurihock/voicesmith/AAF;->aafValues:[Lde/jurihock/voicesmith/AAF;

    array-length v0, v0

    return v0
.end method

.method public static valueOf(I)Lde/jurihock/voicesmith/AAF;
    .registers 2
    .param p0, "aafIndex"    # I

    .prologue
    .line 52
    sget-object v0, Lde/jurihock/voicesmith/AAF;->aafValues:[Lde/jurihock/voicesmith/AAF;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lde/jurihock/voicesmith/AAF;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lde/jurihock/voicesmith/AAF;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/jurihock/voicesmith/AAF;

    return-object v0
.end method

.method public static values()[Lde/jurihock/voicesmith/AAF;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lde/jurihock/voicesmith/AAF;->$VALUES:[Lde/jurihock/voicesmith/AAF;

    invoke-virtual {v0}, [Lde/jurihock/voicesmith/AAF;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/jurihock/voicesmith/AAF;

    return-object v0
.end method
