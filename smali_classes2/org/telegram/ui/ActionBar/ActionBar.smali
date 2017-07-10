.class public Lorg/telegram/ui/ActionBar/ActionBar;
.super Landroid/widget/FrameLayout;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
    }
.end annotation


# instance fields
.field public actionBarMenuOnItemClick:Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

.field private actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

.field private actionModeAnimation:Landroid/animation/AnimatorSet;

.field private actionModeTop:Landroid/view/View;

.field private actionModeVisible:Z

.field private addToContainer:Z

.field private allowOverlayTitle:Z

.field private backButtonImageView:Landroid/widget/ImageView;

.field private castShadows:Z

.field private extraHeight:I

.field private ghostView:Landroid/widget/ImageView;

.field private interceptTouches:Z

.field private isBackOverlayVisible:Z

.field protected isSearchFieldVisible:Z

.field protected itemsActionModeBackgroundColor:I

.field protected itemsActionModeColor:I

.field protected itemsBackgroundColor:I

.field protected itemsColor:I

.field private lastTitle:Ljava/lang/CharSequence;

.field private menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

.field private occupyStatusBar:Z

.field protected parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 96
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1a

    move v0, v1

    :goto_b
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    .line 56
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->addToContainer:Z

    .line 57
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->interceptTouches:Z

    .line 63
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->castShadows:Z

    .line 98
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->createGhostModeImage()V

    .line 99
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->changeGhostModeVisibility()V

    .line 100
    return-void

    .line 54
    :cond_1a
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static synthetic access$000(Lorg/telegram/ui/ActionBar/ActionBar;)Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBar;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ActionBar/ActionBar;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBar;

    .prologue
    .line 36
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ActionBar/ActionBar;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBar;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ActionBar/ActionBar;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBar;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/ActionBar/ActionBar;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBar;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 36
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/ActionBar/ActionBar;)Lorg/telegram/ui/ActionBar/SimpleTextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBar;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ActionBar/ActionBar;)Lorg/telegram/ui/ActionBar/SimpleTextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBar;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ActionBar/ActionBar;)Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBar;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    return-object v0
.end method

.method private createBackButtonImage()V
    .registers 7

    .prologue
    const/16 v5, 0x36

    const/4 v4, 0x0

    .line 103
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 127
    :goto_7
    return-void

    .line 106
    :cond_8
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 108
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsColor:I

    if-eqz v0, :cond_37

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 112
    :cond_37
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 113
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    const/16 v1, 0x33

    invoke-static {v5, v5, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBar$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/ActionBar$1;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7
.end method

.method private createSubtitleTextView()V
    .registers 5

    .prologue
    const/4 v3, -0x2

    .line 152
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_6

    .line 160
    :goto_5
    return-void

    .line 155
    :cond_6
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 156
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 157
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v1, "actionBarDefaultSubtitle"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 159
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    const/16 v2, 0x33

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5
.end method

.method private createTitleTextView()V
    .registers 5

    .prologue
    const/4 v3, -0x2

    .line 181
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_6

    .line 189
    :goto_5
    return-void

    .line 184
    :cond_6
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 186
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v1, "actionBarDefaultTitle"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    const/16 v2, 0x33

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5
.end method

.method public static getCurrentActionBarHeight()I
    .registers 2

    .prologue
    .line 724
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 725
    const/high16 v0, 0x42800000    # 64.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 729
    :goto_c
    return v0

    .line 726
    :cond_d
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_1e

    .line 727
    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_c

    .line 729
    :cond_1e
    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_c
.end method


# virtual methods
.method public changeGhostModeVisibility()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 78
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->ghostView:Landroid/widget/ImageView;

    .line 79
    .local v0, "img":Landroid/widget/ImageView;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "mainconfig"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 81
    .local v1, "var5":Landroid/content/SharedPreferences;
    const-string v2, "ghost_mode"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v5, :cond_20

    const-string v2, "show_ghost_state_icon"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v5, :cond_20

    .line 82
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    :goto_1f
    return-void

    .line 84
    :cond_20
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1f
.end method

.method public closeSearchField()V
    .registers 2

    .prologue
    .line 468
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-nez v0, :cond_9

    .line 472
    :cond_8
    :goto_8
    return-void

    .line 471
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->closeSearchField()V

    goto :goto_8
.end method

.method public createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 268
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v1, :cond_a

    .line 269
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    .line 295
    :goto_9
    return-object v1

    .line 271
    :cond_a
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBar;)V

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    .line 272
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lorg/telegram/ui/ActionBar/ActionBarMenu;->isActionMode:Z

    .line 273
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const-string v3, "actionBarActionModeDefault"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setBackgroundColor(I)V

    .line 274
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->addView(Landroid/view/View;I)V

    .line 275
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    if-eqz v1, :cond_97

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_38
    invoke-virtual {v3, v2, v1, v2, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setPadding(IIII)V

    .line 276
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 277
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 278
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 279
    const/4 v1, 0x5

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 280
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setVisibility(I)V

    .line 283
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    if-eqz v1, :cond_93

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    if-nez v1, :cond_93

    .line 284
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    .line 285
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    const-string v2, "actionBarActionModeDefaultTop"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 286
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->addView(Landroid/view/View;)V

    .line 287
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 288
    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 289
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 290
    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 291
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 295
    :cond_93
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    goto/16 :goto_9

    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_97
    move v1, v2

    .line 275
    goto :goto_38
.end method

.method public createGhostModeImage()V
    .registers 5

    .prologue
    const/4 v3, -0x2

    const/16 v2, 0x14

    .line 89
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->ghostView:Landroid/widget/ImageView;

    .line 90
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->ghostView:Landroid/widget/ImageView;

    const v1, 0x7f020189

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->ghostView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 92
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->ghostView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 93
    return-void
.end method

.method public createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .registers 6

    .prologue
    .line 251
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_7

    .line 252
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    .line 256
    :goto_6
    return-object v0

    .line 254
    :cond_7
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBar;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 256
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    goto :goto_6
.end method

.method public getAddToContainer()Z
    .registers 2

    .prologue
    .line 167
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->addToContainer:Z

    return v0
.end method

.method public getBackButton()Landroid/view/View;
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getCastShadows()Z
    .registers 2

    .prologue
    .line 715
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->castShadows:Z

    return v0
.end method

.method public getOccupyStatusBar()Z
    .registers 2

    .prologue
    .line 656
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    return v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v0, :cond_6

    .line 245
    const/4 v0, 0x0

    .line 247
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getSubtitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v0, :cond_6

    .line 238
    const/4 v0, 0x0

    .line 240
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    .prologue
    .line 735
    const/4 v0, 0x0

    return v0
.end method

.method public hideActionMode()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 357
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeVisible:Z

    if-nez v2, :cond_c

    .line 408
    :cond_b
    :goto_b
    return-void

    .line 360
    :cond_c
    iput-boolean v6, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeVisible:Z

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const-string v3, "alpha"

    new-array v4, v8, [F

    aput v7, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    if-eqz v2, :cond_39

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    if-eqz v2, :cond_39

    .line 364
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v8, [F

    aput v7, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_39
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_42

    .line 367
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 369
    :cond_42
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    .line 370
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 371
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 372
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBar$3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ActionBar/ActionBar$3;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 391
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 392
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v2, :cond_6d

    .line 393
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setVisibility(I)V

    .line 395
    :cond_6d
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v2, :cond_76

    .line 396
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setVisibility(I)V

    .line 398
    :cond_76
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v2, :cond_7f

    .line 399
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setVisibility(I)V

    .line 401
    :cond_7f
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_b

    .line 402
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 403
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    if-eqz v2, :cond_92

    .line 404
    check-cast v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v7, v8}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 406
    :cond_92
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    iget v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_b
.end method

.method public isActionModeShowed()Z
    .registers 2

    .prologue
    .line 442
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeVisible:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isSearchFieldVisible()Z
    .registers 2

    .prologue
    .line 645
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 30
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 534
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    move/from16 v19, v0

    if-eqz v19, :cond_212

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 537
    .local v5, "additionalTop":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_219

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_219

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v22

    add-int v22, v22, v5

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    .line 539
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v19

    if-eqz v19, :cond_215

    const/high16 v19, 0x42a00000    # 80.0f

    :goto_55
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    .line 544
    .local v15, "textLeft":I
    :goto_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-object/from16 v19, v0

    if-eqz v19, :cond_ae

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_ae

    .line 545
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    move/from16 v19, v0

    if-eqz v19, :cond_22e

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v19

    if-eqz v19, :cond_22a

    const/high16 v19, 0x42940000    # 74.0f

    :goto_83
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    .line 546
    .local v14, "menuLeft":I
    :goto_87
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getMeasuredWidth()I

    move-result v20

    add-int v20, v20, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getMeasuredHeight()I

    move-result v21

    add-int v21, v21, v5

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v14, v5, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->layout(IIII)V

    .line 549
    .end local v14    # "menuLeft":I
    :cond_ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_147

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_147

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_242

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_242

    .line 552
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v20

    sub-int v19, v19, v20

    div-int/lit8 v20, v19, 0x2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v19

    if-nez v19, :cond_23e

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_23e

    const/high16 v19, 0x40000000    # 2.0f

    :goto_114
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v19

    add-int v16, v20, v19

    .line 556
    .local v16, "textTop":I
    :goto_11a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v19, v0

    add-int v20, v5, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getMeasuredWidth()I

    move-result v21

    add-int v21, v21, v15

    add-int v22, v5, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v23

    add-int v22, v22, v23

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v15, v1, v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout(IIII)V

    .line 558
    .end local v16    # "textTop":I
    :cond_147
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1ce

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1ce

    .line 559
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v21

    sub-int v20, v20, v21

    div-int/lit8 v20, v20, 0x2

    add-int v20, v20, v19

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v19

    if-nez v19, :cond_256

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_256

    const/high16 v19, 0x3f800000    # 1.0f

    :goto_19b
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v19

    sub-int v16, v20, v19

    .line 560
    .restart local v16    # "textTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v19, v0

    add-int v20, v5, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getMeasuredWidth()I

    move-result v21

    add-int v21, v21, v15

    add-int v22, v5, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v23

    add-int v22, v22, v23

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v15, v1, v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout(IIII)V

    .line 563
    .end local v16    # "textTop":I
    :cond_1ce
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getChildCount()I

    move-result v7

    .line 564
    .local v7, "childCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1d3
    if-ge v12, v7, :cond_2cb

    .line 565
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/ActionBar;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 566
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_20f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-eq v6, v0, :cond_20f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-eq v6, v0, :cond_20f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-eq v6, v0, :cond_20f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-ne v6, v0, :cond_25a

    .line 564
    :cond_20f
    :goto_20f
    add-int/lit8 v12, v12, 0x1

    goto :goto_1d3

    .line 534
    .end local v5    # "additionalTop":I
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "childCount":I
    .end local v12    # "i":I
    .end local v15    # "textLeft":I
    :cond_212
    const/4 v5, 0x0

    goto/16 :goto_a

    .line 539
    .restart local v5    # "additionalTop":I
    :cond_215
    const/high16 v19, 0x42900000    # 72.0f

    goto/16 :goto_55

    .line 541
    :cond_219
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v19

    if-eqz v19, :cond_227

    const/high16 v19, 0x41d00000    # 26.0f

    :goto_221
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    .restart local v15    # "textLeft":I
    goto/16 :goto_59

    .end local v15    # "textLeft":I
    :cond_227
    const/high16 v19, 0x41900000    # 18.0f

    goto :goto_221

    .line 545
    .restart local v15    # "textLeft":I
    :cond_22a
    const/high16 v19, 0x42840000    # 66.0f

    goto/16 :goto_83

    :cond_22e
    sub-int v19, p4, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getMeasuredWidth()I

    move-result v20

    sub-int v14, v19, v20

    goto/16 :goto_87

    .line 552
    :cond_23e
    const/high16 v19, 0x40400000    # 3.0f

    goto/16 :goto_114

    .line 554
    :cond_242
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v20

    sub-int v19, v19, v20

    div-int/lit8 v16, v19, 0x2

    .restart local v16    # "textTop":I
    goto/16 :goto_11a

    .line 559
    .end local v16    # "textTop":I
    :cond_256
    const/high16 v19, 0x3f800000    # 1.0f

    goto/16 :goto_19b

    .line 570
    .restart local v6    # "child":Landroid/view/View;
    .restart local v7    # "childCount":I
    .restart local v12    # "i":I
    :cond_25a
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 572
    .local v13, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 573
    .local v18, "width":I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 577
    .local v11, "height":I
    iget v10, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 578
    .local v10, "gravity":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_272

    .line 579
    const/16 v10, 0x33

    .line 582
    :cond_272
    and-int/lit8 v4, v10, 0x7

    .line 583
    .local v4, "absoluteGravity":I
    and-int/lit8 v17, v10, 0x70

    .line 585
    .local v17, "verticalGravity":I
    and-int/lit8 v19, v4, 0x7

    sparse-switch v19, :sswitch_data_2cc

    .line 594
    iget v8, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 597
    .local v8, "childLeft":I
    :goto_27d
    sparse-switch v17, :sswitch_data_2d6

    .line 608
    iget v9, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 610
    .local v9, "childTop":I
    :goto_282
    add-int v19, v8, v18

    add-int v20, v9, v11

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v8, v9, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_20f

    .line 587
    .end local v8    # "childLeft":I
    .end local v9    # "childTop":I
    :sswitch_28e
    sub-int v19, p4, p2

    sub-int v19, v19, v18

    div-int/lit8 v19, v19, 0x2

    iget v0, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v0

    add-int v19, v19, v20

    iget v0, v13, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v20, v0

    sub-int v8, v19, v20

    .line 588
    .restart local v8    # "childLeft":I
    goto :goto_27d

    .line 590
    .end local v8    # "childLeft":I
    :sswitch_2a1
    sub-int v19, p4, v18

    iget v0, v13, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v20, v0

    sub-int v8, v19, v20

    .line 591
    .restart local v8    # "childLeft":I
    goto :goto_27d

    .line 599
    :sswitch_2aa
    iget v9, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 600
    .restart local v9    # "childTop":I
    goto :goto_282

    .line 602
    .end local v9    # "childTop":I
    :sswitch_2ad
    sub-int v19, p5, p3

    sub-int v19, v19, v11

    div-int/lit8 v19, v19, 0x2

    iget v0, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v19, v19, v20

    iget v0, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v20, v0

    sub-int v9, v19, v20

    .line 603
    .restart local v9    # "childTop":I
    goto :goto_282

    .line 605
    .end local v9    # "childTop":I
    :sswitch_2c0
    sub-int v19, p5, p3

    sub-int v19, v19, v11

    iget v0, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v20, v0

    sub-int v9, v19, v20

    .line 606
    .restart local v9    # "childTop":I
    goto :goto_282

    .line 612
    .end local v4    # "absoluteGravity":I
    .end local v6    # "child":Landroid/view/View;
    .end local v8    # "childLeft":I
    .end local v9    # "childTop":I
    .end local v10    # "gravity":I
    .end local v11    # "height":I
    .end local v13    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v17    # "verticalGravity":I
    .end local v18    # "width":I
    :cond_2cb
    return-void

    .line 585
    :sswitch_data_2cc
    .sparse-switch
        0x1 -> :sswitch_28e
        0x5 -> :sswitch_2a1
    .end sparse-switch

    .line 597
    :sswitch_data_2d6
    .sparse-switch
        0x10 -> :sswitch_2ad
        0x30 -> :sswitch_2aa
        0x50 -> :sswitch_2c0
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 483
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 484
    .local v14, "width":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 485
    .local v10, "height":I
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v6

    .line 486
    .local v6, "actionBarHeight":I
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 488
    .local v7, "actionBarHeightSpec":I
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    if-eqz v0, :cond_14a

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_18
    add-int/2addr v0, v6

    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->extraHeight:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v14, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setMeasuredDimension(II)V

    .line 491
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_151

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_151

    .line 492
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    const/high16 v2, 0x42580000    # 54.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v2, v7}, Landroid/widget/ImageView;->measure(II)V

    .line 493
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_14d

    const/high16 v0, 0x42a00000    # 80.0f

    :goto_46
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    .line 498
    .local v13, "textLeft":I
    :goto_4a
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_75

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_75

    .line 500
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-eqz v0, :cond_166

    .line 501
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_162

    const/high16 v0, 0x42940000    # 74.0f

    :goto_64
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v0, v14, v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 505
    .local v12, "menuWidth":I
    :goto_70
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0, v12, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->measure(II)V

    .line 508
    .end local v12    # "menuWidth":I
    :cond_75
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_83

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_91

    :cond_83
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_124

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_124

    .line 509
    :cond_91
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_16e

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getMeasuredWidth()I

    move-result v0

    :goto_9b
    sub-int v0, v14, v0

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    sub-int v8, v0, v13

    .line 511
    .local v8, "availableWidth":I
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_e5

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_e5

    .line 512
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_171

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_171

    const/16 v0, 0x12

    :goto_cb
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 513
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v2, -0x80000000

    invoke-static {v8, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->measure(II)V

    .line 516
    :cond_e5
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_124

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_124

    .line 517
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_175

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_175

    const/16 v0, 0xe

    :goto_10a
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 518
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v2, -0x80000000

    invoke-static {v8, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->measure(II)V

    .line 522
    .end local v8    # "availableWidth":I
    :cond_124
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getChildCount()I

    move-result v9

    .line 523
    .local v9, "childCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_129
    if-ge v11, v9, :cond_18b

    .line 524
    invoke-virtual {p0, v11}, Lorg/telegram/ui/ActionBar/ActionBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 525
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_147

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eq v1, v0, :cond_147

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eq v1, v0, :cond_147

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eq v1, v0, :cond_147

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-ne v1, v0, :cond_178

    .line 523
    :cond_147
    :goto_147
    add-int/lit8 v11, v11, 0x1

    goto :goto_129

    .line 488
    .end local v1    # "child":Landroid/view/View;
    .end local v9    # "childCount":I
    .end local v11    # "i":I
    .end local v13    # "textLeft":I
    :cond_14a
    const/4 v0, 0x0

    goto/16 :goto_18

    .line 493
    :cond_14d
    const/high16 v0, 0x42900000    # 72.0f

    goto/16 :goto_46

    .line 495
    :cond_151
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_15f

    const/high16 v0, 0x41d00000    # 26.0f

    :goto_159
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    .restart local v13    # "textLeft":I
    goto/16 :goto_4a

    .end local v13    # "textLeft":I
    :cond_15f
    const/high16 v0, 0x41900000    # 18.0f

    goto :goto_159

    .line 501
    .restart local v13    # "textLeft":I
    :cond_162
    const/high16 v0, 0x42840000    # 66.0f

    goto/16 :goto_64

    .line 503
    :cond_166
    const/high16 v0, -0x80000000

    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .restart local v12    # "menuWidth":I
    goto/16 :goto_70

    .line 509
    .end local v12    # "menuWidth":I
    :cond_16e
    const/4 v0, 0x0

    goto/16 :goto_9b

    .line 512
    .restart local v8    # "availableWidth":I
    :cond_171
    const/16 v0, 0x14

    goto/16 :goto_cb

    .line 517
    :cond_175
    const/16 v0, 0x10

    goto :goto_10a

    .line 528
    .end local v8    # "availableWidth":I
    .restart local v1    # "child":Landroid/view/View;
    .restart local v9    # "childCount":I
    .restart local v11    # "i":I
    :cond_178
    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getMeasuredHeight()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBar;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_147

    .line 530
    .end local v1    # "child":Landroid/view/View;
    :cond_18b
    return-void
.end method

.method public onMenuButtonPressed()V
    .registers 2

    .prologue
    .line 615
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_9

    .line 616
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->onMenuButtonPressed()V

    .line 618
    :cond_9
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 621
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_9

    .line 622
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->hideAllPopupMenus()V

    .line 624
    :cond_9
    return-void
.end method

.method protected onSearchFieldVisibilityChanged(Z)V
    .registers 7
    .param p1, "visible"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 446
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    .line 447
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v1, :cond_10

    .line 448
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p1, :cond_32

    move v1, v2

    :goto_d
    invoke-virtual {v4, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setVisibility(I)V

    .line 450
    :cond_10
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v1, :cond_1b

    .line 451
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p1, :cond_34

    :goto_18
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setVisibility(I)V

    .line 453
    :cond_1b
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 454
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_31

    instance-of v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;

    if-eqz v1, :cond_31

    .line 455
    check-cast v0, Lorg/telegram/ui/ActionBar/MenuDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_36

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_2d
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setRotation(FZ)V

    .line 457
    :cond_31
    return-void

    :cond_32
    move v1, v3

    .line 448
    goto :goto_d

    :cond_34
    move v2, v3

    .line 451
    goto :goto_18

    .line 455
    :cond_36
    const/4 v1, 0x0

    goto :goto_2d
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 720
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->interceptTouches:Z

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public openSearchField(Ljava/lang/String;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 475
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_6

    if-nez p1, :cond_7

    .line 479
    :cond_6
    :goto_6
    return-void

    .line 478
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_e
    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->openSearchField(ZLjava/lang/String;)V

    goto :goto_6

    :cond_12
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V
    .registers 2
    .param p1, "listener"    # Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

    .prologue
    .line 260
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarMenuOnItemClick:Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

    .line 261
    return-void
.end method

.method public setActionModeColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 436
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_9

    .line 437
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setBackgroundColor(I)V

    .line 439
    :cond_9
    return-void
.end method

.method public setActionModeTopColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 424
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 425
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 427
    :cond_9
    return-void
.end method

.method public setAddToContainer(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 163
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->addToContainer:Z

    .line 164
    return-void
.end method

.method public setAllowOverlayTitle(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 627
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->allowOverlayTitle:Z

    .line 628
    return-void
.end method

.method public setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 130
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_8

    .line 131
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->createBackButtonImage()V

    .line 133
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-nez p1, :cond_33

    const/16 v1, 0x8

    :goto_e
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    instance-of v1, p1, Lorg/telegram/ui/ActionBar/BackDrawable;

    if-eqz v1, :cond_32

    move-object v0, p1

    .line 136
    check-cast v0, Lorg/telegram/ui/ActionBar/BackDrawable;

    .line 137
    .local v0, "backDrawable":Lorg/telegram/ui/ActionBar/BackDrawable;
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v1

    if-eqz v1, :cond_35

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_25
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 138
    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeColor:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotatedColor(I)V

    .line 139
    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsColor:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setColor(I)V

    .line 141
    .end local v0    # "backDrawable":Lorg/telegram/ui/ActionBar/BackDrawable;
    :cond_32
    return-void

    :cond_33
    move v1, v2

    .line 133
    goto :goto_e

    .line 137
    .restart local v0    # "backDrawable":Lorg/telegram/ui/ActionBar/BackDrawable;
    :cond_35
    const/4 v1, 0x0

    goto :goto_25
.end method

.method public setBackButtonImage(I)V
    .registers 4
    .param p1, "resource"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_7

    .line 145
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->createBackButtonImage()V

    .line 147
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-nez p1, :cond_16

    const/16 v0, 0x8

    :goto_d
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 149
    return-void

    .line 147
    :cond_16
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setCastShadows(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 711
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->castShadows:Z

    .line 712
    return-void
.end method

.method public setExtraHeight(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 464
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->extraHeight:I

    .line 465
    return-void
.end method

.method public setInterceptTouches(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 460
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->interceptTouches:Z

    .line 461
    return-void
.end method

.method public setItemsBackgroundColor(IZ)V
    .registers 5
    .param p1, "color"    # I
    .param p2, "isActionMode"    # Z

    .prologue
    .line 660
    if-eqz p2, :cond_21

    .line 661
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeBackgroundColor:I

    .line 662
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeVisible:Z

    if-eqz v0, :cond_17

    .line 663
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_17

    .line 664
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeBackgroundColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 667
    :cond_17
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_20

    .line 668
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->updateItemsBackgroundColor()V

    .line 679
    :cond_20
    :goto_20
    return-void

    .line 671
    :cond_21
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    .line 672
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_32

    .line 673
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 675
    :cond_32
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_20

    .line 676
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->updateItemsBackgroundColor()V

    goto :goto_20
.end method

.method public setItemsColor(IZ)V
    .registers 8
    .param p1, "color"    # I
    .param p2, "isActionMode"    # Z

    .prologue
    .line 682
    if-eqz p2, :cond_21

    .line 683
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeColor:I

    .line 684
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v1, :cond_d

    .line 685
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->updateItemsColor()V

    .line 687
    :cond_d
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_20

    .line 688
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 689
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Lorg/telegram/ui/ActionBar/BackDrawable;

    if-eqz v1, :cond_20

    .line 690
    check-cast v0, Lorg/telegram/ui/ActionBar/BackDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotatedColor(I)V

    .line 708
    :cond_20
    :goto_20
    return-void

    .line 694
    :cond_21
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsColor:I

    .line 695
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_48

    .line 696
    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsColor:I

    if-eqz v1, :cond_48

    .line 697
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 698
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 699
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Lorg/telegram/ui/ActionBar/BackDrawable;

    if-eqz v1, :cond_48

    .line 700
    check-cast v0, Lorg/telegram/ui/ActionBar/BackDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setColor(I)V

    .line 704
    :cond_48
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v1, :cond_20

    .line 705
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->updateItemsColor()V

    goto :goto_20
.end method

.method public setOccupyStatusBar(Z)V
    .registers 5
    .param p1, "value"    # Z

    .prologue
    const/4 v1, 0x0

    .line 649
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    .line 650
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_12

    .line 651
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    if-eqz v0, :cond_13

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_f
    invoke-virtual {v2, v1, v0, v1, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setPadding(IIII)V

    .line 653
    :cond_12
    return-void

    :cond_13
    move v0, v1

    .line 651
    goto :goto_f
.end method

.method public setPopupBackgroundColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 223
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_9

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->redrawPopup(I)V

    .line 226
    :cond_9
    return-void
.end method

.method public setPopupItemsColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 217
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_9

    .line 218
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setPopupItemsColor(I)V

    .line 220
    :cond_9
    return-void
.end method

.method public setSearchTextColor(IZ)V
    .registers 4
    .param p1, "color"    # I
    .param p2, "placeholder"    # Z

    .prologue
    .line 430
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_9

    .line 431
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setSearchTextColor(IZ)V

    .line 433
    :cond_9
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 171
    if-eqz p1, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v0, :cond_9

    .line 172
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->createSubtitleTextView()V

    .line 174
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_22

    .line 175
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-nez v0, :cond_23

    const/4 v0, 0x0

    :goto_1a
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :cond_22
    return-void

    .line 175
    :cond_23
    const/16 v0, 0x8

    goto :goto_1a
.end method

.method public setSubtitleColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 210
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v0, :cond_7

    .line 211
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->createSubtitleTextView()V

    .line 213
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 214
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 192
    if-eqz p1, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v0, :cond_9

    .line 193
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->createTitleTextView()V

    .line 195
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_20

    .line 196
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->lastTitle:Ljava/lang/CharSequence;

    .line 197
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p1, :cond_21

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-nez v0, :cond_21

    const/4 v0, 0x0

    :goto_18
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :cond_20
    return-void

    .line 197
    :cond_21
    const/4 v0, 0x4

    goto :goto_18
.end method

.method public setTitleColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v0, :cond_7

    .line 204
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->createTitleTextView()V

    .line 206
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 207
    return-void
.end method

.method public setTitleOverlayText(Ljava/lang/String;)V
    .registers 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 631
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->allowOverlayTitle:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-nez v1, :cond_b

    .line 642
    :cond_a
    :goto_a
    return-void

    .line 634
    :cond_b
    if-eqz p1, :cond_2d

    move-object v0, p1

    .line 635
    .local v0, "textToSet":Ljava/lang/CharSequence;
    :goto_e
    if-eqz v0, :cond_17

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v1, :cond_17

    .line 636
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->createTitleTextView()V

    .line 638
    :cond_17
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v1, :cond_a

    .line 639
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_30

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-nez v1, :cond_30

    const/4 v1, 0x0

    :goto_24
    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setVisibility(I)V

    .line 640
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 634
    .end local v0    # "textToSet":Ljava/lang/CharSequence;
    :cond_2d
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->lastTitle:Ljava/lang/CharSequence;

    goto :goto_e

    .line 639
    .restart local v0    # "textToSet":Ljava/lang/CharSequence;
    :cond_30
    const/4 v1, 0x4

    goto :goto_24
.end method

.method public showActionMode()V
    .registers 8

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 299
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeVisible:Z

    if-eqz v2, :cond_b

    .line 354
    :cond_a
    :goto_a
    return-void

    .line 302
    :cond_b
    iput-boolean v6, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeVisible:Z

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const-string v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_86

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    if-eqz v2, :cond_3a

    .line 306
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_8e

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_3a
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_43

    .line 309
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 311
    :cond_43
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    .line 312
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 313
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 314
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBar$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ActionBar/ActionBar$2;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 346
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 347
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_a

    .line 348
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 349
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    if-eqz v2, :cond_7a

    .line 350
    check-cast v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 352
    :cond_7a
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    iget v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeBackgroundColor:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    .line 304
    :array_86
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 306
    :array_8e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public showActionModeTop()V
    .registers 4

    .prologue
    .line 411
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    if-nez v1, :cond_3b

    .line 412
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    .line 413
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    const-string v2, "actionBarActionModeDefaultTop"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 414
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->addView(Landroid/view/View;)V

    .line 415
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 416
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 417
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 418
    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 419
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3b
    return-void
.end method
