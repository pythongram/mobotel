.class public Lde/jurihock/voicesmith/dsp/processors/NativeResampleProcessor;
.super Ljava/lang/Object;
.source "NativeResampleProcessor.java"


# instance fields
.field private final handle:J


# direct methods
.method public constructor <init>(II)V
    .registers 5
    .param p1, "frameSizeIn"    # I
    .param p2, "frameSizeOut"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-direct {p0, p1, p2}, Lde/jurihock/voicesmith/dsp/processors/NativeResampleProcessor;->alloc(II)J

    move-result-wide v0

    iput-wide v0, p0, Lde/jurihock/voicesmith/dsp/processors/NativeResampleProcessor;->handle:J

    .line 29
    return-void
.end method

.method private native alloc(II)J
.end method

.method private native processFrame(J[F[F)V
.end method


# virtual methods
.method public processFrame([F[F)V
    .registers 5
    .param p1, "frameIn"    # [F
    .param p2, "frameOut"    # [F

    .prologue
    .line 33
    iget-wide v0, p0, Lde/jurihock/voicesmith/dsp/processors/NativeResampleProcessor;->handle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lde/jurihock/voicesmith/dsp/processors/NativeResampleProcessor;->processFrame(J[F[F)V

    .line 34
    return-void
.end method
