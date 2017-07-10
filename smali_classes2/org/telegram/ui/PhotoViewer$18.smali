.class Lorg/telegram/ui/PhotoViewer$18;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1869
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 1872
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$7000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v2

    if-eqz v2, :cond_cf

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->doneButtonPressed:Z
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$7100(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v2

    if-nez v2, :cond_cf

    .line 1874
    const/4 v0, 0x0

    .line 1875
    .local v0, "videoEditedInfo":Lorg/telegram/messenger/VideoEditedInfo;
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->captionItem:Landroid/widget/ImageView;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$7200(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_b6

    .line 1876
    new-instance v0, Lorg/telegram/messenger/VideoEditedInfo;

    .end local v0    # "videoEditedInfo":Lorg/telegram/messenger/VideoEditedInfo;
    invoke-direct {v0}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    .line 1877
    .restart local v0    # "videoEditedInfo":Lorg/telegram/messenger/VideoEditedInfo;
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->startTime:J
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$7300(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    .line 1878
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->endTime:J
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$7400(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 1879
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->rotationValue:I
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$7500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    iput v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    .line 1880
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->originalWidth:I
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$7600(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    iput v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    .line 1881
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->originalHeight:I
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$7700(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    iput v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    .line 1882
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->bitrate:I
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$7800(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    iput v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    .line 1883
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentPlayingVideoFile:Ljava/io/File;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$7900(Lorg/telegram/ui/PhotoViewer;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    .line 1884
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->estimatedSize:I
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$8000(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    .line 1885
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->estimatedDuration:J
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$8100(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    .line 1887
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$8200(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_9c

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$8200(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_d7

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->selectedCompression:I
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$6500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->compressionsCount:I
    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$8300(Lorg/telegram/ui/PhotoViewer;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_d7

    .line 1888
    :cond_9c
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->originalWidth:I
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$7600(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    iput v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    .line 1889
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->originalHeight:I
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$7700(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    iput v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    .line 1890
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->muteVideo:Z
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$8400(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v2

    if-eqz v2, :cond_d0

    :goto_b4
    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    .line 1901
    :cond_b6
    :goto_b6
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$7000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->currentIndex:I
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$5300(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    invoke-interface {v1, v2, v0}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;)V

    .line 1902
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    # setter for: Lorg/telegram/ui/PhotoViewer;->doneButtonPressed:Z
    invoke-static {v1, v5}, Lorg/telegram/ui/PhotoViewer;->access$7102(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 1903
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-virtual {v1, v4, v4}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    .line 1905
    .end local v0    # "videoEditedInfo":Lorg/telegram/messenger/VideoEditedInfo;
    :cond_cf
    return-void

    .line 1890
    .restart local v0    # "videoEditedInfo":Lorg/telegram/messenger/VideoEditedInfo;
    :cond_d0
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->originalBitrate:I
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$8500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    goto :goto_b4

    .line 1892
    :cond_d7
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->muteVideo:Z
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$8400(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v2

    if-eqz v2, :cond_e9

    .line 1893
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    # setter for: Lorg/telegram/ui/PhotoViewer;->selectedCompression:I
    invoke-static {v2, v5}, Lorg/telegram/ui/PhotoViewer;->access$6502(Lorg/telegram/ui/PhotoViewer;I)I

    .line 1894
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    # invokes: Lorg/telegram/ui/PhotoViewer;->updateWidthHeightBitrateForCompression()V
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$8600(Lorg/telegram/ui/PhotoViewer;)V

    .line 1896
    :cond_e9
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->resultWidth:I
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$8700(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    iput v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    .line 1897
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->resultHeight:I
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$8800(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    iput v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    .line 1898
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->muteVideo:Z
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$8400(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v2

    if-eqz v2, :cond_104

    :goto_101
    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    goto :goto_b6

    :cond_104
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$18;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->bitrate:I
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$7800(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    goto :goto_101
.end method
