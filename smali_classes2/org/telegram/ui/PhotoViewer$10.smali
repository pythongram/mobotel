.class Lorg/telegram/ui/PhotoViewer$10;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V
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
    .line 1671
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$10;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekBarDrag(F)V
    .registers 6
    .param p1, "progress"    # F

    .prologue
    .line 1674
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$10;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 1675
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$10;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->inPreview:Z
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$200(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$10;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$10;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_46

    .line 1676
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$10;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$10;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$10;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float p1, v0, v1

    .line 1678
    :cond_46
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$10;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$10;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v2

    long-to-float v1, v2

    mul-float/2addr v1, p1

    float-to-int v1, v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 1680
    :cond_5d
    return-void
.end method
