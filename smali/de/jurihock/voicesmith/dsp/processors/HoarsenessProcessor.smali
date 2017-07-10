.class public final Lde/jurihock/voicesmith/dsp/processors/HoarsenessProcessor;
.super Ljava/lang/Object;
.source "HoarsenessProcessor.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static processFrame([F)V
    .registers 9
    .param p0, "frame"    # [F

    .prologue
    .line 32
    array-length v6, p0

    div-int/lit8 v1, v6, 0x2

    .line 35
    .local v1, "fftSize":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_4
    if-ge v2, v1, :cond_33

    .line 38
    mul-int/lit8 v6, v2, 0x2

    aget v5, p0, v6

    .line 39
    .local v5, "re":F
    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    aget v3, p0, v6

    .line 40
    .local v3, "im":F
    invoke-static {v5, v3}, Lde/jurihock/voicesmith/dsp/Math;->abs(FF)F

    move-result v0

    .line 43
    .local v0, "abs":F
    const v6, -0x3fb6f025

    const v7, 0x40490fdb    # (float)Math.PI

    invoke-static {v6, v7}, Lde/jurihock/voicesmith/dsp/Math;->random(FF)F

    move-result v4

    .line 46
    .local v4, "phase":F
    mul-int/lit8 v6, v2, 0x2

    invoke-static {v0, v4}, Lde/jurihock/voicesmith/dsp/Math;->real(FF)F

    move-result v7

    aput v7, p0, v6

    .line 47
    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-static {v0, v4}, Lde/jurihock/voicesmith/dsp/Math;->imag(FF)F

    move-result v7

    aput v7, p0, v6

    .line 35
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 49
    .end local v0    # "abs":F
    .end local v3    # "im":F
    .end local v4    # "phase":F
    .end local v5    # "re":F
    :cond_33
    return-void
.end method
