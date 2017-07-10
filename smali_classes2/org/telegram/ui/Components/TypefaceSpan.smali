.class public Lorg/telegram/ui/Components/TypefaceSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "TypefaceSpan.java"


# instance fields
.field private color:I

.field private textSize:I

.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/graphics/Typeface;)V
    .registers 2
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/telegram/ui/Components/TypefaceSpan;->typeface:Landroid/graphics/Typeface;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Typeface;I)V
    .registers 3
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "size"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/telegram/ui/Components/TypefaceSpan;->typeface:Landroid/graphics/Typeface;

    .line 30
    iput p2, p0, Lorg/telegram/ui/Components/TypefaceSpan;->textSize:I

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Typeface;II)V
    .registers 4
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "size"    # I
    .param p3, "textColor"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/telegram/ui/Components/TypefaceSpan;->typeface:Landroid/graphics/Typeface;

    .line 35
    iput p2, p0, Lorg/telegram/ui/Components/TypefaceSpan;->textSize:I

    .line 36
    iput p3, p0, Lorg/telegram/ui/Components/TypefaceSpan;->color:I

    .line 37
    return-void
.end method


# virtual methods
.method public getTypeface()Landroid/graphics/Typeface;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lorg/telegram/ui/Components/TypefaceSpan;->typeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public isBold()Z
    .registers 3

    .prologue
    .line 44
    iget-object v0, p0, Lorg/telegram/ui/Components/TypefaceSpan;->typeface:Landroid/graphics/Typeface;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isItalic()Z
    .registers 3

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/ui/Components/TypefaceSpan;->typeface:Landroid/graphics/Typeface;

    const-string v1, "fonts/ritalic.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3
    .param p1, "tp"    # Landroid/text/TextPaint;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/TypefaceSpan;->typeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_9

    .line 65
    iget-object v0, p0, Lorg/telegram/ui/Components/TypefaceSpan;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 67
    :cond_9
    iget v0, p0, Lorg/telegram/ui/Components/TypefaceSpan;->textSize:I

    if-eqz v0, :cond_13

    .line 68
    iget v0, p0, Lorg/telegram/ui/Components/TypefaceSpan;->textSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 70
    :cond_13
    iget v0, p0, Lorg/telegram/ui/Components/TypefaceSpan;->color:I

    if-eqz v0, :cond_1c

    .line 71
    iget v0, p0, Lorg/telegram/ui/Components/TypefaceSpan;->color:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 73
    :cond_1c
    invoke-virtual {p1}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 74
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .registers 3
    .param p1, "p"    # Landroid/text/TextPaint;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/telegram/ui/Components/TypefaceSpan;->typeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_9

    .line 54
    iget-object v0, p0, Lorg/telegram/ui/Components/TypefaceSpan;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 56
    :cond_9
    iget v0, p0, Lorg/telegram/ui/Components/TypefaceSpan;->textSize:I

    if-eqz v0, :cond_13

    .line 57
    iget v0, p0, Lorg/telegram/ui/Components/TypefaceSpan;->textSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 59
    :cond_13
    invoke-virtual {p1}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 60
    return-void
.end method
