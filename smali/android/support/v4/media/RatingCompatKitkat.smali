.class Landroid/support/v4/media/RatingCompatKitkat;
.super Ljava/lang/Object;
.source "RatingCompatKitkat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x13
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPercentRating(Ljava/lang/Object;)F
    .registers 2
    .param p0, "ratingObj"    # Ljava/lang/Object;

    .prologue
    .line 67
    check-cast p0, Landroid/media/Rating;

    .end local p0    # "ratingObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/Rating;->getPercentRating()F

    move-result v0

    return v0
.end method

.method public static getRatingStyle(Ljava/lang/Object;)I
    .registers 2
    .param p0, "ratingObj"    # Ljava/lang/Object;

    .prologue
    .line 51
    check-cast p0, Landroid/media/Rating;

    .end local p0    # "ratingObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/Rating;->getRatingStyle()I

    move-result v0

    return v0
.end method

.method public static getStarRating(Ljava/lang/Object;)F
    .registers 2
    .param p0, "ratingObj"    # Ljava/lang/Object;

    .prologue
    .line 63
    check-cast p0, Landroid/media/Rating;

    .end local p0    # "ratingObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/Rating;->getStarRating()F

    move-result v0

    return v0
.end method

.method public static hasHeart(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "ratingObj"    # Ljava/lang/Object;

    .prologue
    .line 55
    check-cast p0, Landroid/media/Rating;

    .end local p0    # "ratingObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/Rating;->hasHeart()Z

    move-result v0

    return v0
.end method

.method public static isRated(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "ratingObj"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p0, Landroid/media/Rating;

    .end local p0    # "ratingObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/Rating;->isRated()Z

    move-result v0

    return v0
.end method

.method public static isThumbUp(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "ratingObj"    # Ljava/lang/Object;

    .prologue
    .line 59
    check-cast p0, Landroid/media/Rating;

    .end local p0    # "ratingObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/Rating;->isThumbUp()Z

    move-result v0

    return v0
.end method

.method public static newHeartRating(Z)Ljava/lang/Object;
    .registers 2
    .param p0, "hasHeart"    # Z

    .prologue
    .line 31
    invoke-static {p0}, Landroid/media/Rating;->newHeartRating(Z)Landroid/media/Rating;

    move-result-object v0

    return-object v0
.end method

.method public static newPercentageRating(F)Ljava/lang/Object;
    .registers 2
    .param p0, "percent"    # F

    .prologue
    .line 43
    invoke-static {p0}, Landroid/media/Rating;->newPercentageRating(F)Landroid/media/Rating;

    move-result-object v0

    return-object v0
.end method

.method public static newStarRating(IF)Ljava/lang/Object;
    .registers 3
    .param p0, "starRatingStyle"    # I
    .param p1, "starRating"    # F

    .prologue
    .line 39
    invoke-static {p0, p1}, Landroid/media/Rating;->newStarRating(IF)Landroid/media/Rating;

    move-result-object v0

    return-object v0
.end method

.method public static newThumbRating(Z)Ljava/lang/Object;
    .registers 2
    .param p0, "thumbIsUp"    # Z

    .prologue
    .line 35
    invoke-static {p0}, Landroid/media/Rating;->newThumbRating(Z)Landroid/media/Rating;

    move-result-object v0

    return-object v0
.end method

.method public static newUnratedRating(I)Ljava/lang/Object;
    .registers 2
    .param p0, "ratingStyle"    # I

    .prologue
    .line 27
    invoke-static {p0}, Landroid/media/Rating;->newUnratedRating(I)Landroid/media/Rating;

    move-result-object v0

    return-object v0
.end method
