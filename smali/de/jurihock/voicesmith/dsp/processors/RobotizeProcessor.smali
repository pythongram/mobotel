.class public final Lde/jurihock/voicesmith/dsp/processors/RobotizeProcessor;
.super Ljava/lang/Object;
.source "RobotizeProcessor.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static processFrame([F)V
    .registers 8
    .param p0, "frame"    # [F

    .prologue
    .line 26
    array-length v5, p0

    div-int/lit8 v1, v5, 0x2

    .line 29
    .local v1, "fftSize":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_4
    if-ge v2, v1, :cond_22

    .line 31
    mul-int/lit8 v5, v2, 0x2

    aget v4, p0, v5

    .line 32
    .local v4, "re":F
    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v3, p0, v5

    .line 33
    .local v3, "im":F
    invoke-static {v4, v3}, Lde/jurihock/voicesmith/dsp/Math;->abs(FF)F

    move-result v0

    .line 36
    .local v0, "abs":F
    mul-int/lit8 v5, v2, 0x2

    aput v0, p0, v5

    .line 37
    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    aput v6, p0, v5

    .line 29
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 39
    .end local v0    # "abs":F
    .end local v3    # "im":F
    .end local v4    # "re":F
    :cond_22
    return-void
.end method
