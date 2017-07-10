.class Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;
.super Landroid/widget/FrameLayout;
.source "PasscodeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/PasscodeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatingTextView"
.end annotation


# instance fields
.field private DOT:Ljava/lang/String;

.field private characterTextViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private currentAnimation:Landroid/animation/AnimatorSet;

.field private dotRunnable:Ljava/lang/Runnable;

.field private dotTextViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private stringBuilder:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lorg/telegram/ui/Components/PasscodeView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/PasscodeView;Landroid/content/Context;)V
    .registers 12
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v8, 0x42100000    # 36.0f

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/high16 v5, 0x42480000    # 50.0f

    const/high16 v4, 0x41c80000    # 25.0f

    .line 78
    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    .line 79
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 74
    const-string v3, "\u2022"

    iput-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->DOT:Ljava/lang/String;

    .line 80
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    .line 81
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    .line 84
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_27
    if-ge v0, v6, :cond_be

    .line 85
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 86
    .local v2, "textView":Landroid/widget/TextView;
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 88
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 89
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 90
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPivotX(F)V

    .line 91
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPivotY(F)V

    .line 92
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->addView(Landroid/view/View;)V

    .line 93
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 94
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 95
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 96
    const/16 v3, 0x33

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 97
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v2, Landroid/widget/TextView;

    .end local v2    # "textView":Landroid/widget/TextView;
    invoke-direct {v2, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 101
    .restart local v2    # "textView":Landroid/widget/TextView;
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 103
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 104
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 105
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->DOT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPivotX(F)V

    .line 107
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPivotY(F)V

    .line 108
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->addView(Landroid/view/View;)V

    .line 109
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 110
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 111
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 112
    const/16 v3, 0x33

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 113
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_27

    .line 116
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_be
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 69
    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;Z)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->eraseAllCharacters(Z)V

    return-void
.end method

.method private eraseAllCharacters(Z)V
    .registers 11
    .param p1, "animated"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 313
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_e

    .line 362
    :cond_d
    :goto_d
    return-void

    .line 316
    :cond_e
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_19

    .line 317
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 318
    iput-object v4, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    .line 320
    :cond_19
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_24

    .line 321
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 322
    iput-object v4, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 324
    :cond_24
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v6, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 325
    if-eqz p1, :cond_ce

    .line 326
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_37
    if-ge v0, v8, :cond_aa

    .line 329
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 330
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getAlpha()F

    move-result v3

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_70

    .line 331
    const-string v3, "scaleX"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    const-string v3, "scaleY"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    const-string v3, "alpha"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_70
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "textView":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 337
    .restart local v2    # "textView":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getAlpha()F

    move-result v3

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_a7

    .line 338
    const-string v3, "scaleX"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    const-string v3, "scaleY"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    const-string v3, "alpha"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_a7
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 344
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_aa
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 345
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 346
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 347
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance v4, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$4;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$4;-><init>(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 355
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_d

    .line 357
    .end local v0    # "a":I
    .end local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_ce
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_cf
    if-ge v0, v8, :cond_d

    .line 358
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 359
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_cf
.end method

.method private getXForTextView(I)I
    .registers 6
    .param p1, "pos"    # I

    .prologue
    const/high16 v3, 0x41f00000    # 30.0f

    .line 119
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public appendCharacter(Ljava/lang/String;)V
    .registers 15
    .param p1, "c"    # Ljava/lang/String;

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 123
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_10

    .line 233
    :goto_f
    return-void

    .line 127
    :cond_10
    const/4 v5, 0x3

    :try_start_11
    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->performHapticFeedback(I)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_132

    .line 133
    :goto_14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 135
    .local v3, "newPos":I
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 138
    .local v4, "textView":Landroid/widget/TextView;
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 140
    const-string v5, "scaleX"

    new-array v6, v11, [F

    fill-array-data v6, :array_220

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    const-string v5, "scaleY"

    new-array v6, v11, [F

    fill-array-data v6, :array_228

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    const-string v5, "alpha"

    new-array v6, v11, [F

    fill-array-data v6, :array_230

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    const-string v5, "translationY"

    new-array v6, v11, [F

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "textView":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 145
    .restart local v4    # "textView":Landroid/widget/TextView;
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 146
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 147
    const-string v5, "scaleX"

    new-array v6, v11, [F

    fill-array-data v6, :array_238

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    const-string v5, "scaleY"

    new-array v6, v11, [F

    fill-array-data v6, :array_240

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    const-string v5, "translationY"

    new-array v6, v11, [F

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v8

    aput v10, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    add-int/lit8 v0, v3, 0x1

    .local v0, "a":I
    :goto_be
    const/4 v5, 0x4

    if-ge v0, v5, :cond_138

    .line 152
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "textView":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 153
    .restart local v4    # "textView":Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getAlpha()F

    move-result v5

    cmpl-float v5, v5, v10

    if-eqz v5, :cond_f8

    .line 154
    const-string v5, "scaleX"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    const-string v5, "scaleY"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    const-string v5, "alpha"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_f8
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "textView":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 160
    .restart local v4    # "textView":Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getAlpha()F

    move-result v5

    cmpl-float v5, v5, v10

    if-eqz v5, :cond_12f

    .line 161
    const-string v5, "scaleX"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    const-string v5, "scaleY"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    const-string v5, "alpha"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_12f
    add-int/lit8 v0, v0, 0x1

    goto :goto_be

    .line 128
    .end local v0    # "a":I
    .end local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v3    # "newPos":I
    .end local v4    # "textView":Landroid/widget/TextView;
    :catch_132
    move-exception v2

    .line 129
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 167
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "a":I
    .restart local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .restart local v3    # "newPos":I
    .restart local v4    # "textView":Landroid/widget/TextView;
    :cond_138
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    if-eqz v5, :cond_141

    .line 168
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 170
    :cond_141
    new-instance v5, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$1;

    invoke-direct {v5, p0, v3}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$1;-><init>(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;I)V

    iput-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    .line 201
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x5dc

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 203
    const/4 v0, 0x0

    :goto_150
    if-ge v0, v3, :cond_1f2

    .line 204
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "textView":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 205
    .restart local v4    # "textView":Landroid/widget/TextView;
    const-string v5, "translationX"

    new-array v6, v9, [F

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    const-string v5, "scaleX"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    const-string v5, "scaleY"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    const-string v5, "alpha"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    const-string v5, "translationY"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "textView":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 211
    .restart local v4    # "textView":Landroid/widget/TextView;
    const-string v5, "translationX"

    new-array v6, v9, [F

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    const-string v5, "scaleX"

    new-array v6, v9, [F

    aput v12, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    const-string v5, "scaleY"

    new-array v6, v9, [F

    aput v12, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    const-string v5, "alpha"

    new-array v6, v9, [F

    aput v12, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    const-string v5, "translationY"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_150

    .line 218
    :cond_1f2
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_1fb

    .line 219
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 221
    :cond_1fb
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 222
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x96

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 223
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 224
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance v6, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$2;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$2;-><init>(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 232
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_f

    .line 140
    nop

    :array_220
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 141
    :array_228
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 142
    :array_230
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 147
    :array_238
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 148
    :array_240
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public eraseLastCharacter()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 244
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_c

    .line 310
    :goto_b
    return-void

    .line 248
    :cond_c
    const/4 v5, 0x3

    :try_start_d
    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->performHapticFeedback(I)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_d8

    .line 253
    :goto_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 255
    .local v2, "deletingPos":I
    if-eqz v2, :cond_24

    .line 256
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 259
    :cond_24
    move v0, v2

    .local v0, "a":I
    :goto_25
    const/4 v5, 0x4

    if-ge v0, v5, :cond_de

    .line 260
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 261
    .local v4, "textView":Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getAlpha()F

    move-result v5

    cmpl-float v5, v5, v10

    if-eqz v5, :cond_7e

    .line 262
    const-string v5, "scaleX"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    const-string v5, "scaleY"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    const-string v5, "alpha"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    const-string v5, "translationY"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    const-string v5, "translationX"

    new-array v6, v9, [F

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_7e
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "textView":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 270
    .restart local v4    # "textView":Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getAlpha()F

    move-result v5

    cmpl-float v5, v5, v10

    if-eqz v5, :cond_d4

    .line 271
    const-string v5, "scaleX"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    const-string v5, "scaleY"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    const-string v5, "alpha"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    const-string v5, "translationY"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    const-string v5, "translationX"

    new-array v6, v9, [F

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_d4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_25

    .line 249
    .end local v0    # "a":I
    .end local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v2    # "deletingPos":I
    .end local v4    # "textView":Landroid/widget/TextView;
    :catch_d8
    move-exception v3

    .line 250
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 279
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "a":I
    .restart local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .restart local v2    # "deletingPos":I
    :cond_de
    if-nez v2, :cond_e5

    .line 280
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 283
    :cond_e5
    const/4 v0, 0x0

    :goto_e6
    if-ge v0, v2, :cond_11f

    .line 284
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 285
    .restart local v4    # "textView":Landroid/widget/TextView;
    const-string v5, "translationX"

    new-array v6, v9, [F

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "textView":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 287
    .restart local v4    # "textView":Landroid/widget/TextView;
    const-string v5, "translationX"

    new-array v6, v9, [F

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_e6

    .line 290
    .end local v4    # "textView":Landroid/widget/TextView;
    :cond_11f
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    if-eqz v5, :cond_12b

    .line 291
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 292
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    .line 295
    :cond_12b
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_134

    .line 296
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 298
    :cond_134
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 299
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x96

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 300
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 301
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance v6, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$3;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$3;-><init>(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 309
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_b
.end method

.method public getString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public lenght()I
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 12
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 366
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_f

    .line 367
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 368
    iput-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    .line 370
    :cond_f
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_1a

    .line 371
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 372
    iput-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 375
    :cond_1a
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1b
    const/4 v2, 0x4

    if-ge v0, v2, :cond_78

    .line 376
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v0, v2, :cond_61

    .line 377
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 378
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 379
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setScaleX(F)V

    .line 380
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setScaleY(F)V

    .line 381
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 382
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 384
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "textView":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 385
    .restart local v1    # "textView":Landroid/widget/TextView;
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 386
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setScaleX(F)V

    .line 387
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setScaleY(F)V

    .line 388
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 389
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 375
    .end local v1    # "textView":Landroid/widget/TextView;
    :goto_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 391
    :cond_61
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 392
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_5e

    .line 395
    :cond_78
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 396
    return-void
.end method
