.class public Lde/jurihock/voicesmith/VoiceChangerAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "VoiceChangerAlert.java"


# instance fields
.field private radioCell0:Lorg/telegram/ui/Cells/RadioCell;

.field private radioCell1:Lorg/telegram/ui/Cells/RadioCell;

.field private radioCell2:Lorg/telegram/ui/Cells/RadioCell;

.field private radioCell3:Lorg/telegram/ui/Cells/RadioCell;

.field private radioCell4:Lorg/telegram/ui/Cells/RadioCell;

.field private radioCell5:Lorg/telegram/ui/Cells/RadioCell;

.field private scrollOffsetY:I

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

.field private typeTitleTextView:Landroid/widget/TextView;

.field private value1:Lorg/telegram/ui/Telehgram/TextDescriptionCell;

.field private value5:Lorg/telegram/ui/Telehgram/TextDescriptionCell;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .registers 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    .line 58
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020252

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 62
    new-instance v3, Lde/jurihock/voicesmith/VoiceChangerAlert$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lde/jurihock/voicesmith/VoiceChangerAlert$1;-><init>(Lde/jurihock/voicesmith/VoiceChangerAlert;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->containerView:Landroid/view/ViewGroup;

    .line 108
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->containerView:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 109
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->containerView:Landroid/view/ViewGroup;

    sget v4, Lde/jurihock/voicesmith/VoiceChangerAlert;->backgroundPaddingLeft:I

    const/4 v5, 0x0

    sget v6, Lde/jurihock/voicesmith/VoiceChangerAlert;->backgroundPaddingLeft:I

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 111
    new-instance v14, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 112
    .local v14, "frameLayout":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->containerView:Landroid/view/ViewGroup;

    const/4 v4, -0x1

    const/high16 v5, -0x40000000    # -2.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v14, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    new-instance v10, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 115
    .local v10, "background":Landroid/view/View;
    const/4 v3, -0x1

    invoke-virtual {v10, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 116
    const/4 v3, 0x4

    invoke-virtual {v10, v3}, Landroid/view/View;->setVisibility(I)V

    .line 117
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->containerView:Landroid/view/ViewGroup;

    const/4 v4, -0x1

    const/high16 v5, 0x442f0000    # 700.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v10, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    new-instance v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 121
    .local v19, "titleTextView":Landroid/widget/TextView;
    const/4 v3, 0x1

    const/high16 v4, 0x41800000    # 16.0f

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 122
    const/16 v3, 0x11

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 123
    const-string v3, "VoiceChangerSettings"

    const v4, 0x7f07082d

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "theme"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 125
    .local v18, "themePrefs":Landroid/content/SharedPreferences;
    const-string v3, "chatHeaderIconsColor"

    const/4 v4, -0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 126
    .local v13, "color":I
    const-string v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 127
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    const-string v3, "themeColor"

    const v4, -0xad8a64

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 129
    const/4 v3, -0x1

    const/16 v4, 0x32

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v14, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    new-instance v16, Landroid/widget/ScrollView;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 133
    .local v16, "scrollView":Landroid/widget/ScrollView;
    const/4 v3, -0x1

    const/high16 v4, -0x40000000    # -2.0f

    const/16 v5, 0x53

    const/4 v6, 0x0

    const/high16 v7, 0x42480000    # 50.0f

    const/4 v8, 0x0

    const/high16 v9, 0x42480000    # 50.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 136
    .local v15, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 137
    const/4 v3, -0x1

    const/high16 v4, -0x40000000    # -2.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v15, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    new-instance v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 140
    .local v20, "typeTextView":Landroid/widget/TextView;
    const-string v3, "themeColor"

    const v4, -0xad8a64

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 141
    const/4 v3, 0x1

    const/high16 v4, 0x41800000    # 16.0f

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 142
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_44e

    const/4 v3, 0x5

    :goto_129
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 143
    const-string v3, "VoiceChangerType"

    const v4, 0x7f07082e

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    const-string v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 145
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41700000    # 15.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 147
    const/4 v3, -0x1

    const/16 v4, 0x32

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v15, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    new-instance v3, Lorg/telegram/ui/Cells/RadioCell;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/telegram/ui/Cells/RadioCell;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->radioCell0:Lorg/telegram/ui/Cells/RadioCell;

    .line 151
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->radioCell0:Lorg/telegram/ui/Cells/RadioCell;

    const-string v4, "VoiceChangerType1"

    const v5, 0x7f07082f

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/String;ZZ)V

    .line 152
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->radioCell0:Lorg/telegram/ui/Cells/RadioCell;

    const/4 v4, -0x1

    const/16 v5, 0x32

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->radioCell0:Lorg/telegram/ui/Cells/RadioCell;

    new-instance v4, Lde/jurihock/voicesmith/VoiceChangerAlert$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v4, v0, v1, v2}, Lde/jurihock/voicesmith/VoiceChangerAlert$2;-><init>(Lde/jurihock/voicesmith/VoiceChangerAlert;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/RadioCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    new-instance v3, Lorg/telegram/ui/Cells/RadioCell;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/telegram/ui/Cells/RadioCell;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->radioCell1:Lorg/telegram/ui/Cells/RadioCell;

    .line 161
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->radioCell1:Lorg/telegram/ui/Cells/RadioCell;

    const-string v4, "VoiceChangerType2"

    const v5, 0x7f070830

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/String;ZZ)V

    .line 162
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->radioCell1:Lorg/telegram/ui/Cells/RadioCell;

    const/4 v4, -0x1

    const/16 v5, 0x32

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->radioCell1:Lorg/telegram/ui/Cells/RadioCell;

    new-instance v4, Lde/jurihock/voicesmith/VoiceChangerAlert$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v4, v0, v1, v2}, Lde/jurihock/voicesmith/VoiceChangerAlert$3;-><init>(Lde/jurihock/voicesmith/VoiceChangerAlert;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/RadioCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    new-instance v3, Lorg/telegram/ui/Telehgram/TextDescriptionCell;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/telegram/ui/Telehgram/TextDescriptionCell;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->value1:Lorg/telegram/ui/Telehgram/TextDescriptionCell;

    .line 171
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->value1:Lorg/telegram/ui/Telehgram/TextDescriptionCell;

    const/4 v4, -0x1

    const/16 v5, 0x32

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->value1:Lorg/telegram/ui/Telehgram/TextDescriptionCell;

    new-instance v4, Lde/jurihock/voicesmith/VoiceChangerAlert$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v4, v0, v1, v2}, Lde/jurihock/voicesmith/VoiceChangerAlert$4;-><init>(Lde/jurihock/voicesmith/VoiceChangerAlert;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Telehgram/TextDescriptionCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    new-instance v3, Lorg/telegram/ui/Cells/RadioCell;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/telegram/ui/Cells/RadioCell;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->radioCell2:Lorg/telegram/ui/Cells/RadioCell;

    .line 180
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->radioCell2:Lorg/telegram/ui/Cells/RadioCell;

    const-string v4, "VoiceChangerType3"

    const v5, 0x7f070831

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/String;ZZ)V

    .line 181
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->radioCell2:Lorg/telegram/ui/Cells/RadioCell;

    const/4 v4, -0x1

    const/16 v5, 0x32

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->radioCell2:Lorg/telegram/ui/Cells/RadioCell;

    new-instance v4, Lde/jurihock/voicesmith/VoiceChangerAlert$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v4, v0, v1, v2}, Lde/jurihock/voicesmith/VoiceChangerAlert$5;-><init>(Lde/jurihock/voicesmith/VoiceChangerAlert;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/RadioCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    new-instance v3, Lorg/telegram/ui/Cells/RadioCell;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/telegram/ui/Cells/RadioCell;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->radioCell3:Lorg/telegram/ui/Cells/RadioCell;

    .line 190
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->radioCell3:Lorg/telegram/ui/Cells/RadioCell;

    const-string v4, "VoiceChangerType4"

    const v5, 0x7f070832

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/String;ZZ)V

    .line 191
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->radioCell3:Lorg/telegram/ui/Cells/RadioCell;

    const/4 v4, -0x1

    const/16 v5, 0x32

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->radioCell3:Lorg/telegram/ui/Cells/RadioCell;

    new-instance v4, Lde/jurihock/voicesmith/VoiceChangerAlert$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v4, v0, v1, v2}, Lde/jurihock/voicesmith/VoiceChangerAlert$6;-><init>(Lde/jurihock/voicesmith/VoiceChangerAlert;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/RadioCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    new-instance v3, Lorg/telegram/ui/Cells/RadioCell;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/telegram/ui/Cells/RadioCell;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->radioCell4:Lorg/telegram/ui/Cells/RadioCell;

    .line 200
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->radioCell4:Lorg/telegram/ui/Cells/RadioCell;

    const-string v4, "VoiceChangerType5"

    const v5, 0x7f070833

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/String;ZZ)V

    .line 201
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->radioCell4:Lorg/telegram/ui/Cells/RadioCell;

    const/4 v4, -0x1

    const/16 v5, 0x32

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->radioCell4:Lorg/telegram/ui/Cells/RadioCell;

    new-instance v4, Lde/jurihock/voicesmith/VoiceChangerAlert$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v4, v0, v1, v2}, Lde/jurihock/voicesmith/VoiceChangerAlert$7;-><init>(Lde/jurihock/voicesmith/VoiceChangerAlert;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/RadioCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    new-instance v3, Lorg/telegram/ui/Cells/RadioCell;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/telegram/ui/Cells/RadioCell;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->radioCell5:Lorg/telegram/ui/Cells/RadioCell;

    .line 210
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->radioCell5:Lorg/telegram/ui/Cells/RadioCell;

    const-string v4, "VoiceChangerType6"

    const v5, 0x7f070834

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/String;ZZ)V

    .line 211
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->radioCell5:Lorg/telegram/ui/Cells/RadioCell;

    const/4 v4, -0x1

    const/16 v5, 0x32

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->radioCell5:Lorg/telegram/ui/Cells/RadioCell;

    new-instance v4, Lde/jurihock/voicesmith/VoiceChangerAlert$8;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v4, v0, v1, v2}, Lde/jurihock/voicesmith/VoiceChangerAlert$8;-><init>(Lde/jurihock/voicesmith/VoiceChangerAlert;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/RadioCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    new-instance v3, Lorg/telegram/ui/Telehgram/TextDescriptionCell;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/telegram/ui/Telehgram/TextDescriptionCell;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->value5:Lorg/telegram/ui/Telehgram/TextDescriptionCell;

    .line 220
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->value5:Lorg/telegram/ui/Telehgram/TextDescriptionCell;

    const/4 v4, -0x1

    const/16 v5, 0x32

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->value5:Lorg/telegram/ui/Telehgram/TextDescriptionCell;

    new-instance v4, Lde/jurihock/voicesmith/VoiceChangerAlert$9;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v4, v0, v1, v2}, Lde/jurihock/voicesmith/VoiceChangerAlert$9;-><init>(Lde/jurihock/voicesmith/VoiceChangerAlert;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Telehgram/TextDescriptionCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    new-instance v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 230
    .local v17, "sendTextView":Landroid/widget/TextView;
    const-string v3, "themeColor"

    const v4, -0xad8a64

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 231
    const/4 v3, 0x1

    const/high16 v4, 0x41800000    # 16.0f

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 232
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_451

    const/4 v3, 0x5

    :goto_35f
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 233
    const-string v3, "VoiceOnSending"

    const v4, 0x7f070835

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    const-string v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 235
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41700000    # 15.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 237
    const/4 v3, -0x1

    const/16 v4, 0x32

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    new-instance v3, Lorg/telegram/ui/Cells/TextCheckCell;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    .line 240
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const-string v4, "ConfirmatinAudio"

    const v5, 0x7f070690

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 241
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v4, -0x1

    const/16 v5, 0x32

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    new-instance v4, Lde/jurihock/voicesmith/VoiceChangerAlert$10;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lde/jurihock/voicesmith/VoiceChangerAlert$10;-><init>(Lde/jurihock/voicesmith/VoiceChangerAlert;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 251
    .local v11, "buttonLayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 252
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 253
    const/4 v3, -0x1

    const/high16 v4, 0x42480000    # 50.0f

    const/16 v5, 0x53

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v14, v11, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    new-instance v12, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 256
    .local v12, "closeButton":Landroid/widget/TextView;
    const/16 v3, 0x11

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 257
    const-string v3, "Close"

    const v4, 0x7f07017f

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    const/4 v3, -0x2

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 259
    const v3, -0xc57331

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 260
    const/4 v3, 0x1

    const/high16 v4, 0x41880000    # 17.0f

    invoke-virtual {v12, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 261
    const-string v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 262
    const/4 v3, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v11, v12, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    new-instance v3, Lde/jurihock/voicesmith/VoiceChangerAlert$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lde/jurihock/voicesmith/VoiceChangerAlert$11;-><init>(Lde/jurihock/voicesmith/VoiceChangerAlert;)V

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    invoke-direct/range {p0 .. p0}, Lde/jurihock/voicesmith/VoiceChangerAlert;->updateRows()V

    .line 272
    return-void

    .line 142
    .end local v11    # "buttonLayout":Landroid/widget/LinearLayout;
    .end local v12    # "closeButton":Landroid/widget/TextView;
    .end local v17    # "sendTextView":Landroid/widget/TextView;
    :cond_44e
    const/4 v3, 0x3

    goto/16 :goto_129

    .line 232
    .restart local v17    # "sendTextView":Landroid/widget/TextView;
    :cond_451
    const/4 v3, 0x3

    goto/16 :goto_35f
.end method

.method static synthetic access$000(Lde/jurihock/voicesmith/VoiceChangerAlert;)I
    .registers 2
    .param p0, "x0"    # Lde/jurihock/voicesmith/VoiceChangerAlert;

    .prologue
    .line 41
    iget v0, p0, Lde/jurihock/voicesmith/VoiceChangerAlert;->scrollOffsetY:I

    return v0
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 41
    sget v0, Lde/jurihock/voicesmith/VoiceChangerAlert;->backgroundPaddingTop:I

    return v0
.end method

.method static synthetic access$200(Lde/jurihock/voicesmith/VoiceChangerAlert;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lde/jurihock/voicesmith/VoiceChangerAlert;

    .prologue
    .line 41
    iget-object v0, p0, Lde/jurihock/voicesmith/VoiceChangerAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$300(Lde/jurihock/voicesmith/VoiceChangerAlert;ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;)V
    .registers 4
    .param p0, "x0"    # Lde/jurihock/voicesmith/VoiceChangerAlert;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p3, "x3"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lde/jurihock/voicesmith/VoiceChangerAlert;->onRowClick(ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lde/jurihock/voicesmith/VoiceChangerAlert;Landroid/view/View;)V
    .registers 2
    .param p0, "x0"    # Lde/jurihock/voicesmith/VoiceChangerAlert;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lde/jurihock/voicesmith/VoiceChangerAlert;->onCheck(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lde/jurihock/voicesmith/VoiceChangerAlert;)V
    .registers 1
    .param p0, "x0"    # Lde/jurihock/voicesmith/VoiceChangerAlert;

    .prologue
    .line 41
    invoke-direct {p0}, Lde/jurihock/voicesmith/VoiceChangerAlert;->updateRows()V

    return-void
.end method

.method private onCheck(Landroid/view/View;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 397
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "mainconfig"

    invoke-virtual {v3, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 398
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string v3, "confirmatin_audio"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 399
    .local v0, "confirmatinAudio":Z
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 400
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "confirmatin_audio"

    if-nez v0, :cond_2b

    move v3, v4

    :goto_19
    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 401
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 402
    instance-of v3, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v3, :cond_2a

    .line 403
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    if-nez v0, :cond_2d

    :goto_27
    invoke-virtual {p1, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 405
    :cond_2a
    return-void

    .restart local p1    # "view":Landroid/view/View;
    :cond_2b
    move v3, v5

    .line 400
    goto :goto_19

    .end local p1    # "view":Landroid/view/View;
    :cond_2d
    move v4, v5

    .line 403
    goto :goto_27
.end method

.method private onRowClick(ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;)V
    .registers 14
    .param p1, "tag"    # I
    .param p2, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x0

    .line 275
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v7, "mainconfig"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 276
    .local v5, "preferences":Landroid/content/SharedPreferences;
    packed-switch p1, :pswitch_data_106

    .line 343
    :goto_d
    invoke-direct {p0}, Lde/jurihock/voicesmith/VoiceChangerAlert;->updateRows()V

    .line 344
    return-void

    .line 278
    :pswitch_11
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "voice_changer_type"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_d

    .line 281
    :pswitch_1f
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "voice_changer_type"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 283
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 284
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const-string v6, "VoiceSpeed1"

    const v7, 0x7f070837

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    const-string v6, "VoiceSpeed2"

    const v7, 0x7f070838

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    const-string v6, "VoiceSpeed3"

    const v7, 0x7f070839

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    const-string v6, "VoiceSpeed4"

    const v7, 0x7f07083a

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    .line 290
    .local v2, "finalItems":[Ljava/lang/CharSequence;
    new-instance v6, Lde/jurihock/voicesmith/VoiceChangerAlert$12;

    invoke-direct {v6, p0, v5}, Lde/jurihock/voicesmith/VoiceChangerAlert$12;-><init>(Lde/jurihock/voicesmith/VoiceChangerAlert;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v2, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 306
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {p2, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->telehShowDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_d

    .line 310
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "finalItems":[Ljava/lang/CharSequence;
    .end local v3    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :pswitch_83
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "voice_changer_type"

    const/4 v8, 0x2

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_d

    .line 313
    :pswitch_93
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "voice_changer_type"

    const/4 v8, 0x3

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_d

    .line 316
    :pswitch_a3
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "voice_changer_type"

    const/4 v8, 0x4

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_d

    .line 319
    :pswitch_b3
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "voice_changer_type"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 321
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 322
    .local v1, "builder1":Landroid/app/AlertDialog$Builder;
    const-string v6, "VoiceSemitone"

    const v7, 0x7f070836

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 323
    new-instance v4, Lorg/telegram/ui/Components/NumberPicker;

    invoke-direct {v4, p3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 324
    .local v4, "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/4 v6, -0x5

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 325
    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 326
    const-string v6, "transpose_semitone"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 327
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 328
    const-string v6, "Done"

    const v7, 0x7f0701e8

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lde/jurihock/voicesmith/VoiceChangerAlert$13;

    invoke-direct {v7, p0, v5, v4}, Lde/jurihock/voicesmith/VoiceChangerAlert$13;-><init>(Lde/jurihock/voicesmith/VoiceChangerAlert;Landroid/content/SharedPreferences;Lorg/telegram/ui/Components/NumberPicker;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 338
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {p2, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->telehShowDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_d

    .line 276
    nop

    :pswitch_data_106
    .packed-switch 0x0
        :pswitch_11
        :pswitch_1f
        :pswitch_83
        :pswitch_93
        :pswitch_a3
        :pswitch_b3
    .end packed-switch
.end method

.method private updateRows()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 347
    iget-object v1, p0, Lde/jurihock/voicesmith/VoiceChangerAlert;->radioCell0:Lorg/telegram/ui/Cells/RadioCell;

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Cells/RadioCell;->setChecked(ZZ)V

    .line 348
    iget-object v1, p0, Lde/jurihock/voicesmith/VoiceChangerAlert;->radioCell1:Lorg/telegram/ui/Cells/RadioCell;

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Cells/RadioCell;->setChecked(ZZ)V

    .line 349
    iget-object v1, p0, Lde/jurihock/voicesmith/VoiceChangerAlert;->radioCell2:Lorg/telegram/ui/Cells/RadioCell;

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Cells/RadioCell;->setChecked(ZZ)V

    .line 350
    iget-object v1, p0, Lde/jurihock/voicesmith/VoiceChangerAlert;->radioCell3:Lorg/telegram/ui/Cells/RadioCell;

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Cells/RadioCell;->setChecked(ZZ)V

    .line 351
    iget-object v1, p0, Lde/jurihock/voicesmith/VoiceChangerAlert;->radioCell4:Lorg/telegram/ui/Cells/RadioCell;

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Cells/RadioCell;->setChecked(ZZ)V

    .line 352
    iget-object v1, p0, Lde/jurihock/voicesmith/VoiceChangerAlert;->radioCell5:Lorg/telegram/ui/Cells/RadioCell;

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Cells/RadioCell;->setChecked(ZZ)V

    .line 353
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "mainconfig"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 354
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "voice_changer_type"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_c0

    .line 376
    :goto_31
    const-string v1, "voice_speed"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_d0

    .line 391
    :goto_3a
    iget-object v1, p0, Lde/jurihock/voicesmith/VoiceChangerAlert;->value5:Lorg/telegram/ui/Telehgram/TextDescriptionCell;

    const-string v2, "transpose_semitone"

    const/4 v3, 0x5

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/Telehgram/TextDescriptionCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 393
    iget-object v1, p0, Lde/jurihock/voicesmith/VoiceChangerAlert;->textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const-string v2, "ConfirmatinAudio"

    const v3, 0x7f070690

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "confirmatin_audio"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 394
    return-void

    .line 356
    :pswitch_5f
    iget-object v1, p0, Lde/jurihock/voicesmith/VoiceChangerAlert;->radioCell0:Lorg/telegram/ui/Cells/RadioCell;

    invoke-virtual {v1, v4, v4}, Lorg/telegram/ui/Cells/RadioCell;->setChecked(ZZ)V

    goto :goto_31

    .line 359
    :pswitch_65
    iget-object v1, p0, Lde/jurihock/voicesmith/VoiceChangerAlert;->radioCell1:Lorg/telegram/ui/Cells/RadioCell;

    invoke-virtual {v1, v4, v4}, Lorg/telegram/ui/Cells/RadioCell;->setChecked(ZZ)V

    goto :goto_31

    .line 362
    :pswitch_6b
    iget-object v1, p0, Lde/jurihock/voicesmith/VoiceChangerAlert;->radioCell2:Lorg/telegram/ui/Cells/RadioCell;

    invoke-virtual {v1, v4, v4}, Lorg/telegram/ui/Cells/RadioCell;->setChecked(ZZ)V

    goto :goto_31

    .line 365
    :pswitch_71
    iget-object v1, p0, Lde/jurihock/voicesmith/VoiceChangerAlert;->radioCell3:Lorg/telegram/ui/Cells/RadioCell;

    invoke-virtual {v1, v4, v4}, Lorg/telegram/ui/Cells/RadioCell;->setChecked(ZZ)V

    goto :goto_31

    .line 368
    :pswitch_77
    iget-object v1, p0, Lde/jurihock/voicesmith/VoiceChangerAlert;->radioCell4:Lorg/telegram/ui/Cells/RadioCell;

    invoke-virtual {v1, v4, v4}, Lorg/telegram/ui/Cells/RadioCell;->setChecked(ZZ)V

    goto :goto_31

    .line 371
    :pswitch_7d
    iget-object v1, p0, Lde/jurihock/voicesmith/VoiceChangerAlert;->radioCell5:Lorg/telegram/ui/Cells/RadioCell;

    invoke-virtual {v1, v4, v4}, Lorg/telegram/ui/Cells/RadioCell;->setChecked(ZZ)V

    goto :goto_31

    .line 378
    :pswitch_83
    iget-object v1, p0, Lde/jurihock/voicesmith/VoiceChangerAlert;->value1:Lorg/telegram/ui/Telehgram/TextDescriptionCell;

    const-string v2, "VoiceSpeed1"

    const v3, 0x7f070837

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/Telehgram/TextDescriptionCell;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_3a

    .line 381
    :pswitch_92
    iget-object v1, p0, Lde/jurihock/voicesmith/VoiceChangerAlert;->value1:Lorg/telegram/ui/Telehgram/TextDescriptionCell;

    const-string v2, "VoiceSpeed2"

    const v3, 0x7f070838

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/Telehgram/TextDescriptionCell;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_3a

    .line 384
    :pswitch_a1
    iget-object v1, p0, Lde/jurihock/voicesmith/VoiceChangerAlert;->value1:Lorg/telegram/ui/Telehgram/TextDescriptionCell;

    const-string v2, "VoiceSpeed3"

    const v3, 0x7f070839

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/Telehgram/TextDescriptionCell;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_3a

    .line 387
    :pswitch_b0
    iget-object v1, p0, Lde/jurihock/voicesmith/VoiceChangerAlert;->value1:Lorg/telegram/ui/Telehgram/TextDescriptionCell;

    const-string v2, "VoiceSpeed4"

    const v3, 0x7f07083a

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/Telehgram/TextDescriptionCell;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_3a

    .line 354
    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_65
        :pswitch_6b
        :pswitch_71
        :pswitch_77
        :pswitch_7d
    .end packed-switch

    .line 376
    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_83
        :pswitch_92
        :pswitch_a1
        :pswitch_b0
    .end packed-switch
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .registers 2

    .prologue
    .line 409
    const/4 v0, 0x0

    return v0
.end method
