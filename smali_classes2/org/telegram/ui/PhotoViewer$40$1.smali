.class Lorg/telegram/ui/PhotoViewer$40$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$40;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$40;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$40;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/PhotoViewer$40;

    .prologue
    .line 2767
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$40$1;->this$1:Lorg/telegram/ui/PhotoViewer$40;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 2770
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$40$1;->this$1:Lorg/telegram/ui/PhotoViewer$40;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    .line 2771
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$40$1;->this$1:Lorg/telegram/ui/PhotoViewer$40;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$11300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setVisibility(I)V

    .line 2772
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$40$1;->this$1:Lorg/telegram/ui/PhotoViewer$40;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4400(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2773
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$40$1;->this$1:Lorg/telegram/ui/PhotoViewer$40;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$11400(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$40$1;->this$1:Lorg/telegram/ui/PhotoViewer$40;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$11400(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_51

    move v0, v1

    :goto_38
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2775
    :cond_3b
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$40$1;->this$1:Lorg/telegram/ui/PhotoViewer$40;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$9400(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    if-nez v0, :cond_50

    .line 2776
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$40$1;->this$1:Lorg/telegram/ui/PhotoViewer$40;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 2778
    :cond_50
    return-void

    .line 2773
    :cond_51
    const/4 v0, 0x4

    goto :goto_38
.end method
