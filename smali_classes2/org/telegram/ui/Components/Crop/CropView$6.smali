.class Lorg/telegram/ui/Components/Crop/CropView$6;
.super Ljava/lang/Object;
.source "CropView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Crop/CropView;->showAspectRatioDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Crop/CropView;

.field final synthetic val$ratios:[[Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Crop/CropView;[[Ljava/lang/Integer;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Components/Crop/CropView;

    .prologue
    .line 773
    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView$6;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    iput-object p2, p0, Lorg/telegram/ui/Components/Crop/CropView$6;->val$ratios:[[Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 12
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x43340000    # 180.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 776
    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView$6;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    # setter for: Lorg/telegram/ui/Components/Crop/CropView;->hasAspectRatioDialog:Z
    invoke-static {v3, v5}, Lorg/telegram/ui/Components/Crop/CropView;->access$2302(Lorg/telegram/ui/Components/Crop/CropView;Z)Z

    .line 777
    packed-switch p2, :pswitch_data_a4

    .line 791
    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView$6;->val$ratios:[[Ljava/lang/Integer;

    add-int/lit8 v4, p2, -0x2

    aget-object v1, v3, v4

    .line 793
    .local v1, "ratioPair":[Ljava/lang/Integer;
    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView$6;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    # getter for: Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;
    invoke-static {v3}, Lorg/telegram/ui/Components/Crop/CropView;->access$2500(Lorg/telegram/ui/Components/Crop/CropView;)Lorg/telegram/ui/Components/Crop/CropAreaView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getAspectRatio()F

    move-result v3

    cmpl-float v3, v3, v6

    if-lez v3, :cond_8e

    .line 794
    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView$6;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    aget-object v4, v1, v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    aget-object v5, v1, v8

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    # invokes: Lorg/telegram/ui/Components/Crop/CropView;->setLockedAspectRatio(F)V
    invoke-static {v3, v4}, Lorg/telegram/ui/Components/Crop/CropView;->access$2400(Lorg/telegram/ui/Components/Crop/CropView;F)V

    .line 801
    .end local v1    # "ratioPair":[Ljava/lang/Integer;
    :goto_37
    return-void

    .line 779
    :pswitch_38
    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView$6;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    # getter for: Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;
    invoke-static {v3}, Lorg/telegram/ui/Components/Crop/CropView;->access$1100(Lorg/telegram/ui/Components/Crop/CropView;)Lorg/telegram/ui/Components/Crop/CropView$CropState;

    move-result-object v3

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getBaseRotation()F
    invoke-static {v3}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$200(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v3

    rem-float/2addr v3, v7

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_72

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView$6;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    # getter for: Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;
    invoke-static {v3}, Lorg/telegram/ui/Components/Crop/CropView;->access$1100(Lorg/telegram/ui/Components/Crop/CropView;)Lorg/telegram/ui/Components/Crop/CropView$CropState;

    move-result-object v3

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getHeight()F
    invoke-static {v3}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$500(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v2

    .line 780
    .local v2, "w":F
    :goto_51
    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView$6;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    # getter for: Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;
    invoke-static {v3}, Lorg/telegram/ui/Components/Crop/CropView;->access$1100(Lorg/telegram/ui/Components/Crop/CropView;)Lorg/telegram/ui/Components/Crop/CropView$CropState;

    move-result-object v3

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getBaseRotation()F
    invoke-static {v3}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$200(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v3

    rem-float/2addr v3, v7

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_7d

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView$6;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    # getter for: Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;
    invoke-static {v3}, Lorg/telegram/ui/Components/Crop/CropView;->access$1100(Lorg/telegram/ui/Components/Crop/CropView;)Lorg/telegram/ui/Components/Crop/CropView$CropState;

    move-result-object v3

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getWidth()F
    invoke-static {v3}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$400(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v0

    .line 781
    .local v0, "h":F
    :goto_6a
    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView$6;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    div-float v4, v2, v0

    # invokes: Lorg/telegram/ui/Components/Crop/CropView;->setLockedAspectRatio(F)V
    invoke-static {v3, v4}, Lorg/telegram/ui/Components/Crop/CropView;->access$2400(Lorg/telegram/ui/Components/Crop/CropView;F)V

    goto :goto_37

    .line 779
    .end local v0    # "h":F
    .end local v2    # "w":F
    :cond_72
    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView$6;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    # getter for: Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;
    invoke-static {v3}, Lorg/telegram/ui/Components/Crop/CropView;->access$1100(Lorg/telegram/ui/Components/Crop/CropView;)Lorg/telegram/ui/Components/Crop/CropView$CropState;

    move-result-object v3

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getWidth()F
    invoke-static {v3}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$400(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v2

    goto :goto_51

    .line 780
    .restart local v2    # "w":F
    :cond_7d
    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView$6;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    # getter for: Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;
    invoke-static {v3}, Lorg/telegram/ui/Components/Crop/CropView;->access$1100(Lorg/telegram/ui/Components/Crop/CropView;)Lorg/telegram/ui/Components/Crop/CropView$CropState;

    move-result-object v3

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getHeight()F
    invoke-static {v3}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$500(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v0

    goto :goto_6a

    .line 786
    .end local v2    # "w":F
    :pswitch_88
    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView$6;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView;->setLockedAspectRatio(F)V
    invoke-static {v3, v6}, Lorg/telegram/ui/Components/Crop/CropView;->access$2400(Lorg/telegram/ui/Components/Crop/CropView;F)V

    goto :goto_37

    .line 796
    .restart local v1    # "ratioPair":[Ljava/lang/Integer;
    :cond_8e
    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView$6;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    aget-object v4, v1, v8

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    aget-object v5, v1, v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    # invokes: Lorg/telegram/ui/Components/Crop/CropView;->setLockedAspectRatio(F)V
    invoke-static {v3, v4}, Lorg/telegram/ui/Components/Crop/CropView;->access$2400(Lorg/telegram/ui/Components/Crop/CropView;F)V

    goto :goto_37

    .line 777
    nop

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_38
        :pswitch_88
    .end packed-switch
.end method
