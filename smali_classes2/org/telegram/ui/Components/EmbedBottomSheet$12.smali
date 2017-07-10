.class Lorg/telegram/ui/Components/EmbedBottomSheet$12;
.super Landroid/view/OrientationEventListener;
.source "EmbedBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmbedBottomSheet;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmbedBottomSheet;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 684
    iput-object p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$12;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 5
    .param p1, "orientation"    # I

    .prologue
    const/4 v2, 0x0

    .line 687
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$12;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->orientationEventListener:Landroid/view/OrientationEventListener;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3900(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/OrientationEventListener;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$12;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_16

    .line 699
    :cond_15
    :goto_15
    return-void

    .line 690
    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$12;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->parentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$12;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->isInFullscreen()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$12;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->fullscreenedByButton:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1300(Lorg/telegram/ui/Components/EmbedBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 691
    const/16 v0, 0xf0

    if-lt p1, v0, :cond_41

    const/16 v0, 0x12c

    if-gt p1, v0, :cond_41

    .line 692
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$12;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->wasInLandscape:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1202(Lorg/telegram/ui/Components/EmbedBottomSheet;Z)Z

    goto :goto_15

    .line 693
    :cond_41
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$12;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->wasInLandscape:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1200(Lorg/telegram/ui/Components/EmbedBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x14a

    if-ge p1, v0, :cond_51

    const/16 v0, 0x1e

    if-gt p1, v0, :cond_15

    .line 694
    :cond_51
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$12;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->parentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$12;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->prevOrientation:I
    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1500(Lorg/telegram/ui/Components/EmbedBottomSheet;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 695
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$12;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # setter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->fullscreenedByButton:Z
    invoke-static {v0, v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1302(Lorg/telegram/ui/Components/EmbedBottomSheet;Z)Z

    .line 696
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$12;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # setter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->wasInLandscape:Z
    invoke-static {v0, v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1202(Lorg/telegram/ui/Components/EmbedBottomSheet;Z)Z

    goto :goto_15
.end method
