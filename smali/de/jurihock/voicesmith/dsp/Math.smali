.class public final Lde/jurihock/voicesmith/dsp/Math;
.super Ljava/lang/Object;
.source "Math.java"


# static fields
.field public static final PI:F = 3.1415927f


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native abs(FF)F
.end method

.method public static native arg(FF)F
.end method

.method public static native atan2(FF)F
.end method

.method public static native ceil(F)F
.end method

.method public static native cos(F)F
.end method

.method public static native floor(F)F
.end method

.method public static native imag(FF)F
.end method

.method public static native log10(F)F
.end method

.method public static native max(FF)F
.end method

.method public static native mean([SII)S
.end method

.method public static native min(FF)F
.end method

.method public static native pow(FF)F
.end method

.method public static native princarg(F)F
.end method

.method public static native random(FF)F
.end method

.method public static native real(FF)F
.end method

.method public static native rms([SII)F
.end method

.method public static native rms([SIIS)F
.end method

.method public static native rms2dbfs(FFF)F
.end method

.method public static round(F)I
    .registers 2
    .param p0, "value"    # F

    .prologue
    .line 26
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static native sin(F)F
.end method

.method public static native sqrt(F)F
.end method
