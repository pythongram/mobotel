.class Lorg/telegram/ui/ActionBar/BottomSheet$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/BottomSheet;->dismissWithButtonClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

.field final synthetic val$item:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/BottomSheet;I)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/ActionBar/BottomSheet;

    .prologue
    .line 833
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$8;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iput p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$8;->val$item:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 856
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$8;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$8;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 857
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$8;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    .line 859
    :cond_15
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 836
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$8;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$8;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 837
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$8;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    .line 838
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$8;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    # getter for: Lorg/telegram/ui/ActionBar/BottomSheet;->onClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1200(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 839
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$8;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    # getter for: Lorg/telegram/ui/ActionBar/BottomSheet;->onClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1200(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$8;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$8;->val$item:I

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 841
    :cond_2a
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$8$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$8$1;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet$8;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 852
    :cond_32
    return-void
.end method
