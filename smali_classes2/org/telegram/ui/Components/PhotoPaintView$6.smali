.class Lorg/telegram/ui/Components/PhotoPaintView$6;
.super Ljava/lang/Object;
.source "PhotoPaintView.java"

# interfaces
.implements Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoPaintView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoPaintView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 225
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeganColorPicking()V
    .registers 3

    .prologue
    .line 228
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # getter for: Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$300(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-nez v0, :cond_10

    .line 229
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    const/4 v1, 0x1

    # invokes: Lorg/telegram/ui/Components/PhotoPaintView;->setDimVisibility(Z)V
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->access$600(Lorg/telegram/ui/Components/PhotoPaintView;Z)V

    .line 231
    :cond_10
    return-void
.end method

.method public onColorValueChanged()V
    .registers 4

    .prologue
    .line 235
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # getter for: Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoPaintView;->access$700(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Lorg/telegram/ui/Components/PhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/PhotoPaintView;->access$800(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    .line 236
    return-void
.end method

.method public onFinishedColorPicking()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 240
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # getter for: Lorg/telegram/ui/Components/PhotoPaintView;->colorPicker:Lorg/telegram/ui/Components/Paint/Views/ColorPicker;
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoPaintView;->access$700(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v1

    # invokes: Lorg/telegram/ui/Components/PhotoPaintView;->setCurrentSwatch(Lorg/telegram/ui/Components/Paint/Swatch;Z)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/PhotoPaintView;->access$800(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/ui/Components/Paint/Swatch;Z)V

    .line 242
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # getter for: Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$300(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-nez v0, :cond_1f

    .line 243
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # invokes: Lorg/telegram/ui/Components/PhotoPaintView;->setDimVisibility(Z)V
    invoke-static {v0, v2}, Lorg/telegram/ui/Components/PhotoPaintView;->access$600(Lorg/telegram/ui/Components/PhotoPaintView;Z)V

    .line 245
    :cond_1f
    return-void
.end method

.method public onSettingsPressed()V
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # getter for: Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$300(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 250
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # getter for: Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$300(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Views/StickerView;

    if-eqz v0, :cond_18

    .line 251
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # invokes: Lorg/telegram/ui/Components/PhotoPaintView;->mirrorSticker()V
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$900(Lorg/telegram/ui/Components/PhotoPaintView;)V

    .line 258
    :cond_17
    :goto_17
    return-void

    .line 252
    :cond_18
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # getter for: Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$300(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v0, :cond_17

    .line 253
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # invokes: Lorg/telegram/ui/Components/PhotoPaintView;->showTextSettings()V
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$1000(Lorg/telegram/ui/Components/PhotoPaintView;)V

    goto :goto_17

    .line 256
    :cond_28
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # invokes: Lorg/telegram/ui/Components/PhotoPaintView;->showBrushSettings()V
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$1100(Lorg/telegram/ui/Components/PhotoPaintView;)V

    goto :goto_17
.end method
