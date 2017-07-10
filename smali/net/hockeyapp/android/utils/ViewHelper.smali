.class public Lnet/hockeyapp/android/utils/ViewHelper;
.super Ljava/lang/Object;
.source "ViewHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGradient()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 8
    const/4 v2, 0x2

    new-array v0, v2, [I

    fill-array-data v0, :array_e

    .line 9
    .local v0, "colors":[I
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 10
    .local v1, "gradient":Landroid/graphics/drawable/GradientDrawable;
    return-object v1

    .line 8
    :array_e
    .array-data 4
        -0x1000000
        0x0
    .end array-data
.end method
