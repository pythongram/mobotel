.class Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

.field final synthetic val$animatingView:Lorg/telegram/ui/Cells/ChatMessageCell;

.field final synthetic val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    .prologue
    .line 10620
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;->val$animatingView:Lorg/telegram/ui/Cells/ChatMessageCell;

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 16

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 10623
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;->val$animatingView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 10624
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;->val$animatingView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    .line 10625
    .local v2, "imageReceiver":Lorg/telegram/messenger/ImageReceiver;
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()I

    move-result v6

    .line 10626
    .local v6, "w":I
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v7, v7, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;
    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$13000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/InstantCameraView;->getCameraRect()Lorg/telegram/ui/Components/Rect;

    move-result-object v4

    .line 10627
    .local v4, "rect":Lorg/telegram/ui/Components/Rect;
    int-to-float v7, v6

    iget v8, v4, Lorg/telegram/ui/Components/Rect;->width:F

    div-float v5, v7, v8

    .line 10628
    .local v5, "scale":F
    new-array v3, v12, [I

    .line 10629
    .local v3, "position":[I
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v7, v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAlpha(F)V

    .line 10630
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;->val$messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v7, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getLocationOnScreen([I)V

    .line 10631
    aget v7, v3, v14

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageX()I

    move-result v8

    add-int/2addr v7, v8

    aput v7, v3, v14

    .line 10632
    aget v7, v3, v13

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageY()I

    move-result v8

    add-int/2addr v7, v8

    aput v7, v3, v13

    .line 10633
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v7, v7, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;
    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$13000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/InstantCameraView;->getCameraContainer()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 10634
    .local v1, "cameraContainer":Landroid/view/View;
    invoke-virtual {v1, v11}, Landroid/view/View;->setPivotX(F)V

    .line 10635
    invoke-virtual {v1, v11}, Landroid/view/View;->setPivotY(F)V

    .line 10636
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 10637
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v7, 0x6

    new-array v7, v7, [Landroid/animation/Animator;

    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 10638
    # getter for: Lorg/telegram/ui/ChatActivity;->actionBarOverlay:Landroid/view/View;
    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$19500(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v8

    const-string v9, "alpha"

    new-array v10, v13, [F

    aput v11, v10, v14

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v7, v14

    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 10639
    # getter for: Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;
    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$13000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v8

    const-string v9, "alpha"

    new-array v10, v13, [F

    aput v11, v10, v14

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v7, v13

    const-string v8, "scaleX"

    new-array v9, v13, [F

    aput v5, v9, v14

    .line 10640
    invoke-static {v1, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v7, v12

    const/4 v8, 0x3

    const-string v9, "scaleY"

    new-array v10, v13, [F

    aput v5, v10, v14

    .line 10641
    invoke-static {v1, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "translationX"

    new-array v10, v13, [F

    aget v11, v3, v14

    int-to-float v11, v11

    iget v12, v4, Lorg/telegram/ui/Components/Rect;->x:F

    sub-float/2addr v11, v12

    aput v11, v10, v14

    .line 10642
    invoke-static {v1, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-string v9, "translationY"

    new-array v10, v13, [F

    aget v11, v3, v13

    int-to-float v11, v11

    iget v12, v4, Lorg/telegram/ui/Components/Rect;->y:F

    sub-float/2addr v11, v12

    aput v11, v10, v14

    .line 10643
    invoke-static {v1, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v7, v8

    .line 10637
    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 10644
    const-wide/16 v8, 0xb4

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 10645
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10646
    new-instance v7, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4$1;

    invoke-direct {v7, p0, v1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4$1;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;Landroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 10667
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 10668
    return v13
.end method
