.class public Lorg/telegram/ui/Components/EmbedBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "EmbedBottomSheet.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static instance:Lorg/telegram/ui/Components/EmbedBottomSheet;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private animationInProgress:Z

.field private customView:Landroid/view/View;

.field private customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private embedUrl:Ljava/lang/String;

.field private fullscreenVideoContainer:Landroid/widget/FrameLayout;

.field private fullscreenedByButton:Z

.field private hasDescription:Z

.field private height:I

.field private lastOrientation:I

.field private onShowListener:Landroid/content/DialogInterface$OnShowListener;

.field private openUrl:Ljava/lang/String;

.field private orientationEventListener:Landroid/view/OrientationEventListener;

.field private parentActivity:Landroid/app/Activity;

.field private pipVideoView:Lorg/telegram/ui/Components/PipVideoView;

.field private position:[I

.field private prevOrientation:I

.field private progressBar:Lorg/telegram/ui/Components/RadialProgressView;

.field private videoView:Lorg/telegram/ui/Components/WebPlayerView;

.field private waitingForDraw:I

.field private wasInLandscape:Z

.field private webView:Landroid/webkit/WebView;

.field private width:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "originalUrl"    # Ljava/lang/String;
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "w"    # I
    .param p7, "h"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 125
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 75
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->position:[I

    .line 78
    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->lastOrientation:I

    .line 85
    const/4 v1, -0x2

    iput v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->prevOrientation:I

    .line 92
    new-instance v1, Lorg/telegram/ui/Components/EmbedBottomSheet$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EmbedBottomSheet$1;-><init>(Lorg/telegram/ui/Components/EmbedBottomSheet;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->onShowListener:Landroid/content/DialogInterface$OnShowListener;

    .line 126
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->fullWidth:Z

    .line 127
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->setApplyTopPadding(Z)V

    .line 128
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->setApplyBottomPadding(Z)V

    .line 130
    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2f

    move-object/from16 v1, p1

    .line 131
    check-cast v1, Landroid/app/Activity;

    iput-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->parentActivity:Landroid/app/Activity;

    .line 134
    :cond_2f
    move-object/from16 v0, p5

    iput-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->embedUrl:Ljava/lang/String;

    .line 135
    if-eqz p3, :cond_3c6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3c6

    const/4 v1, 0x1

    :goto_3c
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->hasDescription:Z

    .line 136
    move-object/from16 v0, p4

    iput-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->openUrl:Ljava/lang/String;

    .line 137
    move/from16 v0, p6

    iput v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->width:I

    .line 138
    move/from16 v0, p7

    iput v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->height:I

    .line 139
    iget v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->width:I

    if-eqz v1, :cond_52

    iget v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->height:I

    if-nez v1, :cond_60

    .line 140
    :cond_52
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->width:I

    .line 141
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->height:I

    .line 144
    :cond_60
    new-instance v1, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    .line 145
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 146
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_7c

    .line 147
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 150
    :cond_7c
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 152
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/Components/EmbedBottomSheet$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/EmbedBottomSheet$2;-><init>(Lorg/telegram/ui/Components/EmbedBottomSheet;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 159
    new-instance v8, Lorg/telegram/ui/Components/EmbedBottomSheet$3;

    move-object/from16 v0, p1

    invoke-direct {v8, p0, v0}, Lorg/telegram/ui/Components/EmbedBottomSheet$3;-><init>(Lorg/telegram/ui/Components/EmbedBottomSheet;Landroid/content/Context;)V

    .line 191
    .local v8, "containerLayout":Landroid/widget/FrameLayout;
    new-instance v1, Lorg/telegram/ui/Components/EmbedBottomSheet$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EmbedBottomSheet$4;-><init>(Lorg/telegram/ui/Components/EmbedBottomSheet;)V

    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 197
    invoke-virtual {p0, v8}, Lorg/telegram/ui/Components/EmbedBottomSheet;->setCustomView(Landroid/view/View;)V

    .line 199
    new-instance v1, Landroid/webkit/WebView;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;

    .line 200
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 201
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 202
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_d9

    .line 203
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 206
    :cond_d9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_f3

    .line 207
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 208
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v9

    .line 209
    .local v9, "cookieManager":Landroid/webkit/CookieManager;
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x1

    invoke-virtual {v9, v1, v2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 212
    .end local v9    # "cookieManager":Landroid/webkit/CookieManager;
    :cond_f3
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;

    new-instance v2, Lorg/telegram/ui/Components/EmbedBottomSheet$5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/EmbedBottomSheet$5;-><init>(Lorg/telegram/ui/Components/EmbedBottomSheet;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 250
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;

    new-instance v2, Lorg/telegram/ui/Components/EmbedBottomSheet$6;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/EmbedBottomSheet$6;-><init>(Lorg/telegram/ui/Components/EmbedBottomSheet;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 264
    iget-object v14, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/16 v3, 0x33

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-boolean v7, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->hasDescription:Z

    if-eqz v7, :cond_3c9

    const/16 v7, 0x16

    :goto_117
    add-int/lit8 v7, v7, 0x54

    int-to-float v7, v7

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v14, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    new-instance v1, Lorg/telegram/ui/Components/WebPlayerView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Lorg/telegram/ui/Components/EmbedBottomSheet$7;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/EmbedBottomSheet$7;-><init>(Lorg/telegram/ui/Components/EmbedBottomSheet;)V

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/telegram/ui/Components/WebPlayerView;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    .line 541
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/WebPlayerView;->setVisibility(I)V

    .line 542
    iget-object v14, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/16 v3, 0x33

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-boolean v7, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->hasDescription:Z

    if-eqz v7, :cond_3cc

    const/16 v7, 0x16

    :goto_147
    add-int/lit8 v7, v7, 0x54

    add-int/lit8 v7, v7, -0xa

    int-to-float v7, v7

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v14, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 544
    new-instance v1, Lorg/telegram/ui/Components/RadialProgressView;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    .line 545
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 546
    iget-object v14, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v1, -0x2

    const/high16 v2, -0x40000000    # -2.0f

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-boolean v7, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->hasDescription:Z

    if-eqz v7, :cond_3cf

    const/16 v7, 0x16

    :goto_172
    add-int/lit8 v7, v7, 0x54

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v14, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 550
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->hasDescription:Z

    if-eqz v1, :cond_1d1

    .line 551
    new-instance v13, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 552
    .local v13, "textView":Landroid/widget/TextView;
    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v13, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 553
    const-string v1, "dialogTextBlack"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 554
    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 556
    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 557
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 558
    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v13, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 559
    const/4 v1, -0x1

    const/high16 v2, -0x40000000    # -2.0f

    const/16 v3, 0x53

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x429a0000    # 77.0f

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v13, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 562
    .end local v13    # "textView":Landroid/widget/TextView;
    :cond_1d1
    new-instance v13, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 563
    .restart local v13    # "textView":Landroid/widget/TextView;
    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v13, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 564
    const-string v1, "dialogTextGray"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 565
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 567
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 568
    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v13, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 569
    const/4 v1, -0x1

    const/high16 v2, -0x40000000    # -2.0f

    const/16 v3, 0x53

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x42640000    # 57.0f

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v13, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 571
    new-instance v11, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 572
    .local v11, "lineView":Landroid/view/View;
    const-string v1, "dialogGrayLine"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 573
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/16 v4, 0x53

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v8, v11, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 574
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 576
    new-instance v10, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 577
    .local v10, "frameLayout":Landroid/widget/FrameLayout;
    const-string v1, "dialogBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 578
    const/4 v1, -0x1

    const/16 v2, 0x30

    const/16 v3, 0x53

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v10, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 580
    new-instance v13, Landroid/widget/TextView;

    .end local v13    # "textView":Landroid/widget/TextView;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 581
    .restart local v13    # "textView":Landroid/widget/TextView;
    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v13, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 582
    const-string v1, "dialogTextBlue4"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 583
    const/16 v1, 0x11

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 584
    const-string v1, "dialogButtonSelector"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 585
    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v13, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 586
    const-string v1, "Close"

    const v2, 0x7f07017f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 588
    const/4 v1, -0x2

    const/4 v2, -0x1

    const/16 v3, 0x33

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v10, v13, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 589
    new-instance v1, Lorg/telegram/ui/Components/EmbedBottomSheet$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EmbedBottomSheet$8;-><init>(Lorg/telegram/ui/Components/EmbedBottomSheet;)V

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    new-instance v12, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 597
    .local v12, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 598
    const/4 v1, -0x2

    const/4 v2, -0x1

    const/16 v3, 0x35

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v10, v12, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 600
    new-instance v13, Landroid/widget/TextView;

    .end local v13    # "textView":Landroid/widget/TextView;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 601
    .restart local v13    # "textView":Landroid/widget/TextView;
    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v13, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 602
    const-string v1, "dialogTextBlue4"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 603
    const/16 v1, 0x11

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 604
    const-string v1, "dialogButtonSelector"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 605
    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v13, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 606
    const-string v1, "Copy"

    const v2, 0x7f07019a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 608
    const/4 v1, -0x2

    const/4 v2, -0x1

    const/16 v3, 0x33

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v12, v13, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 609
    new-instance v1, Lorg/telegram/ui/Components/EmbedBottomSheet$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EmbedBottomSheet$9;-><init>(Lorg/telegram/ui/Components/EmbedBottomSheet;)V

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 624
    new-instance v13, Landroid/widget/TextView;

    .end local v13    # "textView":Landroid/widget/TextView;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 625
    .restart local v13    # "textView":Landroid/widget/TextView;
    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v13, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 626
    const-string v1, "dialogTextBlue4"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 627
    const/16 v1, 0x11

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 628
    const-string v1, "dialogButtonSelector"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 629
    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v13, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 630
    const-string v1, "OpenInBrowser"

    const v2, 0x7f0703e1

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 632
    const/4 v1, -0x2

    const/4 v2, -0x1

    const/16 v3, 0x33

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v12, v13, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 633
    new-instance v1, Lorg/telegram/ui/Components/EmbedBottomSheet$10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EmbedBottomSheet$10;-><init>(Lorg/telegram/ui/Components/EmbedBottomSheet;)V

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    new-instance v1, Lorg/telegram/ui/Components/EmbedBottomSheet$11;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EmbedBottomSheet$11;-><init>(Lorg/telegram/ui/Components/EmbedBottomSheet;)V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->setDelegate(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;)V

    .line 684
    new-instance v1, Lorg/telegram/ui/Components/EmbedBottomSheet$12;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/Components/EmbedBottomSheet$12;-><init>(Lorg/telegram/ui/Components/EmbedBottomSheet;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->orientationEventListener:Landroid/view/OrientationEventListener;

    .line 702
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v1

    if-eqz v1, :cond_3d2

    .line 703
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->enable()V

    .line 708
    :goto_3c3
    sput-object p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->instance:Lorg/telegram/ui/Components/EmbedBottomSheet;

    .line 709
    return-void

    .line 135
    .end local v8    # "containerLayout":Landroid/widget/FrameLayout;
    .end local v10    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v11    # "lineView":Landroid/view/View;
    .end local v12    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v13    # "textView":Landroid/widget/TextView;
    :cond_3c6
    const/4 v1, 0x0

    goto/16 :goto_3c

    .line 264
    .restart local v8    # "containerLayout":Landroid/widget/FrameLayout;
    :cond_3c9
    const/4 v7, 0x0

    goto/16 :goto_117

    .line 542
    :cond_3cc
    const/4 v7, 0x0

    goto/16 :goto_147

    .line 546
    :cond_3cf
    const/4 v7, 0x0

    goto/16 :goto_172

    .line 705
    .restart local v10    # "frameLayout":Landroid/widget/FrameLayout;
    .restart local v11    # "lineView":Landroid/view/View;
    .restart local v12    # "linearLayout":Landroid/widget/LinearLayout;
    .restart local v13    # "textView":Landroid/widget/TextView;
    :cond_3d2
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    .line 706
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->orientationEventListener:Landroid/view/OrientationEventListener;

    goto :goto_3c3
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/PipVideoView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->pipVideoView:Lorg/telegram/ui/Components/PipVideoView;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/EmbedBottomSheet;Lorg/telegram/ui/Components/PipVideoView;)Lorg/telegram/ui/Components/PipVideoView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;
    .param p1, "x1"    # Lorg/telegram/ui/Components/PipVideoView;

    .prologue
    .line 64
    iput-object p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->pipVideoView:Lorg/telegram/ui/Components/PipVideoView;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/RadialProgressView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->embedUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/EmbedBottomSheet;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 64
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->wasInLandscape:Z

    return v0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/EmbedBottomSheet;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->wasInLandscape:Z

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 64
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->fullscreenedByButton:Z

    return v0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/Components/EmbedBottomSheet;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->fullscreenedByButton:Z

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->parentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/EmbedBottomSheet;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 64
    iget v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->prevOrientation:I

    return v0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/Components/EmbedBottomSheet;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->prevOrientation:I

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/webkit/WebView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/graphics/drawable/ColorDrawable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/graphics/drawable/ColorDrawable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/content/DialogInterface$OnShowListener;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->onShowListener:Landroid/content/DialogInterface$OnShowListener;

    return-object v0
.end method

.method static synthetic access$2602(Lorg/telegram/ui/Components/EmbedBottomSheet;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->waitingForDraw:I

    return p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/graphics/drawable/ColorDrawable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300()Lorg/telegram/ui/Components/EmbedBottomSheet;
    .registers 1

    .prologue
    .line 64
    sget-object v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->instance:Lorg/telegram/ui/Components/EmbedBottomSheet;

    return-object v0
.end method

.method static synthetic access$3002(Lorg/telegram/ui/Components/EmbedBottomSheet;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->animationInProgress:Z

    return p1
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/EmbedBottomSheet;
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 64
    sput-object p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->instance:Lorg/telegram/ui/Components/EmbedBottomSheet;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/EmbedBottomSheet;)[I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->position:[I

    return-object v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/EmbedBottomSheet;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 64
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->getLeftInset()I

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/graphics/drawable/ColorDrawable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    return-object v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/EmbedBottomSheet;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->openUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/OrientationEventListener;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->orientationEventListener:Landroid/view/OrientationEventListener;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/EmbedBottomSheet;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 64
    iget v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->width:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/EmbedBottomSheet;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 64
    iget v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->height:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/EmbedBottomSheet;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 64
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->hasDescription:Z

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->customView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/EmbedBottomSheet;Landroid/view/View;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 64
    iput-object p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->customView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object v0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Components/EmbedBottomSheet;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;
    .param p1, "x1"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 64
    iput-object p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method public static getInstance()Lorg/telegram/ui/Components/EmbedBottomSheet;
    .registers 1

    .prologue
    .line 747
    sget-object v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->instance:Lorg/telegram/ui/Components/EmbedBottomSheet;

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "originalUrl"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "w"    # I
    .param p6, "h"    # I

    .prologue
    .line 117
    sget-object v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->instance:Lorg/telegram/ui/Components/EmbedBottomSheet;

    if-eqz v0, :cond_9

    .line 118
    sget-object v0, Lorg/telegram/ui/Components/EmbedBottomSheet;->instance:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->destroy()V

    .line 120
    :cond_9
    new-instance v0, Lorg/telegram/ui/Components/EmbedBottomSheet;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/EmbedBottomSheet;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->show()V

    .line 121
    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .registers 2

    .prologue
    .line 713
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->isInFullscreen()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public destroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 735
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->pipVideoView:Lorg/telegram/ui/Components/PipVideoView;

    if-eqz v0, :cond_c

    .line 736
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->pipVideoView:Lorg/telegram/ui/Components/PipVideoView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PipVideoView;->close()V

    .line 737
    iput-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->pipVideoView:Lorg/telegram/ui/Components/PipVideoView;

    .line 739
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    if-eqz v0, :cond_15

    .line 740
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->destroy()V

    .line 742
    :cond_15
    sput-object v1, Lorg/telegram/ui/Components/EmbedBottomSheet;->instance:Lorg/telegram/ui/Components/EmbedBottomSheet;

    .line 743
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->dismissInternal()V

    .line 744
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 718
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->isInitied()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->isInline()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 719
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_34

    .line 720
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->isInFullscreen()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 721
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->enterFullscreen()V

    .line 729
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->pipVideoView:Lorg/telegram/ui/Components/PipVideoView;

    if-eqz v0, :cond_33

    .line 730
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->pipVideoView:Lorg/telegram/ui/Components/PipVideoView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PipVideoView;->onConfigurationChanged()V

    .line 732
    :cond_33
    return-void

    .line 724
    :cond_34
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->isInFullscreen()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 725
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->exitFullscreen()V

    goto :goto_2a
.end method

.method public onContainerDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 804
    iget v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->waitingForDraw:I

    if-eqz v0, :cond_1b

    .line 805
    iget v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->waitingForDraw:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->waitingForDraw:I

    .line 806
    iget v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->waitingForDraw:I

    if-nez v0, :cond_1c

    .line 807
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->updateTextureImageView()V

    .line 808
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->pipVideoView:Lorg/telegram/ui/Components/PipVideoView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PipVideoView;->close()V

    .line 809
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->pipVideoView:Lorg/telegram/ui/Components/PipVideoView;

    .line 814
    :cond_1b
    :goto_1b
    return-void

    .line 811
    :cond_1c
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->invalidate()V

    goto :goto_1b
.end method

.method protected onContainerTranslationYChanged(F)V
    .registers 2
    .param p1, "translationY"    # F

    .prologue
    .line 775
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->updateTextureViewPosition()V

    .line 776
    return-void
.end method

.method protected onCustomLayout(Landroid/view/View;IIII)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 790
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->getControlsView()Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_b

    .line 791
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->updateTextureViewPosition()V

    .line 793
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method protected onCustomMeasure(Landroid/view/View;II)Z
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 780
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/WebPlayerView;->getControlsView()Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_2b

    .line 781
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 782
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/WebPlayerView;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 783
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/WebPlayerView;->getAspectRatioView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/WebPlayerView;->isInFullscreen()Z

    move-result v1

    if-eqz v1, :cond_2c

    move v1, v2

    :goto_28
    add-int/2addr v1, v3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 785
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_2b
    return v2

    .line 783
    .restart local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_2c
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_28
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 797
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->isInitied()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 798
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->pause()V

    .line 800
    :cond_11
    return-void
.end method

.method public updateTextureViewPosition()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 751
    iget-object v4, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/WebPlayerView;->getAspectRatioView()Landroid/view/View;

    move-result-object v3

    .line 752
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->position:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 753
    iget-object v4, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->position:[I

    aget v5, v4, v7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->getLeftInset()I

    move-result v6

    sub-int/2addr v5, v6

    aput v5, v4, v7

    .line 755
    iget-object v4, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/WebPlayerView;->isInline()Z

    move-result v4

    if-nez v4, :cond_52

    iget-boolean v4, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->animationInProgress:Z

    if-nez v4, :cond_52

    .line 756
    iget-object v4, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureView()Landroid/view/TextureView;

    move-result-object v2

    .line 757
    .local v2, "textureView":Landroid/view/TextureView;
    iget-object v4, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->position:[I

    aget v4, v4, v7

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/view/TextureView;->setTranslationX(F)V

    .line 758
    iget-object v4, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->position:[I

    aget v4, v4, v8

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/view/TextureView;->setTranslationY(F)V

    .line 759
    iget-object v4, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 760
    .local v1, "textureImageView":Landroid/view/View;
    if-eqz v1, :cond_52

    .line 761
    iget-object v4, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->position:[I

    aget v4, v4, v7

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 762
    iget-object v4, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->position:[I

    aget v4, v4, v8

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 765
    .end local v1    # "textureImageView":Landroid/view/View;
    .end local v2    # "textureView":Landroid/view/TextureView;
    :cond_52
    iget-object v4, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/WebPlayerView;->getControlsView()Landroid/view/View;

    move-result-object v0

    .line 766
    .local v0, "controlsView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    if-ne v4, v5, :cond_69

    .line 767
    iget-object v4, p0, Lorg/telegram/ui/Components/EmbedBottomSheet;->position:[I

    aget v4, v4, v8

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 771
    :goto_68
    return-void

    .line 769
    :cond_69
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_68
.end method
