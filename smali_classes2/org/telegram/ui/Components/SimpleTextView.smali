.class public Lorg/telegram/ui/Components/SimpleTextView;
.super Landroid/view/View;
.source "SimpleTextView.java"


# instance fields
.field private gravity:I

.field private layout:Landroid/text/Layout;

.field private offsetX:I

.field private spannableStringBuilder:Landroid/text/SpannableStringBuilder;

.field private text:Ljava/lang/CharSequence;

.field private textPaint:Landroid/text/TextPaint;

.field private wasLayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SimpleTextView;->wasLayout:Z

    .line 38
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    .line 39
    return-void
.end method

.method private createLayout(I)V
    .registers 13
    .param p1, "width"    # I

    .prologue
    const/4 v10, 0x0

    .line 58
    iget-object v0, p0, Lorg/telegram/ui/Components/SimpleTextView;->text:Ljava/lang/CharSequence;

    if-eqz v0, :cond_48

    .line 60
    :try_start_5
    iget-object v0, p0, Lorg/telegram/ui/Components/SimpleTextView;->text:Ljava/lang/CharSequence;

    iget-object v2, p0, Lorg/telegram/ui/Components/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    int-to-float v3, p1

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 61
    .local v1, "string":Ljava/lang/CharSequence;
    new-instance v0, Landroid/text/StaticLayout;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v5, p1

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SimpleTextView;->layout:Landroid/text/Layout;

    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/SimpleTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_48

    .line 80
    iget v0, p0, Lorg/telegram/ui/Components/SimpleTextView;->gravity:I

    and-int/lit8 v0, v0, 0x7

    const/4 v2, 0x3

    if-ne v0, v2, :cond_49

    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/SimpleTextView;->layout:Landroid/text/Layout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/SimpleTextView;->offsetX:I

    .line 87
    :goto_3f
    iget v0, p0, Lorg/telegram/ui/Components/SimpleTextView;->offsetX:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SimpleTextView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/SimpleTextView;->offsetX:I

    .line 93
    .end local v1    # "string":Ljava/lang/CharSequence;
    :cond_48
    :goto_48
    return-void

    .line 82
    .restart local v1    # "string":Ljava/lang/CharSequence;
    :cond_49
    iget-object v0, p0, Lorg/telegram/ui/Components/SimpleTextView;->layout:Landroid/text/Layout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    cmpl-float v0, v0, v10

    if-nez v0, :cond_63

    .line 83
    int-to-float v0, p1

    iget-object v2, p0, Lorg/telegram/ui/Components/SimpleTextView;->layout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/SimpleTextView;->offsetX:I

    goto :goto_3f

    .line 89
    .end local v1    # "string":Ljava/lang/CharSequence;
    :catch_61
    move-exception v0

    goto :goto_48

    .line 85
    .restart local v1    # "string":Ljava/lang/CharSequence;
    :cond_63
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/SimpleTextView;->offsetX:I
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_66} :catch_61

    goto :goto_3f
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 116
    iget-object v0, p0, Lorg/telegram/ui/Components/SimpleTextView;->layout:Landroid/text/Layout;

    if-eqz v0, :cond_1e

    .line 117
    iget v0, p0, Lorg/telegram/ui/Components/SimpleTextView;->offsetX:I

    if-eqz v0, :cond_12

    .line 118
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 119
    iget v0, p0, Lorg/telegram/ui/Components/SimpleTextView;->offsetX:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 121
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/Components/SimpleTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 122
    iget v0, p0, Lorg/telegram/ui/Components/SimpleTextView;->offsetX:I

    if-eqz v0, :cond_1e

    .line 123
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 126
    :cond_1e
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 97
    if-eqz p1, :cond_17

    .line 98
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SimpleTextView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SimpleTextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/SimpleTextView;->createLayout(I)V

    .line 99
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SimpleTextView;->invalidate()V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SimpleTextView;->wasLayout:Z

    .line 102
    :cond_17
    return-void
.end method

.method public setGravity(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 50
    iput p1, p0, Lorg/telegram/ui/Components/SimpleTextView;->gravity:I

    .line 51
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 105
    iput-object p1, p0, Lorg/telegram/ui/Components/SimpleTextView;->text:Ljava/lang/CharSequence;

    .line 106
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SimpleTextView;->wasLayout:Z

    if-eqz v0, :cond_1b

    .line 107
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SimpleTextView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SimpleTextView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SimpleTextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/SimpleTextView;->createLayout(I)V

    .line 108
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SimpleTextView;->invalidate()V

    .line 112
    :goto_1a
    return-void

    .line 110
    :cond_1b
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SimpleTextView;->requestLayout()V

    goto :goto_1a
.end method

.method public setTextColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lorg/telegram/ui/Components/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 43
    return-void
.end method

.method public setTextSize(I)V
    .registers 4
    .param p1, "size"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lorg/telegram/ui/Components/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    int-to-float v1, p1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 47
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .registers 3
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/ui/Components/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 55
    return-void
.end method
