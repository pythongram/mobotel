.class public Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable$Builder;
.super Ljava/lang/Object;
.source "CircularProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field centerColor:I

.field circleScale:F

.field outlineColor:I

.field ringColor:I

.field ringWidth:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable$Builder;->circleScale:F

    return-void
.end method


# virtual methods
.method public create()Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;
    .registers 7

    .prologue
    .line 418
    new-instance v0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;

    iget v1, p0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable$Builder;->ringWidth:I

    iget v2, p0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable$Builder;->circleScale:F

    iget v3, p0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable$Builder;->outlineColor:I

    iget v4, p0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable$Builder;->ringColor:I

    iget v5, p0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable$Builder;->centerColor:I

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable;-><init>(IFIII)V

    return-object v0
.end method

.method public setCenterColor(I)Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable$Builder;
    .registers 2
    .param p1, "centerColor"    # I

    .prologue
    .line 397
    iput p1, p0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable$Builder;->centerColor:I

    .line 398
    return-object p0
.end method

.method public setInnerCircleScale(F)Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable$Builder;
    .registers 2
    .param p1, "circleScale"    # F

    .prologue
    .line 408
    iput p1, p0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable$Builder;->circleScale:F

    .line 409
    return-object p0
.end method

.method public setOutlineColor(I)Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable$Builder;
    .registers 2
    .param p1, "outlineColor"    # I

    .prologue
    .line 374
    iput p1, p0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable$Builder;->outlineColor:I

    .line 375
    return-object p0
.end method

.method public setRingColor(I)Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable$Builder;
    .registers 2
    .param p1, "ringColor"    # I

    .prologue
    .line 385
    iput p1, p0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable$Builder;->ringColor:I

    .line 386
    return-object p0
.end method

.method public setRingWidth(I)Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable$Builder;
    .registers 2
    .param p1, "ringWidth"    # I

    .prologue
    .line 363
    iput p1, p0, Lorg/telegram/ui/Telehgram/cleaner/CircularProgressDrawable$Builder;->ringWidth:I

    .line 364
    return-object p0
.end method
