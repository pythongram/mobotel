.class Lorg/telegram/ui/ActionBar/BottomSheet$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/BottomSheet;->startOpenAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/BottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ActionBar/BottomSheet;

    .prologue
    .line 768
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$7;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 782
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$7;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$7;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 783
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$7;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    .line 785
    :cond_15
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 771
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$7;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$7;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 772
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$7;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    .line 773
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$7;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    # getter for: Lorg/telegram/ui/ActionBar/BottomSheet;->delegate:Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1000(Lorg/telegram/ui/ActionBar/BottomSheet;)Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 774
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$7;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    # getter for: Lorg/telegram/ui/ActionBar/BottomSheet;->delegate:Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1000(Lorg/telegram/ui/ActionBar/BottomSheet;)Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;->onOpenAnimationEnd()V

    .line 776
    :cond_26
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$7;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 778
    :cond_2e
    return-void
.end method
