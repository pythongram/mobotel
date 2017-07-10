.class public final Lde/jurihock/voicesmith/dsp/processors/VadProcessor;
.super Ljava/lang/Object;
.source "VadProcessor.java"


# instance fields
.field private final energyObserver:Lde/jurihock/voicesmith/dsp/LuenbergerObserver;

.field private final energyObserverGain:[F

.field private hangoverDuration:F

.field private final hangoverMaxDuration:F

.field private final isEnabled:Z

.field private lastState:Z

.field private final sampleRate:I

.field private final trigger:Lde/jurihock/voicesmith/dsp/SchmittTrigger;

.field private utils:Lde/jurihock/voicesmith/Utils;

.field private final windowSize:I

.field private final windowTimeInterval:F


# direct methods
.method public constructor <init>(IIIIZ)V
    .registers 12
    .param p1, "sampleRate"    # I
    .param p2, "lowThreshold"    # I
    .param p3, "highThreshold"    # I
    .param p4, "hangover"    # I
    .param p5, "enable"    # Z

    .prologue
    const/4 v5, 0x0

    const v2, 0x3ca3d70a

    const/4 v4, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v2, p0, Lde/jurihock/voicesmith/dsp/processors/VadProcessor;->windowTimeInterval:F

    .line 41
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_42

    iput-object v1, p0, Lde/jurihock/voicesmith/dsp/processors/VadProcessor;->energyObserverGain:[F

    .line 52
    const/4 v1, 0x0

    iput-object v1, p0, Lde/jurihock/voicesmith/dsp/processors/VadProcessor;->utils:Lde/jurihock/voicesmith/Utils;

    .line 53
    iput-boolean v5, p0, Lde/jurihock/voicesmith/dsp/processors/VadProcessor;->lastState:Z

    .line 69
    iput p1, p0, Lde/jurihock/voicesmith/dsp/processors/VadProcessor;->sampleRate:I

    .line 71
    int-to-float v1, p1

    mul-float/2addr v1, v2

    invoke-static {v1}, Lde/jurihock/voicesmith/dsp/Math;->round(F)I

    move-result v1

    iput v1, p0, Lde/jurihock/voicesmith/dsp/processors/VadProcessor;->windowSize:I

    .line 73
    add-int v1, p2, p3

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v0, v1, v2

    .line 75
    .local v0, "initialDbfs":F
    new-instance v1, Lde/jurihock/voicesmith/dsp/LuenbergerObserver;

    iget-object v2, p0, Lde/jurihock/voicesmith/dsp/processors/VadProcessor;->energyObserverGain:[F

    invoke-direct {v1, v0, v4, v2}, Lde/jurihock/voicesmith/dsp/LuenbergerObserver;-><init>(FF[F)V

    iput-object v1, p0, Lde/jurihock/voicesmith/dsp/processors/VadProcessor;->energyObserver:Lde/jurihock/voicesmith/dsp/LuenbergerObserver;

    .line 76
    new-instance v1, Lde/jurihock/voicesmith/dsp/SchmittTrigger;

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-direct {v1, v5, v0, v2, v3}, Lde/jurihock/voicesmith/dsp/SchmittTrigger;-><init>(ZFFF)V

    iput-object v1, p0, Lde/jurihock/voicesmith/dsp/processors/VadProcessor;->trigger:Lde/jurihock/voicesmith/dsp/SchmittTrigger;

    .line 78
    int-to-float v1, p4

    iput v1, p0, Lde/jurihock/voicesmith/dsp/processors/VadProcessor;->hangoverMaxDuration:F

    .line 79
    iput v4, p0, Lde/jurihock/voicesmith/dsp/processors/VadProcessor;->hangoverDuration:F

    .line 81
    iput-boolean p5, p0, Lde/jurihock/voicesmith/dsp/processors/VadProcessor;->isEnabled:Z

    .line 82
    return-void

    .line 41
    :array_42
    .array-data 4
        0x3e99999a
        0x3ca3d70a
    .end array-data
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .registers 9
    .param p1, "sampleRate"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    new-instance v0, Lde/jurihock/voicesmith/Preferences;

    invoke-direct {v0, p2}, Lde/jurihock/voicesmith/Preferences;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {v0}, Lde/jurihock/voicesmith/Preferences;->getAutoMuteHighThreshold()I

    move-result v2

    new-instance v0, Lde/jurihock/voicesmith/Preferences;

    invoke-direct {v0, p2}, Lde/jurihock/voicesmith/Preferences;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-virtual {v0}, Lde/jurihock/voicesmith/Preferences;->getAutoMuteLowThreshold()I

    move-result v3

    new-instance v0, Lde/jurihock/voicesmith/Preferences;

    invoke-direct {v0, p2}, Lde/jurihock/voicesmith/Preferences;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {v0}, Lde/jurihock/voicesmith/Preferences;->getAutoMuteHangover()I

    move-result v4

    new-instance v0, Lde/jurihock/voicesmith/Preferences;

    invoke-direct {v0, p2}, Lde/jurihock/voicesmith/Preferences;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-virtual {v0}, Lde/jurihock/voicesmith/Preferences;->isAutoMuteOn()Z

    move-result v5

    move-object v0, p0

    move v1, p1

    .line 57
    invoke-direct/range {v0 .. v5}, Lde/jurihock/voicesmith/dsp/processors/VadProcessor;-><init>(IIIIZ)V

    .line 63
    new-instance v0, Lde/jurihock/voicesmith/Preferences;

    invoke-direct {v0, p2}, Lde/jurihock/voicesmith/Preferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lde/jurihock/voicesmith/Preferences;->isLoggingOn()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 64
    new-instance v0, Lde/jurihock/voicesmith/Utils;

    invoke-direct {v0, p2}, Lde/jurihock/voicesmith/Utils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/jurihock/voicesmith/dsp/processors/VadProcessor;->utils:Lde/jurihock/voicesmith/Utils;

    .line 65
    :cond_3b
    return-void
.end method

.method private processFrameInternal([SIIF)V
    .registers 13
    .param p1, "frame"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "windowDuration"    # F

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 103
    invoke-static {p1, p2, p3}, Lde/jurihock/voicesmith/dsp/Math;->rms([SII)F

    move-result v1

    .line 104
    .local v1, "currentRms":F
    const v5, 0x2edbe6ff

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v1, v5, v6}, Lde/jurihock/voicesmith/dsp/Math;->rms2dbfs(FFF)F

    move-result v0

    .line 106
    .local v0, "currentDbfs":F
    iget-object v5, p0, Lde/jurihock/voicesmith/dsp/processors/VadProcessor;->energyObserver:Lde/jurihock/voicesmith/dsp/LuenbergerObserver;

    invoke-virtual {v5, v0}, Lde/jurihock/voicesmith/dsp/LuenbergerObserver;->smooth(F)F

    move-result v0

    .line 107
    iget-object v5, p0, Lde/jurihock/voicesmith/dsp/processors/VadProcessor;->trigger:Lde/jurihock/voicesmith/dsp/SchmittTrigger;

    invoke-virtual {v5, v0}, Lde/jurihock/voicesmith/dsp/SchmittTrigger;->state(F)Z

    move-result v2

    .line 109
    .local v2, "currentState":Z
    iget v5, p0, Lde/jurihock/voicesmith/dsp/processors/VadProcessor;->hangoverMaxDuration:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_37

    .line 111
    if-nez v2, :cond_45

    .line 113
    iget v5, p0, Lde/jurihock/voicesmith/dsp/processors/VadProcessor;->hangoverMaxDuration:F

    iget v6, p0, Lde/jurihock/voicesmith/dsp/processors/VadProcessor;->hangoverDuration:F

    add-float/2addr v6, p4

    invoke-static {v5, v6}, Lde/jurihock/voicesmith/dsp/Math;->min(FF)F

    move-result v5

    iput v5, p0, Lde/jurihock/voicesmith/dsp/processors/VadProcessor;->hangoverDuration:F

    .line 114
    iget v5, p0, Lde/jurihock/voicesmith/dsp/processors/VadProcessor;->hangoverDuration:F

    iget v6, p0, Lde/jurihock/voicesmith/dsp/processors/VadProcessor;->hangoverMaxDuration:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_43

    const/4 v2, 0x1

    .line 122
    :cond_37
    :goto_37
    if-nez v2, :cond_48

    .line 124
    move v3, p2

    .local v3, "i":I
    :goto_3a
    add-int v5, p2, p3

    if-ge v3, v5, :cond_48

    .line 126
    aput-short v4, p1, v3

    .line 124
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .end local v3    # "i":I
    :cond_43
    move v2, v4

    .line 114
    goto :goto_37

    .line 118
    :cond_45
    iput v7, p0, Lde/jurihock/voicesmith/dsp/processors/VadProcessor;->hangoverDuration:F

    goto :goto_37

    .line 131
    :cond_48
    iget-object v4, p0, Lde/jurihock/voicesmith/dsp/processors/VadProcessor;->utils:Lde/jurihock/voicesmith/Utils;

    if-eqz v4, :cond_5b

    iget-boolean v4, p0, Lde/jurihock/voicesmith/dsp/processors/VadProcessor;->lastState:Z

    if-eq v4, v2, :cond_5b

    .line 133
    if-eqz v2, :cond_5c

    iget-object v4, p0, Lde/jurihock/voicesmith/dsp/processors/VadProcessor;->utils:Lde/jurihock/voicesmith/Utils;

    const-string v5, "Voice activity detected."

    invoke-virtual {v4, v5}, Lde/jurihock/voicesmith/Utils;->log(Ljava/lang/String;)V

    .line 135
    :goto_59
    iput-boolean v2, p0, Lde/jurihock/voicesmith/dsp/processors/VadProcessor;->lastState:Z

    .line 137
    :cond_5b
    return-void

    .line 134
    :cond_5c
    iget-object v4, p0, Lde/jurihock/voicesmith/dsp/processors/VadProcessor;->utils:Lde/jurihock/voicesmith/Utils;

    const-string v5, "Voice inactivity detected."

    invoke-virtual {v4, v5}, Lde/jurihock/voicesmith/Utils;->log(Ljava/lang/String;)V

    goto :goto_59
.end method


# virtual methods
.method public processFrame([S)V
    .registers 9
    .param p1, "frame"    # [S

    .prologue
    .line 86
    iget-boolean v5, p0, Lde/jurihock/voicesmith/dsp/processors/VadProcessor;->isEnabled:Z

    if-nez v5, :cond_5

    .line 99
    :cond_4
    return-void

    .line 88
    :cond_5
    array-length v5, p1

    iget v6, p0, Lde/jurihock/voicesmith/dsp/processors/VadProcessor;->windowSize:I

    div-int v2, v5, v6

    .line 89
    .local v2, "windowCount":I
    if-lez v2, :cond_26

    array-length v5, p1

    int-to-float v5, v5

    int-to-float v6, v2

    div-float/2addr v5, v6

    .line 90
    invoke-static {v5}, Lde/jurihock/voicesmith/dsp/Math;->ceil(F)F

    move-result v5

    float-to-int v0, v5

    .line 92
    .local v0, "adaptedWindowSize":I
    :goto_15
    int-to-float v5, v0

    iget v6, p0, Lde/jurihock/voicesmith/dsp/processors/VadProcessor;->sampleRate:I

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 94
    .local v3, "windowDuration":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    if-ge v1, v2, :cond_4

    .line 96
    mul-int v4, v1, v0

    .line 97
    .local v4, "windowOffset":I
    invoke-direct {p0, p1, v4, v0, v3}, Lde/jurihock/voicesmith/dsp/processors/VadProcessor;->processFrameInternal([SIIF)V

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 90
    .end local v0    # "adaptedWindowSize":I
    .end local v1    # "i":I
    .end local v3    # "windowDuration":F
    .end local v4    # "windowOffset":I
    :cond_26
    array-length v0, p1

    goto :goto_15
.end method
