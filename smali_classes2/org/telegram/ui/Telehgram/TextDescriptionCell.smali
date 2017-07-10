.class public Lorg/telegram/ui/Telehgram/TextDescriptionCell;
.super Landroid/widget/FrameLayout;
.source "TextDescriptionCell.java"


# static fields
.field private static paint:Landroid/graphics/Paint;


# instance fields
.field private needDivider:Z

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x41880000    # 17.0f

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v7, 0x5

    .line 23
    .local v7, "i":I
    sget-object v0, Lorg/telegram/ui/Telehgram/TextDescriptionCell;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_22

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lorg/telegram/ui/Telehgram/TextDescriptionCell;->paint:Landroid/graphics/Paint;

    .line 25
    sget-object v0, Lorg/telegram/ui/Telehgram/TextDescriptionCell;->paint:Landroid/graphics/Paint;

    const v1, -0x262627

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    sget-object v0, Lorg/telegram/ui/Telehgram/TextDescriptionCell;->paint:Landroid/graphics/Paint;

    const v1, 0x3f8ccccd

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 28
    :cond_22
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/TextDescriptionCell;->textView:Landroid/widget/TextView;

    .line 29
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/TextDescriptionCell;->textView:Landroid/widget/TextView;

    const v1, -0x5c5c5d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/TextDescriptionCell;->textView:Landroid/widget/TextView;

    const v1, -0xce9061

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 31
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/TextDescriptionCell;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 32
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/TextDescriptionCell;->textView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_80

    const/4 v0, 0x5

    :goto_48
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 33
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/TextDescriptionCell;->textView:Landroid/widget/TextView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 34
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/TextDescriptionCell;->textView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 35
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/TextDescriptionCell;->textView:Landroid/widget/TextView;

    .line 36
    .local v8, "view":Landroid/view/View;
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_64

    .line 37
    const/4 v7, 0x3

    .line 39
    :cond_64
    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    or-int/lit8 v2, v7, 0x30

    const/high16 v4, -0x3f600000    # -5.0f

    const/4 v6, 0x0

    move v5, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lorg/telegram/ui/Telehgram/TextDescriptionCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/TextDescriptionCell;->textView:Landroid/widget/TextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 41
    return-void

    .line 32
    .end local v8    # "view":Landroid/view/View;
    :cond_80
    const/4 v0, 0x3

    goto :goto_48
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 59
    iget-boolean v0, p0, Lorg/telegram/ui/Telehgram/TextDescriptionCell;->needDivider:Z

    if-eqz v0, :cond_27

    .line 60
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/TextDescriptionCell;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/TextDescriptionCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/TextDescriptionCell;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/TextDescriptionCell;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/TextDescriptionCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/Telehgram/TextDescriptionCell;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 62
    :cond_27
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 45
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "divider"    # Z

    .prologue
    .line 48
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/TextDescriptionCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iput-boolean p2, p0, Lorg/telegram/ui/Telehgram/TextDescriptionCell;->needDivider:Z

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Telehgram/TextDescriptionCell;->setWillNotDraw(Z)V

    .line 51
    return-void
.end method

.method public setTextColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/TextDescriptionCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Telehgram/TextDescriptionCell;->setWillNotDraw(Z)V

    .line 56
    return-void
.end method
