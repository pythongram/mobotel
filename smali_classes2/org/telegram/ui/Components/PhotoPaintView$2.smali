.class Lorg/telegram/ui/Components/PhotoPaintView$2;
.super Ljava/lang/Object;
.source "PhotoPaintView.java"

# interfaces
.implements Lorg/telegram/ui/Components/Paint/RenderView$RenderViewDelegate;


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
    .line 145
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoPaintView$2;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeganDrawing()V
    .registers 3

    .prologue
    .line 149
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$2;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    const/4 v1, 0x0

    # invokes: Lorg/telegram/ui/Components/PhotoPaintView;->setColorPickerVisibilityFade(Z)V
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->access$200(Lorg/telegram/ui/Components/PhotoPaintView;Z)V

    .line 150
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$2;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # getter for: Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$300(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 151
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$2;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    const/4 v1, 0x0

    # invokes: Lorg/telegram/ui/Components/PhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->access$400(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    .line 153
    :cond_14
    return-void
.end method

.method public onFinishedDrawing(Z)V
    .registers 4
    .param p1, "moved"    # Z

    .prologue
    .line 157
    if-eqz p1, :cond_8

    .line 158
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$2;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    const/4 v1, 0x1

    # invokes: Lorg/telegram/ui/Components/PhotoPaintView;->setColorPickerVisibilityFade(Z)V
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->access$200(Lorg/telegram/ui/Components/PhotoPaintView;Z)V

    .line 160
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$2;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView$2;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # getter for: Lorg/telegram/ui/Components/PhotoPaintView;->undoStore:Lorg/telegram/ui/Components/Paint/UndoStore;
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoPaintView;->access$000(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/Paint/UndoStore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/UndoStore;->canUndo()Z

    move-result v1

    # invokes: Lorg/telegram/ui/Components/PhotoPaintView;->setMenuItemEnabled(Z)V
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->access$100(Lorg/telegram/ui/Components/PhotoPaintView;Z)V

    .line 161
    return-void
.end method

.method public shouldDraw()Z
    .registers 4

    .prologue
    .line 165
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView$2;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # getter for: Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;
    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoPaintView;->access$300(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v1

    if-nez v1, :cond_12

    const/4 v0, 0x1

    .line 166
    .local v0, "draw":Z
    :goto_9
    if-nez v0, :cond_11

    .line 167
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoPaintView$2;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    const/4 v2, 0x0

    # invokes: Lorg/telegram/ui/Components/PhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/PhotoPaintView;->access$400(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    .line 169
    :cond_11
    return v0

    .line 165
    .end local v0    # "draw":Z
    :cond_12
    const/4 v0, 0x0

    goto :goto_9
.end method
