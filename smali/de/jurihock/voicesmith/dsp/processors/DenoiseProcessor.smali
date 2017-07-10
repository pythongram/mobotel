.class public final Lde/jurihock/voicesmith/dsp/processors/DenoiseProcessor;
.super Ljava/lang/Object;
.source "DenoiseProcessor.java"


# instance fields
.field private final bpLowerFreq:F

.field private final bpUpperFreq:F

.field private final isBandpassFilterOn:Z

.field private final isSpectralNoiseGateOn:Z

.field private final ngCoeff:F

.field private final sampleRate:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .registers 7
    .param p1, "sampleRate"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lde/jurihock/voicesmith/dsp/processors/DenoiseProcessor;->sampleRate:I

    .line 45
    new-instance v0, Lde/jurihock/voicesmith/Preferences;

    invoke-direct {v0, p2}, Lde/jurihock/voicesmith/Preferences;-><init>(Landroid/content/Context;)V

    .line 47
    .local v0, "preferences":Lde/jurihock/voicesmith/Preferences;
    invoke-virtual {v0}, Lde/jurihock/voicesmith/Preferences;->isSpectralNoiseGateOn()Z

    move-result v1

    iput-boolean v1, p0, Lde/jurihock/voicesmith/dsp/processors/DenoiseProcessor;->isSpectralNoiseGateOn:Z

    .line 48
    invoke-virtual {v0}, Lde/jurihock/voicesmith/Preferences;->isBandpassFilterOn()Z

    move-result v1

    iput-boolean v1, p0, Lde/jurihock/voicesmith/dsp/processors/DenoiseProcessor;->isBandpassFilterOn:Z

    .line 51
    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0}, Lde/jurihock/voicesmith/Preferences;->getNoiseGateCoeffExponent()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lde/jurihock/voicesmith/dsp/Math;->pow(FF)F

    move-result v1

    iput v1, p0, Lde/jurihock/voicesmith/dsp/processors/DenoiseProcessor;->ngCoeff:F

    .line 52
    invoke-virtual {v0}, Lde/jurihock/voicesmith/Preferences;->getBandpassLowerFreq()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    int-to-float v2, p1

    div-float/2addr v1, v2

    iput v1, p0, Lde/jurihock/voicesmith/dsp/processors/DenoiseProcessor;->bpLowerFreq:F

    .line 53
    invoke-virtual {v0}, Lde/jurihock/voicesmith/Preferences;->getBandpassUpperFreq()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    int-to-float v2, p1

    div-float/2addr v1, v2

    iput v1, p0, Lde/jurihock/voicesmith/dsp/processors/DenoiseProcessor;->bpUpperFreq:F

    .line 54
    return-void
.end method

.method private static noiseGate(FF)F
    .registers 3
    .param p0, "value"    # F
    .param p1, "coeff"    # F

    .prologue
    .line 104
    add-float v0, p0, p1

    div-float v0, p0, v0

    return v0
.end method


# virtual methods
.method public processFrame([F)V
    .registers 14
    .param p1, "frame"    # [F

    .prologue
    .line 58
    iget-boolean v10, p0, Lde/jurihock/voicesmith/dsp/processors/DenoiseProcessor;->isSpectralNoiseGateOn:Z

    if-nez v10, :cond_9

    iget-boolean v10, p0, Lde/jurihock/voicesmith/dsp/processors/DenoiseProcessor;->isBandpassFilterOn:Z

    if-nez v10, :cond_9

    .line 100
    :cond_8
    return-void

    .line 60
    :cond_9
    array-length v10, p1

    div-int/lit8 v3, v10, 0x2

    .line 62
    .local v3, "fftSize":I
    iget v1, p0, Lde/jurihock/voicesmith/dsp/processors/DenoiseProcessor;->ngCoeff:F

    .line 64
    .local v1, "coeff":F
    int-to-float v10, v3

    iget v11, p0, Lde/jurihock/voicesmith/dsp/processors/DenoiseProcessor;->bpLowerFreq:F

    mul-float/2addr v10, v11

    float-to-int v9, v10

    .line 65
    .local v9, "start":I
    int-to-float v10, v3

    iget v11, p0, Lde/jurihock/voicesmith/dsp/processors/DenoiseProcessor;->bpUpperFreq:F

    mul-float/2addr v10, v11

    float-to-int v2, v10

    .line 69
    .local v2, "end":I
    const/4 v6, 0x1

    .line 71
    .local v6, "isIndexInBand":Z
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1a
    if-ge v4, v3, :cond_8

    .line 74
    mul-int/lit8 v10, v4, 0x2

    aget v8, p1, v10

    .line 75
    .local v8, "re":F
    mul-int/lit8 v10, v4, 0x2

    add-int/lit8 v10, v10, 0x1

    aget v5, p1, v10

    .line 76
    .local v5, "im":F
    invoke-static {v8, v5}, Lde/jurihock/voicesmith/dsp/Math;->abs(FF)F

    move-result v0

    .line 77
    .local v0, "abs":F
    const/high16 v7, 0x3f800000    # 1.0f

    .line 80
    .local v7, "r":F
    iget-boolean v10, p0, Lde/jurihock/voicesmith/dsp/processors/DenoiseProcessor;->isBandpassFilterOn:Z

    if-eqz v10, :cond_38

    .line 82
    if-lt v4, v9, :cond_56

    if-gt v4, v2, :cond_56

    const/4 v6, 0x1

    .line 84
    :goto_35
    if-nez v6, :cond_38

    .line 86
    const/4 v7, 0x0

    .line 91
    :cond_38
    iget-boolean v10, p0, Lde/jurihock/voicesmith/dsp/processors/DenoiseProcessor;->isSpectralNoiseGateOn:Z

    if-eqz v10, :cond_45

    if-eqz v6, :cond_45

    .line 93
    int-to-float v10, v3

    div-float v10, v0, v10

    invoke-static {v10, v1}, Lde/jurihock/voicesmith/dsp/processors/DenoiseProcessor;->noiseGate(FF)F

    move-result v7

    .line 97
    :cond_45
    mul-int/lit8 v10, v4, 0x2

    mul-float v11, v8, v7

    aput v11, p1, v10

    .line 98
    mul-int/lit8 v10, v4, 0x2

    add-int/lit8 v10, v10, 0x1

    mul-float v11, v5, v7

    aput v11, p1, v10

    .line 71
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 82
    :cond_56
    const/4 v6, 0x0

    goto :goto_35
.end method
