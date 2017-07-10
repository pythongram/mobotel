.class public Lorg/telegram/ui/Cells/PaymentInfoCell;
.super Landroid/widget/FrameLayout;
.source "PaymentInfoCell.java"


# instance fields
.field private detailExTextView:Landroid/widget/TextView;

.field private detailTextView:Landroid/widget/TextView;

.field private imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private nameTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 38
    iget-object v7, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x64

    const/high16 v1, 0x42c80000    # 100.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_146

    const/4 v2, 0x5

    :goto_15
    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/PaymentInfoCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->nameTextView:Landroid/widget/TextView;

    .line 41
    iget-object v0, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->nameTextView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    iget-object v0, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 43
    iget-object v0, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 44
    iget-object v0, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->nameTextView:Landroid/widget/TextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 46
    iget-object v0, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 47
    iget-object v0, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->nameTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 48
    iget-object v1, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->nameTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_149

    const/4 v0, 0x5

    :goto_68
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 49
    iget-object v7, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->nameTextView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_14c

    const/4 v2, 0x5

    :goto_77
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_14f

    const/high16 v3, 0x41200000    # 10.0f

    :goto_7f
    const/high16 v4, 0x41100000    # 9.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_153

    const/high16 v5, 0x42f60000    # 123.0f

    :goto_87
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/PaymentInfoCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->detailTextView:Landroid/widget/TextView;

    .line 52
    iget-object v0, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->detailTextView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    iget-object v0, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->detailTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 54
    iget-object v0, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->detailTextView:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 55
    iget-object v0, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->detailTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 56
    iget-object v1, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->detailTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_157

    const/4 v0, 0x5

    :goto_bd
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 57
    iget-object v7, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->detailTextView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_15a

    const/4 v2, 0x5

    :goto_cc
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_15d

    const/high16 v3, 0x41200000    # 10.0f

    :goto_d4
    const/high16 v4, 0x42040000    # 33.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_161

    const/high16 v5, 0x42f60000    # 123.0f

    :goto_dc
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/PaymentInfoCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->detailExTextView:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->detailExTextView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteGrayText2"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->detailExTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->detailExTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->detailExTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->detailExTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 65
    iget-object v0, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->detailExTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 66
    iget-object v1, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->detailExTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_165

    const/4 v0, 0x5

    :goto_11e
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 67
    iget-object v7, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->detailExTextView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_167

    const/4 v2, 0x5

    :goto_12d
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_169

    const/high16 v3, 0x41200000    # 10.0f

    :goto_135
    const/high16 v4, 0x42b40000    # 90.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_16c

    const/high16 v5, 0x42f60000    # 123.0f

    :goto_13d
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/PaymentInfoCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    return-void

    .line 38
    :cond_146
    const/4 v2, 0x3

    goto/16 :goto_15

    .line 48
    :cond_149
    const/4 v0, 0x3

    goto/16 :goto_68

    .line 49
    :cond_14c
    const/4 v2, 0x3

    goto/16 :goto_77

    :cond_14f
    const/high16 v3, 0x42f60000    # 123.0f

    goto/16 :goto_7f

    :cond_153
    const/high16 v5, 0x41200000    # 10.0f

    goto/16 :goto_87

    .line 56
    :cond_157
    const/4 v0, 0x3

    goto/16 :goto_bd

    .line 57
    :cond_15a
    const/4 v2, 0x3

    goto/16 :goto_cc

    :cond_15d
    const/high16 v3, 0x42f60000    # 123.0f

    goto/16 :goto_d4

    :cond_161
    const/high16 v5, 0x41200000    # 10.0f

    goto/16 :goto_dc

    .line 66
    :cond_165
    const/4 v0, 0x3

    goto :goto_11e

    .line 67
    :cond_167
    const/4 v2, 0x3

    goto :goto_12d

    :cond_169
    const/high16 v3, 0x42f60000    # 123.0f

    goto :goto_135

    :cond_16c
    const/high16 v5, 0x41200000    # 10.0f

    goto :goto_13d
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 77
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 78
    iget-object v0, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->detailTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBottom()I

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int p3, v0, v1

    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->detailExTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->detailExTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->detailExTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getRight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->detailExTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {v0, v1, p3, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 80
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 72
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v1, 0x42f00000    # 120.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 73
    return-void
.end method

.method public setInvoice(Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;Ljava/lang/String;)V
    .registers 18
    .param p1, "invoice"    # Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;
    .param p2, "botname"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v1, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->nameTextView:Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v1, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->detailTextView:Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v1, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->detailExTextView:Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_ed

    .line 89
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f333333

    mul-float/2addr v1, v2

    float-to-int v12, v1

    .line 93
    .local v12, "maxPhotoWidth":I
    :goto_29
    const/16 v14, 0x280

    .line 94
    .local v14, "width":I
    const/16 v11, 0x168

    .line 95
    .local v11, "height":I
    int-to-float v1, v14

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, v12, v2

    int-to-float v2, v2

    div-float v13, v1, v2

    .line 96
    .local v13, "scale":F
    int-to-float v1, v14

    div-float/2addr v1, v13

    float-to-int v14, v1

    .line 97
    int-to-float v1, v11

    div-float/2addr v1, v13

    float-to-int v11, v1

    .line 98
    move-object/from16 v0, p1

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->photo:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    if-eqz v1, :cond_11f

    move-object/from16 v0, p1

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->photo:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    const-string v2, "image/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11f

    .line 99
    iget-object v8, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->nameTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    const/high16 v2, -0x40000000    # -2.0f

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_101

    const/4 v3, 0x5

    :goto_5d
    or-int/lit8 v3, v3, 0x30

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_104

    const/high16 v4, 0x41200000    # 10.0f

    :goto_65
    const/high16 v5, 0x41100000    # 9.0f

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_108

    const/high16 v6, 0x42f60000    # 123.0f

    :goto_6d
    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v8, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->detailTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    const/high16 v2, -0x40000000    # -2.0f

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_10c

    const/4 v3, 0x5

    :goto_7f
    or-int/lit8 v3, v3, 0x30

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_10f

    const/high16 v4, 0x41200000    # 10.0f

    :goto_87
    const/high16 v5, 0x42040000    # 33.0f

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_113

    const/high16 v6, 0x42f60000    # 123.0f

    :goto_8f
    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget-object v8, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->detailExTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    const/high16 v2, -0x40000000    # -2.0f

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_117

    const/4 v3, 0x5

    :goto_a1
    or-int/lit8 v3, v3, 0x30

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_119

    const/high16 v4, 0x41200000    # 10.0f

    :goto_a9
    const/high16 v5, 0x42b40000    # 90.0f

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_11c

    const/high16 v6, 0x42f60000    # 123.0f

    :goto_b1
    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iget-object v1, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setVisibility(I)V

    .line 103
    iget-object v1, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->photo:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    const/4 v3, 0x0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%d_%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v1 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 110
    :goto_ec
    return-void

    .line 91
    .end local v11    # "height":I
    .end local v12    # "maxPhotoWidth":I
    .end local v13    # "scale":F
    .end local v14    # "width":I
    :cond_ed
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f333333

    mul-float/2addr v1, v2

    float-to-int v12, v1

    .restart local v12    # "maxPhotoWidth":I
    goto/16 :goto_29

    .line 99
    .restart local v11    # "height":I
    .restart local v13    # "scale":F
    .restart local v14    # "width":I
    :cond_101
    const/4 v3, 0x3

    goto/16 :goto_5d

    :cond_104
    const/high16 v4, 0x42f60000    # 123.0f

    goto/16 :goto_65

    :cond_108
    const/high16 v6, 0x41200000    # 10.0f

    goto/16 :goto_6d

    .line 100
    :cond_10c
    const/4 v3, 0x3

    goto/16 :goto_7f

    :cond_10f
    const/high16 v4, 0x42f60000    # 123.0f

    goto/16 :goto_87

    :cond_113
    const/high16 v6, 0x41200000    # 10.0f

    goto/16 :goto_8f

    .line 101
    :cond_117
    const/4 v3, 0x3

    goto :goto_a1

    :cond_119
    const/high16 v4, 0x42f60000    # 123.0f

    goto :goto_a9

    :cond_11c
    const/high16 v6, 0x41200000    # 10.0f

    goto :goto_b1

    .line 105
    :cond_11f
    iget-object v8, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->nameTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    const/high16 v2, -0x40000000    # -2.0f

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_176

    const/4 v3, 0x5

    :goto_129
    or-int/lit8 v3, v3, 0x30

    const/high16 v4, 0x41880000    # 17.0f

    const/high16 v5, 0x41100000    # 9.0f

    const/high16 v6, 0x41880000    # 17.0f

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v8, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->detailTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    const/high16 v2, -0x40000000    # -2.0f

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_178

    const/4 v3, 0x5

    :goto_143
    or-int/lit8 v3, v3, 0x30

    const/high16 v4, 0x41880000    # 17.0f

    const/high16 v5, 0x42040000    # 33.0f

    const/high16 v6, 0x41880000    # 17.0f

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    iget-object v8, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->detailExTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    const/high16 v2, -0x40000000    # -2.0f

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_17a

    const/4 v3, 0x5

    :goto_15d
    or-int/lit8 v3, v3, 0x30

    const/high16 v4, 0x41880000    # 17.0f

    const/high16 v5, 0x42b40000    # 90.0f

    const/high16 v6, 0x41880000    # 17.0f

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    iget-object v1, p0, Lorg/telegram/ui/Cells/PaymentInfoCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setVisibility(I)V

    goto/16 :goto_ec

    .line 105
    :cond_176
    const/4 v3, 0x3

    goto :goto_129

    .line 106
    :cond_178
    const/4 v3, 0x3

    goto :goto_143

    .line 107
    :cond_17a
    const/4 v3, 0x3

    goto :goto_15d
.end method
