.class Lorg/telegram/ui/Components/PhotoPaintView$23;
.super Ljava/lang/Object;
.source "PhotoPaintView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoPaintView;->buttonForText(ZLjava/lang/String;Z)Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoPaintView;

.field final synthetic val$stroke:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoPaintView;Z)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 1223
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoPaintView$23;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/PhotoPaintView$23;->val$stroke:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1226
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$23;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/PhotoPaintView$23;->val$stroke:Z

    # invokes: Lorg/telegram/ui/Components/PhotoPaintView;->setStroke(Z)V
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->access$3100(Lorg/telegram/ui/Components/PhotoPaintView;Z)V

    .line 1228
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$23;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # getter for: Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$2500(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$23;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # getter for: Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$2500(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1229
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$23;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # getter for: Lorg/telegram/ui/Components/PhotoPaintView;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$2500(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    .line 1231
    :cond_25
    return-void
.end method
