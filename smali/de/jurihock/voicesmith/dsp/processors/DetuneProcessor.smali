.class public final Lde/jurihock/voicesmith/dsp/processors/DetuneProcessor;
.super Ljava/lang/Object;
.source "DetuneProcessor.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static processFrame([F)V
    .registers 6
    .param p0, "frame"    # [F

    .prologue
    .line 27
    array-length v4, p0

    div-int/lit8 v0, v4, 0x2

    .line 30
    .local v0, "fftSize":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_1e

    .line 33
    mul-int/lit8 v4, v1, 0x2

    aget v3, p0, v4

    .line 34
    .local v3, "re":F
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v2, p0, v4

    .line 37
    .local v2, "im":F
    neg-float v2, v2

    .line 40
    mul-int/lit8 v4, v1, 0x2

    aput v3, p0, v4

    .line 41
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    aput v2, p0, v4

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 43
    .end local v2    # "im":F
    .end local v3    # "re":F
    :cond_1e
    return-void
.end method
