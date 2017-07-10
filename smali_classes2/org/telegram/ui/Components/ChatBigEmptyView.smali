.class public Lorg/telegram/ui/Components/ChatBigEmptyView;
.super Landroid/widget/LinearLayout;
.source "ChatBigEmptyView.java"


# instance fields
.field private imageViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private secretViewStatusTextView:Landroid/widget/TextView;

.field private textViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "secretChat"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatBigEmptyView;->textViews:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatBigEmptyView;->imageViews:Ljava/util/ArrayList;

    .line 36
    const v0, 0x7f020265

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatBigEmptyView;->setBackgroundResource(I)V

    .line 37
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatBigEmptyView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->colorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 38
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/telegram/ui/Components/ChatBigEmptyView;->setPadding(IIII)V

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatBigEmptyView;->setOrientation(I)V

    .line 41
    if-eqz p2, :cond_15c

    .line 42
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatBigEmptyView;->secretViewStatusTextView:Landroid/widget/TextView;

    .line 43
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatBigEmptyView;->secretViewStatusTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 44
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatBigEmptyView;->secretViewStatusTextView:Landroid/widget/TextView;

    const-string v1, "chat_serviceText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatBigEmptyView;->secretViewStatusTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 46
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatBigEmptyView;->secretViewStatusTextView:Landroid/widget/TextView;

    const/high16 v1, 0x43520000    # 210.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 47
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatBigEmptyView;->textViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatBigEmptyView;->secretViewStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatBigEmptyView;->secretViewStatusTextView:Landroid/widget/TextView;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x31

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/ChatBigEmptyView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    :goto_80
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 56
    .local v10, "textView":Landroid/widget/TextView;
    if-eqz p2, :cond_178

    .line 57
    const-string v0, "EncryptedDescriptionTitle"

    const v1, 0x7f0701ff

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    const/4 v0, 0x1

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v10, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 65
    :goto_99
    const-string v0, "chat_serviceText"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatBigEmptyView;->textViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    const/high16 v0, 0x43820000    # 260.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 68
    const/4 v0, -0x2

    const/4 v1, -0x2

    if-eqz p2, :cond_19c

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_199

    const/4 v2, 0x5

    :goto_b9
    or-int/lit8 v2, v2, 0x30

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz p2, :cond_19f

    const/4 v6, 0x0

    :goto_c2
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lorg/telegram/ui/Components/ChatBigEmptyView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    const/4 v7, 0x0

    .local v7, "a":I
    :goto_ca
    const/4 v0, 0x4

    if-ge v7, v0, :cond_263

    .line 71
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 72
    .local v9, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 73
    const/4 v0, -0x2

    const/4 v1, -0x2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1a3

    const/4 v2, 0x5

    :goto_dd
    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/Components/ChatBigEmptyView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 76
    .local v8, "imageView":Landroid/widget/ImageView;
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const-string v1, "chat_serviceText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 77
    if-eqz p2, :cond_1a6

    const v0, 0x7f020135

    :goto_103
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatBigEmptyView;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v10, Landroid/widget/TextView;

    .end local v10    # "textView":Landroid/widget/TextView;
    invoke-direct {v10, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 81
    .restart local v10    # "textView":Landroid/widget/TextView;
    const/4 v0, 0x1

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v10, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 82
    const-string v0, "chat_serviceText"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatBigEmptyView;->textViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_1ab

    const/4 v0, 0x5

    :goto_129
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 85
    const/high16 v0, 0x43820000    # 260.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 87
    packed-switch v7, :pswitch_data_264

    .line 118
    :goto_13a
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_237

    .line 119
    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    if-eqz p2, :cond_226

    .line 121
    const/4 v0, -0x2

    const/4 v1, -0x2

    const/high16 v2, 0x41000000    # 8.0f

    const/high16 v3, 0x40400000    # 3.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    :goto_158
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_ca

    .line 50
    .end local v7    # "a":I
    .end local v8    # "imageView":Landroid/widget/ImageView;
    .end local v9    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v10    # "textView":Landroid/widget/TextView;
    :cond_15c
    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 51
    .restart local v8    # "imageView":Landroid/widget/ImageView;
    const v0, 0x7f02009d

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    const/4 v0, -0x2

    const/4 v1, -0x2

    const/16 v2, 0x31

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lorg/telegram/ui/Components/ChatBigEmptyView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_80

    .line 60
    .end local v8    # "imageView":Landroid/widget/ImageView;
    .restart local v10    # "textView":Landroid/widget/TextView;
    :cond_178
    const-string v0, "ChatYourSelfTitle"

    const v1, 0x7f070174

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const/4 v0, 0x1

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v10, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 62
    const-string v0, "fonts/rmedium.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 63
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_99

    .line 68
    :cond_199
    const/4 v2, 0x3

    goto/16 :goto_b9

    :cond_19c
    const/4 v2, 0x1

    goto/16 :goto_b9

    :cond_19f
    const/16 v6, 0x8

    goto/16 :goto_c2

    .line 73
    .restart local v7    # "a":I
    .restart local v9    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_1a3
    const/4 v2, 0x3

    goto/16 :goto_dd

    .line 77
    .restart local v8    # "imageView":Landroid/widget/ImageView;
    :cond_1a6
    const v0, 0x7f0201a3

    goto/16 :goto_103

    .line 84
    :cond_1ab
    const/4 v0, 0x3

    goto/16 :goto_129

    .line 89
    :pswitch_1ae
    if-eqz p2, :cond_1be

    .line 90
    const-string v0, "EncryptedDescription1"

    const v1, 0x7f0701fb

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_13a

    .line 92
    :cond_1be
    const-string v0, "ChatYourSelfDescription1"

    const v1, 0x7f07016f

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_13a

    .line 96
    :pswitch_1cc
    if-eqz p2, :cond_1dc

    .line 97
    const-string v0, "EncryptedDescription2"

    const v1, 0x7f0701fc

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_13a

    .line 99
    :cond_1dc
    const-string v0, "ChatYourSelfDescription2"

    const v1, 0x7f070170

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_13a

    .line 103
    :pswitch_1ea
    if-eqz p2, :cond_1fa

    .line 104
    const-string v0, "EncryptedDescription3"

    const v1, 0x7f0701fd

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_13a

    .line 106
    :cond_1fa
    const-string v0, "ChatYourSelfDescription3"

    const v1, 0x7f070171

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_13a

    .line 110
    :pswitch_208
    if-eqz p2, :cond_218

    .line 111
    const-string v0, "EncryptedDescription4"

    const v1, 0x7f0701fe

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_13a

    .line 113
    :cond_218
    const-string v0, "ChatYourSelfDescription4"

    const v1, 0x7f070172

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_13a

    .line 123
    :cond_226
    const/4 v0, -0x2

    const/4 v1, -0x2

    const/high16 v2, 0x41000000    # 8.0f

    const/high16 v3, 0x40e00000    # 7.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_158

    .line 126
    :cond_237
    if-eqz p2, :cond_253

    .line 127
    const/4 v0, -0x2

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v4, 0x41000000    # 8.0f

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    :goto_248
    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_158

    .line 129
    :cond_253
    const/4 v0, -0x2

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/high16 v3, 0x41000000    # 8.0f

    const/high16 v4, 0x41000000    # 8.0f

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_248

    .line 134
    .end local v8    # "imageView":Landroid/widget/ImageView;
    .end local v9    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_263
    return-void

    .line 87
    :pswitch_data_264
    .packed-switch 0x0
        :pswitch_1ae
        :pswitch_1cc
        :pswitch_1ea
        :pswitch_208
    .end packed-switch
.end method


# virtual methods
.method public setSecretText(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 146
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatBigEmptyView;->secretViewStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    return-void
.end method

.method public setTextColor(I)V
    .registers 7
    .param p1, "color"    # I

    .prologue
    .line 137
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatBigEmptyView;->textViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 138
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatBigEmptyView;->textViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 140
    :cond_17
    const/4 v0, 0x0

    :goto_18
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatBigEmptyView;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3b

    .line 141
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatBigEmptyView;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string v3, "chat_serviceText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 143
    :cond_3b
    return-void
.end method
