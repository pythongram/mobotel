.class Lorg/telegram/ui/GroupCreateActivity$SpansContainer;
.super Landroid/view/ViewGroup;
.source "GroupCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/GroupCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpansContainer"
.end annotation


# instance fields
.field private addingSpan:Landroid/view/View;

.field private animationStarted:Z

.field private animators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private currentAnimation:Landroid/animation/AnimatorSet;

.field private removingSpan:Landroid/view/View;

.field final synthetic this$0:Lorg/telegram/ui/GroupCreateActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/GroupCreateActivity;Landroid/content/Context;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    .line 120
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    .line 121
    return-void
.end method

.method static synthetic access$602(Lorg/telegram/ui/GroupCreateActivity$SpansContainer;Landroid/view/View;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity$SpansContainer;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 111
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->addingSpan:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$702(Lorg/telegram/ui/GroupCreateActivity$SpansContainer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity$SpansContainer;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 111
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$802(Lorg/telegram/ui/GroupCreateActivity$SpansContainer;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity$SpansContainer;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animationStarted:Z

    return p1
.end method

.method static synthetic access$902(Lorg/telegram/ui/GroupCreateActivity$SpansContainer;Landroid/view/View;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity$SpansContainer;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 111
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removingSpan:Landroid/view/View;

    return-object p1
.end method


# virtual methods
.method public addSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V
    .registers 7
    .param p1, "span"    # Lorg/telegram/ui/Components/GroupCreateSpan;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x2

    .line 225
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->allSpans:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$400(Lorg/telegram/ui/GroupCreateActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$500(Lorg/telegram/ui/GroupCreateActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;
    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintVisible(Z)V

    .line 229
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_33

    .line 230
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->setupEndValues()V

    .line 231
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 233
    :cond_33
    iput-boolean v2, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animationStarted:Z

    .line 234
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 235
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$1;-><init>(Lorg/telegram/ui/GroupCreateActivity$SpansContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 244
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 245
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->addingSpan:Landroid/view/View;

    .line 246
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 247
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->addingSpan:Landroid/view/View;

    const-string v2, "scaleX"

    new-array v3, v4, [F

    fill-array-data v3, :array_8e

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->addingSpan:Landroid/view/View;

    const-string v2, "scaleY"

    new-array v3, v4, [F

    fill-array-data v3, :array_96

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->addingSpan:Landroid/view/View;

    const-string v2, "alpha"

    new-array v3, v4, [F

    fill-array-data v3, :array_9e

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-virtual {p0, p1}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->addView(Landroid/view/View;)V

    .line 251
    return-void

    .line 247
    :array_8e
    .array-data 4
        0x3c23d70a
        0x3f800000    # 1.0f
    .end array-data

    .line 248
    :array_96
    .array-data 4
        0x3c23d70a
        0x3f800000    # 1.0f
    .end array-data

    .line 249
    :array_9e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
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

    .line 217
    invoke-virtual {p0}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->getChildCount()I

    move-result v2

    .line 218
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_6
    if-ge v0, v2, :cond_1a

    .line 219
    invoke-virtual {p0, v0}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 220
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 222
    .end local v1    # "child":Landroid/view/View;
    :cond_1a
    return-void
.end method

.method protected onMeasure(II)V
    .registers 25
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 125
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->getChildCount()I

    move-result v6

    .line 126
    .local v6, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 127
    .local v13, "width":I
    const/high16 v16, 0x42000000    # 32.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    sub-int v10, v13, v16

    .line 128
    .local v10, "maxWidth":I
    const/4 v8, 0x0

    .line 129
    .local v8, "currentLineWidth":I
    const/high16 v16, 0x41400000    # 12.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    .line 130
    .local v15, "y":I
    const/4 v3, 0x0

    .line 131
    .local v3, "allCurrentLineWidth":I
    const/high16 v16, 0x41400000    # 12.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    .line 133
    .local v4, "allY":I
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_1f
    if-ge v2, v6, :cond_159

    .line 134
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 135
    .local v5, "child":Landroid/view/View;
    instance-of v0, v5, Lorg/telegram/ui/Components/GroupCreateSpan;

    move/from16 v16, v0

    if-nez v16, :cond_30

    .line 133
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 138
    :cond_30
    const/high16 v16, -0x80000000

    move/from16 v0, v16

    invoke-static {v13, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    const/high16 v17, 0x42000000    # 32.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    const/high16 v18, 0x40000000    # 2.0f

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/view/View;->measure(II)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removingSpan:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-eq v5, v0, :cond_6e

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v16, v16, v8

    move/from16 v0, v16

    if-le v0, v10, :cond_6e

    .line 140
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    const/high16 v17, 0x41400000    # 12.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    add-int v16, v16, v17

    add-int v15, v15, v16

    .line 141
    const/4 v8, 0x0

    .line 143
    :cond_6e
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v16, v16, v3

    move/from16 v0, v16

    if-le v0, v10, :cond_87

    .line 144
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    const/high16 v17, 0x41400000    # 12.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    add-int v16, v16, v17

    add-int v4, v4, v16

    .line 145
    const/4 v3, 0x0

    .line 147
    :cond_87
    const/high16 v16, 0x41800000    # 16.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    add-int v14, v16, v8

    .line 148
    .local v14, "x":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animationStarted:Z

    move/from16 v16, v0

    if-nez v16, :cond_bb

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removingSpan:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-ne v5, v0, :cond_e3

    .line 150
    const/high16 v16, 0x41800000    # 16.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    add-int v16, v16, v3

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 151
    int-to-float v0, v4

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 164
    :cond_bb
    :goto_bb
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removingSpan:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-eq v5, v0, :cond_d3

    .line 165
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    const/high16 v17, 0x41100000    # 9.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    add-int v16, v16, v17

    add-int v8, v8, v16

    .line 167
    :cond_d3
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    const/high16 v17, 0x41100000    # 9.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    add-int v16, v16, v17

    add-int v3, v3, v16

    goto/16 :goto_2d

    .line 152
    :cond_e3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removingSpan:Landroid/view/View;

    move-object/from16 v16, v0

    if-eqz v16, :cond_147

    .line 153
    invoke-virtual {v5}, Landroid/view/View;->getTranslationX()F

    move-result v16

    int-to-float v0, v14

    move/from16 v17, v0

    cmpl-float v16, v16, v17

    if-eqz v16, :cond_118

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const-string v17, "translationX"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    int-to-float v0, v14

    move/from16 v20, v0

    aput v20, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v5, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_118
    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    move-result v16

    int-to-float v0, v15

    move/from16 v17, v0

    cmpl-float v16, v16, v17

    if-eqz v16, :cond_bb

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const-string v17, "translationY"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    int-to-float v0, v15

    move/from16 v20, v0

    aput v20, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v5, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_bb

    .line 160
    :cond_147
    int-to-float v0, v14

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 161
    int-to-float v0, v15

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_bb

    .line 170
    .end local v5    # "child":Landroid/view/View;
    .end local v14    # "x":I
    :cond_159
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v16

    if-eqz v16, :cond_2da

    .line 171
    const/high16 v16, 0x43b70000    # 366.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    div-int/lit8 v11, v16, 0x3

    .line 175
    .local v11, "minWidth":I
    :goto_167
    sub-int v16, v10, v8

    move/from16 v0, v16

    if-ge v0, v11, :cond_176

    .line 176
    const/4 v8, 0x0

    .line 177
    const/high16 v16, 0x42300000    # 44.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    add-int v15, v15, v16

    .line 179
    :cond_176
    sub-int v16, v10, v3

    move/from16 v0, v16

    if-ge v0, v11, :cond_184

    .line 180
    const/high16 v16, 0x42300000    # 44.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    add-int v4, v4, v16

    .line 182
    :cond_184
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    move-object/from16 v16, v0

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;
    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v16

    sub-int v17, v10, v8

    const/high16 v18, 0x40000000    # 2.0f

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    const/high16 v18, 0x42000000    # 32.0f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    const/high16 v19, 0x40000000    # 2.0f

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    invoke-virtual/range {v16 .. v18}, Lorg/telegram/ui/Components/EditTextBoldCursor;->measure(II)V

    .line 183
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animationStarted:Z

    move/from16 v16, v0

    if-nez v16, :cond_332

    .line 184
    const/high16 v16, 0x42300000    # 44.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    add-int v7, v4, v16

    .line 185
    .local v7, "currentHeight":I
    const/high16 v16, 0x41800000    # 16.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    add-int v9, v8, v16

    .line 186
    .local v9, "fieldX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    # setter for: Lorg/telegram/ui/GroupCreateActivity;->fieldY:I
    invoke-static {v0, v15}, Lorg/telegram/ui/GroupCreateActivity;->access$102(Lorg/telegram/ui/GroupCreateActivity;I)I

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2fa

    .line 188
    const/high16 v16, 0x42300000    # 44.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    add-int v12, v15, v16

    .line 189
    .local v12, "resultHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    move-object/from16 v16, v0

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->containerHeight:I
    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/GroupCreateActivity;->access$200(Lorg/telegram/ui/GroupCreateActivity;)I

    move-result v16

    move/from16 v0, v16

    if-eq v0, v12, :cond_207

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    move-object/from16 v17, v0

    const-string v18, "containerHeight"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v12, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_207
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    move-object/from16 v16, v0

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;
    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getTranslationX()F

    move-result v16

    int-to-float v0, v9

    move/from16 v17, v0

    cmpl-float v16, v16, v17

    if-eqz v16, :cond_244

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v17

    const-string v18, "translationX"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    int-to-float v0, v9

    move/from16 v21, v0

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_244
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    move-object/from16 v16, v0

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;
    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getTranslationY()F

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->fieldY:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/GroupCreateActivity;->access$100(Lorg/telegram/ui/GroupCreateActivity;)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v16, v16, v17

    if-eqz v16, :cond_299

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v17

    const-string v18, "translationY"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    move-object/from16 v21, v0

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->fieldY:I
    invoke-static/range {v21 .. v21}, Lorg/telegram/ui/GroupCreateActivity;->access$100(Lorg/telegram/ui/GroupCreateActivity;)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_299
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    move-object/from16 v16, v0

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;
    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setAllowDrawCursor(Z)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/animation/AnimatorSet;->start()V

    .line 201
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animationStarted:Z

    .line 212
    .end local v7    # "currentHeight":I
    .end local v9    # "fieldX":I
    .end local v12    # "resultHeight":I
    :cond_2c8
    :goto_2c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    move-object/from16 v16, v0

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->containerHeight:I
    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/GroupCreateActivity;->access$200(Lorg/telegram/ui/GroupCreateActivity;)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->setMeasuredDimension(II)V

    .line 213
    return-void

    .line 173
    .end local v11    # "minWidth":I
    :cond_2da
    sget-object v16, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    sget-object v17, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v16

    const/high16 v17, 0x43240000    # 164.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    sub-int v16, v16, v17

    div-int/lit8 v11, v16, 0x3

    .restart local v11    # "minWidth":I
    goto/16 :goto_167

    .line 203
    .restart local v7    # "currentHeight":I
    .restart local v9    # "fieldX":I
    :cond_2fa
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    # setter for: Lorg/telegram/ui/GroupCreateActivity;->containerHeight:I
    invoke-static {v0, v7}, Lorg/telegram/ui/GroupCreateActivity;->access$202(Lorg/telegram/ui/GroupCreateActivity;I)I

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    move-object/from16 v16, v0

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;
    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v16

    int-to-float v0, v9

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTranslationX(F)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    move-object/from16 v16, v0

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;
    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->fieldY:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/GroupCreateActivity;->access$100(Lorg/telegram/ui/GroupCreateActivity;)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTranslationY(F)V

    goto :goto_2c8

    .line 207
    .end local v7    # "currentHeight":I
    .end local v9    # "fieldX":I
    :cond_332
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2c8

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    move-object/from16 v16, v0

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->ignoreScrollEvent:Z
    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/GroupCreateActivity;->access$300(Lorg/telegram/ui/GroupCreateActivity;)Z

    move-result v16

    if-nez v16, :cond_2c8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removingSpan:Landroid/view/View;

    move-object/from16 v16, v0

    if-nez v16, :cond_2c8

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    move-object/from16 v16, v0

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;
    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getSelectionStart()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lorg/telegram/ui/Components/EditTextBoldCursor;->bringPointIntoView(I)Z

    goto/16 :goto_2c8
.end method

.method public removeSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V
    .registers 7
    .param p1, "span"    # Lorg/telegram/ui/Components/GroupCreateSpan;

    .prologue
    const/4 v4, 0x2

    .line 254
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/ui/GroupCreateActivity;->ignoreScrollEvent:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/GroupCreateActivity;->access$302(Lorg/telegram/ui/GroupCreateActivity;Z)Z

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$500(Lorg/telegram/ui/GroupCreateActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->allSpans:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$400(Lorg/telegram/ui/GroupCreateActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 257
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/GroupCreateSpan;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_33

    .line 260
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->setupEndValues()V

    .line 261
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 263
    :cond_33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animationStarted:Z

    .line 264
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$2;-><init>(Lorg/telegram/ui/GroupCreateActivity$SpansContainer;Lorg/telegram/ui/Components/GroupCreateSpan;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 278
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 279
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removingSpan:Landroid/view/View;

    .line 280
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 281
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removingSpan:Landroid/view/View;

    const-string v2, "scaleX"

    new-array v3, v4, [F

    fill-array-data v3, :array_90

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removingSpan:Landroid/view/View;

    const-string v2, "scaleY"

    new-array v3, v4, [F

    fill-array-data v3, :array_98

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removingSpan:Landroid/view/View;

    const-string v2, "alpha"

    new-array v3, v4, [F

    fill-array-data v3, :array_a0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-virtual {p0}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->requestLayout()V

    .line 285
    return-void

    .line 281
    nop

    :array_90
    .array-data 4
        0x3f800000    # 1.0f
        0x3c23d70a
    .end array-data

    .line 282
    :array_98
    .array-data 4
        0x3f800000    # 1.0f
        0x3c23d70a
    .end array-data

    .line 283
    :array_a0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
