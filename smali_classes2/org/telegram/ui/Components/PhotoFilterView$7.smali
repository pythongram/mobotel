.class Lorg/telegram/ui/Components/PhotoFilterView$7;
.super Ljava/lang/Object;
.source "PhotoFilterView.java"

# interfaces
.implements Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;


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
    .line 1935
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged()V
    .registers 4

    .prologue
    .line 1938
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->valueSeekBar:Lorg/telegram/ui/Components/PhotoEditorSeekBar;
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoEditorSeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoEditorSeekBar;->getProgress()I

    move-result v0

    .line 1939
    .local v0, "progress":I
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->enhanceTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5300(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_36

    .line 1940
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v2, v0

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5502(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    .line 1962
    :cond_1e
    :goto_1e
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # invokes: Lorg/telegram/ui/Components/PhotoFilterView;->updateValueTextView()V
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$8300(Lorg/telegram/ui/Components/PhotoFilterView;)V

    .line 1963
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 1964
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->requestRender(Z)V

    .line 1966
    :cond_35
    return-void

    .line 1941
    :cond_36
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->highlightsTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5800(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_4b

    .line 1942
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v2, v0

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5902(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_1e

    .line 1943
    :cond_4b
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->contrastTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6000(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_60

    .line 1944
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v2, v0

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6102(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_1e

    .line 1945
    :cond_60
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->exposureTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_75

    .line 1946
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v2, v0

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6302(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_1e

    .line 1947
    :cond_75
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->warmthTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6400(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_8a

    .line 1948
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v2, v0

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6502(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_1e

    .line 1949
    :cond_8a
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->saturationTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6600(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_9f

    .line 1950
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v2, v0

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6702(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto :goto_1e

    .line 1951
    :cond_9f
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->vignetteTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6800(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_b5

    .line 1952
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v2, v0

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$6902(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_1e

    .line 1953
    :cond_b5
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->shadowsTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7000(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_cb

    .line 1954
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v2, v0

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7102(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_1e

    .line 1955
    :cond_cb
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->grainTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_e1

    .line 1956
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v2, v0

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7302(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_1e

    .line 1957
    :cond_e1
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->sharpenTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7600(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_f7

    .line 1958
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v2, v0

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7702(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_1e

    .line 1959
    :cond_f7
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->fadeTool:I
    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7400(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v2

    if-ne v1, v2, :cond_1e

    .line 1960
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$7;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    int-to-float v2, v0

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$7502(Lorg/telegram/ui/Components/PhotoFilterView;F)F

    goto/16 :goto_1e
.end method
