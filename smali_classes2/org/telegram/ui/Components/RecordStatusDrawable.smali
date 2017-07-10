.class public Lorg/telegram/ui/Components/RecordStatusDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RecordStatusDrawable.java"


# instance fields
.field private isChat:Z

.field private lastUpdateTime:J

.field private progress:F

.field private rect:Landroid/graphics/RectF;

.field private started:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 19
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 21
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->isChat:Z

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->lastUpdateTime:J

    .line 23
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->started:Z

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->rect:Landroid/graphics/RectF;

    return-void
.end method

.method private update()V
    .registers 9

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 33
    .local v2, "newTime":J
    iget-wide v4, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->lastUpdateTime:J

    sub-long v0, v2, v4

    .line 34
    .local v0, "dt":J
    iput-wide v2, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->lastUpdateTime:J

    .line 35
    const-wide/16 v4, 0x32

    cmp-long v4, v0, v4

    if-lez v4, :cond_14

    .line 36
    const-wide/16 v0, 0x32

    .line 38
    :cond_14
    iget v4, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->progress:F

    long-to-float v5, v0

    const/high16 v6, 0x43960000    # 300.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->progress:F

    .line 39
    :goto_1d
    iget v4, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->progress:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_29

    .line 40
    iget v4, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->progress:F

    sub-float/2addr v4, v7

    iput v4, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->progress:F

    goto :goto_1d

    .line 42
    :cond_29
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecordStatusDrawable;->invalidateSelf()V

    .line 43
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v10, 0x437f0000    # 255.0f

    const/high16 v9, 0x40800000    # 4.0f

    const/high16 v8, 0x3f800000    # 1.0f

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 58
    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecordStatusDrawable;->getIntrinsicHeight()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->isChat:Z

    if-eqz v0, :cond_54

    move v0, v8

    :goto_15
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 59
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_1f
    const/4 v0, 0x4

    if-ge v6, v0, :cond_6e

    .line 60
    if-nez v6, :cond_57

    .line 61
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_statusRecordPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->progress:F

    mul-float/2addr v1, v10

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 67
    :goto_2d
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    mul-int/2addr v0, v6

    int-to-float v0, v0

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->progress:F

    mul-float/2addr v1, v2

    add-float v7, v0, v1

    .line 68
    .local v7, "side":F
    iget-object v0, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->rect:Landroid/graphics/RectF;

    neg-float v1, v7

    neg-float v2, v7

    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 69
    iget-object v1, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v2, -0x3e900000    # -15.0f

    const/high16 v3, 0x41f00000    # 30.0f

    const/4 v4, 0x0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_statusRecordPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 59
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 58
    .end local v6    # "a":I
    .end local v7    # "side":F
    :cond_54
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_15

    .line 62
    .restart local v6    # "a":I
    :cond_57
    const/4 v0, 0x3

    if-ne v6, v0, :cond_66

    .line 63
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_statusRecordPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->progress:F

    sub-float v1, v8, v1

    mul-float/2addr v1, v10

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_2d

    .line 65
    :cond_66
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_statusRecordPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_2d

    .line 71
    :cond_6e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 72
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->started:Z

    if-eqz v0, :cond_78

    .line 73
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecordStatusDrawable;->update()V

    .line 75
    :cond_78
    return-void
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .prologue
    .line 99
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .prologue
    .line 94
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .registers 2
    .param p1, "alpha"    # I

    .prologue
    .line 80
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 85
    return-void
.end method

.method public setIsChat(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->isChat:Z

    .line 29
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->lastUpdateTime:J

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->started:Z

    .line 48
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecordStatusDrawable;->invalidateSelf()V

    .line 49
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->started:Z

    .line 53
    return-void
.end method
