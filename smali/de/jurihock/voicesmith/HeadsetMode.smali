.class public final enum Lde/jurihock/voicesmith/HeadsetMode;
.super Ljava/lang/Enum;
.source "HeadsetMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/jurihock/voicesmith/HeadsetMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/jurihock/voicesmith/HeadsetMode;

.field public static final enum BLUETOOTH_HEADSET:Lde/jurihock/voicesmith/HeadsetMode;

.field public static final enum WIRED_HEADPHONES:Lde/jurihock/voicesmith/HeadsetMode;

.field public static final enum WIRED_HEADSET:Lde/jurihock/voicesmith/HeadsetMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lde/jurihock/voicesmith/HeadsetMode;

    const-string v1, "WIRED_HEADPHONES"

    invoke-direct {v0, v1, v2}, Lde/jurihock/voicesmith/HeadsetMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/jurihock/voicesmith/HeadsetMode;->WIRED_HEADPHONES:Lde/jurihock/voicesmith/HeadsetMode;

    .line 26
    new-instance v0, Lde/jurihock/voicesmith/HeadsetMode;

    const-string v1, "WIRED_HEADSET"

    invoke-direct {v0, v1, v3}, Lde/jurihock/voicesmith/HeadsetMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/jurihock/voicesmith/HeadsetMode;->WIRED_HEADSET:Lde/jurihock/voicesmith/HeadsetMode;

    .line 27
    new-instance v0, Lde/jurihock/voicesmith/HeadsetMode;

    const-string v1, "BLUETOOTH_HEADSET"

    invoke-direct {v0, v1, v4}, Lde/jurihock/voicesmith/HeadsetMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/jurihock/voicesmith/HeadsetMode;->BLUETOOTH_HEADSET:Lde/jurihock/voicesmith/HeadsetMode;

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Lde/jurihock/voicesmith/HeadsetMode;

    sget-object v1, Lde/jurihock/voicesmith/HeadsetMode;->WIRED_HEADPHONES:Lde/jurihock/voicesmith/HeadsetMode;

    aput-object v1, v0, v2

    sget-object v1, Lde/jurihock/voicesmith/HeadsetMode;->WIRED_HEADSET:Lde/jurihock/voicesmith/HeadsetMode;

    aput-object v1, v0, v3

    sget-object v1, Lde/jurihock/voicesmith/HeadsetMode;->BLUETOOTH_HEADSET:Lde/jurihock/voicesmith/HeadsetMode;

    aput-object v1, v0, v4

    sput-object v0, Lde/jurihock/voicesmith/HeadsetMode;->$VALUES:[Lde/jurihock/voicesmith/HeadsetMode;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/jurihock/voicesmith/HeadsetMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lde/jurihock/voicesmith/HeadsetMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/jurihock/voicesmith/HeadsetMode;

    return-object v0
.end method

.method public static values()[Lde/jurihock/voicesmith/HeadsetMode;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lde/jurihock/voicesmith/HeadsetMode;->$VALUES:[Lde/jurihock/voicesmith/HeadsetMode;

    invoke-virtual {v0}, [Lde/jurihock/voicesmith/HeadsetMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/jurihock/voicesmith/HeadsetMode;

    return-object v0
.end method
