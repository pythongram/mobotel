.class Lorg/telegram/ui/VideoEditorActivity$22;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VideoEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VideoEditorActivity;->showQualityView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VideoEditorActivity;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/VideoEditorActivity;Z)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 1270
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity$22;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/VideoEditorActivity$22;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 11
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1273
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1274
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    iget-boolean v1, p0, Lorg/telegram/ui/VideoEditorActivity$22;->val$show:Z

    if-eqz v1, :cond_5a

    .line 1275
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$22;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->qualityChooseView:Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$5500(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->setVisibility(I)V

    .line 1276
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$22;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$5600(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    .line 1277
    new-array v1, v8, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$22;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    .line 1278
    # getter for: Lorg/telegram/ui/VideoEditorActivity;->qualityChooseView:Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$5500(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;

    move-result-object v2

    const-string v3, "translationY"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$22;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    .line 1279
    # getter for: Lorg/telegram/ui/VideoEditorActivity;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$5600(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object v2

    const-string v3, "translationY"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    .line 1277
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1288
    :goto_49
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1289
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1290
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1291
    return-void

    .line 1281
    :cond_5a
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$22;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->qualityChooseView:Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$5500(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->setVisibility(I)V

    .line 1282
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$22;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$5600(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    .line 1283
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$22;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    .line 1284
    # getter for: Lorg/telegram/ui/VideoEditorActivity;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$1600(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object v2

    const-string v3, "translationY"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$22;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    .line 1285
    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v2

    const-string v3, "translationY"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$22;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    .line 1286
    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$700(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoSeekBarView;

    move-result-object v2

    const-string v3, "translationY"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    .line 1283
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_49
.end method
