.class Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$1;
.super Ljava/lang/Object;
.source "PhotoViewerCaptionEnterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    .prologue
    .line 106
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$1;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$1;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_f

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$1;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    const/4 v1, 0x1

    # invokes: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->showPopup(I)V
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$000(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;I)V

    .line 114
    :goto_e
    return-void

    .line 112
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$1;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    # invokes: Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->openKeyboardInternal()V
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$100(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    goto :goto_e
.end method
