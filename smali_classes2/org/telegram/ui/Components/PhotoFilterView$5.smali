.class Lorg/telegram/ui/Components/PhotoFilterView$5;
.super Ljava/lang/Object;
.source "PhotoFilterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoFilterView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoFilterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoFilterView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 1862
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1865
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->enhanceTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5300(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    if-ne v0, v1, :cond_3f

    .line 1866
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->previousValue:F
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5400(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v1

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5502(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    .line 1898
    :cond_19
    :goto_19
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 1899
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->blurTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7800(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-eq v0, v2, :cond_1c7

    const/4 v0, 0x1

    :goto_36
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->requestRender(Z)V

    .line 1901
    :cond_39
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->switchToOrFromEditMode()V

    .line 1902
    return-void

    .line 1867
    :cond_3f
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->highlightsTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5800(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    if-ne v0, v1, :cond_59

    .line 1868
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->previousValue:F
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5400(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v1

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5902(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_19

    .line 1869
    :cond_59
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->contrastTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6000(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    if-ne v0, v1, :cond_73

    .line 1870
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->previousValue:F
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5400(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v1

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6102(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_19

    .line 1871
    :cond_73
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->exposureTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    if-ne v0, v1, :cond_8d

    .line 1872
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->previousValue:F
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5400(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v1

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6302(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_19

    .line 1873
    :cond_8d
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->warmthTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6400(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    if-ne v0, v1, :cond_a8

    .line 1874
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->previousValue:F
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5400(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v1

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6502(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_19

    .line 1875
    :cond_a8
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->saturationTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6600(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    if-ne v0, v1, :cond_c3

    .line 1876
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->previousValue:F
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5400(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v1

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6702(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_19

    .line 1877
    :cond_c3
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->vignetteTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6800(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    if-ne v0, v1, :cond_de

    .line 1878
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->previousValue:F
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5400(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v1

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6902(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_19

    .line 1879
    :cond_de
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->shadowsTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7000(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    if-ne v0, v1, :cond_f9

    .line 1880
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->previousValue:F
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5400(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v1

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7102(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_19

    .line 1881
    :cond_f9
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->grainTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    if-ne v0, v1, :cond_114

    .line 1882
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->previousValue:F
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5400(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v1

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7302(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_19

    .line 1883
    :cond_114
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->sharpenTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7600(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    if-ne v0, v1, :cond_12f

    .line 1884
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->previousValue:F
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5400(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v1

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7702(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_19

    .line 1885
    :cond_12f
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->fadeTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7400(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    if-ne v0, v1, :cond_14a

    .line 1886
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->previousValue:F
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5400(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v1

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7502(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_19

    .line 1887
    :cond_14a
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->blurTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7800(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    if-ne v0, v1, :cond_165

    .line 1888
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->previousValueInt:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7900(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1702(Lorg/telegram/ui/Components/PhotoFilterView;I)I

    goto/16 :goto_19

    .line 1889
    :cond_165
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->tintTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$8000(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    if-ne v0, v1, :cond_18b

    .line 1890
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->previousValueInt:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7900(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1402(Lorg/telegram/ui/Components/PhotoFilterView;I)I

    .line 1891
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->previousValueInt2:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$8100(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1202(Lorg/telegram/ui/Components/PhotoFilterView;I)I

    goto/16 :goto_19

    .line 1892
    :cond_18b
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->curvesTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$8200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    if-ne v0, v1, :cond_19

    .line 1893
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->luminanceCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->restoreValues()V

    .line 1894
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->redCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->restoreValues()V

    .line 1895
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->greenCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->restoreValues()V

    .line 1896
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$5;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->blueCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->restoreValues()V

    goto/16 :goto_19

    .line 1899
    :cond_1c7
    const/4 v0, 0x0

    goto/16 :goto_36
.end method
