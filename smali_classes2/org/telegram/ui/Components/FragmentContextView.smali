.class public Lorg/telegram/ui/Components/FragmentContextView;
.super Landroid/widget/FrameLayout;
.source "FragmentContextView.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field private animatorSet:Landroid/animation/AnimatorSet;

.field private closeButton:Landroid/widget/ImageView;

.field private currentStyle:I

.field private fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private frameLayout:Landroid/widget/FrameLayout;

.field private lastMessageObject:Lorg/telegram/messenger/MessageObject;

.field private playButton:Landroid/widget/ImageView;

.field private titleTextView:Landroid/widget/TextView;

.field private topPadding:F

.field private visible:Z

.field private yPosition:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentFragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    .line 61
    iput-object p2, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 65
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->setTag(Ljava/lang/Object;)V

    .line 66
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    .line 67
    iget-object v8, p0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v0, -0x1

    const/high16 v1, 0x42100000    # 36.0f

    const/16 v2, 0x33

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lorg/telegram/ui/Components/FragmentContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    new-instance v7, Landroid/view/View;

    invoke-direct {v7, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 70
    .local v7, "shadow":Landroid/view/View;
    const v0, 0x7f0200d9

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 71
    const/4 v0, -0x1

    const/high16 v1, 0x40400000    # 3.0f

    const/16 v2, 0x33

    const/4 v3, 0x0

    const/high16 v4, 0x42100000    # 36.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Components/FragmentContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "inappPlayerPlayPause"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 76
    iget-object v8, p0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    const/16 v0, 0x24

    const/high16 v1, 0x42100000    # 36.0f

    const/16 v2, 0x33

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lorg/telegram/ui/Components/FragmentContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/FragmentContextView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/FragmentContextView$1;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 90
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 92
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 94
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 95
    iget-object v8, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, 0x42100000    # 36.0f

    const/16 v2, 0x33

    const/high16 v3, 0x420c0000    # 35.0f

    const/4 v4, 0x0

    const/high16 v5, 0x42100000    # 36.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lorg/telegram/ui/Components/FragmentContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    const v1, 0x7f0201d1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "inappPlayerClose"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 100
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 101
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    const/16 v1, 0x24

    const/16 v2, 0x24

    const/16 v3, 0x35

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/FragmentContextView$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/FragmentContextView$2;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    new-instance v0, Lorg/telegram/ui/Components/FragmentContextView$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/FragmentContextView$3;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/FragmentContextView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/FragmentContextView;

    .prologue
    .line 44
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/FragmentContextView;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/FragmentContextView;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/FragmentContextView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/FragmentContextView;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 44
    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private checkCall(Z)V
    .registers 13
    .param p1, "create"    # Z

    .prologue
    const/4 v7, 0x2

    const/high16 v10, 0x42100000    # 36.0f

    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 300
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v1

    .line 301
    .local v1, "fragmentView":Landroid/view/View;
    if-nez p1, :cond_23

    if-eqz v1, :cond_23

    .line 302
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_23

    .line 303
    :cond_22
    const/4 p1, 0x1

    .line 306
    :cond_23
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v2

    if-eqz v2, :cond_51

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/voip/VoIPService;->getCallState()I

    move-result v2

    const/16 v5, 0xa

    if-eq v2, v5, :cond_51

    move v0, v3

    .line 307
    .local v0, "callAvailable":Z
    :goto_36
    if-nez v0, :cond_a2

    .line 308
    iget-boolean v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz v2, :cond_50

    .line 309
    iput-boolean v4, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    .line 310
    if-eqz p1, :cond_53

    .line 311
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4d

    .line 312
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    .line 314
    :cond_4d
    invoke-virtual {p0, v9}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    .line 367
    :cond_50
    :goto_50
    return-void

    .end local v0    # "callAvailable":Z
    :cond_51
    move v0, v4

    .line 306
    goto :goto_36

    .line 316
    .restart local v0    # "callAvailable":Z
    :cond_53
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_5f

    .line 317
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 318
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 320
    :cond_5f
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 321
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v5, v7, [Landroid/animation/Animator;

    const-string v6, "translationY"

    new-array v7, v3, [F

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    aput v8, v7, v4

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v4

    const-string v6, "topPadding"

    new-array v7, v3, [F

    aput v9, v7, v4

    .line 322
    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v5, v3

    .line 321
    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 323
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 324
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/Components/FragmentContextView$6;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/FragmentContextView$6;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 333
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_50

    .line 337
    :cond_a2
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->updateStyle(I)V

    .line 338
    if-eqz p1, :cond_ba

    iget v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    cmpl-float v2, v2, v9

    if-nez v2, :cond_ba

    .line 339
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    .line 340
    invoke-virtual {p0, v9}, Lorg/telegram/ui/Components/FragmentContextView;->setTranslationY(F)V

    .line 341
    iput v9, p0, Lorg/telegram/ui/Components/FragmentContextView;->yPosition:F

    .line 343
    :cond_ba
    iget-boolean v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-nez v2, :cond_50

    .line 344
    if-nez p1, :cond_115

    .line 345
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_cc

    .line 346
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 347
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 349
    :cond_cc
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 350
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v5, v7, [Landroid/animation/Animator;

    const-string v6, "translationY"

    new-array v7, v7, [F

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    aput v8, v7, v4

    aput v9, v7, v3

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v4

    const-string v6, "topPadding"

    new-array v7, v3, [F

    .line 351
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v4

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v3

    .line 350
    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 352
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0xc8

    invoke-virtual {v2, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 353
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v5, Lorg/telegram/ui/Components/FragmentContextView$7;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/FragmentContextView$7;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 361
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 363
    :cond_115
    iput-boolean v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    .line 364
    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    goto/16 :goto_50
.end method

.method private checkPlayer(Z)V
    .registers 14
    .param p1, "create"    # Z

    .prologue
    .line 209
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    .line 210
    .local v1, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    .line 211
    .local v0, "fragmentView":Landroid/view/View;
    if-nez p1, :cond_25

    if-eqz v0, :cond_25

    .line 212
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_24

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_25

    .line 213
    :cond_24
    const/4 p1, 0x1

    .line 216
    :cond_25
    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    if-nez v5, :cond_a4

    .line 217
    :cond_2d
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->lastMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 218
    iget-boolean v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz v5, :cond_4a

    .line 219
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    .line 220
    if-eqz p1, :cond_4b

    .line 221
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_46

    .line 222
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    .line 224
    :cond_46
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    .line 297
    :cond_4a
    :goto_4a
    return-void

    .line 226
    :cond_4b
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_57

    .line 227
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 228
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 230
    :cond_57
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 231
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    const-string v8, "translationY"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x42100000    # 36.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    aput v11, v9, v10

    invoke-static {p0, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "topPadding"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    .line 232
    invoke-static {p0, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    .line 231
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 233
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 234
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v6, Lorg/telegram/ui/Components/FragmentContextView$4;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/FragmentContextView$4;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 243
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_4a

    .line 247
    :cond_a4
    iget v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    .line 248
    .local v2, "prevStyle":I
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/FragmentContextView;->updateStyle(I)V

    .line 249
    if-eqz p1, :cond_c4

    iget v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_c4

    .line 250
    const/high16 v5, 0x42100000    # 36.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    .line 251
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/FragmentContextView;->setTranslationY(F)V

    .line 252
    const/4 v5, 0x0

    iput v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->yPosition:F

    .line 254
    :cond_c4
    iget-boolean v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-nez v5, :cond_133

    .line 255
    if-nez p1, :cond_12c

    .line 256
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_d6

    .line 257
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 258
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 260
    :cond_d6
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 261
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    const-string v8, "translationY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x42100000    # 36.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    aput v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-static {p0, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "topPadding"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x42100000    # 36.0f

    .line 262
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v11

    int-to-float v11, v11

    aput v11, v9, v10

    invoke-static {p0, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    .line 261
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 263
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 264
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v6, Lorg/telegram/ui/Components/FragmentContextView$5;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/FragmentContextView$5;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 272
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 274
    :cond_12c
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    .line 275
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    .line 277
    :cond_133
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MediaController;->isAudioPaused()Z

    move-result v5

    if-eqz v5, :cond_19f

    .line 278
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    const v6, 0x7f0201d3

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 282
    :goto_145
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->lastMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v5, v1, :cond_14b

    if-eqz v2, :cond_4a

    .line 283
    :cond_14b
    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->lastMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 285
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->lastMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v5

    if-eqz v5, :cond_1a8

    .line 286
    new-instance v4, Landroid/text/SpannableStringBuilder;

    const-string v5, "%s %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 287
    .local v4, "stringBuilder":Landroid/text/SpannableStringBuilder;
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 292
    :goto_178
    new-instance v3, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string v5, "fonts/rmedium.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "inappPlayerPerformer"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v3, v5, v6, v7}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;II)V

    .line 293
    .local v3, "span":Lorg/telegram/ui/Components/TypefaceSpan;
    const/4 v5, 0x0

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x12

    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 294
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4a

    .line 280
    .end local v3    # "span":Lorg/telegram/ui/Components/TypefaceSpan;
    .end local v4    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_19f
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    const v6, 0x7f0201d2

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_145

    .line 289
    :cond_1a8
    new-instance v4, Landroid/text/SpannableStringBuilder;

    const-string v5, "%s - %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 290
    .restart local v4    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_178
.end method

.method private updateStyle(I)V
    .registers 10
    .param p1, "style"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/high16 v1, 0x42100000    # 36.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 141
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-ne v0, p1, :cond_c

    .line 163
    :cond_b
    :goto_b
    return-void

    .line 144
    :cond_c
    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    .line 145
    if-nez p1, :cond_4f

    .line 146
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    const-string v2, "inappPlayerBackground"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 147
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    const-string v2, "inappPlayerTitle"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 151
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 152
    iget-object v7, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/16 v2, 0x33

    const/high16 v3, 0x420c0000    # 35.0f

    move v5, v1

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b

    .line 153
    :cond_4f
    if-ne p1, v3, :cond_b

    .line 154
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    const-string v1, "ReturnToCall"

    const v2, 0x7f0704a3

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    const-string v1, "returnToCallBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 156
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    const-string v1, "returnToCallText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 160
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 161
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Landroid/widget/TextView;

    const/4 v1, -0x2

    const/high16 v2, -0x40000000    # -2.0f

    const/16 v3, 0x11

    const/high16 v7, 0x40000000    # 2.0f

    move v5, v4

    move v6, v4

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_b
.end method


# virtual methods
.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 199
    sget v0, Lorg/telegram/messenger/NotificationCenter;->audioDidStarted:I

    if-eq p1, v0, :cond_11

    sget v0, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    if-eq p1, v0, :cond_11

    sget v0, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    if-eq p1, v0, :cond_11

    sget v0, Lorg/telegram/messenger/NotificationCenter;->didEndedCall:I

    if-ne p1, v0, :cond_15

    .line 200
    :cond_11
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->checkPlayer(Z)V

    .line 206
    :goto_14
    return-void

    .line 201
    :cond_15
    sget v0, Lorg/telegram/messenger/NotificationCenter;->didStartedCall:I

    if-ne p1, v0, :cond_1d

    .line 202
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->checkCall(Z)V

    goto :goto_14

    .line 204
    :cond_1d
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->checkPlayer(Z)V

    goto :goto_14
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 378
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 379
    .local v0, "restoreToCount":I
    iget v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->yPosition:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1d

    .line 380
    const/4 v2, 0x0

    iget v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->yPosition:F

    neg-float v3, v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    const/high16 v5, 0x421c0000    # 39.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 382
    :cond_1d
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    .line 383
    .local v1, "result":Z
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 384
    return v1
.end method

.method public getTopPadding()F
    .registers 2

    .prologue
    .line 127
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 178
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 179
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 180
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 181
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioDidStarted:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 182
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didStartedCall:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 183
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didEndedCall:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 184
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v2

    if-eqz v2, :cond_4a

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/voip/VoIPService;->getCallState()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_4a

    move v0, v1

    .line 185
    .local v0, "callAvailable":Z
    :goto_44
    if-eqz v0, :cond_4c

    .line 186
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->checkCall(Z)V

    .line 190
    :goto_49
    return-void

    .line 184
    .end local v0    # "callAvailable":Z
    :cond_4a
    const/4 v0, 0x0

    goto :goto_44

    .line 188
    .restart local v0    # "callAvailable":Z
    :cond_4c
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->checkPlayer(Z)V

    goto :goto_49
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 167
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    .line 169
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 170
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 171
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioDidStarted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 172
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didStartedCall:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 173
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didEndedCall:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 174
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 194
    const/high16 v0, 0x421c0000    # 39.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 195
    return-void
.end method

.method public setTopPadding(F)V
    .registers 5
    .param p1, "value"    # F

    .prologue
    const/4 v2, 0x0

    .line 131
    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    .line 132
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_15

    .line 133
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    .line 134
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_15

    .line 135
    iget v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 138
    .end local v0    # "view":Landroid/view/View;
    :cond_15
    return-void
.end method

.method public setTranslationY(F)V
    .registers 2
    .param p1, "translationY"    # F

    .prologue
    .line 371
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 372
    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->yPosition:F

    .line 373
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->invalidate()V

    .line 374
    return-void
.end method
