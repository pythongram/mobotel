.class public Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
.super Landroid/widget/FrameLayout;
.source "TextInfoPrivacyCell.java"


# instance fields
.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x5

    const/4 v5, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x41880000    # 17.0f

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Landroid/widget/TextView;

    .line 35
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteGrayText4"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteLinkText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 37
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 38
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_65

    move v0, v2

    :goto_35
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 39
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v0, v7, v1, v7, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 40
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 41
    iget-object v7, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_67

    :goto_59
    or-int/lit8 v2, v2, 0x30

    move v5, v3

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    return-void

    :cond_65
    move v0, v5

    .line 38
    goto :goto_35

    :cond_67
    move v2, v5

    .line 41
    goto :goto_59
.end method


# virtual methods
.method public getTextView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 47
    return-void
.end method

.method public setEnabled(ZLjava/util/ArrayList;)V
    .registers 9
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    .line 67
    if-eqz p2, :cond_1c

    .line 68
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Landroid/widget/TextView;

    const-string v3, "alpha"

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    if-eqz p1, :cond_1a

    :goto_10
    aput v0, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :goto_19
    return-void

    :cond_1a
    move v0, v1

    .line 68
    goto :goto_10

    .line 70
    :cond_1c
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Landroid/widget/TextView;

    if-eqz p1, :cond_24

    :goto_20
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_19

    :cond_24
    move v0, v1

    goto :goto_20
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 50
    if-nez p1, :cond_14

    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 55
    :goto_e
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-void

    .line 53
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x41880000    # 17.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_e
.end method

.method public setTextColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    return-void
.end method
