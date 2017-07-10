.class Lorg/telegram/ui/PhotoViewer$2$1;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$2;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$2;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/PhotoViewer$2;

    .prologue
    .line 1212
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$2$1;->this$1:Lorg/telegram/ui/PhotoViewer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1215
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$2$1;->this$1:Lorg/telegram/ui/PhotoViewer$2;

    iget-object v3, v3, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;
    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$2500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1216
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1217
    .local v1, "manager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 1218
    .local v2, "rotation":I
    const/4 v3, 0x3

    if-eq v2, v3, :cond_26

    const/4 v3, 0x1

    if-ne v2, v3, :cond_43

    :cond_26
    const/high16 v3, 0x42680000    # 58.0f

    :goto_28
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v3, v5, :cond_46

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_34
    add-int/2addr v3, v4

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1219
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$2$1;->this$1:Lorg/telegram/ui/PhotoViewer$2;

    iget-object v3, v3, Lorg/telegram/ui/PhotoViewer$2;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;
    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$2500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1220
    return-void

    .line 1218
    :cond_43
    const/high16 v3, 0x42880000    # 68.0f

    goto :goto_28

    :cond_46
    const/4 v3, 0x0

    goto :goto_34
.end method
