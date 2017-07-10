.class public Lorg/telegram/ui/Telehgram/FontSettingsCell;
.super Landroid/widget/FrameLayout;
.source "FontSettingsCell.java"


# static fields
.field private static paint:Landroid/graphics/Paint;


# instance fields
.field private font:I

.field private needDivider:Z

.field private textView:Landroid/widget/TextView;

.field private valueImageView:Landroid/widget/ImageView;

.field private valueTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_font"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v10, 0x3

    .line 35
    .local v10, "i3":I
    sget-object v0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_1c

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->paint:Landroid/graphics/Paint;

    .line 37
    sget-object v0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    sget-object v0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 40
    :cond_1c
    iput p2, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->font:I

    .line 41
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->textView:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/FontSettingsCell;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 44
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 46
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 47
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->textView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 48
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_11b

    .line 49
    const/4 v8, 0x5

    .line 53
    .local v8, "i":I
    :goto_5b
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->textView:Landroid/widget/TextView;

    or-int/lit8 v1, v8, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 54
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->textView:Landroid/widget/TextView;

    .line 55
    .local v11, "view":Landroid/view/View;
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_11e

    .line 56
    const/4 v9, 0x5

    .line 60
    .local v9, "i2":I
    :goto_69
    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    or-int/lit8 v2, v9, 0x30

    const/high16 v3, 0x41880000    # 17.0f

    const/4 v4, 0x0

    const/high16 v5, 0x41880000    # 17.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v11, v0}, Lorg/telegram/ui/Telehgram/FontSettingsCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget v0, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->font:I

    packed-switch v0, :pswitch_data_1d0

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/iransans_light.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    .line 108
    .local v7, "face":Landroid/graphics/Typeface;
    :goto_8a
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 109
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->valueTextView:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->valueTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->valueTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 112
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->valueTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 113
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->valueTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 114
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->valueTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 115
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->valueTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 116
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->valueTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_1c9

    const/4 v0, 0x3

    :goto_c4
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 117
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->valueTextView:Landroid/widget/TextView;

    .line 118
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_1cc

    .line 119
    const/4 v9, 0x3

    .line 123
    :goto_d0
    const/4 v0, -0x2

    const/high16 v1, -0x40800000    # -1.0f

    or-int/lit8 v2, v9, 0x30

    const/high16 v3, 0x41880000    # 17.0f

    const/4 v4, 0x0

    const/high16 v5, 0x41880000    # 17.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v11, v0}, Lorg/telegram/ui/Telehgram/FontSettingsCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->valueTextView:Landroid/widget/TextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 125
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->valueImageView:Landroid/widget/ImageView;

    .line 126
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->valueImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->valueImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->valueImageView:Landroid/widget/ImageView;

    .line 129
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_108

    .line 130
    const/4 v10, 0x5

    .line 132
    :cond_108
    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    or-int/lit8 v2, v10, 0x10

    const/high16 v3, 0x41880000    # 17.0f

    const/4 v4, 0x0

    const/high16 v5, 0x41880000    # 17.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v11, v0}, Lorg/telegram/ui/Telehgram/FontSettingsCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    return-void

    .line 51
    .end local v7    # "face":Landroid/graphics/Typeface;
    .end local v8    # "i":I
    .end local v9    # "i2":I
    .end local v11    # "view":Landroid/view/View;
    :cond_11b
    const/4 v8, 0x3

    .restart local v8    # "i":I
    goto/16 :goto_5b

    .line 58
    .restart local v11    # "view":Landroid/view/View;
    :cond_11e
    const/4 v9, 0x3

    .restart local v9    # "i2":I
    goto/16 :goto_69

    .line 63
    :pswitch_121
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    .line 64
    .restart local v7    # "face":Landroid/graphics/Typeface;
    goto/16 :goto_8a

    .line 66
    .end local v7    # "face":Landroid/graphics/Typeface;
    :pswitch_12d
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/iransans_ultrlight.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    .line 67
    .restart local v7    # "face":Landroid/graphics/Typeface;
    goto/16 :goto_8a

    .line 69
    .end local v7    # "face":Landroid/graphics/Typeface;
    :pswitch_139
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/iransans_light.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    .line 70
    .restart local v7    # "face":Landroid/graphics/Typeface;
    goto/16 :goto_8a

    .line 72
    .end local v7    # "face":Landroid/graphics/Typeface;
    :pswitch_145
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/iransans.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    .line 73
    .restart local v7    # "face":Landroid/graphics/Typeface;
    goto/16 :goto_8a

    .line 75
    .end local v7    # "face":Landroid/graphics/Typeface;
    :pswitch_151
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/iransans_medium.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    .line 76
    .restart local v7    # "face":Landroid/graphics/Typeface;
    goto/16 :goto_8a

    .line 78
    .end local v7    # "face":Landroid/graphics/Typeface;
    :pswitch_15d
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/iransans_bold.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    .line 79
    .restart local v7    # "face":Landroid/graphics/Typeface;
    goto/16 :goto_8a

    .line 81
    .end local v7    # "face":Landroid/graphics/Typeface;
    :pswitch_169
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/afsaneh.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    .line 82
    .restart local v7    # "face":Landroid/graphics/Typeface;
    goto/16 :goto_8a

    .line 84
    .end local v7    # "face":Landroid/graphics/Typeface;
    :pswitch_175
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/dastnevis.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    .line 85
    .restart local v7    # "face":Landroid/graphics/Typeface;
    goto/16 :goto_8a

    .line 87
    .end local v7    # "face":Landroid/graphics/Typeface;
    :pswitch_181
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/hama.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    .line 88
    .restart local v7    # "face":Landroid/graphics/Typeface;
    goto/16 :goto_8a

    .line 90
    .end local v7    # "face":Landroid/graphics/Typeface;
    :pswitch_18d
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/morvarid.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    .line 91
    .restart local v7    # "face":Landroid/graphics/Typeface;
    goto/16 :goto_8a

    .line 93
    .end local v7    # "face":Landroid/graphics/Typeface;
    :pswitch_199
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/yekan.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    .line 94
    .restart local v7    # "face":Landroid/graphics/Typeface;
    goto/16 :goto_8a

    .line 96
    .end local v7    # "face":Landroid/graphics/Typeface;
    :pswitch_1a5
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/traffic.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    .line 97
    .restart local v7    # "face":Landroid/graphics/Typeface;
    goto/16 :goto_8a

    .line 99
    .end local v7    # "face":Landroid/graphics/Typeface;
    :pswitch_1b1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/koodak.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    .line 100
    .restart local v7    # "face":Landroid/graphics/Typeface;
    goto/16 :goto_8a

    .line 102
    .end local v7    # "face":Landroid/graphics/Typeface;
    :pswitch_1bd
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/lotus.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    .line 103
    .restart local v7    # "face":Landroid/graphics/Typeface;
    goto/16 :goto_8a

    .line 116
    :cond_1c9
    const/4 v0, 0x5

    goto/16 :goto_c4

    .line 121
    :cond_1cc
    const/4 v9, 0x5

    goto/16 :goto_d0

    .line 61
    nop

    :pswitch_data_1d0
    .packed-switch 0x0
        :pswitch_121
        :pswitch_12d
        :pswitch_139
        :pswitch_145
        :pswitch_151
        :pswitch_15d
        :pswitch_169
        :pswitch_175
        :pswitch_181
        :pswitch_18d
        :pswitch_199
        :pswitch_1a5
        :pswitch_1b1
        :pswitch_1bd
    .end packed-switch
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 199
    iget-boolean v0, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->needDivider:Z

    if-eqz v0, :cond_27

    .line 200
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/FontSettingsCell;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/FontSettingsCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/FontSettingsCell;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/FontSettingsCell;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/FontSettingsCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/Telehgram/FontSettingsCell;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 202
    :cond_27
    return-void
.end method

.method protected onMeasure(II)V
    .registers 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 136
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    iget-boolean v2, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->needDivider:Z

    if-eqz v2, :cond_81

    const/4 v2, 0x1

    :goto_b
    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p0, v3, v2}, Lorg/telegram/ui/Telehgram/FontSettingsCell;->setMeasuredDimension(II)V

    .line 137
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/FontSettingsCell;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/FontSettingsCell;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/FontSettingsCell;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x42080000    # 34.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v0, v2, v3

    .line 138
    .local v0, "availableWidth":I
    div-int/lit8 v1, v0, 0x2

    .line 139
    .local v1, "width":I
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_46

    .line 140
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/FontSettingsCell;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->measure(II)V

    .line 142
    :cond_46
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_83

    .line 143
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/FontSettingsCell;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 144
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v0, v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v1, v2, v3

    .line 148
    :goto_6f
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->textView:Landroid/widget/TextView;

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/FontSettingsCell;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 149
    return-void

    .line 136
    .end local v0    # "availableWidth":I
    .end local v1    # "width":I
    :cond_81
    const/4 v2, 0x0

    goto :goto_b

    .line 146
    .restart local v0    # "availableWidth":I
    .restart local v1    # "width":I
    :cond_83
    move v1, v0

    goto :goto_6f
.end method

.method public setText(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "divider"    # Z

    .prologue
    const/4 v1, 0x4

    .line 156
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    iput-boolean p2, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->needDivider:Z

    .line 160
    if-nez p2, :cond_19

    const/4 v0, 0x1

    :goto_15
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Telehgram/FontSettingsCell;->setWillNotDraw(Z)V

    .line 161
    return-void

    .line 160
    :cond_19
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public setTextAndIcon(Ljava/lang/String;IZ)V
    .registers 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "resId"    # I
    .param p3, "divider"    # Z

    .prologue
    const/4 v2, 0x4

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "z":Z
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    if-eqz p2, :cond_22

    .line 186
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->valueImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 187
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    :goto_19
    iput-boolean p3, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->needDivider:Z

    .line 192
    if-nez p3, :cond_1e

    .line 193
    const/4 v0, 0x1

    .line 195
    :cond_1e
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Telehgram/FontSettingsCell;->setWillNotDraw(Z)V

    .line 196
    return-void

    .line 189
    :cond_22
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_19
.end method

.method public setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "divider"    # Z

    .prologue
    const/4 v2, 0x4

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "z":Z
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->valueImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    if-eqz p2, :cond_25

    .line 168
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->valueTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    :goto_19
    iput-boolean p3, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->needDivider:Z

    .line 174
    if-nez p3, :cond_1e

    .line 175
    const/4 v0, 0x1

    .line 177
    :cond_1e
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Telehgram/FontSettingsCell;->setWillNotDraw(Z)V

    .line 178
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/FontSettingsCell;->requestLayout()V

    .line 179
    return-void

    .line 171
    :cond_25
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_19
.end method

.method public setTextColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FontSettingsCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    return-void
.end method
