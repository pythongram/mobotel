.class public final Lde/jurihock/voicesmith/dsp/LuenbergerObserver;
.super Ljava/lang/Object;
.source "LuenbergerObserver.java"


# instance fields
.field private final gain:[F

.field private value:F

.field private velocity:F


# direct methods
.method public constructor <init>(FF[F)V
    .registers 4
    .param p1, "value"    # F
    .param p2, "velocity"    # F
    .param p3, "gain"    # [F

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lde/jurihock/voicesmith/dsp/LuenbergerObserver;->value:F

    .line 29
    iput p2, p0, Lde/jurihock/voicesmith/dsp/LuenbergerObserver;->velocity:F

    .line 30
    iput-object p3, p0, Lde/jurihock/voicesmith/dsp/LuenbergerObserver;->gain:[F

    .line 31
    return-void
.end method

.method private correct(F)F
    .registers 7
    .param p1, "newValue"    # F

    .prologue
    .line 38
    invoke-direct {p0}, Lde/jurihock/voicesmith/dsp/LuenbergerObserver;->predict()F

    move-result v1

    .line 39
    .local v1, "prediction":F
    iget v2, p0, Lde/jurihock/voicesmith/dsp/LuenbergerObserver;->value:F

    sub-float v0, p1, v2

    .line 41
    .local v0, "error":F
    iget-object v2, p0, Lde/jurihock/voicesmith/dsp/LuenbergerObserver;->gain:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v2, v1

    iput v2, p0, Lde/jurihock/voicesmith/dsp/LuenbergerObserver;->value:F

    .line 42
    iget v2, p0, Lde/jurihock/voicesmith/dsp/LuenbergerObserver;->velocity:F

    iget-object v3, p0, Lde/jurihock/voicesmith/dsp/LuenbergerObserver;->gain:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, p0, Lde/jurihock/voicesmith/dsp/LuenbergerObserver;->velocity:F

    .line 44
    iget v2, p0, Lde/jurihock/voicesmith/dsp/LuenbergerObserver;->value:F

    return v2
.end method

.method private predict()F
    .registers 3

    .prologue
    .line 34
    iget v0, p0, Lde/jurihock/voicesmith/dsp/LuenbergerObserver;->value:F

    iget v1, p0, Lde/jurihock/voicesmith/dsp/LuenbergerObserver;->velocity:F

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public smooth(F)F
    .registers 3
    .param p1, "newValue"    # F

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lde/jurihock/voicesmith/dsp/LuenbergerObserver;->correct(F)F

    .line 49
    invoke-direct {p0}, Lde/jurihock/voicesmith/dsp/LuenbergerObserver;->predict()F

    move-result v0

    return v0
.end method
