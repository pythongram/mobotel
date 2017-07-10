.class public Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;
.super Ljava/lang/Object;
.source "RoundedCornersTransformation.java"

# interfaces
.implements Lcom/bumptech/glide/load/Transformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Transformation",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mBitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private mCornerType:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

.field private mDiameter:I

.field private mMargin:I

.field private mRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "radius"    # I
    .param p3, "margin"    # I

    .prologue
    .line 26
    sget-object v0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;->ALL:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;-><init>(Landroid/content/Context;IILorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "radius"    # I
    .param p3, "margin"    # I
    .param p4, "cornerType"    # Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    .prologue
    .line 35
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)V
    .registers 5
    .param p1, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p2, "radius"    # I
    .param p3, "margin"    # I

    .prologue
    .line 30
    sget-object v0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;->ALL:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;)V
    .registers 6
    .param p1, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p2, "radius"    # I
    .param p3, "margin"    # I
    .param p4, "cornerType"    # Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mBitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 41
    iput p2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    .line 42
    iget v0, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mDiameter:I

    .line 43
    iput p3, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    .line 44
    iput-object p4, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mCornerType:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    .line 45
    return-void
.end method

.method private drawBottomLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 138
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mDiameter:I

    int-to-float v2, v2

    sub-float v2, p4, v2

    iget v3, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 140
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v4, v4

    sub-float v4, p4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 141
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 142
    return-void
.end method

.method private drawBottomRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 145
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mDiameter:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mDiameter:I

    int-to-float v2, v2

    sub-float v2, p4, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 147
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    invoke-direct {v0, v1, v2, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 148
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    sub-float v3, p4, v3

    invoke-direct {v0, v1, v2, p3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 149
    return-void
.end method

.method private drawBottomRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 158
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mDiameter:I

    int-to-float v2, v2

    sub-float v2, p4, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 160
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    sub-float v3, p4, v3

    invoke-direct {v0, v1, v2, p3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 161
    return-void
.end method

.method private drawDiagonalFromTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 210
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    iget v5, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 212
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mDiameter:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mDiameter:I

    int-to-float v2, v2

    sub-float v2, p4, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 214
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    iget v3, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mDiameter:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    invoke-direct {v0, v1, v2, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 215
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    sub-float v3, p4, v3

    invoke-direct {v0, v1, v2, p3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 216
    return-void
.end method

.method private drawDiagonalFromTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 220
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mDiameter:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, p3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 222
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mDiameter:I

    int-to-float v2, v2

    sub-float v2, p4, v2

    iget v3, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 224
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    iget v4, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v4, v4

    sub-float v4, p4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 225
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    iget v3, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 226
    return-void
.end method

.method private drawLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 164
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 166
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 167
    return-void
.end method

.method private drawOtherBottomLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 192
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, p3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 194
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mDiameter:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 196
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    iget v3, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    invoke-direct {v0, v1, v2, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 197
    return-void
.end method

.method private drawOtherBottomRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 201
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, p3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 203
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 205
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    iget v3, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 206
    return-void
.end method

.method private drawOtherTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 176
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mDiameter:I

    int-to-float v2, v2

    sub-float v2, p4, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 178
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mDiameter:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 180
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    iget v4, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v4, v4

    sub-float v4, p4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 181
    return-void
.end method

.method private drawOtherTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 184
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 186
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mDiameter:I

    int-to-float v2, v2

    sub-float v2, p4, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 188
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    sub-float v3, p4, v3

    invoke-direct {v0, v1, v2, p3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 189
    return-void
.end method

.method private drawRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 170
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mDiameter:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 172
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    invoke-direct {v0, v1, v2, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 173
    return-void
.end method

.method private drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    .line 68
    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    sub-float v1, p3, v2

    .line 69
    .local v1, "right":F
    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    sub-float v0, p4, v2

    .line 71
    .local v0, "bottom":F
    sget-object v2, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$1;->$SwitchMap$org$telegram$ui$Telehgram$RoundedCornersTransformation$CornerType:[I

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mCornerType:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    invoke-virtual {v3}, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_7a

    .line 118
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v4, v4

    invoke-direct {v2, v3, v4, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 121
    :goto_2b
    return-void

    .line 73
    :pswitch_2c
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v4, v4

    invoke-direct {v2, v3, v4, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_2b

    .line 76
    :pswitch_41
    invoke-direct {p0, p1, p2, v1, v0}, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->drawTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_2b

    .line 79
    :pswitch_45
    invoke-direct {p0, p1, p2, v1, v0}, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->drawTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_2b

    .line 82
    :pswitch_49
    invoke-direct {p0, p1, p2, v1, v0}, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->drawBottomLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_2b

    .line 85
    :pswitch_4d
    invoke-direct {p0, p1, p2, v1, v0}, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->drawBottomRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_2b

    .line 88
    :pswitch_51
    invoke-direct {p0, p1, p2, v1, v0}, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->drawTopRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_2b

    .line 91
    :pswitch_55
    invoke-direct {p0, p1, p2, v1, v0}, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->drawBottomRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_2b

    .line 94
    :pswitch_59
    invoke-direct {p0, p1, p2, v1, v0}, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->drawLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_2b

    .line 97
    :pswitch_5d
    invoke-direct {p0, p1, p2, v1, v0}, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->drawRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_2b

    .line 100
    :pswitch_61
    invoke-direct {p0, p1, p2, v1, v0}, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->drawOtherTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_2b

    .line 103
    :pswitch_65
    invoke-direct {p0, p1, p2, v1, v0}, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->drawOtherTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_2b

    .line 106
    :pswitch_69
    invoke-direct {p0, p1, p2, v1, v0}, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->drawOtherBottomLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_2b

    .line 109
    :pswitch_6d
    invoke-direct {p0, p1, p2, v1, v0}, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->drawOtherBottomRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_2b

    .line 112
    :pswitch_71
    invoke-direct {p0, p1, p2, v1, v0}, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->drawDiagonalFromTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_2b

    .line 115
    :pswitch_75
    invoke-direct {p0, p1, p2, v1, v0}, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->drawDiagonalFromTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_2b

    .line 71
    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_41
        :pswitch_45
        :pswitch_49
        :pswitch_4d
        :pswitch_51
        :pswitch_55
        :pswitch_59
        :pswitch_5d
        :pswitch_61
        :pswitch_65
        :pswitch_69
        :pswitch_6d
        :pswitch_71
        :pswitch_75
    .end packed-switch
.end method

.method private drawTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 124
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    iget v5, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 126
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    iget v3, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 127
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 128
    return-void
.end method

.method private drawTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 131
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mDiameter:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, p3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 133
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    invoke-direct {v0, v1, v2, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 134
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    iget v3, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 135
    return-void
.end method

.method private drawTopRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 152
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    iget v4, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, p3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 154
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    iget v3, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 155
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RoundedTransformation(radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", margin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", diameter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mDiameter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cornerType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mCornerType:Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;

    .line 231
    invoke-virtual {v1}, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation$CornerType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    return-object v0
.end method

.method public transform(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;
    .registers 13
    .param p2, "outWidth"    # I
    .param p3, "outHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 51
    .local v4, "source":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 52
    .local v5, "width":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 54
    .local v2, "height":I
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mBitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {v6, v5, v2, v7}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 55
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1e

    .line 56
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 59
    :cond_1e
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 60
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 61
    .local v3, "paint":Landroid/graphics/Paint;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    new-instance v6, Landroid/graphics/BitmapShader;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v6, v4, v7, v8}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 63
    int-to-float v6, v5

    int-to-float v7, v2

    invoke-direct {p0, v1, v3, v6, v7}, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    .line 64
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/RoundedCornersTransformation;->mBitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-static {v0, v6}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    move-result-object v6

    return-object v6
.end method
