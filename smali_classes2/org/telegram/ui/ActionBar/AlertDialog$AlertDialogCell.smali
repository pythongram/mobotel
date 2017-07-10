.class Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;
.super Landroid/widget/FrameLayout;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlertDialogCell"
.end annotation


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/ActionBar/AlertDialog;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;)V
    .registers 10
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x0

    const/4 v6, -0x2

    const/high16 v3, 0x41b80000    # 23.0f

    const/4 v5, 0x1

    .line 91
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 92
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 94
    const-string v0, "dialogButtonSelector"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p0, v0, v4, v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;->setPadding(IIII)V

    .line 97
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;->imageView:Landroid/widget/ImageView;

    .line 98
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;->imageView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 99
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;->imageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string v3, "dialogIcon"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 100
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;->imageView:Landroid/widget/ImageView;

    const/16 v3, 0x18

    const/16 v4, 0x18

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_98

    const/4 v0, 0x5

    :goto_4f
    or-int/lit8 v0, v0, 0x10

    invoke-static {v3, v4, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;->textView:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 104
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 106
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;->textView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;->textView:Landroid/widget/TextView;

    const-string v2, "dialogTextBlack"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;->textView:Landroid/widget/TextView;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 109
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;->textView:Landroid/widget/TextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_8e

    const/4 v1, 0x5

    :cond_8e
    or-int/lit8 v1, v1, 0x10

    invoke-static {v6, v6, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    return-void

    :cond_98
    move v0, v1

    .line 100
    goto :goto_4f
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 114
    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 115
    return-void
.end method

.method public setGravity(I)V
    .registers 3
    .param p1, "gravity"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 123
    return-void
.end method

.method public setTextAndIcon(Ljava/lang/CharSequence;I)V
    .registers 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # I

    .prologue
    const/high16 v4, 0x42600000    # 56.0f

    const/4 v1, 0x0

    .line 126
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    if-eqz p2, :cond_2e

    .line 128
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;->textView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_27

    move v0, v1

    :goto_1b
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_2c

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :goto_23
    invoke-virtual {v3, v0, v1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 135
    :goto_26
    return-void

    .line 130
    :cond_27
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_1b

    :cond_2c
    move v2, v1

    goto :goto_23

    .line 132
    :cond_2e
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;->imageView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_26
.end method

.method public setTextColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    return-void
.end method
