.class public Lorg/telegram/ui/Components/CubicBezierInterpolator;
.super Ljava/lang/Object;
.source "CubicBezierInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field public static final DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

.field public static final EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

.field public static final EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

.field public static final EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;


# instance fields
.field protected a:Landroid/graphics/PointF;

.field protected b:Landroid/graphics/PointF;

.field protected c:Landroid/graphics/PointF;

.field protected end:Landroid/graphics/PointF;

.field protected start:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    .line 8
    new-instance v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    const-wide v4, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/Components/CubicBezierInterpolator;-><init>(DDDD)V

    sput-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 9
    new-instance v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide v6, 0x3fe28f5c28f5c28fL    # 0.58

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/Components/CubicBezierInterpolator;-><init>(DDDD)V

    sput-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 10
    new-instance v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide v2, 0x3fdae147ae147ae1L    # 0.42

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/Components/CubicBezierInterpolator;-><init>(DDDD)V

    sput-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 11
    new-instance v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide v2, 0x3fdae147ae147ae1L    # 0.42

    const-wide/16 v4, 0x0

    const-wide v6, 0x3fe28f5c28f5c28fL    # 0.58

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/Components/CubicBezierInterpolator;-><init>(DDDD)V

    sput-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    return-void
.end method

.method public constructor <init>(DDDD)V
    .registers 14
    .param p1, "startX"    # D
    .param p3, "startY"    # D
    .param p5, "endX"    # D
    .param p7, "endY"    # D

    .prologue
    .line 35
    double-to-float v0, p1

    double-to-float v1, p3

    double-to-float v2, p5

    double-to-float v3, p7

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/telegram/ui/Components/CubicBezierInterpolator;-><init>(FFFF)V

    .line 36
    return-void
.end method

.method public constructor <init>(FFFF)V
    .registers 7
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "endX"    # F
    .param p4, "endY"    # F

    .prologue
    .line 31
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p3, p4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .registers 6
    .param p1, "start"    # Landroid/graphics/PointF;
    .param p2, "end"    # Landroid/graphics/PointF;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->a:Landroid/graphics/PointF;

    .line 16
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->b:Landroid/graphics/PointF;

    .line 17
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->c:Landroid/graphics/PointF;

    .line 20
    iget v0, p1, Landroid/graphics/PointF;->x:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_27

    iget v0, p1, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2f

    .line 21
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "startX value must be in the range [0, 1]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_2f
    iget v0, p2, Landroid/graphics/PointF;->x:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_3b

    iget v0, p2, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_43

    .line 24
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endX value must be in the range [0, 1]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_43
    iput-object p1, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->start:Landroid/graphics/PointF;

    .line 27
    iput-object p2, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->end:Landroid/graphics/PointF;

    .line 28
    return-void
.end method

.method private getBezierCoordinateX(F)F
    .registers 6
    .param p1, "time"    # F

    .prologue
    const/high16 v3, 0x40400000    # 3.0f

    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->c:Landroid/graphics/PointF;

    iget-object v1, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->start:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->b:Landroid/graphics/PointF;

    iget-object v1, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->end:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->start:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    iget-object v2, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->c:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->a:Landroid/graphics/PointF;

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->c:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->b:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->b:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->a:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method private getXDerivate(F)F
    .registers 6
    .param p1, "t"    # F

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/high16 v1, 0x40000000    # 2.0f

    iget-object v2, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->b:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    iget-object v3, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->a:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected getBezierCoordinateY(F)F
    .registers 6
    .param p1, "time"    # F

    .prologue
    const/high16 v3, 0x40400000    # 3.0f

    .line 44
    iget-object v0, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->c:Landroid/graphics/PointF;

    iget-object v1, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->start:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->b:Landroid/graphics/PointF;

    iget-object v1, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->end:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->start:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    iget-object v2, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->c:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 46
    iget-object v0, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->a:Landroid/graphics/PointF;

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->c:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->b:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 47
    iget-object v0, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->b:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->a:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method public getInterpolation(F)F
    .registers 3
    .param p1, "time"    # F

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getXForTime(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getBezierCoordinateY(F)F

    move-result v0

    return v0
.end method

.method protected getXForTime(F)F
    .registers 10
    .param p1, "time"    # F

    .prologue
    .line 51
    move v1, p1

    .line 53
    .local v1, "x":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_2
    const/16 v3, 0xe

    if-ge v0, v3, :cond_1a

    .line 54
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getBezierCoordinateX(F)F

    move-result v3

    sub-float v2, v3, p1

    .line 55
    .local v2, "z":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v3, v4, v6

    if-gez v3, :cond_1b

    .line 60
    .end local v2    # "z":F
    :cond_1a
    return v1

    .line 58
    .restart local v2    # "z":F
    :cond_1b
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getXDerivate(F)F

    move-result v3

    div-float v3, v2, v3

    sub-float/2addr v1, v3

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
