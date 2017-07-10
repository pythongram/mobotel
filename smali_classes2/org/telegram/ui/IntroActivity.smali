.class public Lorg/telegram/ui/IntroActivity;
.super Landroid/app/Activity;
.source "IntroActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/IntroActivity$IntroAdapter;
    }
.end annotation


# instance fields
.field private bottomPages:Landroid/view/ViewGroup;

.field private icons:[I

.field private justCreated:Z

.field private lastPage:I

.field private messages:[I

.field private startPressed:Z

.field private titles:[I

.field private topImage1:Landroid/widget/ImageView;

.field private topImage2:Landroid/widget/ImageView;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    iput v0, p0, Lorg/telegram/ui/IntroActivity;->lastPage:I

    .line 46
    iput-boolean v0, p0, Lorg/telegram/ui/IntroActivity;->justCreated:Z

    .line 47
    iput-boolean v0, p0, Lorg/telegram/ui/IntroActivity;->startPressed:Z

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/IntroActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 39
    iget v0, p0, Lorg/telegram/ui/IntroActivity;->lastPage:I

    return v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/IntroActivity;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lorg/telegram/ui/IntroActivity;->lastPage:I

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/IntroActivity;)Landroid/support/v4/view/ViewPager;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/IntroActivity;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity;->topImage1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/IntroActivity;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity;->topImage2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/IntroActivity;)[I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity;->icons:[I

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/IntroActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 39
    iget-boolean v0, p0, Lorg/telegram/ui/IntroActivity;->startPressed:Z

    return v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/IntroActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lorg/telegram/ui/IntroActivity;->startPressed:Z

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/IntroActivity;)[I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity;->titles:[I

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/IntroActivity;)[I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity;->messages:[I

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/IntroActivity;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity;->bottomPages:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v11, 0x40800000    # 4.0f

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v9, 0x0

    const/4 v6, 0x7

    const/4 v8, 0x1

    .line 54
    const v4, 0x7f0a0080

    invoke-virtual {p0, v4}, Lorg/telegram/ui/IntroActivity;->setTheme(I)V

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0, v8}, Lorg/telegram/ui/IntroActivity;->requestWindowFeature(I)Z

    .line 58
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_12f

    .line 59
    const v4, 0x7f030030

    invoke-virtual {p0, v4}, Lorg/telegram/ui/IntroActivity;->setContentView(I)V

    .line 60
    const v4, 0x7f0e00f6

    invoke-virtual {p0, v4}, Lorg/telegram/ui/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 61
    .local v2, "imageView":Landroid/view/View;
    invoke-virtual {p0}, Lorg/telegram/ui/IntroActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020090

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 62
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 63
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    .end local v1    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v2    # "imageView":Landroid/view/View;
    :goto_3d
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_13a

    .line 70
    new-array v4, v6, [I

    fill-array-data v4, :array_152

    iput-object v4, p0, Lorg/telegram/ui/IntroActivity;->icons:[I

    .line 79
    new-array v4, v6, [I

    fill-array-data v4, :array_164

    iput-object v4, p0, Lorg/telegram/ui/IntroActivity;->titles:[I

    .line 88
    new-array v4, v6, [I

    fill-array-data v4, :array_176

    iput-object v4, p0, Lorg/telegram/ui/IntroActivity;->messages:[I

    .line 126
    :goto_56
    const v4, 0x7f0e00f3

    invoke-virtual {p0, v4}, Lorg/telegram/ui/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager;

    iput-object v4, p0, Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 127
    const v4, 0x7f0e00f4

    invoke-virtual {p0, v4}, Lorg/telegram/ui/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 128
    .local v3, "startMessagingButton":Landroid/widget/TextView;
    const-string v4, "StartMessaging"

    const v5, 0x7f07051e

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_d1

    .line 130
    new-instance v0, Landroid/animation/StateListAnimator;

    invoke-direct {v0}, Landroid/animation/StateListAnimator;-><init>()V

    .line 131
    .local v0, "animator":Landroid/animation/StateListAnimator;
    new-array v4, v8, [I

    const v5, 0x10100a7

    aput v5, v4, v9

    const-string v5, "translationZ"

    const/4 v6, 0x2

    new-array v6, v6, [F

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v9

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v8

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 132
    new-array v4, v9, [I

    const-string v5, "translationZ"

    const/4 v6, 0x2

    new-array v6, v6, [F

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v9

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v8

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 133
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 135
    .end local v0    # "animator":Landroid/animation/StateListAnimator;
    :cond_d1
    const v4, 0x7f0e00f1

    invoke-virtual {p0, v4}, Lorg/telegram/ui/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lorg/telegram/ui/IntroActivity;->topImage1:Landroid/widget/ImageView;

    .line 136
    const v4, 0x7f0e00f2

    invoke-virtual {p0, v4}, Lorg/telegram/ui/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lorg/telegram/ui/IntroActivity;->topImage2:Landroid/widget/ImageView;

    .line 137
    const v4, 0x7f0e00f5

    invoke-virtual {p0, v4}, Lorg/telegram/ui/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lorg/telegram/ui/IntroActivity;->bottomPages:Landroid/view/ViewGroup;

    .line 138
    iget-object v4, p0, Lorg/telegram/ui/IntroActivity;->topImage2:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    iget-object v4, p0, Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v5, Lorg/telegram/ui/IntroActivity$IntroAdapter;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lorg/telegram/ui/IntroActivity$IntroAdapter;-><init>(Lorg/telegram/ui/IntroActivity;Lorg/telegram/ui/IntroActivity$1;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 140
    iget-object v4, p0, Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v9}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 141
    iget-object v4, p0, Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v8}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 142
    iget-object v4, p0, Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v5, Lorg/telegram/ui/IntroActivity$1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/IntroActivity$1;-><init>(Lorg/telegram/ui/IntroActivity;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 217
    new-instance v4, Lorg/telegram/ui/IntroActivity$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/IntroActivity$2;-><init>(Lorg/telegram/ui/IntroActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_12c

    .line 231
    new-instance v4, Lorg/telegram/ui/IntroActivity$3;

    invoke-direct {v4, p0}, Lorg/telegram/ui/IntroActivity$3;-><init>(Lorg/telegram/ui/IntroActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 240
    :cond_12c
    iput-boolean v8, p0, Lorg/telegram/ui/IntroActivity;->justCreated:Z

    .line 241
    return-void

    .line 65
    .end local v3    # "startMessagingButton":Landroid/widget/TextView;
    :cond_12f
    invoke-virtual {p0, v8}, Lorg/telegram/ui/IntroActivity;->setRequestedOrientation(I)V

    .line 66
    const v4, 0x7f03002f

    invoke-virtual {p0, v4}, Lorg/telegram/ui/IntroActivity;->setContentView(I)V

    goto/16 :goto_3d

    .line 98
    :cond_13a
    new-array v4, v6, [I

    fill-array-data v4, :array_188

    iput-object v4, p0, Lorg/telegram/ui/IntroActivity;->icons:[I

    .line 107
    new-array v4, v6, [I

    fill-array-data v4, :array_19a

    iput-object v4, p0, Lorg/telegram/ui/IntroActivity;->titles:[I

    .line 116
    new-array v4, v6, [I

    fill-array-data v4, :array_1ac

    iput-object v4, p0, Lorg/telegram/ui/IntroActivity;->messages:[I

    goto/16 :goto_56

    .line 70
    nop

    :array_152
    .array-data 4
        0x7f02019d
        0x7f02019c
        0x7f02019b
        0x7f02019a
        0x7f020199
        0x7f020198
        0x7f020197
    .end array-data

    .line 79
    :array_164
    .array-data 4
        0x7f0703f3
        0x7f0703f1
        0x7f0703ef
        0x7f0703ed
        0x7f0703eb
        0x7f0703e9
        0x7f0703e7
    .end array-data

    .line 88
    :array_176
    .array-data 4
        0x7f0703f2
        0x7f0703f0
        0x7f0703ee
        0x7f0703ec
        0x7f0703ea
        0x7f0703e8
        0x7f0703e6
    .end array-data

    .line 98
    :array_188
    .array-data 4
        0x7f020197
        0x7f020198
        0x7f020199
        0x7f02019a
        0x7f02019b
        0x7f02019c
        0x7f02019d
    .end array-data

    .line 107
    :array_19a
    .array-data 4
        0x7f0703e7
        0x7f0703e9
        0x7f0703eb
        0x7f0703ed
        0x7f0703ef
        0x7f0703f1
        0x7f0703f3
    .end array-data

    .line 116
    :array_1ac
    .array-data 4
        0x7f0703e6
        0x7f0703e8
        0x7f0703ea
        0x7f0703ec
        0x7f0703ee
        0x7f0703f0
        0x7f0703f2
    .end array-data
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 262
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 263
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->unregisterUpdates()V

    .line 264
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x0

    .line 245
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 246
    iget-boolean v0, p0, Lorg/telegram/ui/IntroActivity;->justCreated:Z

    if-eqz v0, :cond_16

    .line 247
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_1d

    .line 248
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 249
    iput v2, p0, Lorg/telegram/ui/IntroActivity;->lastPage:I

    .line 254
    :goto_14
    iput-boolean v1, p0, Lorg/telegram/ui/IntroActivity;->justCreated:Z

    .line 256
    :cond_16
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->checkForCrashes(Landroid/app/Activity;)V

    .line 257
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->checkForUpdates(Landroid/app/Activity;)V

    .line 258
    return-void

    .line 251
    :cond_1d
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 252
    iput v1, p0, Lorg/telegram/ui/IntroActivity;->lastPage:I

    goto :goto_14
.end method
