.class public Lorg/telegram/ui/Telehgram/AntiReportfragment;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "AntiReportfragment.java"


# instance fields
.field private botButton:Landroid/widget/Button;

.field private emailButton:Landroid/widget/Button;

.field private emptyTextView:Landroid/widget/TextView;

.field private noteTextView:Landroid/widget/TextView;

.field public searchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private searchTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public copyToClipboard(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 57
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 58
    .local v3, "sdk":I
    const/16 v4, 0xb

    if-ge v3, v4, :cond_13

    .line 59
    const-string v4, "clipboard"

    .line 60
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    .line 61
    .local v1, "clipboard":Landroid/text/ClipboardManager;
    invoke-virtual {v1, p2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .end local v1    # "clipboard":Landroid/text/ClipboardManager;
    :goto_11
    const/4 v4, 0x1

    .line 71
    .end local v3    # "sdk":I
    :goto_12
    return v4

    .line 63
    .restart local v3    # "sdk":I
    :cond_13
    const-string v4, "clipboard"

    .line 64
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 65
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    const-string v4, ""

    .line 66
    invoke-static {v4, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 67
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    goto :goto_11

    .line 70
    .end local v0    # "clip":Landroid/content/ClipData;
    .end local v1    # "clipboard":Landroid/content/ClipboardManager;
    .end local v3    # "sdk":I
    :catch_25
    move-exception v2

    .line 71
    .local v2, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_12
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 19
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    sget-object v12, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v13, "theme"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 77
    .local v11, "themePrefs":Landroid/content/SharedPreferences;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Telehgram/AntiReportfragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0200dd

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 78
    .local v1, "back":Landroid/graphics/drawable/Drawable;
    const-string v12, "contactsHeaderIconsColor"

    const/4 v13, -0x1

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v12, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 80
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/AntiReportfragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v12, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/AntiReportfragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 82
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/AntiReportfragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v13, "AntiReport"

    const v14, 0x7f07064a

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/AntiReportfragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v13, Lorg/telegram/ui/Telehgram/AntiReportfragment$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lorg/telegram/ui/Telehgram/AntiReportfragment$1;-><init>(Lorg/telegram/ui/Telehgram/AntiReportfragment;)V

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 92
    new-instance v12, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/telegram/ui/Telehgram/AntiReportfragment;->fragmentView:Landroid/view/View;

    .line 94
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 95
    .local v2, "emptyTextLayout":Landroid/widget/LinearLayout;
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 97
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/AntiReportfragment;->fragmentView:Landroid/view/View;

    check-cast v12, Landroid/widget/FrameLayout;

    invoke-virtual {v12, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 98
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 99
    .local v4, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v12, -0x1

    iput v12, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 100
    const/4 v12, -0x1

    iput v12, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 101
    const/16 v12, 0x30

    iput v12, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 102
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    new-instance v12, Lorg/telegram/ui/Telehgram/AntiReportfragment$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lorg/telegram/ui/Telehgram/AntiReportfragment$2;-><init>(Lorg/telegram/ui/Telehgram/AntiReportfragment;)V

    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 110
    new-instance v12, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/telegram/ui/Telehgram/AntiReportfragment;->emptyTextView:Landroid/widget/TextView;

    .line 111
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/AntiReportfragment;->emptyTextView:Landroid/widget/TextView;

    const v13, -0x7f7f80

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/AntiReportfragment;->emptyTextView:Landroid/widget/TextView;

    const/high16 v13, 0x41a00000    # 20.0f

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 113
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/AntiReportfragment;->emptyTextView:Landroid/widget/TextView;

    const/16 v13, 0x11

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 114
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/AntiReportfragment;->emptyTextView:Landroid/widget/TextView;

    const-string v13, "fonts/rmedium.ttf"

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 115
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/AntiReportfragment;->emptyTextView:Landroid/widget/TextView;

    const-string v13, "AntiReportNote"

    const v14, 0x7f07064b

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/AntiReportfragment;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 117
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/AntiReportfragment;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 118
    .local v5, "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v12, -0x1

    iput v12, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 119
    const/4 v12, -0x1

    iput v12, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 120
    const v12, 0x3f4ccccd

    iput v12, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 121
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/AntiReportfragment;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    new-instance v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 124
    .local v3, "frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 125
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 126
    .local v6, "layoutParams2":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v12, -0x1

    iput v12, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 127
    const/4 v12, -0x1

    iput v12, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 128
    const v12, 0x3f4ccccd

    iput v12, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 129
    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 131
    .local v10, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 132
    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 133
    const/16 v12, 0x11

    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 134
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 135
    .local v7, "layoutParams3":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v12, -0x1

    iput v12, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 136
    const/4 v12, -0x2

    iput v12, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 137
    const v12, 0x3f333333

    iput v12, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 138
    const/16 v12, 0x11

    iput v12, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 139
    invoke-virtual {v10, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    const/16 v12, 0x9

    const/16 v13, 0x9

    const/16 v14, 0x9

    const/16 v15, 0x9

    invoke-virtual {v10, v12, v13, v14, v15}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 142
    invoke-virtual {v3, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 143
    new-instance v12, Landroid/widget/Button;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/telegram/ui/Telehgram/AntiReportfragment;->emailButton:Landroid/widget/Button;

    .line 144
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/AntiReportfragment;->emailButton:Landroid/widget/Button;

    const v13, -0xc2c2c3

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 145
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/AntiReportfragment;->emailButton:Landroid/widget/Button;

    const v13, -0x66000001

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setTextColor(I)V

    .line 146
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/AntiReportfragment;->emailButton:Landroid/widget/Button;

    const/high16 v13, 0x41900000    # 18.0f

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setTextSize(F)V

    .line 147
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/AntiReportfragment;->emailButton:Landroid/widget/Button;

    const/16 v13, 0x11

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setGravity(I)V

    .line 148
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/AntiReportfragment;->emailButton:Landroid/widget/Button;

    const/4 v13, 0x5

    const/4 v14, 0x5

    const/4 v15, 0x5

    const/16 v16, 0x5

    invoke-virtual/range {v12 .. v16}, Landroid/widget/Button;->setPadding(IIII)V

    .line 149
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/AntiReportfragment;->emailButton:Landroid/widget/Button;

    const-string v13, "fonts/rmedium.ttf"

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/AntiReportfragment;->emailButton:Landroid/widget/Button;

    const-string v13, "emailAntiReport"

    const v14, 0x7f070874

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 151
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 152
    .local v8, "layoutParams4":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v12, 0x43960000    # 300.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    iput v12, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 153
    const/high16 v12, 0x437a0000    # 250.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    iput v12, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 154
    const/16 v12, 0x11

    iput v12, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 155
    const/4 v12, 0x6

    const/4 v13, 0x6

    const/4 v14, 0x6

    const/4 v15, 0x6

    invoke-virtual {v8, v12, v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 157
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/AntiReportfragment;->emailButton:Landroid/widget/Button;

    invoke-virtual {v12, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/AntiReportfragment;->emailButton:Landroid/widget/Button;

    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 160
    new-instance v12, Landroid/widget/Button;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/telegram/ui/Telehgram/AntiReportfragment;->botButton:Landroid/widget/Button;

    .line 161
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/AntiReportfragment;->botButton:Landroid/widget/Button;

    const v13, -0xc2c2c3

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 162
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/AntiReportfragment;->botButton:Landroid/widget/Button;

    const v13, -0x66000001

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setTextColor(I)V

    .line 163
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/AntiReportfragment;->botButton:Landroid/widget/Button;

    const/high16 v13, 0x41900000    # 18.0f

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setTextSize(F)V

    .line 164
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/AntiReportfragment;->botButton:Landroid/widget/Button;

    const/4 v13, 0x5

    const/4 v14, 0x5

    const/4 v15, 0x5

    const/16 v16, 0x5

    invoke-virtual/range {v12 .. v16}, Landroid/widget/Button;->setPadding(IIII)V

    .line 165
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/AntiReportfragment;->botButton:Landroid/widget/Button;

    const/16 v13, 0x11

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setGravity(I)V

    .line 166
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/AntiReportfragment;->botButton:Landroid/widget/Button;

    const-string v13, "fonts/rmedium.ttf"

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/AntiReportfragment;->botButton:Landroid/widget/Button;

    const-string v13, "botAntiReport"

    const v14, 0x7f070845

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 169
    .local v9, "layoutParams5":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v12, 0x43960000    # 300.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 170
    const/high16 v12, 0x437a0000    # 250.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 171
    const/16 v12, 0x11

    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 172
    const/4 v12, 0x6

    const/4 v13, 0x6

    const/4 v14, 0x6

    const/4 v15, 0x6

    invoke-virtual {v9, v12, v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 173
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/AntiReportfragment;->botButton:Landroid/widget/Button;

    invoke-virtual {v12, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/AntiReportfragment;->botButton:Landroid/widget/Button;

    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/AntiReportfragment;->botButton:Landroid/widget/Button;

    new-instance v13, Lorg/telegram/ui/Telehgram/AntiReportfragment$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lorg/telegram/ui/Telehgram/AntiReportfragment$3;-><init>(Lorg/telegram/ui/Telehgram/AntiReportfragment;)V

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/AntiReportfragment;->emailButton:Landroid/widget/Button;

    new-instance v13, Lorg/telegram/ui/Telehgram/AntiReportfragment$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lorg/telegram/ui/Telehgram/AntiReportfragment$4;-><init>(Lorg/telegram/ui/Telehgram/AntiReportfragment;)V

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/Telehgram/AntiReportfragment;->fragmentView:Landroid/view/View;

    return-object v12
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 285
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 287
    return-void
.end method
