.class Lorg/telegram/ui/LocationActivity$13;
.super Lcom/google/android/gms/maps/MapView;
.source "LocationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LocationActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LocationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LocationActivity;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/LocationActivity;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 531
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-direct {p0, p2}, Lcom/google/android/gms/maps/MapView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const-wide/16 v12, 0xc8

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 534
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_fb

    .line 535
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$2200(Lorg/telegram/ui/LocationActivity;)Landroid/animation/AnimatorSet;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 536
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$2200(Lorg/telegram/ui/LocationActivity;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 538
    :cond_1e
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    # setter for: Lorg/telegram/ui/LocationActivity;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v1, v2}, Lorg/telegram/ui/LocationActivity;->access$2202(Lorg/telegram/ui/LocationActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 539
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$2200(Lorg/telegram/ui/LocationActivity;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 540
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$2200(Lorg/telegram/ui/LocationActivity;)Landroid/animation/AnimatorSet;

    move-result-object v1

    new-array v2, v10, [Landroid/animation/Animator;

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    .line 541
    # getter for: Lorg/telegram/ui/LocationActivity;->markerImageView:Landroid/widget/ImageView;
    invoke-static {v3}, Lorg/telegram/ui/LocationActivity;->access$2300(Lorg/telegram/ui/LocationActivity;)Landroid/widget/ImageView;

    move-result-object v3

    const-string v4, "translationY"

    new-array v5, v8, [F

    iget-object v6, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->markerTop:I
    invoke-static {v6}, Lorg/telegram/ui/LocationActivity;->access$2400(Lorg/telegram/ui/LocationActivity;)I

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    neg-int v7, v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    aput v6, v5, v9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v9

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    .line 542
    # getter for: Lorg/telegram/ui/LocationActivity;->markerXImageView:Landroid/widget/ImageView;
    invoke-static {v3}, Lorg/telegram/ui/LocationActivity;->access$2500(Lorg/telegram/ui/LocationActivity;)Landroid/widget/ImageView;

    move-result-object v3

    const-string v4, "alpha"

    new-array v5, v8, [F

    aput v11, v5, v9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    .line 540
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 543
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$2200(Lorg/telegram/ui/LocationActivity;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 555
    :cond_78
    :goto_78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v10, :cond_f6

    .line 556
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->userLocationMoved:Z
    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$2600(Lorg/telegram/ui/LocationActivity;)Z

    move-result v1

    if-nez v1, :cond_a9

    .line 557
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 558
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v0, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 559
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$2700(Lorg/telegram/ui/LocationActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const-string v2, "alpha"

    new-array v3, v8, [F

    aput v11, v3, v9

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 560
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 561
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    # setter for: Lorg/telegram/ui/LocationActivity;->userLocationMoved:Z
    invoke-static {v1, v8}, Lorg/telegram/ui/LocationActivity;->access$2602(Lorg/telegram/ui/LocationActivity;Z)Z

    .line 563
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_a9
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$000(Lorg/telegram/ui/LocationActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    if-eqz v1, :cond_e7

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;
    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$900(Lorg/telegram/ui/LocationActivity;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_e7

    .line 564
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;
    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$900(Lorg/telegram/ui/LocationActivity;)Landroid/location/Location;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v2}, Lorg/telegram/ui/LocationActivity;->access$000(Lorg/telegram/ui/LocationActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 565
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;
    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$900(Lorg/telegram/ui/LocationActivity;)Landroid/location/Location;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v2}, Lorg/telegram/ui/LocationActivity;->access$000(Lorg/telegram/ui/LocationActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 567
    :cond_e7
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;
    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$1700(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;
    invoke-static {v2}, Lorg/telegram/ui/LocationActivity;->access$900(Lorg/telegram/ui/LocationActivity;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setCustomLocation(Landroid/location/Location;)V

    .line 569
    :cond_f6
    invoke-super {p0, p1}, Lcom/google/android/gms/maps/MapView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 544
    :cond_fb
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v8, :cond_78

    .line 545
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$2200(Lorg/telegram/ui/LocationActivity;)Landroid/animation/AnimatorSet;

    move-result-object v1

    if-eqz v1, :cond_112

    .line 546
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$2200(Lorg/telegram/ui/LocationActivity;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 548
    :cond_112
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    # setter for: Lorg/telegram/ui/LocationActivity;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v1, v2}, Lorg/telegram/ui/LocationActivity;->access$2202(Lorg/telegram/ui/LocationActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 549
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$2200(Lorg/telegram/ui/LocationActivity;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 550
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$2200(Lorg/telegram/ui/LocationActivity;)Landroid/animation/AnimatorSet;

    move-result-object v1

    new-array v2, v10, [Landroid/animation/Animator;

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    .line 551
    # getter for: Lorg/telegram/ui/LocationActivity;->markerImageView:Landroid/widget/ImageView;
    invoke-static {v3}, Lorg/telegram/ui/LocationActivity;->access$2300(Lorg/telegram/ui/LocationActivity;)Landroid/widget/ImageView;

    move-result-object v3

    const-string v4, "translationY"

    new-array v5, v8, [F

    iget-object v6, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->markerTop:I
    invoke-static {v6}, Lorg/telegram/ui/LocationActivity;->access$2400(Lorg/telegram/ui/LocationActivity;)I

    move-result v6

    int-to-float v6, v6

    aput v6, v5, v9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v9

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    .line 552
    # getter for: Lorg/telegram/ui/LocationActivity;->markerXImageView:Landroid/widget/ImageView;
    invoke-static {v3}, Lorg/telegram/ui/LocationActivity;->access$2500(Lorg/telegram/ui/LocationActivity;)Landroid/widget/ImageView;

    move-result-object v3

    const-string v4, "alpha"

    new-array v5, v8, [F

    const/4 v6, 0x0

    aput v6, v5, v9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    .line 550
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 553
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$13;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$2200(Lorg/telegram/ui/LocationActivity;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_78
.end method
