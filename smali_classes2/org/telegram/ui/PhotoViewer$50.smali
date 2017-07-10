.class Lorg/telegram/ui/PhotoViewer$50;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->setCurrentCaption(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 3853
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$50;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v0, 0x4

    .line 3856
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$50;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$2400(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 3857
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$50;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$2400(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3858
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$50;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$2300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$50;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$2700(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$50;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$2200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->getVisibility()I

    move-result v2

    if-nez v2, :cond_33

    :cond_32
    const/4 v0, 0x0

    :cond_33
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3859
    return-void
.end method
