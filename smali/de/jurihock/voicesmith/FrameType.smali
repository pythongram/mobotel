.class public final enum Lde/jurihock/voicesmith/FrameType;
.super Ljava/lang/Enum;
.source "FrameType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/jurihock/voicesmith/FrameType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/jurihock/voicesmith/FrameType;

.field public static final enum Default:Lde/jurihock/voicesmith/FrameType;

.field public static final enum Large:Lde/jurihock/voicesmith/FrameType;

.field public static final enum Medium:Lde/jurihock/voicesmith/FrameType;

.field public static final enum Small:Lde/jurihock/voicesmith/FrameType;


# instance fields
.field public final ratio:D


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 23
    new-instance v0, Lde/jurihock/voicesmith/FrameType;

    const-string v1, "Large"

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-direct {v0, v1, v4, v2, v3}, Lde/jurihock/voicesmith/FrameType;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lde/jurihock/voicesmith/FrameType;->Large:Lde/jurihock/voicesmith/FrameType;

    .line 24
    new-instance v0, Lde/jurihock/voicesmith/FrameType;

    const-string v1, "Default"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v5, v2, v3}, Lde/jurihock/voicesmith/FrameType;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lde/jurihock/voicesmith/FrameType;->Default:Lde/jurihock/voicesmith/FrameType;

    .line 25
    new-instance v0, Lde/jurihock/voicesmith/FrameType;

    const-string v1, "Medium"

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-direct {v0, v1, v6, v2, v3}, Lde/jurihock/voicesmith/FrameType;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lde/jurihock/voicesmith/FrameType;->Medium:Lde/jurihock/voicesmith/FrameType;

    .line 26
    new-instance v0, Lde/jurihock/voicesmith/FrameType;

    const-string v1, "Small"

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    invoke-direct {v0, v1, v7, v2, v3}, Lde/jurihock/voicesmith/FrameType;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lde/jurihock/voicesmith/FrameType;->Small:Lde/jurihock/voicesmith/FrameType;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lde/jurihock/voicesmith/FrameType;

    sget-object v1, Lde/jurihock/voicesmith/FrameType;->Large:Lde/jurihock/voicesmith/FrameType;

    aput-object v1, v0, v4

    sget-object v1, Lde/jurihock/voicesmith/FrameType;->Default:Lde/jurihock/voicesmith/FrameType;

    aput-object v1, v0, v5

    sget-object v1, Lde/jurihock/voicesmith/FrameType;->Medium:Lde/jurihock/voicesmith/FrameType;

    aput-object v1, v0, v6

    sget-object v1, Lde/jurihock/voicesmith/FrameType;->Small:Lde/jurihock/voicesmith/FrameType;

    aput-object v1, v0, v7

    sput-object v0, Lde/jurihock/voicesmith/FrameType;->$VALUES:[Lde/jurihock/voicesmith/FrameType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ID)V
    .registers 6
    .param p3, "ratio"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-wide p3, p0, Lde/jurihock/voicesmith/FrameType;->ratio:D

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/jurihock/voicesmith/FrameType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lde/jurihock/voicesmith/FrameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/jurihock/voicesmith/FrameType;

    return-object v0
.end method

.method public static values()[Lde/jurihock/voicesmith/FrameType;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lde/jurihock/voicesmith/FrameType;->$VALUES:[Lde/jurihock/voicesmith/FrameType;

    invoke-virtual {v0}, [Lde/jurihock/voicesmith/FrameType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/jurihock/voicesmith/FrameType;

    return-object v0
.end method
