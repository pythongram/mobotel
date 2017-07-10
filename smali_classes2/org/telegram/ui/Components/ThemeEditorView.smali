.class public Lorg/telegram/ui/Components/ThemeEditorView;
.super Ljava/lang/Object;
.source "ThemeEditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/ui/Components/ThemeEditorView;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private currentThemeDesription:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private currentThemeDesriptionPosition:I

.field private currentThemeName:Ljava/lang/String;

.field private decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private editorAlert:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

.field private final editorHeight:I

.field private final editorWidth:I

.field private hidden:Z

.field private parentActivity:Landroid/app/Activity;

.field private preferences:Landroid/content/SharedPreferences;

.field private wallpaperUpdater:Lorg/telegram/ui/Components/WallpaperUpdater;

.field private windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private windowManager:Landroid/view/WindowManager;

.field private windowView:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 97
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/Components/ThemeEditorView;->Instance:Lorg/telegram/ui/Components/ThemeEditorView;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/high16 v1, 0x42580000    # 54.0f

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    .line 85
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorHeight:I

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/ThemeEditorView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ThemeEditorView;

    .prologue
    .line 74
    iget v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->currentThemeDesriptionPosition:I

    return v0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/Components/ThemeEditorView;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ThemeEditorView;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->currentThemeDesriptionPosition:I

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/ThemeEditorView;)Lorg/telegram/ui/Components/WallpaperUpdater;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ThemeEditorView;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->wallpaperUpdater:Lorg/telegram/ui/Components/WallpaperUpdater;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/ThemeEditorView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ThemeEditorView;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->currentThemeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/view/animation/DecelerateInterpolator;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ThemeEditorView;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ThemeEditorView;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ThemeEditorView;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->currentThemeDesription:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/ThemeEditorView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ThemeEditorView;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 74
    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->currentThemeDesription:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ThemeEditorView;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->parentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/ThemeEditorView;)Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ThemeEditorView;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorAlert:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    return-object v0
.end method

.method static synthetic access$2402(Lorg/telegram/ui/Components/ThemeEditorView;Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ThemeEditorView;
    .param p1, "x1"    # Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    .prologue
    .line 74
    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorAlert:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    return-object p1
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/ThemeEditorView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ThemeEditorView;

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThemeEditorView;->show()V

    return-void
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/ThemeEditorView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ThemeEditorView;

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThemeEditorView;->hide()V

    return-void
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/view/WindowManager$LayoutParams;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ThemeEditorView;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/ThemeEditorView;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ThemeEditorView;

    .prologue
    .line 74
    iget v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    return v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ThemeEditorView;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/view/WindowManager;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ThemeEditorView;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/ThemeEditorView;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ThemeEditorView;

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThemeEditorView;->animateToBoundsMaybe()V

    return-void
.end method

.method private animateToBoundsMaybe()V
    .registers 15

    .prologue
    .line 1139
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    invoke-static {v9, v10, v11, v12}, Lorg/telegram/ui/Components/ThemeEditorView;->getSideCoord(ZIFI)I

    move-result v7

    .line 1140
    .local v7, "startX":I
    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget v12, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    invoke-static {v9, v10, v11, v12}, Lorg/telegram/ui/Components/ThemeEditorView;->getSideCoord(ZIFI)I

    move-result v3

    .line 1141
    .local v3, "endX":I
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorHeight:I

    invoke-static {v9, v10, v11, v12}, Lorg/telegram/ui/Components/ThemeEditorView;->getSideCoord(ZIFI)I

    move-result v8

    .line 1142
    .local v8, "startY":I
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget v12, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorHeight:I

    invoke-static {v9, v10, v11, v12}, Lorg/telegram/ui/Components/ThemeEditorView;->getSideCoord(ZIFI)I

    move-result v4

    .line 1143
    .local v4, "endY":I
    const/4 v1, 0x0

    .line 1144
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1145
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const/high16 v9, 0x41a00000    # 20.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    .line 1146
    .local v5, "maxDiff":I
    const/4 v6, 0x0

    .line 1147
    .local v6, "slideOut":Z
    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-le v9, v5, :cond_4f

    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gez v9, :cond_100

    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v10, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    neg-int v10, v10

    div-int/lit8 v10, v10, 0x4

    if-le v9, v10, :cond_100

    .line 1148
    :cond_4f
    if-nez v1, :cond_56

    .line 1149
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1151
    .restart local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_56
    const-string v9, "sidex"

    const/4 v10, 0x0

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1152
    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_7b

    .line 1153
    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    const-string v10, "alpha"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1155
    :cond_7b
    const-string v9, "x"

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput v7, v10, v11

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1179
    :goto_8a
    if-nez v6, :cond_c1

    .line 1180
    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-le v9, v5, :cond_a2

    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v10

    if-gt v9, v10, :cond_1c0

    .line 1181
    :cond_a2
    if-nez v1, :cond_a9

    .line 1182
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1184
    .restart local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_a9
    const-string v9, "sidey"

    const/4 v10, 0x0

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1185
    const-string v9, "y"

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput v8, v10, v11

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1196
    :goto_be
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1198
    :cond_c1
    if-eqz v1, :cond_ff

    .line 1199
    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez v9, :cond_ce

    .line 1200
    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v9}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 1202
    :cond_ce
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1203
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1204
    const-wide/16 v10, 0x96

    invoke-virtual {v0, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1205
    if-eqz v6, :cond_f9

    .line 1206
    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    const-string v10, "alpha"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1207
    new-instance v9, Lorg/telegram/ui/Components/ThemeEditorView$4;

    invoke-direct {v9, p0}, Lorg/telegram/ui/Components/ThemeEditorView$4;-><init>(Lorg/telegram/ui/Components/ThemeEditorView;)V

    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1215
    :cond_f9
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1216
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1218
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_ff
    return-void

    .line 1156
    :cond_100
    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v9, v3, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-le v9, v5, :cond_12a

    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    iget v11, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    sub-int/2addr v10, v11

    if-le v9, v10, :cond_167

    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    iget v11, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    div-int/lit8 v11, v11, 0x4

    mul-int/lit8 v11, v11, 0x3

    sub-int/2addr v10, v11

    if-ge v9, v10, :cond_167

    .line 1157
    :cond_12a
    if-nez v1, :cond_131

    .line 1158
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1160
    .restart local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_131
    const-string v9, "sidex"

    const/4 v10, 0x1

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1161
    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_156

    .line 1162
    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    const-string v10, "alpha"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1164
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

    .line 1165
    :cond_167
    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_1a9

    .line 1166
    if-nez v1, :cond_17a

    .line 1167
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1169
    .restart local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_17a
    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gez v9, :cond_195

    .line 1170
    const-string v9, "x"

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    iget v12, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    neg-int v12, v12

    aput v12, v10, v11

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1174
    :goto_192
    const/4 v6, 0x1

    goto/16 :goto_8a

    .line 1172
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

    .line 1176
    :cond_1a9
    const-string v9, "px"

    iget-object v10, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v10, v7

    int-to-float v10, v10

    sub-int v11, v3, v7

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1177
    const-string v9, "sidex"

    const/4 v10, 0x2

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_8a

    .line 1186
    :cond_1c0
    iget-object v9, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v9, v4, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-gt v9, v5, :cond_1ea

    .line 1187
    if-nez v1, :cond_1d3

    .line 1188
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1190
    .restart local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_1d3
    const-string v9, "sidey"

    const/4 v10, 0x1

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1191
    const-string v9, "y"

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput v4, v10, v11

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_be

    .line 1193
    :cond_1ea
    const-string v9, "py"

    iget-object v10, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v10, v8

    int-to-float v10, v10

    sub-int v11, v4, v8

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1194
    const-string v9, "sidey"

    const/4 v10, 0x2

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_be
.end method

.method public static getInstance()Lorg/telegram/ui/Components/ThemeEditorView;
    .registers 1

    .prologue
    .line 99
    sget-object v0, Lorg/telegram/ui/Components/ThemeEditorView;->Instance:Lorg/telegram/ui/Components/ThemeEditorView;

    return-object v0
.end method

.method private static getSideCoord(ZIFI)I
    .registers 9
    .param p0, "isX"    # Z
    .param p1, "side"    # I
    .param p2, "p"    # F
    .param p3, "sideSize"    # I

    .prologue
    const/high16 v4, 0x41200000    # 10.0f

    .line 1049
    if-eqz p0, :cond_18

    .line 1050
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int v1, v2, p3

    .line 1055
    .local v1, "total":I
    :goto_a
    if-nez p1, :cond_24

    .line 1056
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 1062
    .local v0, "result":I
    :goto_10
    if-nez p0, :cond_17

    .line 1063
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 1065
    :cond_17
    return v0

    .line 1052
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

    .line 1057
    :cond_24
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2e

    .line 1058
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v0, v1, v2

    .restart local v0    # "result":I
    goto :goto_10

    .line 1060
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

.method private hide()V
    .registers 7

    .prologue
    .line 1069
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->parentActivity:Landroid/app/Activity;

    if-nez v1, :cond_5

    .line 1092
    :goto_4
    return-void

    .line 1073
    :cond_5
    :try_start_5
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1074
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_5e

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    const-string v4, "scaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_66

    .line 1075
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    const-string v4, "scaleY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_6e

    .line 1076
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1074
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1077
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1078
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1079
    new-instance v1, Lorg/telegram/ui/Components/ThemeEditorView$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ThemeEditorView$3;-><init>(Lorg/telegram/ui/Components/ThemeEditorView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1087
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1088
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->hidden:Z
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5b} :catch_5c

    goto :goto_4

    .line 1089
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    :catch_5c
    move-exception v1

    goto :goto_4

    .line 1074
    :array_5e
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_66
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 1075
    :array_6e
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private show()V
    .registers 4

    .prologue
    .line 1095
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->parentActivity:Landroid/app/Activity;

    if-nez v0, :cond_5

    .line 1105
    :goto_4
    return-void

    .line 1099
    :cond_5
    :try_start_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->hidden:Z

    .line 1101
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThemeEditorView;->showWithAnimation()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_14} :catch_15

    goto :goto_4

    .line 1102
    :catch_15
    move-exception v0

    goto :goto_4
.end method

.method private showWithAnimation()V
    .registers 8

    .prologue
    const/4 v6, 0x2

    .line 1038
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1039
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    const-string v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_4a

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    const-string v4, "scaleX"

    new-array v5, v6, [F

    fill-array-data v5, :array_52

    .line 1040
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    const-string v3, "scaleY"

    new-array v4, v6, [F

    fill-array-data v4, :array_5a

    .line 1041
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    .line 1039
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1042
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1043
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1044
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1045
    return-void

    .line 1039
    nop

    :array_4a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_52
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1040
    :array_5a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 1109
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_b

    .line 1113
    :goto_7
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->parentActivity:Landroid/app/Activity;

    .line 1114
    return-void

    .line 1110
    :catch_b
    move-exception v0

    goto :goto_7
.end method

.method public destroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 103
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->wallpaperUpdater:Lorg/telegram/ui/Components/WallpaperUpdater;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/WallpaperUpdater;->cleanup()V

    .line 104
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->parentActivity:Landroid/app/Activity;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    if-nez v1, :cond_f

    .line 123
    :cond_e
    :goto_e
    return-void

    .line 108
    :cond_f
    :try_start_f
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 109
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_19} :catch_2a

    .line 114
    :goto_19
    :try_start_19
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorAlert:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    if-eqz v1, :cond_25

    .line 115
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorAlert:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->dismiss()V

    .line 116
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorAlert:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_25} :catch_2f

    .line 121
    :cond_25
    :goto_25
    iput-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView;->parentActivity:Landroid/app/Activity;

    .line 122
    sput-object v3, Lorg/telegram/ui/Components/ThemeEditorView;->Instance:Lorg/telegram/ui/Components/ThemeEditorView;

    goto :goto_e

    .line 110
    :catch_2a
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_19

    .line 118
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2f
    move-exception v0

    .line 119
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_25
.end method

.method public getX()I
    .registers 2

    .prologue
    .line 1221
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    return v0
.end method

.method public getY()I
    .registers 2

    .prologue
    .line 1225
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1133
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->wallpaperUpdater:Lorg/telegram/ui/Components/WallpaperUpdater;

    if-eqz v0, :cond_9

    .line 1134
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->wallpaperUpdater:Lorg/telegram/ui/Components/WallpaperUpdater;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/WallpaperUpdater;->onActivityResult(IILandroid/content/Intent;)V

    .line 1136
    :cond_9
    return-void
.end method

.method public onConfigurationChanged()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1117
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->preferences:Landroid/content/SharedPreferences;

    const-string v6, "sidex"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1118
    .local v3, "sidex":I
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->preferences:Landroid/content/SharedPreferences;

    const-string v6, "sidey"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1119
    .local v4, "sidey":I
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->preferences:Landroid/content/SharedPreferences;

    const-string v6, "px"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 1120
    .local v1, "px":F
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->preferences:Landroid/content/SharedPreferences;

    const-string v6, "py"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    .line 1121
    .local v2, "py":F
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    invoke-static {v9, v3, v1, v6}, Lorg/telegram/ui/Components/ThemeEditorView;->getSideCoord(ZIFI)I

    move-result v6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1122
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorHeight:I

    invoke-static {v8, v4, v2, v6}, Lorg/telegram/ui/Components/ThemeEditorView;->getSideCoord(ZIFI)I

    move-result v6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1124
    :try_start_37
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_48

    .line 1125
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;

    iget-object v6, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v5, v6, v7}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_48} :catch_49

    .line 1130
    :cond_48
    :goto_48
    return-void

    .line 1127
    :catch_49
    move-exception v0

    .line 1128
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_48
.end method

.method public setX(I)V
    .registers 5
    .param p1, "value"    # I
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 1230
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1231
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1232
    return-void
.end method

.method public setY(I)V
    .registers 5
    .param p1, "value"    # I
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 1236
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1237
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1238
    return-void
.end method

.method public show(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 13
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "themeName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 892
    sget-object v5, Lorg/telegram/ui/Components/ThemeEditorView;->Instance:Lorg/telegram/ui/Components/ThemeEditorView;

    if-eqz v5, :cond_c

    .line 893
    sget-object v5, Lorg/telegram/ui/Components/ThemeEditorView;->Instance:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ThemeEditorView;->destroy()V

    .line 895
    :cond_c
    iput-boolean v7, p0, Lorg/telegram/ui/Components/ThemeEditorView;->hidden:Z

    .line 896
    iput-object p2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->currentThemeName:Ljava/lang/String;

    .line 897
    new-instance v5, Lorg/telegram/ui/Components/ThemeEditorView$1;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/Components/ThemeEditorView$1;-><init>(Lorg/telegram/ui/Components/ThemeEditorView;Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    .line 989
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    const v6, 0x7f020270

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 990
    const-string v5, "window"

    invoke-virtual {p1, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    iput-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;

    .line 992
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "themeconfig"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->preferences:Landroid/content/SharedPreferences;

    .line 994
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->preferences:Landroid/content/SharedPreferences;

    const-string v6, "sidex"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 995
    .local v3, "sidex":I
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->preferences:Landroid/content/SharedPreferences;

    const-string v6, "sidey"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 996
    .local v4, "sidey":I
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->preferences:Landroid/content/SharedPreferences;

    const-string v6, "px"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 997
    .local v1, "px":F
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->preferences:Landroid/content/SharedPreferences;

    const-string v6, "py"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    .line 1000
    .local v2, "py":F
    :try_start_53
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v5}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 1001
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1002
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorHeight:I

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1003
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v6, 0x1

    iget v7, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    invoke-static {v6, v3, v1, v7}, Lorg/telegram/ui/Components/ThemeEditorView;->getSideCoord(ZIFI)I

    move-result v6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1004
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v6, 0x0

    iget v7, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorHeight:I

    invoke-static {v6, v4, v2, v7}, Lorg/telegram/ui/Components/ThemeEditorView;->getSideCoord(ZIFI)I

    move-result v6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1005
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v6, -0x3

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1006
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x33

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1007
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x63

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1008
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v6, 0x1000208

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1009
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;

    iget-object v6, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v5, v6, v7}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_9d} :catch_b1

    .line 1014
    new-instance v5, Lorg/telegram/ui/Components/WallpaperUpdater;

    new-instance v6, Lorg/telegram/ui/Components/ThemeEditorView$2;

    invoke-direct {v6, p0, p2}, Lorg/telegram/ui/Components/ThemeEditorView$2;-><init>(Lorg/telegram/ui/Components/ThemeEditorView;Ljava/lang/String;)V

    invoke-direct {v5, p1, v6}, Lorg/telegram/ui/Components/WallpaperUpdater;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;)V

    iput-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->wallpaperUpdater:Lorg/telegram/ui/Components/WallpaperUpdater;

    .line 1032
    sput-object p0, Lorg/telegram/ui/Components/ThemeEditorView;->Instance:Lorg/telegram/ui/Components/ThemeEditorView;

    .line 1033
    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->parentActivity:Landroid/app/Activity;

    .line 1034
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThemeEditorView;->showWithAnimation()V

    .line 1035
    :goto_b0
    return-void

    .line 1010
    :catch_b1
    move-exception v0

    .line 1011
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_b0
.end method
