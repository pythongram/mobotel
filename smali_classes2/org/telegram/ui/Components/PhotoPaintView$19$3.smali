.class Lorg/telegram/ui/Components/PhotoPaintView$19$3;
.super Ljava/lang/Object;
.source "PhotoPaintView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoPaintView$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/PhotoPaintView$19;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoPaintView$19;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/Components/PhotoPaintView$19;

    .prologue
    .line 1134
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoPaintView$19$3;->this$1:Lorg/telegram/ui/Components/PhotoPaintView$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1137
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$19$3;->this$1:Lorg/telegram/ui/Components/PhotoPaintView$19;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView$19;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # invokes: Lorg/telegram/ui/Components/PhotoPaintView;->duplicateSelectedEntity()V
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$2700(Lorg/telegram/ui/Components/PhotoPaintView;)V

    .line 1139
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$19$3;->this$1:Lorg/telegram/ui/Components/PhotoPaintView$19;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView$19;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # getter for: Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$2500(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$19$3;->this$1:Lorg/telegram/ui/Components/PhotoPaintView$19;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView$19;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # getter for: Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$2500(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1140
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$19$3;->this$1:Lorg/telegram/ui/Components/PhotoPaintView$19;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoPaintView$19;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # getter for: Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$2500(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    .line 1142
    :cond_2b
    return-void
.end method
