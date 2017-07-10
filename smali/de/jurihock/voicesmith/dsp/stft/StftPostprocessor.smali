.class public final Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;
.super Ljava/lang/Object;
.source "StftPostprocessor.java"


# instance fields
.field private final doInverseFFT:Z

.field private fft:Lde/jurihock/voicesmith/dsp/KissFFT;

.field private frameCursor:I

.field private final frameSize:I

.field private final hopSize:I

.field private final nextFrame:[S

.field private final output:Lde/jurihock/voicesmith/io/AudioDevice;

.field private final prevFrame:[S

.field private final window:[F


# direct methods
.method public constructor <init>(Lde/jurihock/voicesmith/io/AudioDevice;IIZ)V
    .registers 7
    .param p1, "output"    # Lde/jurihock/voicesmith/io/AudioDevice;
    .param p2, "frameSize"    # I
    .param p3, "hopSize"    # I
    .param p4, "doInverseFFT"    # Z

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->fft:Lde/jurihock/voicesmith/dsp/KissFFT;

    .line 26
    iput-object p1, p0, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->output:Lde/jurihock/voicesmith/io/AudioDevice;

    .line 27
    iput p2, p0, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->frameSize:I

    .line 28
    iput p3, p0, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->hopSize:I

    .line 29
    iput-boolean p4, p0, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->doInverseFFT:Z

    .line 31
    new-instance v0, Lde/jurihock/voicesmith/dsp/KissFFT;

    invoke-direct {v0, p2}, Lde/jurihock/voicesmith/dsp/KissFFT;-><init>(I)V

    iput-object v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->fft:Lde/jurihock/voicesmith/dsp/KissFFT;

    .line 32
    new-instance v0, Lde/jurihock/voicesmith/dsp/Window;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lde/jurihock/voicesmith/dsp/Window;-><init>(IZ)V

    invoke-virtual {v0}, Lde/jurihock/voicesmith/dsp/Window;->hann()[F

    move-result-object v0

    iput-object v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->window:[F

    .line 34
    new-array v0, p2, [S

    iput-object v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->prevFrame:[S

    .line 35
    new-array v0, p2, [S

    iput-object v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->nextFrame:[S

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->frameCursor:I

    .line 37
    return-void
.end method

.method private static synthesizeFrame([FI[SII[F)V
    .registers 11
    .param p0, "src"    # [F
    .param p1, "offsetSrc"    # I
    .param p2, "dst"    # [S
    .param p3, "offsetDst"    # I
    .param p4, "count"    # I
    .param p5, "window"    # [F

    .prologue
    .line 67
    if-nez p4, :cond_3

    .line 80
    :cond_2
    return-void

    .line 69
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, p4, :cond_2

    .line 71
    add-int v2, v0, p1

    aget v1, p0, v2

    .line 74
    .local v1, "value":F
    add-int v2, v0, p1

    aget v2, p5, v2

    mul-float/2addr v1, v2

    .line 77
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v3, v1}, Lde/jurihock/voicesmith/dsp/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Lde/jurihock/voicesmith/dsp/Math;->min(FF)F

    move-result v1

    .line 78
    add-int v2, v0, p3

    aget-short v3, p2, v2

    const v4, 0x46fffe00    # 32767.0f

    mul-float/2addr v4, v1

    invoke-static {v4}, Lde/jurihock/voicesmith/dsp/Math;->round(F)I

    move-result v4

    int-to-short v4, v4

    add-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, p2, v2

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method


# virtual methods
.method public processFrame([F)[S
    .registers 11
    .param p1, "frame"    # [F

    .prologue
    const/4 v1, 0x0

    .line 40
    iget-boolean v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->doInverseFFT:Z

    if-eqz v0, :cond_a

    .line 41
    iget-object v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->fft:Lde/jurihock/voicesmith/dsp/KissFFT;

    invoke-virtual {v0, p1}, Lde/jurihock/voicesmith/dsp/KissFFT;->ifft([F)V

    .line 44
    :cond_a
    iget-object v2, p0, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->prevFrame:[S

    iget v3, p0, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->frameCursor:I

    iget v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->frameSize:I

    iget v4, p0, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->frameCursor:I

    sub-int v4, v0, v4

    iget-object v5, p0, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->window:[F

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->synthesizeFrame([FI[SII[F)V

    .line 47
    iget v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->frameSize:I

    iget v2, p0, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->frameCursor:I

    sub-int v3, v0, v2

    iget-object v4, p0, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->nextFrame:[S

    iget v6, p0, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->frameCursor:I

    iget-object v7, p0, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->window:[F

    move-object v2, p1

    move v5, v1

    invoke-static/range {v2 .. v7}, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->synthesizeFrame([FI[SII[F)V

    .line 50
    iget v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->frameCursor:I

    iget v2, p0, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->hopSize:I

    add-int/2addr v0, v2

    iput v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->frameCursor:I

    .line 51
    iget-object v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->prevFrame:[S

    array-length v0, v0

    new-array v8, v0, [S

    .line 52
    .local v8, "result":[S
    iget v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->frameCursor:I

    iget v2, p0, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->frameSize:I

    if-ge v0, v2, :cond_3f

    .line 53
    const/4 v8, 0x0

    .line 60
    .end local v8    # "result":[S
    :goto_3e
    return-object v8

    .line 55
    .restart local v8    # "result":[S
    :cond_3f
    iget v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->frameCursor:I

    iget v2, p0, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->frameSize:I

    sub-int/2addr v0, v2

    iput v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->frameCursor:I

    .line 56
    iget-object v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->prevFrame:[S

    iget-object v2, p0, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->prevFrame:[S

    array-length v2, v2

    invoke-static {v0, v1, v8, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    iget-object v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->nextFrame:[S

    iget-object v2, p0, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->prevFrame:[S

    iget v3, p0, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->frameSize:I

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iget-object v0, p0, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;->nextFrame:[S

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([SS)V

    goto :goto_3e
.end method
