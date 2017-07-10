.class public Lorg/telegram/ui/Components/PipVideoView;
.super Ljava/lang/Object;
.source "PipVideoView.java"


# instance fields
.field private controlsView:Landroid/view/View;

.field private decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private parentActivity:Landroid/app/Activity;

.field private parentSheet:Lorg/telegram/ui/Components/EmbedBottomSheet;

.field private preferences:Landroid/content/SharedPreferences;

.field private videoHeight:I

.field private videoWidth:I

.field private windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private windowManager:Landroid/view/WindowManager;

.field private windowView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/PipVideoView;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->controlsView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager$LayoutParams;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/PipVideoView;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/PipVideoView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/PipVideoView;

    .prologue
    .line 36
    iget v0, p0, Lorg/telegram/ui/Components/PipVideoView;->videoWidth:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/PipVideoView;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/PipVideoView;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->windowView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/PipVideoView;)Landroid/view/WindowManager;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/PipVideoView;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->windowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/PipVideoView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PipVideoView;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoView;->animateToBoundsMaybe()V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/PipVideoView;)Lorg/telegram/ui/Components/EmbedBottomSheet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/PipVideoView;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->parentSheet:Lorg/telegram/ui/Components/EmbedBottomSheet;

    return-object v0
.end method

.method private animateToBoundsMaybe()V
    .registers 15

    .prologue
    .line 215
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p0, Lorg/telegram/ui/Components/PipVideoView;->videoWidth:I

    invoke-static {v9, v10, v11, v12}, Lorg/telegram/ui/Components/PipVideoView;->getSideCoord(ZIFI)I

    move-result v7

    .line 216
    .local v7, "startX":I
    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget v12, p0, Lorg/telegram/ui/Components/PipVideoView;->videoWidth:I

    invoke-static {v9, v10, v11, v12}, Lorg/telegram/ui/Components/PipVideoView;->getSideCoord(ZIFI)I

    move-result v3

    .line 217
    .local v3, "endX":I
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p0, Lorg/telegram/ui/Components/PipVideoView;->videoHeight:I

    invoke-static {v9, v10, v11, v12}, Lorg/telegram/ui/Components/PipVideoView;->getSideCoord(ZIFI)I

    move-result v8

    .line 218
    .local v8, "startY":I
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget v12, p0, Lorg/telegram/ui/Components/PipVideoView;->videoHeight:I

    invoke-static {v9, v10, v11, v12}, Lorg/telegram/ui/Components/PipVideoView;->getSideCoord(ZIFI)I

    move-result v4

    .line 219
    .local v4, "endY":I
    const/4 v1, 0x0

    .line 220
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 221
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const/high16 v9, 0x41a00000    # 20.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    .line 222
    .local v5, "maxDiff":I
    const/4 v6, 0x0

    .line 223
    .local v6, "slideOut":Z
    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-le v9, v5, :cond_4f

    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gez v9, :cond_100

    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v10, p0, Lorg/telegram/ui/Components/PipVideoView;->videoWidth:I

    neg-int v10, v10

    div-int/lit8 v10, v10, 0x4

    if-le v9, v10, :cond_100

    .line 224
    :cond_4f
    if-nez v1, :cond_56

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .restart local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_56
    const-string v9, "sidex"

    const/4 v10, 0x0

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 228
    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_7b

    .line 229
    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->windowView:Landroid/widget/FrameLayout;

    const-string v10, "alpha"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_7b
    const-string v9, "x"

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput v7, v10, v11

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    :goto_8a
    if-nez v6, :cond_c1

    .line 256
    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-le v9, v5, :cond_a2

    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v10

    if-gt v9, v10, :cond_1c0

    .line 257
    :cond_a2
    if-nez v1, :cond_a9

    .line 258
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .restart local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_a9
    const-string v9, "sidey"

    const/4 v10, 0x0

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 261
    const-string v9, "y"

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput v8, v10, v11

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    :goto_be
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 274
    :cond_c1
    if-eqz v1, :cond_ff

    .line 275
    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez v9, :cond_ce

    .line 276
    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v9}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 278
    :cond_ce
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 279
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 280
    const-wide/16 v10, 0x96

    invoke-virtual {v0, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 281
    if-eqz v6, :cond_f9

    .line 282
    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->windowView:Landroid/widget/FrameLayout;

    const-string v10, "alpha"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    new-instance v9, Lorg/telegram/ui/Components/PipVideoView$2;

    invoke-direct {v9, p0}, Lorg/telegram/ui/Components/PipVideoView$2;-><init>(Lorg/telegram/ui/Components/PipVideoView;)V

    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 290
    :cond_f9
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 291
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 293
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_ff
    return-void

    .line 232
    :cond_100
    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v9, v3, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-le v9, v5, :cond_12a

    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    iget v11, p0, Lorg/telegram/ui/Components/PipVideoView;->videoWidth:I

    sub-int/2addr v10, v11

    if-le v9, v10, :cond_167

    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    iget v11, p0, Lorg/telegram/ui/Components/PipVideoView;->videoWidth:I

    div-int/lit8 v11, v11, 0x4

    mul-int/lit8 v11, v11, 0x3

    sub-int/2addr v10, v11

    if-ge v9, v10, :cond_167

    .line 233
    :cond_12a
    if-nez v1, :cond_131

    .line 234
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .restart local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_131
    const-string v9, "sidex"

    const/4 v10, 0x1

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 237
    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_156

    .line 238
    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->windowView:Landroid/widget/FrameLayout;

    const-string v10, "alpha"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_156
    const-string v9, "x"

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput v3, v10, v11

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8a

    .line 241
    :cond_167
    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_1a9

    .line 242
    if-nez v1, :cond_17a

    .line 243
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .restart local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_17a
    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gez v9, :cond_195

    .line 246
    const-string v9, "x"

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    iget v12, p0, Lorg/telegram/ui/Components/PipVideoView;->videoWidth:I

    neg-int v12, v12

    aput v12, v10, v11

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    :goto_192
    const/4 v6, 0x1

    goto/16 :goto_8a

    .line 248
    :cond_195
    const-string v9, "x"

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    sget-object v12, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    aput v12, v10, v11

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_192

    .line 252
    :cond_1a9
    const-string v9, "px"

    iget-object v10, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v10, v7

    int-to-float v10, v10

    sub-int v11, v3, v7

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 253
    const-string v9, "sidex"

    const/4 v10, 0x2

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_8a

    .line 262
    :cond_1c0
    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v9, v4, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-gt v9, v5, :cond_1ea

    .line 263
    if-nez v1, :cond_1d3

    .line 264
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .restart local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_1d3
    const-string v9, "sidey"

    const/4 v10, 0x1

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 267
    const-string v9, "y"

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput v4, v10, v11

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_be

    .line 269
    :cond_1ea
    const-string v9, "py"

    iget-object v10, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v10, v8

    int-to-float v10, v10

    sub-int v11, v4, v8

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 270
    const-string v9, "sidey"

    const/4 v10, 0x2

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_be
.end method

.method public static getPipRect(F)Lorg/telegram/ui/Components/Rect;
    .registers 14
    .param p0, "aspectRatio"    # F

    .prologue
    const/4 v12, 0x1

    const/high16 v11, 0x43400000    # 192.0f

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 296
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v8, "pipconfig"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 297
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v7, "sidex"

    invoke-interface {v0, v7, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 298
    .local v3, "sidex":I
    const-string v7, "sidey"

    invoke-interface {v0, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 299
    .local v4, "sidey":I
    const-string v7, "px"

    invoke-interface {v0, v7, v10}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 300
    .local v1, "px":F
    const-string v7, "py"

    invoke-interface {v0, v7, v10}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    .line 304
    .local v2, "py":F
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, p0, v7

    if-lez v7, :cond_44

    .line 305
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    .line 306
    .local v6, "videoWidth":I
    int-to-float v7, v6

    div-float/2addr v7, p0

    float-to-int v5, v7

    .line 312
    .local v5, "videoHeight":I
    :goto_32
    new-instance v7, Lorg/telegram/ui/Components/Rect;

    invoke-static {v12, v3, v1, v6}, Lorg/telegram/ui/Components/PipVideoView;->getSideCoord(ZIFI)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v9, v4, v2, v5}, Lorg/telegram/ui/Components/PipVideoView;->getSideCoord(ZIFI)I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v6

    int-to-float v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/telegram/ui/Components/Rect;-><init>(FFFF)V

    return-object v7

    .line 308
    .end local v5    # "videoHeight":I
    .end local v6    # "videoWidth":I
    :cond_44
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    .line 309
    .restart local v5    # "videoHeight":I
    int-to-float v7, v5

    mul-float/2addr v7, p0

    float-to-int v6, v7

    .restart local v6    # "videoWidth":I
    goto :goto_32
.end method

.method private static getSideCoord(ZIFI)I
    .registers 9
    .param p0, "isX"    # Z
    .param p1, "side"    # I
    .param p2, "p"    # F
    .param p3, "sideSize"    # I

    .prologue
    const/high16 v4, 0x41200000    # 10.0f

    .line 175
    if-eqz p0, :cond_18

    .line 176
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int v1, v2, p3

    .line 181
    .local v1, "total":I
    :goto_a
    if-nez p1, :cond_24

    .line 182
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 188
    .local v0, "result":I
    :goto_10
    if-nez p0, :cond_17

    .line 189
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 191
    :cond_17
    return v0

    .line 178
    .end local v0    # "result":I
    .end local v1    # "total":I
    :cond_18
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, p3

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    sub-int v1, v2, v3

    .restart local v1    # "total":I
    goto :goto_a

    .line 183
    :cond_24
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2e

    .line 184
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v0, v1, v2

    .restart local v0    # "result":I
    goto :goto_10

    .line 186
    .end local v0    # "result":I
    :cond_2e
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, v1, v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int v0, v2, v3

    .restart local v0    # "result":I
    goto :goto_10
.end method


# virtual methods
.method public close()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 196
    :try_start_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoView;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_d

    .line 200
    :goto_8
    iput-object v2, p0, Lorg/telegram/ui/Components/PipVideoView;->parentSheet:Lorg/telegram/ui/Components/EmbedBottomSheet;

    .line 201
    iput-object v2, p0, Lorg/telegram/ui/Components/PipVideoView;->parentActivity:Landroid/app/Activity;

    .line 202
    return-void

    .line 197
    :catch_d
    move-exception v0

    goto :goto_8
.end method

.method public getX()I
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    return v0
.end method

.method public getY()I
    .registers 2

    .prologue
    .line 320
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return v0
.end method

.method public onConfigurationChanged()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 205
    iget-object v4, p0, Lorg/telegram/ui/Components/PipVideoView;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "sidex"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 206
    .local v2, "sidex":I
    iget-object v4, p0, Lorg/telegram/ui/Components/PipVideoView;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "sidey"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 207
    .local v3, "sidey":I
    iget-object v4, p0, Lorg/telegram/ui/Components/PipVideoView;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "px"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 208
    .local v0, "px":F
    iget-object v4, p0, Lorg/telegram/ui/Components/PipVideoView;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "py"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 209
    .local v1, "py":F
    iget-object v4, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Lorg/telegram/ui/Components/PipVideoView;->videoWidth:I

    invoke-static {v8, v2, v0, v5}, Lorg/telegram/ui/Components/PipVideoView;->getSideCoord(ZIFI)I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 210
    iget-object v4, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Lorg/telegram/ui/Components/PipVideoView;->videoHeight:I

    invoke-static {v7, v3, v1, v5}, Lorg/telegram/ui/Components/PipVideoView;->getSideCoord(ZIFI)I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 211
    iget-object v4, p0, Lorg/telegram/ui/Components/PipVideoView;->windowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lorg/telegram/ui/Components/PipVideoView;->windowView:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v4, v5, v6}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    return-void
.end method

.method public setX(I)V
    .registers 5
    .param p1, "value"    # I

    .prologue
    .line 324
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 325
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoView;->windowView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    return-void
.end method

.method public setY(I)V
    .registers 5
    .param p1, "value"    # I

    .prologue
    .line 329
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 330
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoView;->windowView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    return-void
.end method

.method public show(Landroid/app/Activity;Lorg/telegram/ui/Components/EmbedBottomSheet;Landroid/view/View;FI)Landroid/view/TextureView;
    .registers 19
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "sheet"    # Lorg/telegram/ui/Components/EmbedBottomSheet;
    .param p3, "controls"    # Landroid/view/View;
    .param p4, "aspectRatio"    # F
    .param p5, "rotation"    # I

    .prologue
    .line 51
    new-instance v9, Lorg/telegram/ui/Components/PipVideoView$1;

    invoke-direct {v9, p0, p1}, Lorg/telegram/ui/Components/PipVideoView$1;-><init>(Lorg/telegram/ui/Components/PipVideoView;Landroid/content/Context;)V

    iput-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->windowView:Landroid/widget/FrameLayout;

    .line 125
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, p4, v9

    if-lez v9, :cond_e1

    .line 126
    const/high16 v9, 0x43400000    # 192.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    iput v9, p0, Lorg/telegram/ui/Components/PipVideoView;->videoWidth:I

    .line 127
    iget v9, p0, Lorg/telegram/ui/Components/PipVideoView;->videoWidth:I

    int-to-float v9, v9

    div-float v9, v9, p4

    float-to-int v9, v9

    iput v9, p0, Lorg/telegram/ui/Components/PipVideoView;->videoHeight:I

    .line 133
    :goto_1d
    new-instance v2, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-direct {v2, p1}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    .line 134
    .local v2, "aspectRatioFrameLayout":Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(FI)V

    .line 135
    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->windowView:Landroid/widget/FrameLayout;

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/16 v12, 0x11

    invoke-static {v10, v11, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v9, v2, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    new-instance v8, Landroid/view/TextureView;

    invoke-direct {v8, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 138
    .local v8, "textureView":Landroid/view/TextureView;
    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    move-object/from16 v0, p3

    iput-object v0, p0, Lorg/telegram/ui/Components/PipVideoView;->controlsView:Landroid/view/View;

    .line 141
    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->windowView:Landroid/widget/FrameLayout;

    iget-object v10, p0, Lorg/telegram/ui/Components/PipVideoView;->controlsView:Landroid/view/View;

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    invoke-static {v11, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    iput-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->windowManager:Landroid/view/WindowManager;

    .line 145
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v10, "pipconfig"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->preferences:Landroid/content/SharedPreferences;

    .line 147
    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->preferences:Landroid/content/SharedPreferences;

    const-string v10, "sidex"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 148
    .local v6, "sidex":I
    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->preferences:Landroid/content/SharedPreferences;

    const-string v10, "sidey"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 149
    .local v7, "sidey":I
    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->preferences:Landroid/content/SharedPreferences;

    const-string v10, "px"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    .line 150
    .local v4, "px":F
    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->preferences:Landroid/content/SharedPreferences;

    const-string v10, "py"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    .line 153
    .local v5, "py":F
    :try_start_92
    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v9}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 154
    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, p0, Lorg/telegram/ui/Components/PipVideoView;->videoWidth:I

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 155
    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, p0, Lorg/telegram/ui/Components/PipVideoView;->videoHeight:I

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 156
    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v10, 0x1

    iget v11, p0, Lorg/telegram/ui/Components/PipVideoView;->videoWidth:I

    invoke-static {v10, v6, v4, v11}, Lorg/telegram/ui/Components/PipVideoView;->getSideCoord(ZIFI)I

    move-result v10

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 157
    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v10, 0x0

    iget v11, p0, Lorg/telegram/ui/Components/PipVideoView;->videoHeight:I

    invoke-static {v10, v7, v5, v11}, Lorg/telegram/ui/Components/PipVideoView;->getSideCoord(ZIFI)I

    move-result v10

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 158
    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v10, -0x3

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 159
    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v10, 0x33

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 160
    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v10, 0x7d3

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 161
    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v10, 0x1000208

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 162
    iget-object v9, p0, Lorg/telegram/ui/Components/PipVideoView;->windowManager:Landroid/view/WindowManager;

    iget-object v10, p0, Lorg/telegram/ui/Components/PipVideoView;->windowView:Landroid/widget/FrameLayout;

    iget-object v11, p0, Lorg/telegram/ui/Components/PipVideoView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v9, v10, v11}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_dc} :catch_f3

    .line 167
    iput-object p2, p0, Lorg/telegram/ui/Components/PipVideoView;->parentSheet:Lorg/telegram/ui/Components/EmbedBottomSheet;

    .line 168
    iput-object p1, p0, Lorg/telegram/ui/Components/PipVideoView;->parentActivity:Landroid/app/Activity;

    .line 170
    .end local v8    # "textureView":Landroid/view/TextureView;
    :goto_e0
    return-object v8

    .line 129
    .end local v2    # "aspectRatioFrameLayout":Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    .end local v4    # "px":F
    .end local v5    # "py":F
    .end local v6    # "sidex":I
    .end local v7    # "sidey":I
    :cond_e1
    const/high16 v9, 0x43400000    # 192.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    iput v9, p0, Lorg/telegram/ui/Components/PipVideoView;->videoHeight:I

    .line 130
    iget v9, p0, Lorg/telegram/ui/Components/PipVideoView;->videoHeight:I

    int-to-float v9, v9

    mul-float v9, v9, p4

    float-to-int v9, v9

    iput v9, p0, Lorg/telegram/ui/Components/PipVideoView;->videoWidth:I

    goto/16 :goto_1d

    .line 163
    .restart local v2    # "aspectRatioFrameLayout":Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    .restart local v4    # "px":F
    .restart local v5    # "py":F
    .restart local v6    # "sidex":I
    .restart local v7    # "sidey":I
    .restart local v8    # "textureView":Landroid/view/TextureView;
    :catch_f3
    move-exception v3

    .line 164
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 165
    const/4 v8, 0x0

    goto :goto_e0
.end method
