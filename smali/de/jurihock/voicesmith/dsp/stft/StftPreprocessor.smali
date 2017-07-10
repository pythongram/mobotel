.class public final Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;
.super Ljava/lang/Object;
.source "StftPreprocessor.java"


# instance fields
.field private final amplifier:Lde/jurihock/voicesmith/dsp/processors/AmplifyProcessor;

.field private final denoiser:Lde/jurihock/voicesmith/dsp/processors/DenoiseProcessor;

.field private final deoffset:Lde/jurihock/voicesmith/dsp/processors/OffsetProcessor;

.field private final doForwardFFT:Z

.field private fft:Lde/jurihock/voicesmith/dsp/KissFFT;

.field private frameCursor:I

.field private final frameSize:I

.field private final hopSize:I

.field private final input:Lde/jurihock/voicesmith/io/AudioDevice;

.field private final nextFrame:[S

.field private final prevFrame:[S

.field private final vad:Lde/jurihock/voicesmith/dsp/processors/VadProcessor;

.field private final window:[F


# direct methods
.method public constructor <init>(Lde/jurihock/voicesmith/io/AudioDevice;IIZ)V
    .registers 8
    .param p1, "input"    # Lde/jurihock/voicesmith/io/AudioDevice;
    .param p2, "frameSize"    # I
    .param p3, "hopSize"    # I
    .param p4, "doForwardFFT"    # Z

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->fft:Lde/jurihock/voicesmith/dsp/KissFFT;

    .line 57
    iput-object p1, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->input:Lde/jurihock/voicesmith/io/AudioDevice;

    .line 58
    iput p2, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->frameSize:I

    .line 59
    iput p3, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->hopSize:I

    .line 60
    iput-boolean p4, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->doForwardFFT:Z

    .line 62
    new-instance v0, Lde/jurihock/voicesmith/dsp/processors/OffsetProcessor;

    invoke-virtual {p1}, Lde/jurihock/voicesmith/io/AudioDevice;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/jurihock/voicesmith/dsp/processors/OffsetProcessor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->deoffset:Lde/jurihock/voicesmith/dsp/processors/OffsetProcessor;

    .line 63
    new-instance v0, Lde/jurihock/voicesmith/dsp/processors/VadProcessor;

    invoke-virtual {p1}, Lde/jurihock/voicesmith/io/AudioDevice;->getSampleRate()I

    move-result v1

    invoke-virtual {p1}, Lde/jurihock/voicesmith/io/AudioDevice;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lde/jurihock/voicesmith/dsp/processors/VadProcessor;-><init>(ILandroid/content/Context;)V

    iput-object v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->vad:Lde/jurihock/voicesmith/dsp/processors/VadProcessor;

    .line 64
    new-instance v0, Lde/jurihock/voicesmith/dsp/processors/AmplifyProcessor;

    invoke-virtual {p1}, Lde/jurihock/voicesmith/io/AudioDevice;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/jurihock/voicesmith/dsp/processors/AmplifyProcessor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->amplifier:Lde/jurihock/voicesmith/dsp/processors/AmplifyProcessor;

    .line 65
    new-instance v0, Lde/jurihock/voicesmith/dsp/processors/DenoiseProcessor;

    invoke-virtual {p1}, Lde/jurihock/voicesmith/io/AudioDevice;->getSampleRate()I

    move-result v1

    invoke-virtual {p1}, Lde/jurihock/voicesmith/io/AudioDevice;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lde/jurihock/voicesmith/dsp/processors/DenoiseProcessor;-><init>(ILandroid/content/Context;)V

    iput-object v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->denoiser:Lde/jurihock/voicesmith/dsp/processors/DenoiseProcessor;

    .line 67
    new-instance v0, Lde/jurihock/voicesmith/dsp/KissFFT;

    invoke-direct {v0, p2}, Lde/jurihock/voicesmith/dsp/KissFFT;-><init>(I)V

    iput-object v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->fft:Lde/jurihock/voicesmith/dsp/KissFFT;

    .line 68
    new-instance v0, Lde/jurihock/voicesmith/dsp/Window;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lde/jurihock/voicesmith/dsp/Window;-><init>(IZ)V

    invoke-virtual {v0}, Lde/jurihock/voicesmith/dsp/Window;->hann()[F

    move-result-object v0

    iput-object v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->window:[F

    .line 70
    new-array v0, p2, [S

    iput-object v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->prevFrame:[S

    .line 71
    new-array v0, p2, [S

    iput-object v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->nextFrame:[S

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->frameCursor:I

    .line 73
    return-void
.end method

.method private static analyzeFrame([SI[FII[F)V
    .registers 10
    .param p0, "src"    # [S
    .param p1, "offsetSrc"    # I
    .param p2, "dst"    # [F
    .param p3, "offsetDst"    # I
    .param p4, "count"    # I
    .param p5, "window"    # [F

    .prologue
    .line 120
    if-nez p4, :cond_3

    .line 133
    :cond_2
    return-void

    .line 122
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, p4, :cond_2

    .line 124
    add-int v2, v0, p1

    aget-short v2, p0, v2

    int-to-float v2, v2

    const v3, 0x46fffe00    # 32767.0f

    div-float v1, v2, v3

    .line 125
    .local v1, "value":F
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v3, v1}, Lde/jurihock/voicesmith/dsp/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Lde/jurihock/voicesmith/dsp/Math;->min(FF)F

    move-result v1

    .line 128
    add-int v2, v0, p3

    aget v2, p5, v2

    mul-float/2addr v1, v2

    .line 131
    add-int v2, v0, p3

    aput v1, p2, v2

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method


# virtual methods
.method public processFrame([FLde/jurihock/voicesmith/DataHelper;)V
    .registers 11
    .param p1, "frame"    # [F
    .param p2, "dataHelper"    # Lde/jurihock/voicesmith/DataHelper;

    .prologue
    const/4 v3, 0x0

    .line 77
    iget v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->frameCursor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5a

    .line 78
    iget v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->frameSize:I

    iput v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->frameCursor:I

    .line 80
    iget-object v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->nextFrame:[S

    invoke-virtual {p2, v0}, Lde/jurihock/voicesmith/DataHelper;->a([S)V

    .line 83
    iget-object v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->deoffset:Lde/jurihock/voicesmith/dsp/processors/OffsetProcessor;

    iget-object v1, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->nextFrame:[S

    invoke-virtual {v0, v1}, Lde/jurihock/voicesmith/dsp/processors/OffsetProcessor;->processFrame([S)V

    .line 84
    iget-object v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->vad:Lde/jurihock/voicesmith/dsp/processors/VadProcessor;

    iget-object v1, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->nextFrame:[S

    invoke-virtual {v0, v1}, Lde/jurihock/voicesmith/dsp/processors/VadProcessor;->processFrame([S)V

    .line 85
    iget-object v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->amplifier:Lde/jurihock/voicesmith/dsp/processors/AmplifyProcessor;

    iget-object v1, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->nextFrame:[S

    invoke-virtual {v0, v1}, Lde/jurihock/voicesmith/dsp/processors/AmplifyProcessor;->processFrame([S)V

    .line 105
    :cond_24
    :goto_24
    iget-object v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->prevFrame:[S

    iget v1, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->frameCursor:I

    iget v2, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->frameSize:I

    iget v4, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->frameCursor:I

    sub-int v4, v2, v4

    iget-object v5, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->window:[F

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->analyzeFrame([SI[FII[F)V

    .line 108
    iget-object v2, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->nextFrame:[S

    iget v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->frameSize:I

    iget v1, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->frameCursor:I

    sub-int v5, v0, v1

    iget v6, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->frameCursor:I

    iget-object v7, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->window:[F

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->analyzeFrame([SI[FII[F)V

    .line 110
    iget-boolean v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->doForwardFFT:Z

    if-eqz v0, :cond_52

    .line 111
    iget-object v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->fft:Lde/jurihock/voicesmith/dsp/KissFFT;

    invoke-virtual {v0, p1}, Lde/jurihock/voicesmith/dsp/KissFFT;->fft([F)V

    .line 112
    iget-object v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->denoiser:Lde/jurihock/voicesmith/dsp/processors/DenoiseProcessor;

    invoke-virtual {v0, p1}, Lde/jurihock/voicesmith/dsp/processors/DenoiseProcessor;->processFrame([F)V

    .line 116
    :cond_52
    iget v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->frameCursor:I

    iget v1, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->hopSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->frameCursor:I

    .line 117
    return-void

    .line 88
    :cond_5a
    iget v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->frameCursor:I

    iget v1, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->frameSize:I

    if-lt v0, v1, :cond_24

    .line 90
    iget v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->frameCursor:I

    iget v1, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->frameSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->frameCursor:I

    .line 93
    iget-object v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->nextFrame:[S

    iget-object v1, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->prevFrame:[S

    iget v2, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->frameSize:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    iget-object v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->nextFrame:[S

    invoke-virtual {p2, v0}, Lde/jurihock/voicesmith/DataHelper;->a([S)V

    .line 99
    iget-object v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->deoffset:Lde/jurihock/voicesmith/dsp/processors/OffsetProcessor;

    iget-object v1, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->nextFrame:[S

    invoke-virtual {v0, v1}, Lde/jurihock/voicesmith/dsp/processors/OffsetProcessor;->processFrame([S)V

    .line 100
    iget-object v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->vad:Lde/jurihock/voicesmith/dsp/processors/VadProcessor;

    iget-object v1, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->nextFrame:[S

    invoke-virtual {v0, v1}, Lde/jurihock/voicesmith/dsp/processors/VadProcessor;->processFrame([S)V

    .line 101
    iget-object v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->amplifier:Lde/jurihock/voicesmith/dsp/processors/AmplifyProcessor;

    iget-object v1, p0, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;->nextFrame:[S

    invoke-virtual {v0, v1}, Lde/jurihock/voicesmith/dsp/processors/AmplifyProcessor;->processFrame([S)V

    goto :goto_24
.end method
