.class public Lorg/telegram/ui/Telehgram/CopyTextAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "CopyTextAlert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;
    }
.end annotation


# instance fields
.field private closeButton:Landroid/widget/TextView;

.field private copyButton:Landroid/widget/TextView;

.field private scrollOffsetY:I

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private textView:Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;

.field private topBeforeSwitch:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020252

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 42
    new-instance v0, Lorg/telegram/ui/Telehgram/CopyTextAlert$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Telehgram/CopyTextAlert$1;-><init>(Lorg/telegram/ui/Telehgram/CopyTextAlert;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->containerView:Landroid/view/ViewGroup;

    .line 88
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->containerView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 89
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->containerView:Landroid/view/ViewGroup;

    sget v1, Lorg/telegram/ui/Telehgram/CopyTextAlert;->backgroundPaddingLeft:I

    const/4 v2, 0x0

    sget v3, Lorg/telegram/ui/Telehgram/CopyTextAlert;->backgroundPaddingLeft:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 91
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 92
    .local v7, "frameLayout":Landroid/widget/FrameLayout;
    const/4 v0, 0x5

    const/4 v1, 0x5

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->containerView:Landroid/view/ViewGroup;

    const/4 v1, -0x1

    const/high16 v2, -0x40000000    # -2.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    new-instance v9, Landroid/widget/ScrollView;

    invoke-direct {v9, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 96
    .local v9, "scrollView":Landroid/widget/ScrollView;
    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x53

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x42400000    # 48.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    new-instance v0, Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;-><init>(Lorg/telegram/ui/Telehgram/CopyTextAlert;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->textView:Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;

    .line 99
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->textView:Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v10

    .line 100
    .local v10, "stringFinalText":Ljava/lang/CharSequence;
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->textView:Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->textView:Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;->setTextIsSelectable(Z)V

    .line 102
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->textView:Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;->setBackgroundColor(I)V

    .line 103
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->textView:Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;->setTextColor(I)V

    .line 104
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->textView:Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;->setTextSize(IF)V

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->textView:Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 106
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->textView:Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;->setGravity(I)V

    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_b2

    .line 108
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->textView:Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;->setMinLines(I)V

    .line 110
    :cond_b2
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->textView:Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;

    const/16 v1, 0xf

    const/4 v2, 0x5

    const/16 v3, 0xf

    const/4 v4, 0x5

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;->setPadding(IIII)V

    .line 111
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 112
    .local v11, "textParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 113
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->textView:Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->textView:Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;

    invoke-virtual {v9, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 116
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 117
    .local v8, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 118
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 119
    const/4 v0, -0x1

    const/high16 v1, 0x42400000    # 48.0f

    const/16 v2, 0x53

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->closeButton:Landroid/widget/TextView;

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->closeButton:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 123
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->closeButton:Landroid/widget/TextView;

    const-string v1, "Close"

    const v2, 0x7f07017f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->closeButton:Landroid/widget/TextView;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 125
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->closeButton:Landroid/widget/TextView;

    const v1, -0xc57331

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->closeButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41880000    # 17.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->closeButton:Landroid/widget/TextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 128
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->closeButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->closeButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/Telehgram/CopyTextAlert$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Telehgram/CopyTextAlert$2;-><init>(Lorg/telegram/ui/Telehgram/CopyTextAlert;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->copyButton:Landroid/widget/TextView;

    .line 137
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->copyButton:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 138
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->copyButton:Landroid/widget/TextView;

    const-string v1, "Copy"

    const v2, 0x7f07019a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->copyButton:Landroid/widget/TextView;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 140
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->copyButton:Landroid/widget/TextView;

    const v1, -0xc57331

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->copyButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41880000    # 17.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 142
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->copyButton:Landroid/widget/TextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 143
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->copyButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->copyButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/Telehgram/CopyTextAlert$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Telehgram/CopyTextAlert$3;-><init>(Lorg/telegram/ui/Telehgram/CopyTextAlert;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Telehgram/CopyTextAlert;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/CopyTextAlert;

    .prologue
    .line 28
    iget v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->scrollOffsetY:I

    return v0
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 28
    sget v0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->backgroundPaddingTop:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Telehgram/CopyTextAlert;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/CopyTextAlert;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Telehgram/CopyTextAlert;)Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/CopyTextAlert;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert;->textView:Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;

    return-object v0
.end method

.method public static addToClipboard(Ljava/lang/CharSequence;)V
    .registers 6
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 176
    :try_start_0
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 177
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    const-string v3, "label"

    invoke-static {v3, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 178
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 182
    .end local v0    # "clip":Landroid/content/ClipData;
    .end local v1    # "clipboard":Landroid/content/ClipboardManager;
    :goto_13
    return-void

    .line 179
    :catch_14
    move-exception v2

    .line 180
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "tmessages"

    invoke-static {v3, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .registers 2

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method
