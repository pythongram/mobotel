.class public Lorg/telegram/ui/Telehgram/CategoryAlertCell;
.super Landroid/widget/FrameLayout;
.source "CategoryAlertCell.java"


# instance fields
.field private checkBox:Lorg/telegram/ui/Components/CheckBox;

.field private imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private nameTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v13, 0x0

    const v12, -0xc13e07

    const/high16 v7, 0x40c00000    # 6.0f

    const/16 v2, 0x31

    const/4 v3, 0x0

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/CategoryAlertCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 30
    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const v1, 0x7f020112

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawableWithIcon(II)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 31
    .local v11, "drawable":Landroid/graphics/drawable/Drawable;
    const v0, -0xf0f10

    invoke-static {v11, v0, v13}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 32
    const v0, -0x666667

    const/4 v1, 0x1

    invoke-static {v11, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 33
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CategoryAlertCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CategoryAlertCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x41d80000    # 27.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 35
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/CategoryAlertCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x36

    const/high16 v1, 0x42580000    # 54.0f

    const/high16 v4, 0x40e00000    # 7.0f

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lorg/telegram/ui/Telehgram/CategoryAlertCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/CategoryAlertCell;->nameTextView:Landroid/widget/TextView;

    .line 38
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CategoryAlertCell;->nameTextView:Landroid/widget/TextView;

    const v1, -0xdededf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CategoryAlertCell;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 40
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CategoryAlertCell;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 41
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CategoryAlertCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 42
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CategoryAlertCell;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 43
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CategoryAlertCell;->nameTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 44
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CategoryAlertCell;->nameTextView:Landroid/widget/TextView;

    const/4 v4, -0x1

    const/high16 v5, -0x40000000    # -2.0f

    const/16 v6, 0x33

    const/high16 v8, 0x42800000    # 64.0f

    move v9, v7

    move v10, v3

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Telehgram/CategoryAlertCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CategoryAlertCell;->nameTextView:Landroid/widget/TextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 47
    new-instance v0, Lorg/telegram/ui/Components/CheckBox;

    const v1, 0x7f02023b

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/CheckBox;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/CategoryAlertCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    .line 48
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CategoryAlertCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setSize(I)V

    .line 49
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CategoryAlertCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setCheckOffset(I)V

    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CategoryAlertCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CategoryAlertCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v0, v12, v12}, Lorg/telegram/ui/Components/CheckBox;->setColor(II)V

    .line 52
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CategoryAlertCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/16 v4, 0x18

    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v7, 0x41880000    # 17.0f

    const/high16 v8, 0x421c0000    # 39.0f

    move v6, v2

    move v9, v3

    move v10, v3

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Telehgram/CategoryAlertCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 57
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 58
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_28

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/CategoryAlertCell;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_28

    .line 64
    :cond_19
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/CategoryAlertCell;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 67
    :cond_28
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setChecked(ZZ)V
    .registers 4
    .param p1, "checked"    # Z
    .param p2, "animated"    # Z

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CategoryAlertCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox;->setChecked(ZZ)V

    .line 77
    return-void
.end method

.method public setDialog(ZLjava/lang/CharSequence;)V
    .registers 5
    .param p1, "checked"    # Z
    .param p2, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CategoryAlertCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CategoryAlertCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/CheckBox;->setChecked(ZZ)V

    .line 73
    return-void
.end method
