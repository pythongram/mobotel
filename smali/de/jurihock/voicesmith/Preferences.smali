.class public final Lde/jurihock/voicesmith/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# instance fields
.field private final preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "mainconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lde/jurihock/voicesmith/Preferences;->preferences:Landroid/content/SharedPreferences;

    .line 38
    return-void
.end method


# virtual methods
.method public getAutoMuteHangover()I
    .registers 4

    .prologue
    .line 102
    iget-object v0, p0, Lde/jurihock/voicesmith/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "AutoMuteHangover"

    const-string v2, "5"

    .line 103
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAutoMuteHighThreshold()I
    .registers 6

    .prologue
    .line 88
    iget-object v2, p0, Lde/jurihock/voicesmith/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "AutoMuteHighThreshold"

    const-string v4, "-20"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 89
    .local v0, "high":I
    iget-object v2, p0, Lde/jurihock/voicesmith/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "AutoMuteLowThreshold"

    const-string v4, "-25"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 91
    .local v1, "low":I
    const/4 v2, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method public getAutoMuteLowThreshold()I
    .registers 6

    .prologue
    .line 95
    iget-object v2, p0, Lde/jurihock/voicesmith/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "AutoMuteHighThreshold"

    const-string v4, "-20"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 96
    .local v0, "high":I
    iget-object v2, p0, Lde/jurihock/voicesmith/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "AutoMuteLowThreshold"

    const-string v4, "-25"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 98
    .local v1, "low":I
    const/4 v2, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method public getBandpassLowerFreq()I
    .registers 4

    .prologue
    .line 74
    iget-object v0, p0, Lde/jurihock/voicesmith/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "BandpassLowerFreq"

    const-string v2, "100"

    .line 75
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getBandpassUpperFreq()I
    .registers 4

    .prologue
    .line 79
    iget-object v0, p0, Lde/jurihock/voicesmith/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "BandpassUpperFreq"

    const-string v2, "8000"

    .line 80
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFrameSize(Lde/jurihock/voicesmith/FrameType;I)I
    .registers 13
    .param p1, "frameType"    # Lde/jurihock/voicesmith/FrameType;
    .param p2, "sampleRate"    # I

    .prologue
    .line 131
    const-wide v2, 0x3fa7c6f8c751f177L    # 0.046439909297052155

    .line 132
    .local v2, "frameSizeRatio":D
    iget-wide v4, p1, Lde/jurihock/voicesmith/FrameType;->ratio:D

    .line 135
    .local v4, "frameTypeRatio":D
    int-to-double v6, p2

    const-wide v8, 0x3fa7c6f8c751f177L    # 0.046439909297052155

    mul-double/2addr v6, v8

    mul-double/2addr v6, v4

    double-to-int v0, v6

    .line 136
    .local v0, "frameSize":I
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_16

    add-int/lit8 v0, v0, 0x1

    .line 138
    :cond_16
    return v0
.end method

.method public getHopSize(Lde/jurihock/voicesmith/FrameType;I)I
    .registers 4
    .param p1, "frameType"    # Lde/jurihock/voicesmith/FrameType;
    .param p2, "sampleRate"    # I

    .prologue
    .line 143
    invoke-virtual {p0, p1, p2}, Lde/jurihock/voicesmith/Preferences;->getFrameSize(Lde/jurihock/voicesmith/FrameType;I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getNoiseGateCoeffExponent()I
    .registers 4

    .prologue
    .line 65
    iget-object v0, p0, Lde/jurihock/voicesmith/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "NoiseGateCoeffExponent"

    const-string v2, "3"

    .line 66
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPcmBufferSize(I)I
    .registers 6
    .param p1, "sampleRate"    # I

    .prologue
    const/4 v3, 0x2

    .line 111
    const/16 v2, 0x10

    invoke-static {p1, v2, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    .line 116
    .local v0, "pcmInBufferSize":I
    const/4 v2, 0x4

    invoke-static {p1, v2, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v1

    .line 121
    .local v1, "pcmOutBufferSize":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method public getSampleRate()I
    .registers 4

    .prologue
    .line 52
    iget-object v0, p0, Lde/jurihock/voicesmith/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "SampleRate"

    const-string v2, "44100"

    .line 53
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSignalAmplificationFactor()I
    .registers 4

    .prologue
    .line 47
    iget-object v0, p0, Lde/jurihock/voicesmith/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "SignalAmplification"

    const-string v2, "0"

    .line 48
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isAutoMuteOn()Z
    .registers 4

    .prologue
    .line 84
    iget-object v0, p0, Lde/jurihock/voicesmith/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "AutoMute"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isBandpassFilterOn()Z
    .registers 4

    .prologue
    .line 70
    iget-object v0, p0, Lde/jurihock/voicesmith/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "BandpassFilter"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isCorrectOffsetOn()Z
    .registers 4

    .prologue
    .line 57
    iget-object v0, p0, Lde/jurihock/voicesmith/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "CorrectOffset"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isLoggingOn()Z
    .registers 4

    .prologue
    .line 107
    iget-object v0, p0, Lde/jurihock/voicesmith/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "Logging"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSpectralNoiseGateOn()Z
    .registers 4

    .prologue
    .line 61
    iget-object v0, p0, Lde/jurihock/voicesmith/Preferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "SpectralNoiseGate"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lde/jurihock/voicesmith/Preferences;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 44
    return-void
.end method
