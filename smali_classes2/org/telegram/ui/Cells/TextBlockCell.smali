.class public Lorg/telegram/ui/Cells/TextBlockCell;
.super Landroid/widget/FrameLayout;
.source "TextBlockCell.java"


# instance fields
.field private needDivider:Z

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x5

    const/4 v5, 0x3

    const/high16 v3, 0x41880000    # 17.0f

    const/high16 v4, 0x41200000    # 10.0f

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextBlockCell;->textView:Landroid/widget/TextView;

    .line 31
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextBlockCell;->textView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextBlockCell;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 33
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextBlockCell;->textView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_44

    move v0, v2

    :goto_2a
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 34
    iget-object v7, p0, Lorg/telegram/ui/Cells/TextBlockCell;->textView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_46

    :goto_38
    or-int/lit8 v2, v2, 0x30

    move v5, v3

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/TextBlockCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    return-void

    :cond_44
    move v0, v5

    .line 33
    goto :goto_2a

    :cond_46
    move v2, v5

    .line 34
    goto :goto_38
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 49
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextBlockCell;->needDivider:Z

    if-eqz v0, :cond_27

    .line 50
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextBlockCell;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextBlockCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextBlockCell;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextBlockCell;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextBlockCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 52
    :cond_27
    return-void
.end method

.method public setText(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "divider"    # Z

    .prologue
    .line 42
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextBlockCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/TextBlockCell;->needDivider:Z

    .line 44
    if-nez p2, :cond_e

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextBlockCell;->setWillNotDraw(Z)V

    .line 45
    return-void

    .line 44
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setTextColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextBlockCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    return-void
.end method
