.class Lorg/telegram/ui/Components/PhotoPaintView$3;
.super Ljava/lang/Object;
.source "PhotoPaintView.java"

# interfaces
.implements Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;


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
    .line 178
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoPaintView$3;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEntityDeselect()V
    .registers 3

    .prologue
    .line 191
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$3;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    const/4 v1, 0x0

    # invokes: Lorg/telegram/ui/Components/PhotoPaintView;->selectEntity(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->access$400(Lorg/telegram/ui/Components/PhotoPaintView;Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    .line 192
    return-void
.end method

.method public onSelectedEntityRequest()Lorg/telegram/ui/Components/Paint/Views/EntityView;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$3;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # getter for: Lorg/telegram/ui/Components/PhotoPaintView;->currentEntityView:Lorg/telegram/ui/Components/Paint/Views/EntityView;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$300(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v0

    return-object v0
.end method

.method public shouldReceiveTouches()Z
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$3;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # getter for: Lorg/telegram/ui/Components/PhotoPaintView;->textDimView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$500(Lorg/telegram/ui/Components/PhotoPaintView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
