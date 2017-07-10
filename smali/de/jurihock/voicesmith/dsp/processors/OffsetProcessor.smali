.class public final Lde/jurihock/voicesmith/dsp/processors/OffsetProcessor;
.super Ljava/lang/Object;
.source "OffsetProcessor.java"


# instance fields
.field private final isEnabled:Z

.field private final offsetObserver:Lde/jurihock/voicesmith/dsp/LuenbergerObserver;

.field private final offsetObserverGain:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    new-instance v0, Lde/jurihock/voicesmith/Preferences;

    invoke-direct {v0, p1}, Lde/jurihock/voicesmith/Preferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lde/jurihock/voicesmith/Preferences;->isCorrectOffsetOn()Z

    move-result v0

    invoke-direct {p0, v0}, Lde/jurihock/voicesmith/dsp/processors/OffsetProcessor;-><init>(Z)V

    .line 39
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_18

    iput-object v0, p0, Lde/jurihock/voicesmith/dsp/processors/OffsetProcessor;->offsetObserverGain:[F

    .line 43
    iput-boolean p1, p0, Lde/jurihock/voicesmith/dsp/processors/OffsetProcessor;->isEnabled:Z

    .line 45
    new-instance v0, Lde/jurihock/voicesmith/dsp/LuenbergerObserver;

    iget-object v1, p0, Lde/jurihock/voicesmith/dsp/processors/OffsetProcessor;->offsetObserverGain:[F

    invoke-direct {v0, v2, v2, v1}, Lde/jurihock/voicesmith/dsp/LuenbergerObserver;-><init>(FF[F)V

    iput-object v0, p0, Lde/jurihock/voicesmith/dsp/processors/OffsetProcessor;->offsetObserver:Lde/jurihock/voicesmith/dsp/LuenbergerObserver;

    .line 46
    return-void

    .line 32
    :array_18
    .array-data 4
        0x3ccccccd
        0x0
    .end array-data
.end method


# virtual methods
.method public processFrame([S)V
    .registers 6
    .param p1, "frame"    # [S

    .prologue
    .line 50
    iget-boolean v2, p0, Lde/jurihock/voicesmith/dsp/processors/OffsetProcessor;->isEnabled:Z

    if-nez v2, :cond_5

    .line 59
    :cond_4
    return-void

    .line 52
    :cond_5
    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {p1, v2, v3}, Lde/jurihock/voicesmith/dsp/Math;->mean([SII)S

    move-result v0

    .line 53
    .local v0, "currentOffset":S
    iget-object v2, p0, Lde/jurihock/voicesmith/dsp/processors/OffsetProcessor;->offsetObserver:Lde/jurihock/voicesmith/dsp/LuenbergerObserver;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Lde/jurihock/voicesmith/dsp/LuenbergerObserver;->smooth(F)F

    move-result v2

    float-to-int v2, v2

    int-to-short v0, v2

    .line 55
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 57
    aget-short v2, p1, v1

    sub-int/2addr v2, v0

    int-to-short v2, v2

    aput-short v2, p1, v1

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_15
.end method
