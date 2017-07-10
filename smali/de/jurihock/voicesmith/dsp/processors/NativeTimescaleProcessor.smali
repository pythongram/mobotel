.class public final Lde/jurihock/voicesmith/dsp/processors/NativeTimescaleProcessor;
.super Ljava/lang/Object;
.source "NativeTimescaleProcessor.java"


# instance fields
.field private final handle:J


# direct methods
.method public constructor <init>(III)V
    .registers 6
    .param p1, "frameSize"    # I
    .param p2, "analysisHopSize"    # I
    .param p3, "synthesisHopSize"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lde/jurihock/voicesmith/dsp/processors/NativeTimescaleProcessor;->alloc(III)J

    move-result-wide v0

    iput-wide v0, p0, Lde/jurihock/voicesmith/dsp/processors/NativeTimescaleProcessor;->handle:J

    .line 27
    return-void
.end method

.method private native alloc(III)J
.end method

.method private native processFrame(J[F)V
.end method


# virtual methods
.method public processFrame([F)V
    .registers 4
    .param p1, "frame"    # [F

    .prologue
    .line 30
    iget-wide v0, p0, Lde/jurihock/voicesmith/dsp/processors/NativeTimescaleProcessor;->handle:J

    invoke-direct {p0, v0, v1, p1}, Lde/jurihock/voicesmith/dsp/processors/NativeTimescaleProcessor;->processFrame(J[F)V

    .line 31
    return-void
.end method
