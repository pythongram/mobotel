.class public Lorg/telegram/ui/VideoEditorActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "VideoEditorActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;,
        Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;
    }
.end annotation


# instance fields
.field private allowMentions:Z

.field private audioFramesSize:J

.field private bitrate:I

.field private captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

.field private captionItem:Landroid/widget/ImageView;

.field private compressItem:Landroid/widget/ImageView;

.field private compressionsCount:I

.field private created:Z

.field private currentCaption:Ljava/lang/CharSequence;

.field private currentSubtitle:Ljava/lang/String;

.field private delegate:Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;

.field private endTime:J

.field private esimatedDuration:J

.field private estimatedSize:I

.field private firstCaptionLayout:Z

.field private inPreview:Z

.field private lastProgress:F

.field private loadInitialVideo:Z

.field private mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private mentionListAnimation:Landroid/animation/AnimatorSet;

.field private mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

.field private muteItem:Landroid/widget/ImageView;

.field private muteVideo:Z

.field private needSeek:Z

.field private originalBitrate:I

.field private originalHeight:I

.field private originalSize:J

.field private originalWidth:I

.field private parentChatActivity:Lorg/telegram/ui/ChatActivity;

.field private pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

.field private playButton:Landroid/widget/ImageView;

.field private playerPrepared:Z

.field private previewViewEnd:I

.field private previousCompression:I

.field private progressRunnable:Ljava/lang/Runnable;

.field private progressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private qualityChooseView:Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;

.field private qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

.field private requestingPreview:Z

.field private resultHeight:I

.field private resultWidth:I

.field private rotationValue:I

.field private selectedCompression:I

.field private startTime:J

.field private final sync:Ljava/lang/Object;

.field private textureView:Landroid/view/TextureView;

.field private thread:Ljava/lang/Thread;

.field private tryStartRequestPreviewOnFinish:Z

.field private videoDuration:F

.field private videoFramesSize:J

.field private videoPath:Ljava/lang/String;

.field private videoPlayer:Landroid/media/MediaPlayer;

.field private videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

.field private videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

.field private videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->sync:Ljava/lang/Object;

    .line 153
    new-instance v0, Lorg/telegram/ui/VideoEditorActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VideoEditorActivity$1;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->progressRunnable:Ljava/lang/Runnable;

    .line 356
    const-string v0, "videoPath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    .line 357
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/VideoEditorActivity;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->sync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/VideoEditorActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    return v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/VideoEditorActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/VideoEditorActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    return v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/VideoEditorActivity;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;
    .param p1, "x1"    # I

    .prologue
    .line 82
    iput p1, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/VideoEditorActivity;Z)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lorg/telegram/ui/VideoEditorActivity;->didChangedCompressionLevel(Z)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/VideoEditorActivity;I)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;
    .param p1, "x1"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lorg/telegram/ui/VideoEditorActivity;->requestVideoPreview(I)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/VideoEditorActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/VideoEditorActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->playerPrepared:Z

    return v0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/VideoEditorActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lorg/telegram/ui/VideoEditorActivity;->playerPrepared:Z

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/VideoEditorActivity;Z)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lorg/telegram/ui/VideoEditorActivity;->closeCaptionEnter(Z)V

    return-void
.end method

.method static synthetic access$1800(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/VideoEditorActivity;)Landroid/view/TextureView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->textureView:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/VideoEditorActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->inPreview:Z

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/VideoEditorActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    return v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/VideoEditorActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    return v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/VideoEditorActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->firstCaptionLayout:Z

    return v0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/VideoEditorActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lorg/telegram/ui/VideoEditorActivity;->firstCaptionLayout:Z

    return p1
.end method

.method static synthetic access$2400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->delegate:Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/VideoEditorActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->muteVideo:Z

    return v0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/VideoEditorActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lorg/telegram/ui/VideoEditorActivity;->muteVideo:Z

    return p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/VideoEditorActivity;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/VideoEditorActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/VideoEditorActivity;)J
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget-wide v0, p0, Lorg/telegram/ui/VideoEditorActivity;->startTime:J

    return-wide v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/VideoEditorActivity;)J
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget-wide v0, p0, Lorg/telegram/ui/VideoEditorActivity;->endTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/VideoEditorActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->previewViewEnd:I

    return v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/VideoEditorActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->originalBitrate:I

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/VideoEditorActivity;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;
    .param p1, "x1"    # I

    .prologue
    .line 82
    iput p1, p0, Lorg/telegram/ui/VideoEditorActivity;->previewViewEnd:I

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/VideoEditorActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->estimatedSize:I

    return v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/VideoEditorActivity;)J
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget-wide v0, p0, Lorg/telegram/ui/VideoEditorActivity;->esimatedDuration:J

    return-wide v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/VideoEditorActivity;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->currentCaption:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/VideoEditorActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->updateWidthHeightBitrateForCompression()V

    return-void
.end method

.method static synthetic access$3500(Lorg/telegram/ui/VideoEditorActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->resultWidth:I

    return v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/VideoEditorActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->resultHeight:I

    return v0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/VideoEditorActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->bitrate:I

    return v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/VideoEditorActivity;Z)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lorg/telegram/ui/VideoEditorActivity;->showQualityView(Z)V

    return-void
.end method

.method static synthetic access$4100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/VideoEditorActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->needSeek:Z

    return v0
.end method

.method static synthetic access$4202(Lorg/telegram/ui/VideoEditorActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lorg/telegram/ui/VideoEditorActivity;->needSeek:Z

    return p1
.end method

.method static synthetic access$4300(Lorg/telegram/ui/VideoEditorActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->updateVideoInfo()V

    return-void
.end method

.method static synthetic access$4400(Lorg/telegram/ui/VideoEditorActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->requestingPreview:Z

    return v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/VideoEditorActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->loadInitialVideo:Z

    return v0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/VideoEditorActivity;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->progressRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    return-object v0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/ChatActivity;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    return-object v0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/VideoEditorActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->allowMentions:Z

    return v0
.end method

.method static synthetic access$4902(Lorg/telegram/ui/VideoEditorActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lorg/telegram/ui/VideoEditorActivity;->allowMentions:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/VideoEditorActivity;)F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    return v0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/VideoEditorActivity;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/VideoEditorActivity;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$5202(Lorg/telegram/ui/VideoEditorActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$5300(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/VideoEditorActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->previousCompression:I

    return v0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityChooseView:Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;

    return-object v0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/VideoEditorActivity;)F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->lastProgress:F

    return v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/VideoEditorActivity;F)F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;
    .param p1, "x1"    # F

    .prologue
    .line 82
    iput p1, p0, Lorg/telegram/ui/VideoEditorActivity;->lastProgress:F

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoSeekBarView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/VideoEditorActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->onPlayComplete()V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/VideoEditorActivity;)Ljava/lang/Thread;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->thread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$902(Lorg/telegram/ui/VideoEditorActivity;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/VideoEditorActivity;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity;->thread:Ljava/lang/Thread;

    return-object p1
.end method

.method private closeCaptionEnter(Z)V
    .registers 5
    .param p1, "apply"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1303
    if-eqz p1, :cond_b

    .line 1304
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getFieldCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->currentCaption:Ljava/lang/CharSequence;

    .line 1306
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    .line 1307
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1308
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoSeekBarView;->setVisibility(I)V

    .line 1309
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoTimelineView;->setVisibility(I)V

    .line 1312
    :cond_20
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->muteVideo:Z

    if-eqz v0, :cond_5f

    const-string v0, "AttachGif"

    const v2, 0x7f0700bf

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_2f
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1313
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->muteVideo:Z

    if-eqz v0, :cond_69

    const/4 v0, 0x0

    :goto_39
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1314
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->captionItem:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->currentCaption:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const v0, 0x7f020219

    :goto_49
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1315
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1316
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->hidePopup()V

    .line 1318
    :cond_59
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->closeKeyboard()V

    .line 1319
    return-void

    .line 1312
    :cond_5f
    const-string v0, "AttachVideo"

    const v2, 0x7f0700c4

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    .line 1313
    :cond_69
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->currentSubtitle:Ljava/lang/String;

    goto :goto_39

    .line 1314
    :cond_6c
    const v0, 0x7f02021a

    goto :goto_49
.end method

.method private destroyPlayer()V
    .registers 2

    .prologue
    .line 360
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_19

    .line 362
    :try_start_4
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_d

    .line 363
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_1c

    .line 369
    :cond_d
    :goto_d
    :try_start_d
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_16

    .line 370
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_16} :catch_1a

    .line 375
    :cond_16
    :goto_16
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    .line 377
    :cond_19
    return-void

    .line 372
    :catch_1a
    move-exception v0

    goto :goto_16

    .line 365
    :catch_1c
    move-exception v0

    goto :goto_d
.end method

.method private didChangedCompressionLevel(Z)V
    .registers 7
    .param p1, "request"    # Z

    .prologue
    .line 1222
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "mainconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1223
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1224
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "compress_video2"

    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1225
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1226
    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->updateWidthHeightBitrateForCompression()V

    .line 1227
    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->updateVideoInfo()V

    .line 1228
    if-eqz p1, :cond_23

    .line 1229
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lorg/telegram/ui/VideoEditorActivity;->requestVideoPreview(I)V

    .line 1231
    :cond_23
    return-void
.end method

.method private onPlayComplete()V
    .registers 5

    .prologue
    .line 1449
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_c

    .line 1450
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    const v2, 0x7f020293

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1452
    :cond_c
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    if-eqz v1, :cond_1e

    .line 1453
    iget-boolean v1, p0, Lorg/telegram/ui/VideoEditorActivity;->inPreview:Z

    if-eqz v1, :cond_31

    .line 1454
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/VideoSeekBarView;->setProgress(F)V

    .line 1460
    :cond_1e
    :goto_1e
    :try_start_1e
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_30

    .line 1461
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    if-eqz v1, :cond_30

    .line 1462
    iget-boolean v1, p0, Lorg/telegram/ui/VideoEditorActivity;->inPreview:Z

    if-eqz v1, :cond_3d

    .line 1463
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_30} :catch_4d

    .line 1472
    :cond_30
    :goto_30
    return-void

    .line 1456
    :cond_31
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/VideoSeekBarView;->setProgress(F)V

    goto :goto_1e

    .line 1465
    :cond_3d
    :try_start_3d
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v2

    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_4c} :catch_4d

    goto :goto_30

    .line 1469
    :catch_4d
    move-exception v0

    .line 1470
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_30
.end method

.method private processOpenVideo()Z
    .registers 33

    .prologue
    .line 1582
    :try_start_0
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1583
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/VideoEditorActivity;->originalSize:J

    .line 1585
    new-instance v14, Lcom/coremedia/iso/IsoFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-direct {v14, v0}, Lcom/coremedia/iso/IsoFile;-><init>(Ljava/lang/String;)V

    .line 1586
    .local v14, "isoFile":Lcom/coremedia/iso/IsoFile;
    const-string v27, "/moov/trak/"

    move-object/from16 v0, v27

    invoke-static {v14, v0}, Lcom/googlecode/mp4parser/util/Path;->getPaths(Lcom/coremedia/iso/boxes/Container;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 1587
    .local v8, "boxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    const/16 v26, 0x0

    .line 1588
    .local v26, "trackHeaderBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    const/4 v12, 0x1

    .line 1589
    .local v12, "isAvc":Z
    const/4 v13, 0x1

    .line 1591
    .local v13, "isMp4A":Z
    const-string v27, "/moov/trak/mdia/minf/stbl/stsd/mp4a/"

    move-object/from16 v0, v27

    invoke-static {v14, v0}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/coremedia/iso/boxes/Container;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v7

    .line 1592
    .local v7, "boxTest":Lcom/coremedia/iso/boxes/Box;
    if-nez v7, :cond_3b

    .line 1593
    const/4 v13, 0x0

    .line 1596
    :cond_3b
    if-nez v13, :cond_40

    .line 1597
    const/16 v27, 0x0

    .line 1665
    .end local v7    # "boxTest":Lcom/coremedia/iso/boxes/Box;
    .end local v8    # "boxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    .end local v10    # "file":Ljava/io/File;
    .end local v12    # "isAvc":Z
    .end local v13    # "isMp4A":Z
    .end local v14    # "isoFile":Lcom/coremedia/iso/IsoFile;
    .end local v26    # "trackHeaderBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    :goto_3f
    return v27

    .line 1600
    .restart local v7    # "boxTest":Lcom/coremedia/iso/boxes/Box;
    .restart local v8    # "boxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    .restart local v10    # "file":Ljava/io/File;
    .restart local v12    # "isAvc":Z
    .restart local v13    # "isMp4A":Z
    .restart local v14    # "isoFile":Lcom/coremedia/iso/IsoFile;
    .restart local v26    # "trackHeaderBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    :cond_40
    const-string v27, "/moov/trak/mdia/minf/stbl/stsd/avc1/"

    move-object/from16 v0, v27

    invoke-static {v14, v0}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/coremedia/iso/boxes/Container;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v7

    .line 1601
    if-nez v7, :cond_4b

    .line 1602
    const/4 v12, 0x0

    .line 1605
    :cond_4b
    const/4 v5, 0x0

    .local v5, "b":I
    :goto_4c
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v5, v0, :cond_13c

    .line 1606
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coremedia/iso/boxes/Box;

    .line 1607
    .local v6, "box":Lcom/coremedia/iso/boxes/Box;
    move-object v0, v6

    check-cast v0, Lcom/coremedia/iso/boxes/TrackBox;

    move-object/from16 v23, v0
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5f} :catch_125

    .line 1608
    .local v23, "trackBox":Lcom/coremedia/iso/boxes/TrackBox;
    const-wide/16 v20, 0x0

    .line 1609
    .local v20, "sampleSizes":J
    const-wide/16 v24, 0x0

    .line 1611
    .local v24, "trackBitrate":J
    :try_start_63
    invoke-virtual/range {v23 .. v23}, Lcom/coremedia/iso/boxes/TrackBox;->getMediaBox()Lcom/coremedia/iso/boxes/MediaBox;

    move-result-object v16

    .line 1612
    .local v16, "mediaBox":Lcom/coremedia/iso/boxes/MediaBox;
    invoke-virtual/range {v16 .. v16}, Lcom/coremedia/iso/boxes/MediaBox;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/MediaHeaderBox;

    move-result-object v17

    .line 1613
    .local v17, "mediaHeaderBox":Lcom/coremedia/iso/boxes/MediaHeaderBox;
    invoke-virtual/range {v16 .. v16}, Lcom/coremedia/iso/boxes/MediaBox;->getMediaInformationBox()Lcom/coremedia/iso/boxes/MediaInformationBox;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/coremedia/iso/boxes/MediaInformationBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleSizeBox()Lcom/coremedia/iso/boxes/SampleSizeBox;

    move-result-object v19

    .line 1614
    .local v19, "sampleSizeBox":Lcom/coremedia/iso/boxes/SampleSizeBox;
    invoke-virtual/range {v19 .. v19}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleSizes()[J

    move-result-object v22

    .line 1615
    .local v22, "sizes":[J
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_7c
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v4, v0, :cond_8c

    .line 1616
    aget-wide v28, v22, v4

    add-long v20, v20, v28

    .line 1615
    add-int/lit8 v4, v4, 0x1

    goto :goto_7c

    .line 1618
    :cond_8c
    invoke-virtual/range {v17 .. v17}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getDuration()J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-float v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v17 .. v17}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getTimescale()J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-float v0, v0

    move/from16 v28, v0

    div-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    .line 1619
    const-wide/16 v28, 0x8

    mul-long v28, v28, v20

    move-wide/from16 v0, v28

    long-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    move/from16 v28, v0
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_b5} :catch_120

    div-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v24, v0

    .line 1623
    .end local v4    # "a":I
    .end local v16    # "mediaBox":Lcom/coremedia/iso/boxes/MediaBox;
    .end local v17    # "mediaHeaderBox":Lcom/coremedia/iso/boxes/MediaHeaderBox;
    .end local v19    # "sampleSizeBox":Lcom/coremedia/iso/boxes/SampleSizeBox;
    .end local v22    # "sizes":[J
    :goto_c1
    :try_start_c1
    invoke-virtual/range {v23 .. v23}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v11

    .line 1624
    .local v11, "headerBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    invoke-virtual {v11}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getWidth()D

    move-result-wide v28

    const-wide/16 v30, 0x0

    cmpl-double v27, v28, v30

    if-eqz v27, :cond_12d

    invoke-virtual {v11}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getHeight()D

    move-result-wide v28

    const-wide/16 v30, 0x0

    cmpl-double v27, v28, v30

    if-eqz v27, :cond_12d

    .line 1625
    move-object/from16 v26, v11

    .line 1626
    const-wide/32 v28, 0x186a0

    div-long v28, v24, v28

    const-wide/32 v30, 0x186a0

    mul-long v28, v28, v30

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->bitrate:I

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->originalBitrate:I

    .line 1627
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/VideoEditorActivity;->bitrate:I

    move/from16 v27, v0

    const v28, 0xdbba0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_10e

    .line 1628
    const v27, 0xdbba0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->bitrate:I

    .line 1630
    :cond_10e
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/VideoEditorActivity;->videoFramesSize:J

    move-wide/from16 v28, v0

    add-long v28, v28, v20

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/VideoEditorActivity;->videoFramesSize:J

    .line 1605
    :goto_11c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4c

    .line 1620
    .end local v11    # "headerBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    :catch_120
    move-exception v9

    .line 1621
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_124} :catch_125

    goto :goto_c1

    .line 1659
    .end local v5    # "b":I
    .end local v6    # "box":Lcom/coremedia/iso/boxes/Box;
    .end local v7    # "boxTest":Lcom/coremedia/iso/boxes/Box;
    .end local v8    # "boxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "file":Ljava/io/File;
    .end local v12    # "isAvc":Z
    .end local v13    # "isMp4A":Z
    .end local v14    # "isoFile":Lcom/coremedia/iso/IsoFile;
    .end local v20    # "sampleSizes":J
    .end local v23    # "trackBox":Lcom/coremedia/iso/boxes/TrackBox;
    .end local v24    # "trackBitrate":J
    .end local v26    # "trackHeaderBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    :catch_125
    move-exception v9

    .line 1660
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1661
    const/16 v27, 0x0

    goto/16 :goto_3f

    .line 1632
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v5    # "b":I
    .restart local v6    # "box":Lcom/coremedia/iso/boxes/Box;
    .restart local v7    # "boxTest":Lcom/coremedia/iso/boxes/Box;
    .restart local v8    # "boxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    .restart local v10    # "file":Ljava/io/File;
    .restart local v11    # "headerBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    .restart local v12    # "isAvc":Z
    .restart local v13    # "isMp4A":Z
    .restart local v14    # "isoFile":Lcom/coremedia/iso/IsoFile;
    .restart local v20    # "sampleSizes":J
    .restart local v23    # "trackBox":Lcom/coremedia/iso/boxes/TrackBox;
    .restart local v24    # "trackBitrate":J
    .restart local v26    # "trackHeaderBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    :cond_12d
    :try_start_12d
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/VideoEditorActivity;->audioFramesSize:J

    move-wide/from16 v28, v0

    add-long v28, v28, v20

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/VideoEditorActivity;->audioFramesSize:J

    goto :goto_11c

    .line 1635
    .end local v6    # "box":Lcom/coremedia/iso/boxes/Box;
    .end local v11    # "headerBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    .end local v20    # "sampleSizes":J
    .end local v23    # "trackBox":Lcom/coremedia/iso/boxes/TrackBox;
    .end local v24    # "trackBitrate":J
    :cond_13c
    if-nez v26, :cond_142

    .line 1636
    const/16 v27, 0x0

    goto/16 :goto_3f

    .line 1639
    :cond_142
    invoke-virtual/range {v26 .. v26}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getMatrix()Lcom/googlecode/mp4parser/util/Matrix;

    move-result-object v15

    .line 1640
    .local v15, "matrix":Lcom/googlecode/mp4parser/util/Matrix;
    sget-object v27, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_90:Lcom/googlecode/mp4parser/util/Matrix;

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Lcom/googlecode/mp4parser/util/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1dd

    .line 1641
    const/16 v27, 0x5a

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    .line 1647
    :cond_158
    :goto_158
    invoke-virtual/range {v26 .. v26}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getWidth()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->resultWidth:I

    .line 1648
    invoke-virtual/range {v26 .. v26}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getHeight()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->resultHeight:I

    .line 1650
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    move/from16 v27, v0

    const/high16 v28, 0x447a0000    # 1000.0f

    mul-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    .line 1652
    sget-object v27, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v28, "mainconfig"

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 1653
    .local v18, "preferences":Landroid/content/SharedPreferences;
    const-string v27, "compress_video2"

    const/16 v28, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    .line 1654
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/VideoEditorActivity;->updateWidthHeightBitrateForCompression()V

    .line 1656
    if-nez v12, :cond_205

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/VideoEditorActivity;->resultWidth:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1d9

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/VideoEditorActivity;->resultHeight:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_205

    .line 1657
    :cond_1d9
    const/16 v27, 0x0

    goto/16 :goto_3f

    .line 1642
    .end local v18    # "preferences":Landroid/content/SharedPreferences;
    :cond_1dd
    sget-object v27, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_180:Lcom/googlecode/mp4parser/util/Matrix;

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Lcom/googlecode/mp4parser/util/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1f1

    .line 1643
    const/16 v27, 0xb4

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    goto/16 :goto_158

    .line 1644
    :cond_1f1
    sget-object v27, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_270:Lcom/googlecode/mp4parser/util/Matrix;

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Lcom/googlecode/mp4parser/util/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_158

    .line 1645
    const/16 v27, 0x10e

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I
    :try_end_203
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_203} :catch_125

    goto/16 :goto_158

    .line 1664
    .restart local v18    # "preferences":Landroid/content/SharedPreferences;
    :cond_205
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/VideoEditorActivity;->updateVideoInfo()V

    .line 1665
    const/16 v27, 0x1

    goto/16 :goto_3f
.end method

.method private reinitPlayer(Ljava/lang/String;)Z
    .registers 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 380
    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->destroyPlayer()V

    .line 381
    iget-object v5, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    if-eqz v5, :cond_12

    .line 382
    iget-object v5, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    const v6, 0x7f020293

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 384
    :cond_12
    iput v2, p0, Lorg/telegram/ui/VideoEditorActivity;->lastProgress:F

    .line 385
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    .line 386
    iget-object v5, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    new-instance v6, Lorg/telegram/ui/VideoEditorActivity$2;

    invoke-direct {v6, p0}, Lorg/telegram/ui/VideoEditorActivity$2;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 401
    :try_start_25
    iget-object v5, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 402
    iget-object v5, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2f} :catch_5c

    .line 407
    iget-boolean v5, p0, Lorg/telegram/ui/VideoEditorActivity;->muteVideo:Z

    if-eqz v5, :cond_62

    .line 408
    .local v2, "volume":F
    :goto_33
    iget-object v5, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_3c

    .line 409
    iget-object v5, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 411
    :cond_3c
    iget-object v5, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_45

    move v3, v4

    :cond_45
    iput-boolean v3, p0, Lorg/telegram/ui/VideoEditorActivity;->inPreview:Z

    .line 412
    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity;->textureView:Landroid/view/TextureView;

    if-eqz v3, :cond_5b

    .line 414
    :try_start_4b
    new-instance v1, Landroid/view/Surface;

    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity;->textureView:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 415
    .local v1, "s":Landroid/view/Surface;
    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_5b} :catch_65

    .line 420
    .end local v1    # "s":Landroid/view/Surface;
    .end local v2    # "volume":F
    :cond_5b
    :goto_5b
    return v4

    .line 403
    :catch_5c
    move-exception v0

    .line 404
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move v4, v3

    .line 405
    goto :goto_5b

    .line 407
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_62
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_33

    .line 416
    .restart local v2    # "volume":F
    :catch_65
    move-exception v0

    .line 417
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5b
.end method

.method private requestVideoPreview(I)V
    .registers 12
    .param p1, "request"    # I

    .prologue
    .line 1322
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_d

    .line 1323
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MediaController;->cancelVideoConvert(Lorg/telegram/messenger/MessageObject;)V

    .line 1325
    :cond_d
    iget-boolean v6, p0, Lorg/telegram/ui/VideoEditorActivity;->requestingPreview:Z

    if-eqz v6, :cond_38

    iget-boolean v6, p0, Lorg/telegram/ui/VideoEditorActivity;->tryStartRequestPreviewOnFinish:Z

    if-nez v6, :cond_38

    const/4 v3, 0x1

    .line 1326
    .local v3, "wasRequestingPreview":Z
    :goto_16
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/telegram/ui/VideoEditorActivity;->requestingPreview:Z

    .line 1327
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/telegram/ui/VideoEditorActivity;->loadInitialVideo:Z

    .line 1328
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 1329
    const/4 v6, 0x1

    if-ne p1, v6, :cond_12b

    .line 1330
    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_4a

    .line 1331
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/telegram/ui/VideoEditorActivity;->tryStartRequestPreviewOnFinish:Z

    .line 1332
    if-nez v3, :cond_3a

    .line 1333
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    invoke-direct {p0, v6}, Lorg/telegram/ui/VideoEditorActivity;->reinitPlayer(Ljava/lang/String;)Z

    .line 1384
    :cond_37
    :goto_37
    return-void

    .line 1325
    .end local v3    # "wasRequestingPreview":Z
    :cond_38
    const/4 v3, 0x0

    goto :goto_16

    .line 1335
    .restart local v3    # "wasRequestingPreview":Z
    :cond_3a
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1336
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 1337
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/telegram/ui/VideoEditorActivity;->loadInitialVideo:Z

    goto :goto_37

    .line 1340
    :cond_4a
    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->destroyPlayer()V

    .line 1341
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v6, :cond_b7

    .line 1342
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 1343
    .local v2, "message":Lorg/telegram/tgnet/TLRPC$TL_message;
    const/4 v6, 0x0

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    .line 1344
    const-string v6, ""

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    .line 1345
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1346
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;-><init>()V

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 1347
    new-instance v6, Lorg/telegram/messenger/MessageObject;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v6, v2, v7, v8}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    iput-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1348
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    new-instance v7, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v8

    const-string v9, "video_preview.mp4"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 1349
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    new-instance v7, Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct {v7}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    iput-object v7, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 1350
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    iput v7, v6, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    .line 1351
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    iput v7, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    .line 1352
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    iput v7, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    .line 1353
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v7, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    iput-object v7, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    .line 1355
    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$TL_message;
    :cond_b7
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v4, p0, Lorg/telegram/ui/VideoEditorActivity;->startTime:J

    iput-wide v4, v6, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    .line 1356
    .local v4, "start":J
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v0, p0, Lorg/telegram/ui/VideoEditorActivity;->endTime:J

    iput-wide v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 1357
    .local v0, "end":J
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_cf

    .line 1358
    const-wide/16 v4, 0x0

    .line 1360
    :cond_cf
    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-nez v6, :cond_db

    .line 1361
    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    float-to-long v0, v6

    .line 1363
    :cond_db
    sub-long v6, v0, v4

    const-wide/32 v8, 0x4c4b40

    cmp-long v6, v6, v8

    if-lez v6, :cond_ee

    .line 1364
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    const-wide/32 v8, 0x4c4b40

    add-long/2addr v8, v4

    iput-wide v8, v6, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 1366
    :cond_ee
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity;->bitrate:I

    iput v7, v6, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    .line 1367
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity;->resultWidth:I

    iput v7, v6, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    .line 1368
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity;->resultHeight:I

    iput v7, v6, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    .line 1369
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/MediaController;->scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;Z)Z

    move-result v6

    if-nez v6, :cond_116

    .line 1370
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/telegram/ui/VideoEditorActivity;->tryStartRequestPreviewOnFinish:Z

    .line 1372
    :cond_116
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    if-nez v6, :cond_37

    .line 1373
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/telegram/ui/VideoEditorActivity;->requestingPreview:Z

    .line 1374
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1375
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    goto/16 :goto_37

    .line 1379
    .end local v0    # "end":J
    .end local v4    # "start":J
    :cond_12b
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/telegram/ui/VideoEditorActivity;->tryStartRequestPreviewOnFinish:Z

    .line 1380
    const/4 v6, 0x2

    if-ne p1, v6, :cond_37

    .line 1381
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    invoke-direct {p0, v6}, Lorg/telegram/ui/VideoEditorActivity;->reinitPlayer(Ljava/lang/String;)Z

    goto/16 :goto_37
.end method

.method private showQualityView(Z)V
    .registers 13
    .param p1, "show"    # Z

    .prologue
    const/high16 v10, 0x43180000    # 152.0f

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1256
    if-eqz p1, :cond_c

    .line 1257
    iget v1, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    iput v1, p0, Lorg/telegram/ui/VideoEditorActivity;->previousCompression:I

    .line 1259
    :cond_c
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1260
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    if-eqz p1, :cond_71

    .line 1261
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const-string v3, "translationY"

    new-array v4, v8, [F

    aput v9, v4, v6

    .line 1262
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    const-string v3, "translationY"

    new-array v4, v8, [F

    aput v9, v4, v6

    .line 1263
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

    const-string v3, "translationY"

    new-array v4, v8, [F

    aput v9, v4, v6

    .line 1264
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    .line 1261
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1270
    :goto_58
    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$22;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/VideoEditorActivity$22;-><init>(Lorg/telegram/ui/VideoEditorActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1293
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1294
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1295
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1296
    return-void

    .line 1266
    :cond_71
    new-array v1, v8, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityChooseView:Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;

    const-string v3, "translationY"

    new-array v4, v8, [F

    aput v9, v4, v6

    const/high16 v5, 0x42f00000    # 120.0f

    .line 1267
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const-string v3, "translationY"

    new-array v4, v8, [F

    aput v9, v4, v6

    const/high16 v5, 0x42f00000    # 120.0f

    .line 1268
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    .line 1266
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_58
.end method

.method private updateVideoInfo()V
    .registers 15

    .prologue
    const-wide/16 v12, 0x3e8

    const/16 v9, 0x10e

    const/16 v8, 0x5a

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 1475
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez v6, :cond_d

    .line 1525
    :goto_c
    return-void

    .line 1479
    :cond_d
    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    if-nez v6, :cond_ee

    .line 1480
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    const v7, 0x7f02028e

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1491
    :cond_19
    :goto_19
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v7

    sub-float/2addr v6, v7

    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-long v6, v6

    iput-wide v6, p0, Lorg/telegram/ui/VideoEditorActivity;->esimatedDuration:J

    .line 1496
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_4b

    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_130

    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_130

    .line 1497
    :cond_4b
    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    if-eq v6, v8, :cond_53

    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    if-ne v6, v9, :cond_128

    :cond_53
    iget v5, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    .line 1498
    .local v5, "width":I
    :goto_55
    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    if-eq v6, v8, :cond_5d

    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    if-ne v6, v9, :cond_12c

    :cond_5d
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    .line 1499
    .local v0, "height":I
    :goto_5f
    iget-wide v6, p0, Lorg/telegram/ui/VideoEditorActivity;->originalSize:J

    long-to-float v6, v6

    iget-wide v8, p0, Lorg/telegram/ui/VideoEditorActivity;->esimatedDuration:J

    long-to-float v7, v8

    iget v8, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lorg/telegram/ui/VideoEditorActivity;->estimatedSize:I

    .line 1508
    :goto_6c
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_169

    .line 1509
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lorg/telegram/ui/VideoEditorActivity;->startTime:J

    .line 1513
    :goto_7b
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_178

    .line 1514
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lorg/telegram/ui/VideoEditorActivity;->endTime:J

    .line 1519
    :goto_8b
    const-string v6, "%dx%d"

    new-array v7, v11, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1520
    .local v3, "videoDimension":Ljava/lang/String;
    iget-wide v6, p0, Lorg/telegram/ui/VideoEditorActivity;->esimatedDuration:J

    div-long/2addr v6, v12

    const-wide/16 v8, 0x3c

    div-long/2addr v6, v8

    long-to-int v1, v6

    .line 1521
    .local v1, "minutes":I
    iget-wide v6, p0, Lorg/telegram/ui/VideoEditorActivity;->esimatedDuration:J

    div-long/2addr v6, v12

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    mul-int/lit8 v7, v1, 0x3c

    sub-int v2, v6, v7

    .line 1522
    .local v2, "seconds":I
    const-string v6, "%d:%02d, ~%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    iget v8, p0, Lorg/telegram/ui/VideoEditorActivity;->estimatedSize:I

    int-to-long v8, v8

    invoke-static {v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1523
    .local v4, "videoTimeSize":Ljava/lang/String;
    const-string v6, "%s, %s"

    new-array v7, v11, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    aput-object v4, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->currentSubtitle:Ljava/lang/String;

    .line 1524
    iget-object v7, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v6, p0, Lorg/telegram/ui/VideoEditorActivity;->muteVideo:Z

    if-eqz v6, :cond_187

    const/4 v6, 0x0

    :goto_e9
    invoke-virtual {v7, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 1481
    .end local v0    # "height":I
    .end local v1    # "minutes":I
    .end local v2    # "seconds":I
    .end local v3    # "videoDimension":Ljava/lang/String;
    .end local v4    # "videoTimeSize":Ljava/lang/String;
    .end local v5    # "width":I
    :cond_ee
    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    if-ne v6, v10, :cond_fc

    .line 1482
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    const v7, 0x7f02028f

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_19

    .line 1483
    :cond_fc
    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    if-ne v6, v11, :cond_10a

    .line 1484
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    const v7, 0x7f020290

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_19

    .line 1485
    :cond_10a
    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_119

    .line 1486
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    const v7, 0x7f020291

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_19

    .line 1487
    :cond_119
    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_19

    .line 1488
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    const v7, 0x7f02028d

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_19

    .line 1497
    :cond_128
    iget v5, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    goto/16 :goto_55

    .line 1498
    .restart local v5    # "width":I
    :cond_12c
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    goto/16 :goto_5f

    .line 1501
    .end local v5    # "width":I
    :cond_130
    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    if-eq v6, v8, :cond_138

    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    if-ne v6, v9, :cond_163

    :cond_138
    iget v5, p0, Lorg/telegram/ui/VideoEditorActivity;->resultHeight:I

    .line 1502
    .restart local v5    # "width":I
    :goto_13a
    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    if-eq v6, v8, :cond_142

    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    if-ne v6, v9, :cond_166

    :cond_142
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->resultWidth:I

    .line 1504
    .restart local v0    # "height":I
    :goto_144
    iget-wide v6, p0, Lorg/telegram/ui/VideoEditorActivity;->audioFramesSize:J

    iget-wide v8, p0, Lorg/telegram/ui/VideoEditorActivity;->videoFramesSize:J

    add-long/2addr v6, v8

    long-to-float v6, v6

    iget-wide v8, p0, Lorg/telegram/ui/VideoEditorActivity;->esimatedDuration:J

    long-to-float v7, v8

    iget v8, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lorg/telegram/ui/VideoEditorActivity;->estimatedSize:I

    .line 1505
    iget v6, p0, Lorg/telegram/ui/VideoEditorActivity;->estimatedSize:I

    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity;->estimatedSize:I

    const v8, 0x8000

    div-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x10

    add-int/2addr v6, v7

    iput v6, p0, Lorg/telegram/ui/VideoEditorActivity;->estimatedSize:I

    goto/16 :goto_6c

    .line 1501
    .end local v0    # "height":I
    .end local v5    # "width":I
    :cond_163
    iget v5, p0, Lorg/telegram/ui/VideoEditorActivity;->resultWidth:I

    goto :goto_13a

    .line 1502
    .restart local v5    # "width":I
    :cond_166
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->resultHeight:I

    goto :goto_144

    .line 1511
    .restart local v0    # "height":I
    :cond_169
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v6

    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    mul-float/2addr v6, v7

    float-to-long v6, v6

    mul-long/2addr v6, v12

    iput-wide v6, p0, Lorg/telegram/ui/VideoEditorActivity;->startTime:J

    goto/16 :goto_7b

    .line 1516
    :cond_178
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v6

    iget v7, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    mul-float/2addr v6, v7

    float-to-long v6, v6

    mul-long/2addr v6, v12

    iput-wide v6, p0, Lorg/telegram/ui/VideoEditorActivity;->endTime:J

    goto/16 :goto_8b

    .line 1524
    .restart local v1    # "minutes":I
    .restart local v2    # "seconds":I
    .restart local v3    # "videoDimension":Ljava/lang/String;
    .restart local v4    # "videoTimeSize":Ljava/lang/String;
    :cond_187
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->currentSubtitle:Ljava/lang/String;

    goto/16 :goto_e9
.end method

.method private updateWidthHeightBitrateForCompression()V
    .registers 11

    .prologue
    const/16 v9, 0x500

    const/16 v8, 0x350

    const/16 v7, 0x280

    const/16 v6, 0x1e0

    const/high16 v5, 0x40000000    # 2.0f

    .line 1532
    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1a

    .line 1533
    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    if-gt v3, v9, :cond_17

    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    if-le v3, v9, :cond_7b

    .line 1534
    :cond_17
    const/4 v3, 0x5

    iput v3, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    .line 1545
    :cond_1a
    :goto_1a
    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    iget v4, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    if-lt v3, v4, :cond_26

    .line 1546
    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    .line 1548
    :cond_26
    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    iget v4, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_7a

    .line 1551
    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    packed-switch v3, :pswitch_data_be

    .line 1566
    const v2, 0x186a00

    .line 1567
    .local v2, "targetBitrate":I
    const/high16 v0, 0x44a00000    # 1280.0f

    .line 1570
    .local v0, "maxSize":F
    :goto_38
    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    iget v4, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    if-le v3, v4, :cond_b7

    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    int-to-float v3, v3

    div-float v1, v0, v3

    .line 1571
    .local v1, "scale":F
    :goto_43
    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    div-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lorg/telegram/ui/VideoEditorActivity;->resultWidth:I

    .line 1572
    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    div-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lorg/telegram/ui/VideoEditorActivity;->resultHeight:I

    .line 1573
    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->bitrate:I

    if-eqz v3, :cond_7a

    .line 1574
    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->originalBitrate:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/VideoEditorActivity;->bitrate:I

    .line 1575
    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->bitrate:I

    div-int/lit8 v3, v3, 0x8

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    float-to-long v4, v3

    iput-wide v4, p0, Lorg/telegram/ui/VideoEditorActivity;->videoFramesSize:J

    .line 1578
    .end local v0    # "maxSize":F
    .end local v1    # "scale":F
    .end local v2    # "targetBitrate":I
    :cond_7a
    return-void

    .line 1535
    :cond_7b
    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    if-gt v3, v8, :cond_83

    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    if-le v3, v8, :cond_87

    .line 1536
    :cond_83
    const/4 v3, 0x4

    iput v3, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    goto :goto_1a

    .line 1537
    :cond_87
    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    if-gt v3, v7, :cond_8f

    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    if-le v3, v7, :cond_93

    .line 1538
    :cond_8f
    const/4 v3, 0x3

    iput v3, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    goto :goto_1a

    .line 1539
    :cond_93
    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    if-gt v3, v6, :cond_9b

    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    if-le v3, v6, :cond_a0

    .line 1540
    :cond_9b
    const/4 v3, 0x2

    iput v3, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    goto/16 :goto_1a

    .line 1542
    :cond_a0
    const/4 v3, 0x1

    iput v3, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    goto/16 :goto_1a

    .line 1553
    :pswitch_a5
    const/high16 v0, 0x43d80000    # 432.0f

    .line 1554
    .restart local v0    # "maxSize":F
    const v2, 0x61a80

    .line 1555
    .restart local v2    # "targetBitrate":I
    goto :goto_38

    .line 1557
    .end local v0    # "maxSize":F
    .end local v2    # "targetBitrate":I
    :pswitch_ab
    const/high16 v0, 0x44200000    # 640.0f

    .line 1558
    .restart local v0    # "maxSize":F
    const v2, 0xdbba0

    .line 1559
    .restart local v2    # "targetBitrate":I
    goto :goto_38

    .line 1561
    .end local v0    # "maxSize":F
    .end local v2    # "targetBitrate":I
    :pswitch_b1
    const/high16 v0, 0x44540000    # 848.0f

    .line 1562
    .restart local v0    # "maxSize":F
    const v2, 0x10c8e0

    .line 1563
    .restart local v2    # "targetBitrate":I
    goto :goto_38

    .line 1570
    :cond_b7
    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    int-to-float v3, v3

    div-float v1, v0, v3

    goto :goto_43

    .line 1551
    nop

    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_a5
        :pswitch_ab
        :pswitch_b1
    .end packed-switch
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 475
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 476
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 477
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, -0xc2c2c3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 478
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200dd

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 479
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "AttachVideo"

    const v2, 0x7f0700c4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 480
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitleColor(I)V

    .line 481
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VideoEditorActivity$3;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 496
    new-instance v0, Lorg/telegram/ui/VideoEditorActivity$4;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/VideoEditorActivity$4;-><init>(Lorg/telegram/ui/VideoEditorActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    .line 662
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 663
    iget-object v9, p0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    check-cast v9, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    .line 664
    .local v9, "frameLayout":Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->setWithoutWindow(Z)V

    .line 665
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VideoEditorActivity$5;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 672
    new-instance v0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    .line 673
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setBackgroundColor(I)V

    .line 674
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->updateSelectedCount(IZ)V

    .line 675
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v1, -0x1

    const/16 v2, 0x30

    const/16 v3, 0x53

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 676
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v0, v0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->cancelButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VideoEditorActivity$6;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 682
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v0, v0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VideoEditorActivity$7;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 714
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 715
    .local v10, "itemsLayout":Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 716
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v1, -0x2

    const/16 v2, 0x30

    const/16 v3, 0x31

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 718
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionItem:Landroid/widget/ImageView;

    .line 719
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionItem:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 720
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->captionItem:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->currentCaption:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38f

    const v0, 0x7f020219

    :goto_c8
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 721
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionItem:Landroid/widget/ImageView;

    const v1, 0x40ffffff

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 722
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionItem:Landroid/widget/ImageView;

    const/16 v1, 0x38

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 723
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionItem:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VideoEditorActivity$8;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 739
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    .line 740
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 741
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    const v1, 0x40ffffff

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 742
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_394

    const/4 v0, 0x0

    :goto_110
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 743
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    const/16 v1, 0x38

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 744
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VideoEditorActivity$9;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 751
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_13f

    .line 753
    :try_start_130
    const-string v0, "video/avc"

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v7

    .line 754
    .local v7, "codecInfo":Landroid/media/MediaCodecInfo;
    if-nez v7, :cond_398

    .line 755
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_13f} :catch_3dd

    .line 778
    .end local v7    # "codecInfo":Landroid/media/MediaCodecInfo;
    :cond_13f
    :goto_13f
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->muteItem:Landroid/widget/ImageView;

    .line 779
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->muteItem:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 780
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->muteItem:Landroid/widget/ImageView;

    const v1, 0x40ffffff

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 782
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->muteItem:Landroid/widget/ImageView;

    const/16 v1, 0x38

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 783
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->muteItem:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VideoEditorActivity$10;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 791
    new-instance v0, Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/VideoTimelineView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    .line 792
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoTimelineView;->setVideoPath(Ljava/lang/String;)V

    .line 793
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$11;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VideoEditorActivity$11;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoTimelineView;->setDelegate(Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;)V

    .line 844
    iget-object v12, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    const/4 v0, -0x1

    const/high16 v1, 0x42300000    # 44.0f

    const/16 v2, 0x53

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x42860000    # 67.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v12, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 846
    new-instance v0, Lorg/telegram/ui/Components/VideoSeekBarView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/VideoSeekBarView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

    .line 847
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$12;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VideoEditorActivity$12;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoSeekBarView;->setDelegate(Lorg/telegram/ui/Components/VideoSeekBarView$SeekBarDelegate;)V

    .line 868
    iget-object v12, p0, Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

    const/4 v0, -0x1

    const/high16 v1, 0x42200000    # 40.0f

    const/16 v2, 0x53

    const/high16 v3, 0x41300000    # 11.0f

    const/4 v4, 0x0

    const/high16 v5, 0x41300000    # 11.0f

    const/high16 v6, 0x42e00000    # 112.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v12, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 870
    new-instance v0, Landroid/view/TextureView;

    invoke-direct {v0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->textureView:Landroid/view/TextureView;

    .line 871
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->textureView:Landroid/view/TextureView;

    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$13;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VideoEditorActivity$13;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 911
    iget-object v12, p0, Lorg/telegram/ui/VideoEditorActivity;->textureView:Landroid/view/TextureView;

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0x33

    const/4 v3, 0x0

    const/high16 v4, 0x41600000    # 14.0f

    const/4 v5, 0x0

    const/high16 v6, 0x430c0000    # 140.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v12, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 913
    new-instance v0, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    .line 914
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 915
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const v1, 0x7f02009b

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setBackgroundResource(I)V

    .line 916
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 917
    iget-object v12, p0, Lorg/telegram/ui/VideoEditorActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v0, 0x36

    const/high16 v1, 0x42580000    # 54.0f

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x428c0000    # 70.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v12, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 919
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    .line 920
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 921
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    const v1, 0x7f020293

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 922
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$14;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VideoEditorActivity$14;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 993
    iget-object v12, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    const/16 v0, 0x64

    const/high16 v1, 0x42c80000    # 100.0f

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x428c0000    # 70.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v12, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 995
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    if-eqz v0, :cond_252

    .line 996
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onDestroy()V

    .line 998
    :cond_252
    new-instance v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v9, v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    .line 999
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setForceFloatingEmoji(Z)V

    .line 1000
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$15;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VideoEditorActivity$15;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setDelegate(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;)V

    .line 1040
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x53

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1041
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onCreate()V

    .line 1043
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 1044
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setTag(Ljava/lang/Object;)V

    .line 1045
    new-instance v0, Lorg/telegram/ui/VideoEditorActivity$16;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/VideoEditorActivity$16;-><init>(Lorg/telegram/ui/VideoEditorActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    .line 1051
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setOrientation(I)V

    .line 1052
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 1053
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setBackgroundColor(I)V

    .line 1054
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1055
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 1056
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOverScrollMode(I)V

    .line 1057
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, -0x1

    const/16 v2, 0x6e

    const/16 v3, 0x53

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1059
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Adapters/MentionsAdapter;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    new-instance v6, Lorg/telegram/ui/VideoEditorActivity$17;

    invoke-direct {v6, p0}, Lorg/telegram/ui/VideoEditorActivity$17;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Adapters/MentionsAdapter;-><init>(Landroid/content/Context;ZJLorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;)V

    iput-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 1141
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setAllowNewMentions(Z)V

    .line 1143
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$18;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VideoEditorActivity$18;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1160
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$19;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VideoEditorActivity$19;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 1185
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_386

    .line 1186
    new-instance v0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    .line 1187
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setBackgroundColor(I)V

    .line 1188
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->updateSelectedCount(IZ)V

    .line 1189
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/high16 v1, 0x42f00000    # 120.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setTranslationY(F)V

    .line 1190
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v0, v0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    const-string v1, "Done"

    const v2, 0x7f0701e8

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1191
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v1, -0x1

    const/16 v2, 0x30

    const/16 v3, 0x53

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1192
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v0, v0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->cancelButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$20;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VideoEditorActivity$20;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1201
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v0, v0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$21;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VideoEditorActivity$21;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1209
    new-instance v0, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;-><init>(Lorg/telegram/ui/VideoEditorActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityChooseView:Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;

    .line 1210
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityChooseView:Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;

    const/high16 v1, 0x42f00000    # 120.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->setTranslationY(F)V

    .line 1211
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityChooseView:Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->setVisibility(I)V

    .line 1212
    iget-object v12, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityChooseView:Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;

    const/4 v0, -0x1

    const/high16 v1, 0x42b40000    # 90.0f

    const/16 v2, 0x53

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x42300000    # 44.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v12, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1215
    :cond_386
    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->updateVideoInfo()V

    .line 1216
    invoke-virtual {p0}, Lorg/telegram/ui/VideoEditorActivity;->updateMuteButton()V

    .line 1218
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    return-object v0

    .line 720
    :cond_38f
    const v0, 0x7f02021a

    goto/16 :goto_c8

    .line 742
    :cond_394
    const/16 v0, 0x8

    goto/16 :goto_110

    .line 757
    .restart local v7    # "codecInfo":Landroid/media/MediaCodecInfo;
    :cond_398
    :try_start_398
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v11

    .line 758
    .local v11, "name":Ljava/lang/String;
    const-string v0, "OMX.google.h264.encoder"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d4

    const-string v0, "OMX.ST.VFM.H264Enc"

    .line 759
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d4

    const-string v0, "OMX.Exynos.avc.enc"

    .line 760
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d4

    const-string v0, "OMX.MARVELL.VIDEO.HW.CODA7542ENCODER"

    .line 761
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d4

    const-string v0, "OMX.MARVELL.VIDEO.H264ENCODER"

    .line 762
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d4

    const-string v0, "OMX.k3.video.encoder.avc"

    .line 763
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d4

    const-string v0, "OMX.TI.DUCATI1.VIDEO.H264E"

    .line 764
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3ea

    .line 765
    :cond_3d4
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_3db
    .catch Ljava/lang/Exception; {:try_start_398 .. :try_end_3db} :catch_3dd

    goto/16 :goto_13f

    .line 772
    .end local v7    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v11    # "name":Ljava/lang/String;
    :catch_3dd
    move-exception v8

    .line 773
    .local v8, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 774
    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_13f

    .line 767
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v11    # "name":Ljava/lang/String;
    :cond_3ea
    :try_start_3ea
    const-string v0, "video/avc"

    invoke-static {v7, v0}, Lorg/telegram/messenger/MediaController;->selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_13f

    .line 768
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_3f9
    .catch Ljava/lang/Exception; {:try_start_3ea .. :try_end_3f9} :catch_3dd

    goto/16 :goto_13f
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 12
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1388
    sget v6, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    if-ne p1, v6, :cond_b

    .line 1389
    invoke-virtual {p0}, Lorg/telegram/ui/VideoEditorActivity;->removeSelfFromStack()V

    .line 1416
    :cond_a
    :goto_a
    return-void

    .line 1390
    :cond_b
    sget v6, Lorg/telegram/messenger/NotificationCenter;->FilePreparingFailed:I

    if-ne p1, v6, :cond_50

    .line 1391
    aget-object v1, p2, v5

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 1392
    .local v1, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-boolean v6, p0, Lorg/telegram/ui/VideoEditorActivity;->loadInitialVideo:Z

    if-eqz v6, :cond_24

    .line 1393
    iput-boolean v5, p0, Lorg/telegram/ui/VideoEditorActivity;->loadInitialVideo:Z

    .line 1394
    iget-object v4, p0, Lorg/telegram/ui/VideoEditorActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 1395
    iget-object v4, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    invoke-direct {p0, v4}, Lorg/telegram/ui/VideoEditorActivity;->reinitPlayer(Ljava/lang/String;)Z

    goto :goto_a

    .line 1396
    :cond_24
    iget-boolean v6, p0, Lorg/telegram/ui/VideoEditorActivity;->tryStartRequestPreviewOnFinish:Z

    if-eqz v6, :cond_3c

    .line 1397
    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->destroyPlayer()V

    .line 1398
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6, v7, v4}, Lorg/telegram/messenger/MediaController;->scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;Z)Z

    move-result v6

    if-nez v6, :cond_3a

    :goto_37
    iput-boolean v4, p0, Lorg/telegram/ui/VideoEditorActivity;->tryStartRequestPreviewOnFinish:Z

    goto :goto_a

    :cond_3a
    move v4, v5

    goto :goto_37

    .line 1399
    :cond_3c
    iget-object v4, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v1, v4, :cond_a

    .line 1400
    iput-boolean v5, p0, Lorg/telegram/ui/VideoEditorActivity;->requestingPreview:Z

    .line 1401
    iget-object v4, p0, Lorg/telegram/ui/VideoEditorActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 1402
    iget-object v4, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    const v5, 0x7f020293

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a

    .line 1404
    .end local v1    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_50
    sget v6, Lorg/telegram/messenger/NotificationCenter;->FileNewChunkAvailable:I

    if-ne p1, v6, :cond_a

    .line 1405
    aget-object v1, p2, v5

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 1406
    .restart local v1    # "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v1, v6, :cond_a

    .line 1407
    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/String;

    .line 1408
    .local v0, "finalPath":Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v4, p2, v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1409
    .local v2, "finalSize":J
    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-eqz v4, :cond_a

    .line 1410
    iput-boolean v5, p0, Lorg/telegram/ui/VideoEditorActivity;->requestingPreview:Z

    .line 1411
    iget-object v4, p0, Lorg/telegram/ui/VideoEditorActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 1412
    invoke-direct {p0, v0}, Lorg/telegram/ui/VideoEditorActivity;->reinitPlayer(Ljava/lang/String;)Z

    goto :goto_a
.end method

.method public onFragmentCreate()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 425
    iget-boolean v2, p0, Lorg/telegram/ui/VideoEditorActivity;->created:Z

    if-eqz v2, :cond_7

    .line 441
    :goto_6
    return v0

    .line 428
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    if-eqz v2, :cond_11

    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->processOpenVideo()Z

    move-result v2

    if-nez v2, :cond_13

    :cond_11
    move v0, v1

    .line 429
    goto :goto_6

    .line 431
    :cond_13
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/telegram/ui/VideoEditorActivity;->reinitPlayer(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    move v0, v1

    .line 432
    goto :goto_6

    .line 435
    :cond_1d
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 436
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->FilePreparingFailed:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 437
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->FileNewChunkAvailable:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 439
    iput-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->created:Z

    .line 441
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    goto :goto_6
.end method

.method public onFragmentDestroy()V
    .registers 4

    .prologue
    .line 447
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/VideoEditorActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_53

    .line 451
    :goto_d
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    if-eqz v1, :cond_16

    .line 452
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoTimelineView;->destroy()V

    .line 454
    :cond_16
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_27

    .line 456
    :try_start_1a
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 457
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 458
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_27} :catch_58

    .line 463
    :cond_27
    :goto_27
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    if-eqz v1, :cond_30

    .line 464
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onDestroy()V

    .line 466
    :cond_30
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/telegram/ui/VideoEditorActivity;->requestVideoPreview(I)V

    .line 467
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 468
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->FilePreparingFailed:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 469
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->FileNewChunkAvailable:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 470
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 471
    return-void

    .line 448
    :catch_53
    move-exception v0

    .line 449
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_d

    .line 459
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_58
    move-exception v0

    .line 460
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_27
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 1235
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 1236
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_11

    .line 1237
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/VideoEditorActivity;->closeCaptionEnter(Z)V

    .line 1239
    :cond_11
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 1243
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 1244
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->textureView:Landroid/view/TextureView;

    if-eqz v1, :cond_22

    .line 1246
    :try_start_7
    iget-boolean v1, p0, Lorg/telegram/ui/VideoEditorActivity;->playerPrepared:Z

    if-eqz v1, :cond_22

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_22

    .line 1247
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoSeekBarView;->getProgress()F

    move-result v2

    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_22} :catch_23

    .line 1253
    :cond_22
    :goto_22
    return-void

    .line 1249
    :catch_23
    move-exception v0

    .line 1250
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_22
.end method

.method public setDelegate(Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;)V
    .registers 2
    .param p1, "videoEditorActivityDelegate"    # Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;

    .prologue
    .line 1528
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity;->delegate:Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;

    .line 1529
    return-void
.end method

.method public setParentChatActivity(Lorg/telegram/ui/ChatActivity;)V
    .registers 2
    .param p1, "chatActivity"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 1299
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    .line 1300
    return-void
.end method

.method public updateMuteButton()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1419
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_16

    .line 1420
    iget-boolean v2, p0, Lorg/telegram/ui/VideoEditorActivity;->muteVideo:Z

    if-eqz v2, :cond_5b

    const/4 v0, 0x0

    .line 1421
    .local v0, "volume":F
    :goto_d
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_16

    .line 1422
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1425
    .end local v0    # "volume":F
    :cond_16
    iget-boolean v2, p0, Lorg/telegram/ui/VideoEditorActivity;->muteVideo:Z

    if-eqz v2, :cond_5d

    .line 1426
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v2, "AttachGif"

    const v3, 0x7f0700bf

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1427
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1428
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->muteItem:Landroid/widget/ImageView;

    const v2, 0x7f020297

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1429
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4f

    .line 1430
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1431
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1432
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1434
    :cond_4f
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    const v2, 0x46ea6000    # 30000.0f

    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/VideoTimelineView;->setMaxProgressDiff(F)V

    .line 1446
    :goto_5a
    return-void

    :cond_5b
    move v0, v1

    .line 1420
    goto :goto_d

    .line 1436
    :cond_5d
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "AttachVideo"

    const v4, 0x7f0700c4

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1437
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity;->currentSubtitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1438
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->muteItem:Landroid/widget/ImageView;

    const v3, 0x7f020298

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1439
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_91

    .line 1440
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1441
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1442
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1444
    :cond_91
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/VideoTimelineView;->setMaxProgressDiff(F)V

    goto :goto_5a
.end method
