.class public Lcom/wdullaer/materialdatetimepicker/time/CircleView;
.super Landroid/view/View;
.source "CircleView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CircleView"


# instance fields
.field private mAmPmCircleRadiusMultiplier:F

.field private mCircleColor:I

.field private mCircleRadius:I

.field private mCircleRadiusMultiplier:F

.field private mDotColor:I

.field private mDrawValuesReady:Z

.field private mIs24HourMode:Z

.field private mIsInitialized:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mXCenter:I

.field private mYCenter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->mIsInitialized:Z

    .line 52
    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;

    .prologue
    const/4 v3, 0x1

    .line 55
    iget-boolean v2, p0, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->mIsInitialized:Z

    if-eqz v2, :cond_d

    .line 56
    const-string v2, "CircleView"

    const-string v3, "CircleView may only be initialized once."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_c
    return-void

    .line 60
    :cond_d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 62
    .local v1, "res":Landroid/content/res/Resources;
    invoke-interface {p2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;->isThemeDark()Z

    move-result v2

    if-eqz v2, :cond_43

    sget v0, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_circle_background_dark_theme:I

    .line 63
    .local v0, "colorRes":I
    :goto_19
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->mCircleColor:I

    .line 64
    invoke-interface {p2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;->getAccentColor()I

    move-result v2

    iput v2, p0, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->mDotColor:I

    .line 65
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    invoke-interface {p2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;->is24HourMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->mIs24HourMode:Z

    .line 68
    iget-boolean v2, p0, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->mIs24HourMode:Z

    if-eqz v2, :cond_46

    .line 69
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_circle_radius_multiplier_24HourMode:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->mCircleRadiusMultiplier:F

    .line 78
    :goto_40
    iput-boolean v3, p0, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->mIsInitialized:Z

    goto :goto_c

    .line 62
    .end local v0    # "colorRes":I
    :cond_43
    sget v0, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_circle_color:I

    goto :goto_19

    .line 72
    .restart local v0    # "colorRes":I
    :cond_46
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_circle_radius_multiplier:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->mCircleRadiusMultiplier:F

    .line 74
    sget v2, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_ampm_circle_radius_multiplier:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->mAmPmCircleRadiusMultiplier:F

    goto :goto_40
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->getWidth()I

    move-result v1

    .line 84
    .local v1, "viewWidth":I
    if-eqz v1, :cond_a

    iget-boolean v2, p0, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->mIsInitialized:Z

    if-nez v2, :cond_b

    .line 111
    :cond_a
    :goto_a
    return-void

    .line 88
    :cond_b
    iget-boolean v2, p0, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->mDrawValuesReady:Z

    if-nez v2, :cond_47

    .line 89
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->mXCenter:I

    .line 90
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->mYCenter:I

    .line 91
    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->mXCenter:I

    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->mYCenter:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->mCircleRadiusMultiplier:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->mCircleRadius:I

    .line 93
    iget-boolean v2, p0, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->mIs24HourMode:Z

    if-nez v2, :cond_44

    .line 97
    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->mCircleRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->mAmPmCircleRadiusMultiplier:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 98
    .local v0, "amPmCircleRadius":I
    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->mYCenter:I

    int-to-double v2, v2

    int-to-double v4, v0

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->mYCenter:I

    .line 101
    .end local v0    # "amPmCircleRadius":I
    :cond_44
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->mDrawValuesReady:Z

    .line 105
    :cond_47
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->mCircleColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->mXCenter:I

    int-to-float v2, v2

    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->mYCenter:I

    int-to-float v3, v3

    iget v4, p0, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->mCircleRadius:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 109
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->mDotColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->mXCenter:I

    int-to-float v2, v2

    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->mYCenter:I

    int-to-float v3, v3

    const/high16 v4, 0x41000000    # 8.0f

    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_a
.end method
