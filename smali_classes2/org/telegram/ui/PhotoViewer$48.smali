.class Lorg/telegram/ui/PhotoViewer$48;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->switchToEditMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;I)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 3050
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$48;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput p2, p0, Lorg/telegram/ui/PhotoViewer$48;->val$mode:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 23
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3053
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$48;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v12, 0x0

    # setter for: Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v11, v12}, Lorg/telegram/ui/PhotoViewer;->access$11702(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 3054
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$48;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;
    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$2200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    .line 3055
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$48;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z
    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$4400(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v11

    if-eqz v11, :cond_2b

    .line 3056
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$48;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;
    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$11400(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;

    move-result-object v11

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3058
    :cond_2b
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$48;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I
    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$9400(Lorg/telegram/ui/PhotoViewer;)I

    move-result v11

    if-nez v11, :cond_42

    .line 3059
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$48;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;
    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$2500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 3062
    :cond_42
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$48;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;
    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$9300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3063
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_e7

    .line 3064
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$48;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;
    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$9300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v4

    .line 3065
    .local v4, "bitmapWidth":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$48;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;
    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$9300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v3

    .line 3067
    .local v3, "bitmapHeight":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$48;->this$0:Lorg/telegram/ui/PhotoViewer;

    # invokes: Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I
    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v11

    int-to-float v11, v11

    int-to-float v12, v4

    div-float v9, v11, v12

    .line 3068
    .local v9, "scaleX":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$48;->this$0:Lorg/telegram/ui/PhotoViewer;

    # invokes: Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I
    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)I

    move-result v11

    int-to-float v11, v11

    int-to-float v12, v3

    div-float v10, v11, v12

    .line 3069
    .local v10, "scaleY":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$48;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v12, 0x3

    # invokes: Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth(I)I
    invoke-static {v11, v12}, Lorg/telegram/ui/PhotoViewer;->access$11800(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v11

    int-to-float v11, v11

    int-to-float v12, v4

    div-float v6, v11, v12

    .line 3070
    .local v6, "newScaleX":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$48;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v12, 0x3

    # invokes: Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight(I)I
    invoke-static {v11, v12}, Lorg/telegram/ui/PhotoViewer;->access$11900(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v11

    int-to-float v11, v11

    int-to-float v12, v3

    div-float v7, v11, v12

    .line 3071
    .local v7, "newScaleY":F
    cmpl-float v11, v9, v10

    if-lez v11, :cond_1df

    move v8, v10

    .line 3072
    .local v8, "scale":F
    :goto_9f
    cmpl-float v11, v6, v7

    if-lez v11, :cond_1e2

    move v5, v7

    .line 3074
    .local v5, "newScale":F
    :goto_a4
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$48;->this$0:Lorg/telegram/ui/PhotoViewer;

    div-float v12, v5, v8

    # setter for: Lorg/telegram/ui/PhotoViewer;->animateToScale:F
    invoke-static {v11, v12}, Lorg/telegram/ui/PhotoViewer;->access$11002(Lorg/telegram/ui/PhotoViewer;F)F

    .line 3075
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$48;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v12, 0x0

    # setter for: Lorg/telegram/ui/PhotoViewer;->animateToX:F
    invoke-static {v11, v12}, Lorg/telegram/ui/PhotoViewer;->access$11102(Lorg/telegram/ui/PhotoViewer;F)F

    .line 3076
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PhotoViewer$48;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v11

    const/high16 v13, 0x42400000    # 48.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    sub-int v13, v11, v13

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x15

    if-lt v11, v14, :cond_1e5

    sget v11, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_cd
    add-int/2addr v11, v13

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    # setter for: Lorg/telegram/ui/PhotoViewer;->animateToY:F
    invoke-static {v12, v11}, Lorg/telegram/ui/PhotoViewer;->access$11202(Lorg/telegram/ui/PhotoViewer;F)F

    .line 3077
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$48;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    # setter for: Lorg/telegram/ui/PhotoViewer;->animationStartTime:J
    invoke-static {v11, v12, v13}, Lorg/telegram/ui/PhotoViewer;->access$12002(Lorg/telegram/ui/PhotoViewer;J)J

    .line 3078
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$48;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v12, 0x1

    # setter for: Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z
    invoke-static {v11, v12}, Lorg/telegram/ui/PhotoViewer;->access$12102(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 3081
    .end local v3    # "bitmapHeight":I
    .end local v4    # "bitmapWidth":I
    .end local v5    # "newScale":F
    .end local v6    # "newScaleX":F
    .end local v7    # "newScaleY":F
    .end local v8    # "scale":F
    .end local v9    # "scaleX":F
    .end local v10    # "scaleY":F
    :cond_e7
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$48;->this$0:Lorg/telegram/ui/PhotoViewer;

    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    # setter for: Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v11, v12}, Lorg/telegram/ui/PhotoViewer;->access$10802(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 3082
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$48;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$10800(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v12

    const/4 v11, 0x4

    new-array v13, v11, [Landroid/animation/Animator;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/PhotoViewer$48;->this$0:Lorg/telegram/ui/PhotoViewer;

    const-string v15, "animationValue"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_1ea

    .line 3083
    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v13, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/PhotoViewer$48;->this$0:Lorg/telegram/ui/PhotoViewer;

    .line 3084
    # getter for: Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;
    invoke-static {v14}, Lorg/telegram/ui/PhotoViewer;->access$10700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoPaintView;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/ui/Components/PhotoPaintView;->getColorPicker()Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    move-result-object v14

    const-string v15, "translationX"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/high16 v18, 0x42700000    # 60.0f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    const/16 v18, 0x0

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v13, v11

    const/4 v11, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/PhotoViewer$48;->this$0:Lorg/telegram/ui/PhotoViewer;

    .line 3085
    # getter for: Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;
    invoke-static {v14}, Lorg/telegram/ui/PhotoViewer;->access$10700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoPaintView;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/ui/Components/PhotoPaintView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v14

    const-string v15, "translationY"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/high16 v18, 0x42fc0000    # 126.0f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    const/16 v18, 0x0

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v13, v11

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$48;->this$0:Lorg/telegram/ui/PhotoViewer;

    .line 3086
    # getter for: Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;
    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$10700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoPaintView;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/ui/Components/PhotoPaintView;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v15

    const-string v16, "translationY"

    const/4 v11, 0x2

    new-array v0, v11, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v11

    neg-int v0, v11

    move/from16 v19, v0

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0x15

    move/from16 v0, v20

    if-lt v11, v0, :cond_1e8

    sget v11, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_1a1
    sub-int v11, v19, v11

    int-to-float v11, v11

    aput v11, v17, v18

    const/4 v11, 0x1

    const/16 v18, 0x0

    aput v18, v17, v11

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v13, v14

    .line 3082
    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3088
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$48;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$10800(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v11

    const-wide/16 v12, 0xc8

    invoke-virtual {v11, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3089
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$48;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$10800(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v11

    new-instance v12, Lorg/telegram/ui/PhotoViewer$48$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lorg/telegram/ui/PhotoViewer$48$1;-><init>(Lorg/telegram/ui/PhotoViewer$48;)V

    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3108
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PhotoViewer$48;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v11}, Lorg/telegram/ui/PhotoViewer;->access$10800(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v11

    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    .line 3109
    return-void

    .restart local v3    # "bitmapHeight":I
    .restart local v4    # "bitmapWidth":I
    .restart local v6    # "newScaleX":F
    .restart local v7    # "newScaleY":F
    .restart local v9    # "scaleX":F
    .restart local v10    # "scaleY":F
    :cond_1df
    move v8, v9

    .line 3071
    goto/16 :goto_9f

    .restart local v8    # "scale":F
    :cond_1e2
    move v5, v6

    .line 3072
    goto/16 :goto_a4

    .line 3076
    .restart local v5    # "newScale":F
    :cond_1e5
    const/4 v11, 0x0

    goto/16 :goto_cd

    .line 3086
    .end local v3    # "bitmapHeight":I
    .end local v4    # "bitmapWidth":I
    .end local v5    # "newScale":F
    .end local v6    # "newScaleX":F
    .end local v7    # "newScaleY":F
    .end local v8    # "scale":F
    .end local v9    # "scaleX":F
    .end local v10    # "scaleY":F
    :cond_1e8
    const/4 v11, 0x0

    goto :goto_1a1

    .line 3082
    :array_1ea
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
