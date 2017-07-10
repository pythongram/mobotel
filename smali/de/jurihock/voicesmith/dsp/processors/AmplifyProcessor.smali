.class public final Lde/jurihock/voicesmith/dsp/processors/AmplifyProcessor;
.super Ljava/lang/Object;
.source "AmplifyProcessor.java"


# instance fields
.field private final ampFactor:F


# direct methods
.method public constructor <init>(I)V
    .registers 5
    .param p1, "ampDecibel"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/high16 v0, 0x41200000    # 10.0f

    int-to-float v1, p1

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lde/jurihock/voicesmith/dsp/Math;->pow(FF)F

    move-result v0

    iput v0, p0, Lde/jurihock/voicesmith/dsp/processors/AmplifyProcessor;->ampFactor:F

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    new-instance v0, Lde/jurihock/voicesmith/Preferences;

    invoke-direct {v0, p1}, Lde/jurihock/voicesmith/Preferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lde/jurihock/voicesmith/Preferences;->getSignalAmplificationFactor()I

    move-result v0

    invoke-direct {p0, v0}, Lde/jurihock/voicesmith/dsp/processors/AmplifyProcessor;-><init>(I)V

    .line 31
    return-void
.end method


# virtual methods
.method public processFrame([S)V
    .registers 6
    .param p1, "frame"    # [S

    .prologue
    .line 41
    iget v2, p0, Lde/jurihock/voicesmith/dsp/processors/AmplifyProcessor;->ampFactor:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_9

    .line 54
    :cond_8
    return-void

    .line 43
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    array-length v2, p1

    if-ge v0, v2, :cond_8

    .line 44
    aget-short v2, p1, v0

    int-to-float v2, v2

    iget v3, p0, Lde/jurihock/voicesmith/dsp/processors/AmplifyProcessor;->ampFactor:F

    mul-float v1, v2, v3

    .line 46
    .local v1, "result":F
    const v2, 0x46fffe00    # 32767.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_22

    .line 47
    const/16 v2, 0x7fff

    aput-short v2, p1, v0

    .line 43
    :goto_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 48
    :cond_22
    const/high16 v2, -0x39000000    # -32768.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2d

    .line 49
    const/16 v2, -0x8000

    aput-short v2, p1, v0

    goto :goto_1f

    .line 51
    :cond_2d
    float-to-int v2, v1

    int-to-short v2, v2

    aput-short v2, p1, v0

    goto :goto_1f
.end method
