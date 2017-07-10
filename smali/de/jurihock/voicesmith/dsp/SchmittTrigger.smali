.class public final Lde/jurihock/voicesmith/dsp/SchmittTrigger;
.super Ljava/lang/Object;
.source "SchmittTrigger.java"


# instance fields
.field private final highThreshold:F

.field private final lowThreshold:F

.field private state:Z

.field private value:F


# direct methods
.method public constructor <init>(ZFFF)V
    .registers 5
    .param p1, "state"    # Z
    .param p2, "value"    # F
    .param p3, "lowThreshold"    # F
    .param p4, "highThreshold"    # F

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean p1, p0, Lde/jurihock/voicesmith/dsp/SchmittTrigger;->state:Z

    .line 31
    iput p2, p0, Lde/jurihock/voicesmith/dsp/SchmittTrigger;->value:F

    .line 32
    iput p3, p0, Lde/jurihock/voicesmith/dsp/SchmittTrigger;->lowThreshold:F

    .line 33
    iput p4, p0, Lde/jurihock/voicesmith/dsp/SchmittTrigger;->highThreshold:F

    .line 34
    return-void
.end method


# virtual methods
.method public state(F)Z
    .registers 3
    .param p1, "newValue"    # F

    .prologue
    .line 37
    iget v0, p0, Lde/jurihock/voicesmith/dsp/SchmittTrigger;->value:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_14

    iget v0, p0, Lde/jurihock/voicesmith/dsp/SchmittTrigger;->highThreshold:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_14

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/jurihock/voicesmith/dsp/SchmittTrigger;->state:Z

    .line 43
    :cond_f
    :goto_f
    iput p1, p0, Lde/jurihock/voicesmith/dsp/SchmittTrigger;->value:F

    .line 45
    iget-boolean v0, p0, Lde/jurihock/voicesmith/dsp/SchmittTrigger;->state:Z

    return v0

    .line 39
    :cond_14
    iget v0, p0, Lde/jurihock/voicesmith/dsp/SchmittTrigger;->value:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_f

    iget v0, p0, Lde/jurihock/voicesmith/dsp/SchmittTrigger;->lowThreshold:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_f

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/jurihock/voicesmith/dsp/SchmittTrigger;->state:Z

    goto :goto_f
.end method
