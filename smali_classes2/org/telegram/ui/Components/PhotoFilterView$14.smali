.class Lorg/telegram/ui/Components/PhotoFilterView$14;
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
    .line 2119
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$14;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 2122
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$14;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    const/4 v1, 0x2

    # setter for: Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1702(Lorg/telegram/ui/Components/PhotoFilterView;I)I

    .line 2123
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$14;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # invokes: Lorg/telegram/ui/Components/PhotoFilterView;->updateSelectedBlurType()V
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$9100(Lorg/telegram/ui/Components/PhotoFilterView;)V

    .line 2124
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$14;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$9200(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setVisibility(I)V

    .line 2125
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$14;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$9200(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setType(I)V

    .line 2126
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$14;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 2127
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$14;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    # getter for: Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$5000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->requestRender(Z)V

    .line 2129
    :cond_2f
    return-void
.end method
