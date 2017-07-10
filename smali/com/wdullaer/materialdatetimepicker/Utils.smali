.class public Lcom/wdullaer/materialdatetimepicker/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final FULL_ALPHA:I = 0xff

.field public static final PULSE_ANIMATOR_DURATION:I = 0x220

.field public static final SELECTED_ALPHA:I = 0xff

.field public static final SELECTED_ALPHA_THEME_DARK:I = 0xff


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static darkenColor(I)I
    .registers 5
    .param p0, "color"    # I

    .prologue
    const/4 v3, 0x2

    .line 134
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 135
    .local v0, "hsv":[F
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 136
    aget v1, v0, v3

    const v2, 0x3f4ccccd

    mul-float/2addr v1, v2

    aput v1, v0, v3

    .line 137
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    return v1
.end method

.method public static dpToPx(FLandroid/content/res/Resources;)I
    .registers 5
    .param p0, "dp"    # F
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 129
    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, p0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 130
    .local v0, "px":F
    float-to-int v1, v0

    return v1
.end method

.method public static getAccentColorFromThemeIfAvailable(Landroid/content/Context;)I
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    .line 146
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 148
    .local v1, "typedValue":Landroid/util/TypedValue;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_19

    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010435

    invoke-virtual {v2, v3, v1, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 150
    iget v2, v1, Landroid/util/TypedValue;->data:I

    .line 158
    :goto_18
    return v2

    .line 153
    :cond_19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "colorAccent"

    const-string v4, "attr"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 154
    .local v0, "colorAccentResId":I
    if-eqz v0, :cond_38

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 155
    iget v2, v1, Landroid/util/TypedValue;->data:I

    goto :goto_18

    .line 158
    :cond_38
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_accent_color:I

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    goto :goto_18
.end method

.method public static getPulseAnimator(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;
    .registers 16
    .param p0, "labelToAnimate"    # Landroid/view/View;
    .param p1, "decreaseRatio"    # F
    .param p2, "increaseRatio"    # F

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 110
    const/4 v7, 0x0

    invoke-static {v7, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    .line 111
    .local v0, "k0":Landroid/animation/Keyframe;
    const v7, 0x3e8ccccd

    invoke-static {v7, p1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    .line 112
    .local v1, "k1":Landroid/animation/Keyframe;
    const v7, 0x3f30a3d7

    invoke-static {v7, p2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    .line 113
    .local v2, "k2":Landroid/animation/Keyframe;
    invoke-static {v8, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    .line 115
    .local v3, "k3":Landroid/animation/Keyframe;
    const-string v7, "scaleX"

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/animation/Keyframe;

    aput-object v0, v8, v9

    aput-object v1, v8, v10

    aput-object v2, v8, v11

    aput-object v3, v8, v12

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 116
    .local v5, "scaleX":Landroid/animation/PropertyValuesHolder;
    const-string v7, "scaleY"

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/animation/Keyframe;

    aput-object v0, v8, v9

    aput-object v1, v8, v10

    aput-object v2, v8, v11

    aput-object v3, v8, v12

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 117
    .local v6, "scaleY":Landroid/animation/PropertyValuesHolder;
    new-array v7, v11, [Landroid/animation/PropertyValuesHolder;

    aput-object v5, v7, v9

    aput-object v6, v7, v10

    invoke-static {p0, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 119
    .local v4, "pulseAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0x220

    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 121
    return-object v4
.end method

.method public static isDarkTheme(Landroid/content/Context;Z)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "current"    # Z

    .prologue
    .line 168
    sget v0, Lcom/wdullaer/materialdatetimepicker/R$attr;->mdtp_theme_dark:I

    invoke-static {p0, v0, p1}, Lcom/wdullaer/materialdatetimepicker/Utils;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public static isJellybeanOrLater()Z
    .registers 2

    .prologue
    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static resolveBoolean(Landroid/content/Context;IZ)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p2, "fallback"    # Z

    .prologue
    const/4 v3, 0x0

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 181
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_f
    invoke-virtual {v0, v1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_17

    move-result v1

    .line 183
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v1

    :catchall_17
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method public static tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {}, Lcom/wdullaer/materialdatetimepicker/Utils;->isJellybeanOrLater()Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz p0, :cond_d

    if-eqz p1, :cond_d

    .line 58
    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 60
    :cond_d
    return-void
.end method
