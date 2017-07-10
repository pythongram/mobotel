.class public final Lde/jurihock/voicesmith/dsp/Window;
.super Ljava/lang/Object;
.source "Window.java"


# instance fields
.field private final frameSize:I

.field private final hopSize:I

.field private final isPeriodic:Z

.field private final isWeighted:Z


# direct methods
.method public constructor <init>(IIZZ)V
    .registers 5
    .param p1, "frameSize"    # I
    .param p2, "hopSize"    # I
    .param p3, "isPeriodic"    # Z
    .param p4, "isWeighted"    # Z

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lde/jurihock/voicesmith/dsp/Window;->frameSize:I

    .line 38
    iput p2, p0, Lde/jurihock/voicesmith/dsp/Window;->hopSize:I

    .line 39
    iput-boolean p3, p0, Lde/jurihock/voicesmith/dsp/Window;->isPeriodic:Z

    .line 40
    iput-boolean p4, p0, Lde/jurihock/voicesmith/dsp/Window;->isWeighted:Z

    .line 41
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 4
    .param p1, "frameSize"    # I
    .param p2, "isPeriodic"    # Z

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p1, p2, v0}, Lde/jurihock/voicesmith/dsp/Window;-><init>(IIZZ)V

    .line 34
    return-void
.end method

.method private weight([F)V
    .registers 6
    .param p1, "window"    # [F

    .prologue
    .line 44
    const/4 v1, 0x0

    .line 46
    .local v1, "weighting":F
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_2
    iget v2, p0, Lde/jurihock/voicesmith/dsp/Window;->frameSize:I

    if-ge v0, v2, :cond_f

    .line 47
    aget v2, p1, v0

    aget v3, p1, v0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 49
    :cond_f
    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lde/jurihock/voicesmith/dsp/Window;->hopSize:I

    int-to-float v3, v3

    div-float v3, v1, v3

    invoke-static {v3}, Lde/jurihock/voicesmith/dsp/Math;->sqrt(F)F

    move-result v3

    div-float v1, v2, v3

    .line 51
    const/4 v0, 0x0

    :goto_1d
    iget v2, p0, Lde/jurihock/voicesmith/dsp/Window;->frameSize:I

    if-ge v0, v2, :cond_29

    .line 52
    aget v2, p1, v0

    mul-float/2addr v2, v1

    aput v2, p1, v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 53
    :cond_29
    return-void
.end method


# virtual methods
.method public hann()[F
    .registers 8

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 56
    iget v3, p0, Lde/jurihock/voicesmith/dsp/Window;->frameSize:I

    new-array v2, v3, [F

    .line 57
    .local v2, "window":[F
    iget-boolean v3, p0, Lde/jurihock/voicesmith/dsp/Window;->isPeriodic:Z

    if-eqz v3, :cond_29

    iget v3, p0, Lde/jurihock/voicesmith/dsp/Window;->frameSize:I

    add-int/lit8 v0, v3, 0x1

    .line 59
    .local v0, "N":I
    :goto_e
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_f
    iget v3, p0, Lde/jurihock/voicesmith/dsp/Window;->frameSize:I

    if-ge v1, v3, :cond_2c

    .line 60
    const/high16 v3, 0x3f000000    # 0.5f

    const v4, 0x40c90fdb

    int-to-float v5, v1

    mul-float/2addr v4, v5

    int-to-float v5, v0

    sub-float/2addr v5, v6

    div-float/2addr v4, v5

    invoke-static {v4}, Lde/jurihock/voicesmith/dsp/Math;->cos(F)F

    move-result v4

    sub-float v4, v6, v4

    mul-float/2addr v3, v4

    aput v3, v2, v1

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 57
    .end local v0    # "N":I
    .end local v1    # "n":I
    :cond_29
    iget v0, p0, Lde/jurihock/voicesmith/dsp/Window;->frameSize:I

    goto :goto_e

    .line 63
    .restart local v0    # "N":I
    .restart local v1    # "n":I
    :cond_2c
    iget-boolean v3, p0, Lde/jurihock/voicesmith/dsp/Window;->isWeighted:Z

    if-eqz v3, :cond_33

    invoke-direct {p0, v2}, Lde/jurihock/voicesmith/dsp/Window;->weight([F)V

    .line 65
    :cond_33
    return-object v2
.end method
