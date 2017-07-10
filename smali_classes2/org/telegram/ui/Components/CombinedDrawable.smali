.class public Lorg/telegram/ui/Components/CombinedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CombinedDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private backHeight:I

.field private backWidth:I

.field private background:Landroid/graphics/drawable/Drawable;

.field private fullSize:Z

.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconHeight:I

.field private iconWidth:I

.field private left:I

.field private top:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "backgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "iconDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/telegram/ui/Components/CombinedDrawable;->background:Landroid/graphics/drawable/Drawable;

    .line 43
    iput-object p2, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    .line 44
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .registers 5
    .param p1, "backgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "iconDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "leftOffset"    # I
    .param p4, "topOffset"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/telegram/ui/Components/CombinedDrawable;->background:Landroid/graphics/drawable/Drawable;

    .line 30
    iput-object p2, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    .line 31
    iput p3, p0, Lorg/telegram/ui/Components/CombinedDrawable;->left:I

    .line 32
    iput p4, p0, Lorg/telegram/ui/Components/CombinedDrawable;->top:I

    .line 33
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 34
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 102
    iget-object v2, p0, Lorg/telegram/ui/Components/CombinedDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CombinedDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 103
    iget-object v2, p0, Lorg/telegram/ui/Components/CombinedDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 106
    iget-boolean v2, p0, Lorg/telegram/ui/Components/CombinedDrawable;->fullSize:Z

    if-eqz v2, :cond_21

    .line 107
    iget-object v2, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CombinedDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 119
    :goto_1b
    iget-object v2, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 120
    return-void

    .line 109
    :cond_21
    iget v2, p0, Lorg/telegram/ui/Components/CombinedDrawable;->iconWidth:I

    if-eqz v2, :cond_53

    .line 110
    invoke-virtual {p0}, Lorg/telegram/ui/Components/CombinedDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/CombinedDrawable;->iconWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/Components/CombinedDrawable;->left:I

    add-int v0, v2, v3

    .line 111
    .local v0, "x":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/CombinedDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/CombinedDrawable;->iconHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/Components/CombinedDrawable;->top:I

    add-int v1, v2, v3

    .line 112
    .local v1, "y":I
    iget-object v2, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lorg/telegram/ui/Components/CombinedDrawable;->iconWidth:I

    add-int/2addr v3, v0

    iget v4, p0, Lorg/telegram/ui/Components/CombinedDrawable;->iconHeight:I

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1b

    .line 114
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_53
    invoke-virtual {p0}, Lorg/telegram/ui/Components/CombinedDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/Components/CombinedDrawable;->left:I

    add-int v0, v2, v3

    .line 115
    .restart local v0    # "x":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/CombinedDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/Components/CombinedDrawable;->top:I

    add-int v1, v2, v3

    .line 116
    .restart local v1    # "y":I
    iget-object v2, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1b
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->background:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .prologue
    .line 135
    iget v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->backHeight:I

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->backHeight:I

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_6
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .prologue
    .line 130
    iget v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->backWidth:I

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->backWidth:I

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_6
.end method

.method public getMinimumHeight()I
    .registers 2

    .prologue
    .line 145
    iget v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->backHeight:I

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->backHeight:I

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    goto :goto_6
.end method

.method public getMinimumWidth()I
    .registers 2

    .prologue
    .line 140
    iget v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->backWidth:I

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->backWidth:I

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    goto :goto_6
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getState()[I
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 155
    invoke-virtual {p0}, Lorg/telegram/ui/Components/CombinedDrawable;->invalidateSelf()V

    .line 156
    return-void
.end method

.method public isStateful()Z
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public jumpToCurrentState()V
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 93
    return-void
.end method

.method protected onStateChange([I)Z
    .registers 3
    .param p1, "state"    # [I

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "what"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "when"    # J

    .prologue
    .line 160
    invoke-virtual {p0, p2, p3, p4}, Lorg/telegram/ui/Components/CombinedDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 161
    return-void
.end method

.method public setAlpha(I)V
    .registers 3
    .param p1, "alpha"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 125
    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 126
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 67
    return-void
.end method

.method public setCustomSize(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 48
    iput p1, p0, Lorg/telegram/ui/Components/CombinedDrawable;->backWidth:I

    .line 49
    iput p2, p0, Lorg/telegram/ui/Components/CombinedDrawable;->backHeight:I

    .line 50
    return-void
.end method

.method public setFullsize(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lorg/telegram/ui/Components/CombinedDrawable;->fullSize:Z

    .line 62
    return-void
.end method

.method public setIconSize(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 37
    iput p1, p0, Lorg/telegram/ui/Components/CombinedDrawable;->iconWidth:I

    .line 38
    iput p2, p0, Lorg/telegram/ui/Components/CombinedDrawable;->iconHeight:I

    .line 39
    return-void
.end method

.method public setState([I)Z
    .registers 3
    .param p1, "stateSet"    # [I

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "what"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 165
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/CombinedDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 166
    return-void
.end method
