.class Lorg/telegram/ui/PhotoViewer$40;
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
    .line 2732
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput p2, p0, Lorg/telegram/ui/PhotoViewer$40;->val$mode:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 11
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v4, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2735
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentEditMode:I
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$9000(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    if-ne v2, v7, :cond_d7

    .line 2736
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$10500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    .line 2737
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$9100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoCropView;->setVisibility(I)V

    .line 2745
    :cond_24
    :goto_24
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    # setter for: Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v2, v4}, Lorg/telegram/ui/PhotoViewer;->access$10802(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2746
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget v3, p0, Lorg/telegram/ui/PhotoViewer$40;->val$mode:I

    # setter for: Lorg/telegram/ui/PhotoViewer;->currentEditMode:I
    invoke-static {v2, v3}, Lorg/telegram/ui/PhotoViewer;->access$9002(Lorg/telegram/ui/PhotoViewer;I)I

    .line 2747
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    # setter for: Lorg/telegram/ui/PhotoViewer;->applying:Z
    invoke-static {v2, v6}, Lorg/telegram/ui/PhotoViewer;->access$10902(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 2748
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    # setter for: Lorg/telegram/ui/PhotoViewer;->animateToScale:F
    invoke-static {v2, v8}, Lorg/telegram/ui/PhotoViewer;->access$11002(Lorg/telegram/ui/PhotoViewer;F)F

    .line 2749
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    # setter for: Lorg/telegram/ui/PhotoViewer;->animateToX:F
    invoke-static {v2, v5}, Lorg/telegram/ui/PhotoViewer;->access$11102(Lorg/telegram/ui/PhotoViewer;F)F

    .line 2750
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    # setter for: Lorg/telegram/ui/PhotoViewer;->animateToY:F
    invoke-static {v2, v5}, Lorg/telegram/ui/PhotoViewer;->access$11202(Lorg/telegram/ui/PhotoViewer;F)F

    .line 2751
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    # setter for: Lorg/telegram/ui/PhotoViewer;->scale:F
    invoke-static {v2, v8}, Lorg/telegram/ui/PhotoViewer;->access$3602(Lorg/telegram/ui/PhotoViewer;F)F

    .line 2752
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->scale:F
    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$3600(Lorg/telegram/ui/PhotoViewer;)F

    move-result v3

    # invokes: Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V
    invoke-static {v2, v3}, Lorg/telegram/ui/PhotoViewer;->access$3900(Lorg/telegram/ui/PhotoViewer;F)V

    .line 2753
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$3300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    .line 2755
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2756
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2757
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$2200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object v2

    const-string v3, "translationY"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2758
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$11300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    const-string v3, "translationY"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2759
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$4400(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 2760
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$11400(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "translationY"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2762
    :cond_a8
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$9400(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    if-nez v2, :cond_c3

    .line 2763
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$2500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object v2

    const-string v3, "alpha"

    new-array v4, v7, [F

    aput v8, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2765
    :cond_c3
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2766
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2767
    new-instance v2, Lorg/telegram/ui/PhotoViewer$40$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoViewer$40$1;-><init>(Lorg/telegram/ui/PhotoViewer$40;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2780
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2781
    return-void

    .line 2738
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_d7
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentEditMode:I
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$9000(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_f6

    .line 2739
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$3300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;
    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$10600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoFilterView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->removeView(Landroid/view/View;)V

    .line 2740
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    # setter for: Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;
    invoke-static {v2, v4}, Lorg/telegram/ui/PhotoViewer;->access$10602(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView;

    goto/16 :goto_24

    .line 2741
    :cond_f6
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentEditMode:I
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$9000(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_24

    .line 2742
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$3300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;
    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$10700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoPaintView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->removeView(Landroid/view/View;)V

    .line 2743
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    # setter for: Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;
    invoke-static {v2, v4}, Lorg/telegram/ui/PhotoViewer;->access$10702(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/PhotoPaintView;

    goto/16 :goto_24
.end method
