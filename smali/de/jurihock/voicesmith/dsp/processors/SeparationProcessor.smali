.class public final Lde/jurihock/voicesmith/dsp/processors/SeparationProcessor;
.super Ljava/lang/Object;
.source "SeparationProcessor.java"


# instance fields
.field private final fftSize:I

.field private final omega:[F

.field private final prevPhase1:[F

.field private final prevPhase2:[F


# direct methods
.method public constructor <init>(II)V
    .registers 8
    .param p1, "frameSize"    # I
    .param p2, "hopSize"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    div-int/lit8 v1, p1, 0x2

    iput v1, p0, Lde/jurihock/voicesmith/dsp/processors/SeparationProcessor;->fftSize:I

    .line 39
    iget v1, p0, Lde/jurihock/voicesmith/dsp/processors/SeparationProcessor;->fftSize:I

    new-array v1, v1, [F

    iput-object v1, p0, Lde/jurihock/voicesmith/dsp/processors/SeparationProcessor;->omega:[F

    .line 40
    iget v1, p0, Lde/jurihock/voicesmith/dsp/processors/SeparationProcessor;->fftSize:I

    new-array v1, v1, [F

    iput-object v1, p0, Lde/jurihock/voicesmith/dsp/processors/SeparationProcessor;->prevPhase1:[F

    .line 41
    iget v1, p0, Lde/jurihock/voicesmith/dsp/processors/SeparationProcessor;->fftSize:I

    new-array v1, v1, [F

    iput-object v1, p0, Lde/jurihock/voicesmith/dsp/processors/SeparationProcessor;->prevPhase2:[F

    .line 43
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    iget v1, p0, Lde/jurihock/voicesmith/dsp/processors/SeparationProcessor;->fftSize:I

    if-ge v0, v1, :cond_2e

    .line 45
    iget-object v1, p0, Lde/jurihock/voicesmith/dsp/processors/SeparationProcessor;->omega:[F

    const v2, 0x40c90fdb

    int-to-float v3, v0

    int-to-float v4, p1

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    int-to-float v3, p2

    mul-float/2addr v2, v3

    aput v2, v1, v0

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 48
    :cond_2e
    return-void
.end method


# virtual methods
.method public processFrame([F)V
    .registers 12
    .param p1, "frame"    # [F

    .prologue
    .line 52
    array-length v7, p1

    div-int/lit8 v1, v7, 0x2

    .line 55
    .local v1, "fftSize":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_4
    if-ge v2, v1, :cond_5d

    .line 58
    mul-int/lit8 v7, v2, 0x2

    aget v6, p1, v7

    .line 59
    .local v6, "re":F
    mul-int/lit8 v7, v2, 0x2

    add-int/lit8 v7, v7, 0x1

    aget v3, p1, v7

    .line 60
    .local v3, "im":F
    invoke-static {v6, v3}, Lde/jurihock/voicesmith/dsp/Math;->abs(FF)F

    move-result v0

    .line 63
    .local v0, "abs":F
    invoke-static {v6, v3}, Lde/jurihock/voicesmith/dsp/Math;->arg(FF)F

    move-result v4

    .line 66
    .local v4, "nextPhase":F
    const/high16 v7, 0x40000000    # 2.0f

    iget-object v8, p0, Lde/jurihock/voicesmith/dsp/processors/SeparationProcessor;->prevPhase1:[F

    aget v8, v8, v2

    mul-float/2addr v7, v8

    sub-float v7, v4, v7

    iget-object v8, p0, Lde/jurihock/voicesmith/dsp/processors/SeparationProcessor;->prevPhase2:[F

    aget v8, v8, v2

    add-float/2addr v7, v8

    invoke-static {v7}, Lde/jurihock/voicesmith/dsp/Math;->princarg(F)F

    move-result v5

    .line 69
    .local v5, "phaseDelta":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x3d4ccccd

    iget-object v9, p0, Lde/jurihock/voicesmith/dsp/processors/SeparationProcessor;->omega:[F

    aget v9, v9, v2

    mul-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3c

    .line 71
    const/4 v0, 0x0

    .line 72
    const/4 v4, 0x0

    .line 76
    :cond_3c
    iget-object v7, p0, Lde/jurihock/voicesmith/dsp/processors/SeparationProcessor;->prevPhase2:[F

    iget-object v8, p0, Lde/jurihock/voicesmith/dsp/processors/SeparationProcessor;->prevPhase1:[F

    aget v8, v8, v2

    aput v8, v7, v2

    .line 77
    iget-object v7, p0, Lde/jurihock/voicesmith/dsp/processors/SeparationProcessor;->prevPhase1:[F

    aput v4, v7, v2

    .line 80
    mul-int/lit8 v7, v2, 0x2

    invoke-static {v0, v4}, Lde/jurihock/voicesmith/dsp/Math;->real(FF)F

    move-result v8

    aput v8, p1, v7

    .line 81
    mul-int/lit8 v7, v2, 0x2

    add-int/lit8 v7, v7, 0x1

    invoke-static {v0, v4}, Lde/jurihock/voicesmith/dsp/Math;->imag(FF)F

    move-result v8

    aput v8, p1, v7

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 83
    .end local v0    # "abs":F
    .end local v3    # "im":F
    .end local v4    # "nextPhase":F
    .end local v5    # "phaseDelta":F
    .end local v6    # "re":F
    :cond_5d
    return-void
.end method
