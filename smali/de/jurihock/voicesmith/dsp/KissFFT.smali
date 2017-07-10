.class public final Lde/jurihock/voicesmith/dsp/KissFFT;
.super Ljava/lang/Object;
.source "KissFFT.java"


# instance fields
.field private final handle:J


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "size"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-direct {p0, p1}, Lde/jurihock/voicesmith/dsp/KissFFT;->alloc(I)J

    move-result-wide v0

    iput-wide v0, p0, Lde/jurihock/voicesmith/dsp/KissFFT;->handle:J

    .line 27
    return-void
.end method

.method private native alloc(I)J
.end method

.method private native fft(J[F)V
.end method

.method private native ifft(J[F)V
.end method


# virtual methods
.method public fft([F)V
    .registers 4
    .param p1, "buffer"    # [F

    .prologue
    .line 30
    iget-wide v0, p0, Lde/jurihock/voicesmith/dsp/KissFFT;->handle:J

    invoke-direct {p0, v0, v1, p1}, Lde/jurihock/voicesmith/dsp/KissFFT;->fft(J[F)V

    .line 31
    return-void
.end method

.method public ifft([F)V
    .registers 4
    .param p1, "buffer"    # [F

    .prologue
    .line 34
    iget-wide v0, p0, Lde/jurihock/voicesmith/dsp/KissFFT;->handle:J

    invoke-direct {p0, v0, v1, p1}, Lde/jurihock/voicesmith/dsp/KissFFT;->ifft(J[F)V

    .line 35
    return-void
.end method
