.class final Landroid/support/v7/graphics/Palette$1;
.super Ljava/lang/Object;
.source "Palette.java"

# interfaces
.implements Landroid/support/v7/graphics/Palette$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/graphics/Palette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static final BLACK_MAX_LIGHTNESS:F = 0.05f

.field private static final WHITE_MIN_LIGHTNESS:F = 0.95f


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 954
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isBlack([F)Z
    .registers 4
    .param p1, "hslColor"    # [F

    .prologue
    .line 967
    const/4 v0, 0x2

    aget v0, p1, v0

    const v1, 0x3d4ccccd

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private isNearRedILine([F)Z
    .registers 6
    .param p1, "hslColor"    # [F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 981
    aget v2, p1, v1

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1c

    aget v2, p1, v1

    const/high16 v3, 0x42140000    # 37.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1c

    aget v2, p1, v0

    const v3, 0x3f51eb85

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1c

    :goto_1b
    return v0

    :cond_1c
    move v0, v1

    goto :goto_1b
.end method

.method private isWhite([F)Z
    .registers 4
    .param p1, "hslColor"    # [F

    .prologue
    .line 974
    const/4 v0, 0x2

    aget v0, p1, v0

    const v1, 0x3f733333

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public isAllowed(I[F)Z
    .registers 4
    .param p1, "rgb"    # I
    .param p2, "hsl"    # [F

    .prologue
    .line 960
    invoke-direct {p0, p2}, Landroid/support/v7/graphics/Palette$1;->isWhite([F)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-direct {p0, p2}, Landroid/support/v7/graphics/Palette$1;->isBlack([F)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-direct {p0, p2}, Landroid/support/v7/graphics/Palette$1;->isNearRedILine([F)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method
