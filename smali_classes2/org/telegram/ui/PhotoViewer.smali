.class public Lorg/telegram/ui/PhotoViewer;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PhotoViewer$QualityChooseView;,
        Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;,
        Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;,
        Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;,
        Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;,
        Lorg/telegram/ui/PhotoViewer$PhotoProgressView;,
        Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/ui/PhotoViewer; = null
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator; = null

.field private static final gallery_menu_delete:I = 0x6

.field private static final gallery_menu_masks:I = 0xd

.field private static final gallery_menu_openin:I = 0xb

.field private static final gallery_menu_save:I = 0x1

.field private static final gallery_menu_send:I = 0x3

.field private static final gallery_menu_share:I = 0xa

.field private static final gallery_menu_showall:I = 0x2

.field private static progressDrawables:[Landroid/graphics/drawable/Drawable;

.field private static progressPaint:Landroid/graphics/Paint;


# instance fields
.field private actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private actvityContext:Landroid/content/Context;

.field private allowMentions:Z

.field private allowShare:Z

.field private animateToScale:F

.field private animateToX:F

.field private animateToY:F

.field private animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

.field private animationEndRunnable:Ljava/lang/Runnable;

.field private animationInProgress:I

.field private animationStartTime:J

.field private animationValue:F

.field private animationValues:[[F

.field private applying:Z

.field private aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

.field private attachedToWindow:Z

.field private audioFramesSize:J

.field private avatarsArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Photo;",
            ">;"
        }
    .end annotation
.end field

.field private avatarsDialogId:I

.field private backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

.field private bitrate:I

.field private blackPaint:Landroid/graphics/Paint;

.field private bottomLayout:Landroid/widget/FrameLayout;

.field private bottomTouchEnabled:Z

.field private canDragDown:Z

.field private canShowBottom:Z

.field private canZoom:Z

.field private captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

.field private captionItem:Landroid/widget/ImageView;

.field private captionTextView:Landroid/widget/TextView;

.field private captionTextViewNew:Landroid/widget/TextView;

.field private captionTextViewOld:Landroid/widget/TextView;

.field private centerImage:Lorg/telegram/messenger/ImageReceiver;

.field private changeModeAnimation:Landroid/animation/AnimatorSet;

.field private changingPage:Z

.field private checkImageView:Lorg/telegram/ui/Components/CheckBox;

.field private classGuid:I

.field private compressItem:Landroid/widget/ImageView;

.field private compressionsCount:I

.field private containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

.field private cropItem:Landroid/widget/ImageView;

.field private currentActionBarAnimation:Landroid/animation/AnimatorSet;

.field private currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

.field private currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

.field private currentDialogId:J

.field private currentEditMode:I

.field private currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private currentFileNames:[Ljava/lang/String;

.field private currentIndex:I

.field private currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private currentPathObject:Ljava/lang/String;

.field private currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

.field private currentPlayingVideoFile:Ljava/io/File;

.field private currentSubtitle:Ljava/lang/String;

.field private currentThumb:Landroid/graphics/Bitmap;

.field private currentUserAvatarLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private dateTextView:Landroid/widget/TextView;

.field private disableShowCheck:Z

.field private discardTap:Z

.field private doneButtonPressed:Z

.field private dontResetZoomOnFirstLayout:Z

.field private doubleTap:Z

.field private dragY:F

.field private draggingDown:Z

.field private editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

.field private endReached:[Z

.field private endTime:J

.field private estimatedDuration:J

.field private estimatedSize:I

.field private gestureDetector:Landroid/view/GestureDetector;

.field private hideAfterAnimation:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

.field private ignoreDidSetImage:Z

.field private imageMoveAnimation:Landroid/animation/AnimatorSet;

.field private imagesArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private imagesArrLocals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private imagesArrLocations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$FileLocation;",
            ">;"
        }
    .end annotation
.end field

.field private imagesArrLocationsSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private imagesArrTemp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private imagesByIds:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private imagesByIdsTemp:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private inPreview:Z

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private invalidCoords:Z

.field private isActionBarVisible:Z

.field private isFirstLoading:Z

.field private isPainting:Z

.field private isPlaying:Z

.field private isVisible:Z

.field private lastInsets:Ljava/lang/Object;

.field private lastTitle:Ljava/lang/String;

.field private leftImage:Lorg/telegram/messenger/ImageReceiver;

.field private loadInitialVideo:Z

.field private loadingMoreImages:Z

.field private masksItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private maxX:F

.field private maxY:F

.field private mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private mentionListAnimation:Landroid/animation/AnimatorSet;

.field private mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

.field private menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private mergeDialogId:J

.field private minX:F

.field private minY:F

.field private moveStartX:F

.field private moveStartY:F

.field private moving:Z

.field private muteItem:Landroid/widget/ImageView;

.field private muteVideo:Z

.field private nameTextView:Landroid/widget/TextView;

.field private needCaptionLayout:Z

.field private needSearchImageInArr:Z

.field private opennedFromMedia:Z

.field private originalBitrate:I

.field private originalHeight:I

.field private originalSize:J

.field private originalWidth:I

.field private paintItem:Landroid/widget/ImageView;

.field private parentActivity:Landroid/app/Activity;

.field private parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

.field private parentChatActivity:Lorg/telegram/ui/ChatActivity;

.field private photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

.field private photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

.field private photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

.field private photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

.field private pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

.field private pinchCenterX:F

.field private pinchCenterY:F

.field private pinchStartDistance:F

.field private pinchStartScale:F

.field private pinchStartX:F

.field private pinchStartY:F

.field private placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

.field private previewViewEnd:I

.field private previousCompression:I

.field private progressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

.field private qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

.field private qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

.field private requestingPreview:Z

.field private resetButton:Landroid/widget/TextView;

.field private resultHeight:I

.field private resultWidth:I

.field private rightImage:Lorg/telegram/messenger/ImageReceiver;

.field private rotationValue:I

.field private scale:F

.field private scroller:Landroid/widget/Scroller;

.field private selectedCompression:I

.field private sendPhotoType:I

.field private shareButton:Landroid/widget/ImageView;

.field private showAfterAnimation:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

.field private startTime:J

.field private switchImageAfterAnimation:I

.field private textureUploaded:Z

.field private totalImagesCount:I

.field private totalImagesCountMerge:I

.field private transitionAnimationStartTime:J

.field private translationX:F

.field private translationY:F

.field private tryStartRequestPreviewOnFinish:Z

.field private tuneItem:Landroid/widget/ImageView;

.field private updateProgressRunnable:Ljava/lang/Runnable;

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private videoCrossfadeAlpha:F

.field private videoCrossfadeAlphaLastTime:J

.field private videoCrossfadeStarted:Z

.field private videoDuration:F

.field private videoFramesSize:J

.field private videoPlayButton:Landroid/widget/ImageView;

.field private videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

.field private videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

.field private videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

.field private videoPlayerTime:Landroid/widget/TextView;

.field private videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

.field private videoTextureView:Landroid/view/TextureView;

.field private videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

.field private videoTimelineViewContainer:Landroid/widget/FrameLayout;

.field private visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private wasLayout:Z

.field private windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private windowView:Landroid/widget/FrameLayout;

.field private zoomAnimation:Z

.field private zooming:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 777
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/PhotoViewer;->Instance:Lorg/telegram/ui/PhotoViewer;

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .prologue
    const/high16 v6, -0x1000000

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->isActionBarVisible:Z

    .line 161
    new-instance v0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    invoke-direct {v0, p0, v6}, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;-><init>(Lorg/telegram/ui/PhotoViewer;I)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    .line 162
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->blackPaint:Landroid/graphics/Paint;

    .line 167
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    .line 185
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    .line 194
    iput-boolean v4, p0, Lorg/telegram/ui/PhotoViewer;->isPainting:Z

    .line 208
    new-instance v0, Lorg/telegram/ui/PhotoViewer$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PhotoViewer$1;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->updateProgressRunnable:Ljava/lang/Runnable;

    .line 243
    const/16 v0, 0x8

    filled-new-array {v3, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    .line 263
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    .line 264
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    .line 265
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    .line 271
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    .line 285
    new-array v0, v3, [Z

    fill-array-data v0, :array_c8

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    .line 297
    iput v5, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    .line 307
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 309
    iput v5, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    .line 320
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->canZoom:Z

    .line 326
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->canDragDown:Z

    .line 333
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->bottomTouchEnabled:Z

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    .line 336
    new-array v0, v3, [Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesByIdsTemp:[Ljava/util/HashMap;

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    .line 338
    new-array v0, v3, [Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentUserAvatarLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 5516
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    .line 793
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->blackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 794
    return-void

    .line 285
    :array_c8
    .array-data 1
        0x0t
        0x1t
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/SeekBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PhotoViewer;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    return v0
.end method

.method static synthetic access$10000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$10100(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$10200(Lorg/telegram/ui/PhotoViewer;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->textureUploaded:Z

    return v0
.end method

.method static synthetic access$10202(Lorg/telegram/ui/PhotoViewer;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->textureUploaded:Z

    return p1
.end method

.method static synthetic access$10302(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Lorg/telegram/ui/ActionBar/AlertDialog;

    .prologue
    .line 135
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object p1
.end method

.method static synthetic access$10500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    return-object v0
.end method

.method static synthetic access$10600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoFilterView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    return-object v0
.end method

.method static synthetic access$10602(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Lorg/telegram/ui/Components/PhotoFilterView;

    .prologue
    .line 135
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    return-object p1
.end method

.method static synthetic access$10700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoPaintView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    return-object v0
.end method

.method static synthetic access$10702(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/PhotoPaintView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Lorg/telegram/ui/Components/PhotoPaintView;

    .prologue
    .line 135
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    return-object p1
.end method

.method static synthetic access$10800(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$10802(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 135
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$10902(Lorg/telegram/ui/PhotoViewer;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->applying:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/ChatAttachAlert;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    return-object v0
.end method

.method static synthetic access$11002(Lorg/telegram/ui/PhotoViewer;F)F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # F

    .prologue
    .line 135
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    return p1
.end method

.method static synthetic access$11102(Lorg/telegram/ui/PhotoViewer;F)F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # F

    .prologue
    .line 135
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->animateToX:F

    return p1
.end method

.method static synthetic access$11202(Lorg/telegram/ui/PhotoViewer;F)F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # F

    .prologue
    .line 135
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    return p1
.end method

.method static synthetic access$11300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$11400(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11500(Lorg/telegram/ui/PhotoViewer;FFFZ)V
    .registers 5
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # Z

    .prologue
    .line 135
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    return-void
.end method

.method static synthetic access$11600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11702(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 135
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$11800(Lorg/telegram/ui/PhotoViewer;I)I
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$11900(Lorg/telegram/ui/PhotoViewer;I)I
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$12002(Lorg/telegram/ui/PhotoViewer;J)J
    .registers 4
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # J

    .prologue
    .line 135
    iput-wide p1, p0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    return-wide p1
.end method

.method static synthetic access$12102(Lorg/telegram/ui/PhotoViewer;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    return p1
.end method

.method static synthetic access$12200(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$12202(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 135
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$12300(Lorg/telegram/ui/PhotoViewer;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    return v0
.end method

.method static synthetic access$12402(Lorg/telegram/ui/PhotoViewer;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 135
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    return p1
.end method

.method static synthetic access$12502(Lorg/telegram/ui/PhotoViewer;J)J
    .registers 4
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # J

    .prologue
    .line 135
    iput-wide p1, p0, Lorg/telegram/ui/PhotoViewer;->transitionAnimationStartTime:J

    return-wide p1
.end method

.method static synthetic access$12600(Lorg/telegram/ui/PhotoViewer;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->setImages()V

    return-void
.end method

.method static synthetic access$12700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->showAfterAnimation:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    return-object v0
.end method

.method static synthetic access$12800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->hideAfterAnimation:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    return-object v0
.end method

.method static synthetic access$12900(Lorg/telegram/ui/PhotoViewer;)Landroid/view/WindowManager$LayoutParams;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$1300()Landroid/view/animation/DecelerateInterpolator;
    .registers 1

    .prologue
    .line 135
    sget-object v0, Lorg/telegram/ui/PhotoViewer;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object v0
.end method

.method static synthetic access$13000(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$13002(Lorg/telegram/ui/PhotoViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 135
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1302(Landroid/view/animation/DecelerateInterpolator;)Landroid/view/animation/DecelerateInterpolator;
    .registers 1
    .param p0, "x0"    # Landroid/view/animation/DecelerateInterpolator;

    .prologue
    .line 135
    sput-object p0, Lorg/telegram/ui/PhotoViewer;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object p0
.end method

.method static synthetic access$13200(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->onPhotoClosed(Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    return-void
.end method

.method static synthetic access$13300(Lorg/telegram/ui/PhotoViewer;I)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->redraw(I)V

    return-void
.end method

.method static synthetic access$13400(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$13402(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 135
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$13500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$QualityChooseView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    return-object v0
.end method

.method static synthetic access$13600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    return-object v0
.end method

.method static synthetic access$1400()Landroid/graphics/Paint;
    .registers 1

    .prologue
    .line 135
    sget-object v0, Lorg/telegram/ui/PhotoViewer;->progressPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1402(Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .registers 1
    .param p0, "x0"    # Landroid/graphics/Paint;

    .prologue
    .line 135
    sput-object p0, Lorg/telegram/ui/PhotoViewer;->progressPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/PhotoViewer;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/PhotoViewer;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$1700()[Landroid/graphics/drawable/Drawable;
    .registers 1

    .prologue
    .line 135
    sget-object v0, Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/PhotoViewer;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->inPreview:Z

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/PhotoViewer;Landroid/graphics/Canvas;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Landroid/graphics/Canvas;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/PhotoViewer;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->bottomTouchEnabled:Z

    return v0
.end method

.method static synthetic access$2802(Lorg/telegram/ui/PhotoViewer;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->bottomTouchEnabled:Z

    return p1
.end method

.method static synthetic access$2900(Lorg/telegram/ui/PhotoViewer;Landroid/view/MotionEvent;)Z
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/ClippingImageView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    return-object v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->lastInsets:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3102(Lorg/telegram/ui/PhotoViewer;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 135
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->lastInsets:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3200(Lorg/telegram/ui/PhotoViewer;)Landroid/graphics/Paint;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->blackPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    return-object v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/PhotoViewer;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->wasLayout:Z

    return v0
.end method

.method static synthetic access$3402(Lorg/telegram/ui/PhotoViewer;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->wasLayout:Z

    return p1
.end method

.method static synthetic access$3500(Lorg/telegram/ui/PhotoViewer;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->dontResetZoomOnFirstLayout:Z

    return v0
.end method

.method static synthetic access$3502(Lorg/telegram/ui/PhotoViewer;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->dontResetZoomOnFirstLayout:Z

    return p1
.end method

.method static synthetic access$3600(Lorg/telegram/ui/PhotoViewer;)F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    return v0
.end method

.method static synthetic access$3602(Lorg/telegram/ui/PhotoViewer;F)F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # F

    .prologue
    .line 135
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    return p1
.end method

.method static synthetic access$3702(Lorg/telegram/ui/PhotoViewer;F)F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # F

    .prologue
    .line 135
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    return p1
.end method

.method static synthetic access$3802(Lorg/telegram/ui/PhotoViewer;F)F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # F

    .prologue
    .line 135
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    return p1
.end method

.method static synthetic access$3900(Lorg/telegram/ui/PhotoViewer;F)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # F

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelineView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/PhotoViewer;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->setScaleToFill()V

    return-void
.end method

.method static synthetic access$4102(Lorg/telegram/ui/PhotoViewer;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->attachedToWindow:Z

    return p1
.end method

.method static synthetic access$4200(Lorg/telegram/ui/PhotoViewer;Z)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->closeCaptionEnter(Z)V

    return-void
.end method

.method static synthetic access$4300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/PhotoViewer;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    return v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/tgnet/TLRPC$FileLocation;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    return-object v0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/PhotoViewer;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    return v0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/PhotoViewer;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    return v0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/PhotoViewer;)J
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    return-wide v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$5002(Lorg/telegram/ui/PhotoViewer;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->disableShowCheck:Z

    return p1
.end method

.method static synthetic access$5100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    return-object v0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/PhotoViewer;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    return v0
.end method

.method static synthetic access$5302(Lorg/telegram/ui/PhotoViewer;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 135
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    return p1
.end method

.method static synthetic access$5400(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/tgnet/TLRPC$FileLocation;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentUserAvatarLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    return-object v0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/PhotoViewer;IZ)V
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    return-void
.end method

.method static synthetic access$5900(Lorg/telegram/ui/PhotoViewer;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->onSharePressed()V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/PhotoViewer;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateVideoPlayerTime()V

    return-void
.end method

.method static synthetic access$6000(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/PhotoViewer;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->openCaptionEnter()V

    return-void
.end method

.method static synthetic access$6200(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/PhotoViewer;)F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    return v0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/PhotoViewer;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateVideoInfo()V

    return-void
.end method

.method static synthetic access$6500(Lorg/telegram/ui/PhotoViewer;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    return v0
.end method

.method static synthetic access$6502(Lorg/telegram/ui/PhotoViewer;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 135
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    return p1
.end method

.method static synthetic access$6600(Lorg/telegram/ui/PhotoViewer;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->previousCompression:I

    return v0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/PhotoViewer;Z)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->didChangedCompressionLevel(Z)V

    return-void
.end method

.method static synthetic access$6800(Lorg/telegram/ui/PhotoViewer;Z)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->showQualityView(Z)V

    return-void
.end method

.method static synthetic access$6900(Lorg/telegram/ui/PhotoViewer;I)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->requestVideoPreview(I)V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/PhotoViewer;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isPlaying:Z

    return v0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    return-object v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/PhotoViewer;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->isPlaying:Z

    return p1
.end method

.method static synthetic access$7100(Lorg/telegram/ui/PhotoViewer;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->doneButtonPressed:Z

    return v0
.end method

.method static synthetic access$7102(Lorg/telegram/ui/PhotoViewer;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->doneButtonPressed:Z

    return p1
.end method

.method static synthetic access$7200(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionItem:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/PhotoViewer;)J
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->startTime:J

    return-wide v0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/PhotoViewer;)J
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->endTime:J

    return-wide v0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/PhotoViewer;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    return v0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/PhotoViewer;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    return v0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/PhotoViewer;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    return v0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/PhotoViewer;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->bitrate:I

    return v0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/PhotoViewer;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentPlayingVideoFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->updateProgressRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/PhotoViewer;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->estimatedSize:I

    return v0
.end method

.method static synthetic access$8100(Lorg/telegram/ui/PhotoViewer;)J
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->estimatedDuration:J

    return-wide v0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8300(Lorg/telegram/ui/PhotoViewer;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    return v0
.end method

.method static synthetic access$8400(Lorg/telegram/ui/PhotoViewer;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    return v0
.end method

.method static synthetic access$8402(Lorg/telegram/ui/PhotoViewer;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    return p1
.end method

.method static synthetic access$8500(Lorg/telegram/ui/PhotoViewer;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->originalBitrate:I

    return v0
.end method

.method static synthetic access$8600(Lorg/telegram/ui/PhotoViewer;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateWidthHeightBitrateForCompression()V

    return-void
.end method

.method static synthetic access$8700(Lorg/telegram/ui/PhotoViewer;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->resultWidth:I

    return v0
.end method

.method static synthetic access$8800(Lorg/telegram/ui/PhotoViewer;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->resultHeight:I

    return v0
.end method

.method static synthetic access$8900(Lorg/telegram/ui/PhotoViewer;I)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->switchToEditMode(I)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$9000(Lorg/telegram/ui/PhotoViewer;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    return v0
.end method

.method static synthetic access$9002(Lorg/telegram/ui/PhotoViewer;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # I

    .prologue
    .line 135
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    return p1
.end method

.method static synthetic access$9100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    return-object v0
.end method

.method static synthetic access$9200(Lorg/telegram/ui/PhotoViewer;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->applyCurrentEditMode()V

    return-void
.end method

.method static synthetic access$9300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageReceiver;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method static synthetic access$9400(Lorg/telegram/ui/PhotoViewer;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    return v0
.end method

.method static synthetic access$9500(Lorg/telegram/ui/PhotoViewer;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->ignoreDidSetImage:Z

    return v0
.end method

.method static synthetic access$9600(Lorg/telegram/ui/PhotoViewer;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateSelectedCount()V

    return-void
.end method

.method static synthetic access$9700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Adapters/MentionsAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    return-object v0
.end method

.method static synthetic access$9800(Lorg/telegram/ui/PhotoViewer;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->allowMentions:Z

    return v0
.end method

.method static synthetic access$9802(Lorg/telegram/ui/PhotoViewer;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->allowMentions:Z

    return p1
.end method

.method static synthetic access$9900(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$9902(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 135
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private animateTo(FFFZ)V
    .registers 11
    .param p1, "newScale"    # F
    .param p2, "newTx"    # F
    .param p3, "newTy"    # F
    .param p4, "isZoom"    # Z

    .prologue
    .line 5060
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZI)V

    .line 5061
    return-void
.end method

.method private animateTo(FFFZI)V
    .registers 11
    .param p1, "newScale"    # F
    .param p2, "newTx"    # F
    .param p3, "newTy"    # F
    .param p4, "isZoom"    # Z
    .param p5, "duration"    # I

    .prologue
    .line 5064
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_13

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_13

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_13

    .line 5086
    :goto_12
    return-void

    .line 5067
    :cond_13
    iput-boolean p4, p0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    .line 5068
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    .line 5069
    iput p2, p0, Lorg/telegram/ui/PhotoViewer;->animateToX:F

    .line 5070
    iput p3, p0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    .line 5071
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    .line 5072
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    .line 5073
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    const-string v3, "animationValue"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_5c

    .line 5074
    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 5073
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 5076
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5077
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    int-to-long v2, p5

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 5078
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$62;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$62;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5085
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_12

    .line 5073
    :array_5c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private applyCurrentEditMode()V
    .registers 14

    .prologue
    .line 2595
    const/4 v0, 0x0

    .line 2596
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    .line 2597
    .local v12, "stickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;"
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_122

    .line 2598
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoCropView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2605
    :cond_d
    :goto_d
    if-eqz v0, :cond_121

    .line 2606
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0x50

    const/4 v4, 0x0

    const/16 v5, 0x65

    const/16 v6, 0x65

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v11

    .line 2607
    .local v11, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v11, :cond_121

    .line 2608
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 2609
    .local v8, "object":Ljava/lang/Object;
    instance-of v1, v8, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v1, :cond_142

    move-object v7, v8

    .line 2610
    check-cast v7, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 2611
    .local v7, "entry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    const/4 v1, 0x1

    invoke-static {v11, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    .line 2612
    const/high16 v1, 0x42f00000    # 120.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42f00000    # 120.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0x46

    const/4 v4, 0x0

    const/16 v5, 0x65

    const/16 v6, 0x65

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v11

    .line 2613
    if-eqz v11, :cond_66

    .line 2614
    const/4 v1, 0x1

    invoke-static {v11, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->thumbPath:Ljava/lang/String;

    .line 2616
    :cond_66
    if-eqz v12, :cond_6d

    .line 2617
    iget-object v1, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2630
    .end local v7    # "entry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_6d
    :goto_6d
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v1, :cond_9e

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-eqz v1, :cond_9e

    .line 2631
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v1, v2}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->updatePhotoAtIndex(I)V

    .line 2632
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v1, v2}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->isPhotoChecked(I)Z

    move-result v1

    if-nez v1, :cond_9e

    .line 2633
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v1, v2}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->setPhotoChecked(I)V

    .line 2634
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v2, v3}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->isPhotoChecked(I)Z

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/CheckBox;->setChecked(ZZ)V

    .line 2635
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateSelectedCount()V

    .line 2638
    :cond_9e
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_102

    .line 2639
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoCropView;->getRectSizeX()F

    move-result v1

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v9, v1, v2

    .line 2640
    .local v9, "scaleX":F
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoCropView;->getRectSizeY()F

    move-result v1

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v10, v1, v2

    .line 2641
    .local v10, "scaleY":F
    cmpl-float v1, v9, v10

    if-lez v1, :cond_183

    .end local v9    # "scaleX":F
    :goto_c1
    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    .line 2642
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoCropView;->getRectX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoCropView;->getRectSizeX()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    .line 2643
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoCropView;->getRectY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoCropView;->getRectSizeY()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 2644
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    .line 2645
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->applying:Z

    .line 2647
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoCropView;->onDisappear()V

    .line 2649
    .end local v10    # "scaleY":F
    :cond_102
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 2650
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setOrientation(IZ)V

    .line 2651
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->ignoreDidSetImage:Z

    .line 2652
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2653
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->ignoreDidSetImage:Z

    .line 2654
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 2657
    .end local v8    # "object":Ljava/lang/Object;
    .end local v11    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_121
    return-void

    .line 2599
    :cond_122
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_12f

    .line 2600
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_d

    .line 2601
    :cond_12f
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_d

    .line 2602
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoPaintView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2603
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoPaintView;->getMasks()Ljava/util/ArrayList;

    move-result-object v12

    goto/16 :goto_d

    .line 2619
    .restart local v8    # "object":Ljava/lang/Object;
    .restart local v11    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_142
    instance-of v1, v8, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v1, :cond_6d

    move-object v7, v8

    .line 2620
    check-cast v7, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 2621
    .local v7, "entry":Lorg/telegram/messenger/MediaController$SearchImage;
    const/4 v1, 0x1

    invoke-static {v11, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lorg/telegram/messenger/MediaController$SearchImage;->imagePath:Ljava/lang/String;

    .line 2622
    const/high16 v1, 0x42f00000    # 120.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42f00000    # 120.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0x46

    const/4 v4, 0x0

    const/16 v5, 0x65

    const/16 v6, 0x65

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v11

    .line 2623
    if-eqz v11, :cond_17a

    .line 2624
    const/4 v1, 0x1

    invoke-static {v11, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lorg/telegram/messenger/MediaController$SearchImage;->thumbPath:Ljava/lang/String;

    .line 2626
    :cond_17a
    if-eqz v12, :cond_6d

    .line 2627
    iget-object v1, v7, Lorg/telegram/messenger/MediaController$SearchImage;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6d

    .end local v7    # "entry":Lorg/telegram/messenger/MediaController$SearchImage;
    .restart local v9    # "scaleX":F
    .restart local v10    # "scaleY":F
    :cond_183
    move v9, v10

    .line 2641
    goto/16 :goto_c1
.end method

.method private checkAnimation()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 4125
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    if-eqz v1, :cond_24

    .line 4126
    iget-wide v2, p0, Lorg/telegram/ui/PhotoViewer;->transitionAnimationStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_24

    .line 4127
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_22

    .line 4128
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 4129
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    .line 4131
    :cond_22
    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    .line 4134
    :cond_24
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    if-eqz v1, :cond_29

    const/4 v0, 0x1

    :cond_29
    return v0
.end method

.method private checkMinMax(Z)V
    .registers 6
    .param p1, "zoom"    # Z

    .prologue
    .line 5025
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    .line 5026
    .local v0, "moveToX":F
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 5027
    .local v1, "moveToY":F
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    invoke-direct {p0, v2}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 5028
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_23

    .line 5029
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    .line 5033
    :cond_13
    :goto_13
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2e

    .line 5034
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    .line 5038
    :cond_1d
    :goto_1d
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    invoke-direct {p0, v2, v0, v1, p1}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    .line 5039
    return-void

    .line 5030
    :cond_23
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_13

    .line 5031
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    goto :goto_13

    .line 5035
    :cond_2e
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1d

    .line 5036
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    goto :goto_1d
.end method

.method private checkProgress(IZ)V
    .registers 14
    .param p1, "a"    # I
    .param p2, "animated"    # Z

    .prologue
    .line 3880
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v7, v7, p1

    if-eqz v7, :cond_1c8

    .line 3881
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    .line 3882
    .local v2, "index":I
    const/4 v7, 0x1

    if-ne p1, v7, :cond_75

    .line 3883
    add-int/lit8 v2, v2, 0x1

    .line 3887
    :cond_d
    :goto_d
    const/4 v1, 0x0

    .line 3888
    .local v1, "f":Ljava/io/File;
    const/4 v3, 0x0

    .line 3889
    .local v3, "isVideo":Z
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v7, :cond_7b

    .line 3890
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    .line 3891
    .local v5, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v7, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_35

    .line 3892
    new-instance v1, Ljava/io/File;

    .end local v1    # "f":Ljava/io/File;
    iget-object v7, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3893
    .restart local v1    # "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_35

    .line 3894
    const/4 v1, 0x0

    .line 3897
    :cond_35
    if-nez v1, :cond_3d

    .line 3898
    iget-object v7, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v1

    .line 3900
    :cond_3d
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v3

    .line 3927
    .end local v5    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_41
    :goto_41
    if-eqz v1, :cond_178

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_178

    .line 3928
    if-eqz v3, :cond_16e

    .line 3929
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v7, v7, p1

    const/4 v8, 0x3

    invoke-virtual {v7, v8, p2}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    .line 3949
    :goto_53
    if-nez p1, :cond_74

    .line 3950
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_71

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    if-eqz v7, :cond_1c5

    if-nez v3, :cond_1c5

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    # getter for: Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I
    invoke-static {v7}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->access$10400(Lorg/telegram/ui/PhotoViewer$PhotoProgressView;)I

    move-result v7

    if-eqz v7, :cond_1c5

    :cond_71
    const/4 v7, 0x1

    :goto_72
    iput-boolean v7, p0, Lorg/telegram/ui/PhotoViewer;->canZoom:Z

    .line 3955
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "index":I
    .end local v3    # "isVideo":Z
    :cond_74
    :goto_74
    return-void

    .line 3884
    .restart local v2    # "index":I
    :cond_75
    const/4 v7, 0x2

    if-ne p1, v7, :cond_d

    .line 3885
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 3901
    .restart local v1    # "f":Ljava/io/File;
    .restart local v3    # "isVideo":Z
    :cond_7b
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v7, :cond_125

    .line 3902
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 3903
    .local v0, "botInlineResult":Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v8, "video"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_99

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v7

    if-eqz v7, :cond_f7

    .line 3904
    :cond_99
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v7, :cond_bf

    .line 3905
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v1

    .line 3909
    :cond_a3
    :goto_a3
    const/4 v3, 0x1

    .line 3915
    :cond_a4
    :goto_a4
    if-eqz v1, :cond_ac

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_41

    .line 3916
    :cond_ac
    new-instance v1, Ljava/io/File;

    .end local v1    # "f":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v8, v8, p1

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1    # "f":Ljava/io/File;
    goto :goto_41

    .line 3906
    :cond_bf
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    if-eqz v7, :cond_a3

    .line 3907
    new-instance v1, Ljava/io/File;

    .end local v1    # "f":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    invoke-static {v9}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    const-string v10, "mp4"

    invoke-static {v9, v10}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1    # "f":Ljava/io/File;
    goto :goto_a3

    .line 3910
    :cond_f7
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v7, :cond_10e

    .line 3911
    new-instance v1, Ljava/io/File;

    .end local v1    # "f":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v8, v8, p1

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1    # "f":Ljava/io/File;
    goto :goto_a4

    .line 3912
    :cond_10e
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v7, :cond_a4

    .line 3913
    new-instance v1, Ljava/io/File;

    .end local v1    # "f":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v8, v8, p1

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1    # "f":Ljava/io/File;
    goto :goto_a4

    .line 3918
    .end local v0    # "botInlineResult":Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    :cond_125
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v7, :cond_13e

    .line 3919
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 3920
    .local v4, "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    if-eqz v7, :cond_13c

    const/4 v7, 0x1

    :goto_136
    invoke-static {v4, v7}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    .line 3921
    goto/16 :goto_41

    .line 3920
    :cond_13c
    const/4 v7, 0x0

    goto :goto_136

    .line 3921
    .end local v4    # "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_13e
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    if-eqz v7, :cond_41

    .line 3922
    new-instance v1, Ljava/io/File;

    .end local v1    # "f":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v8, v8, p1

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3923
    .restart local v1    # "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_41

    .line 3924
    new-instance v1, Ljava/io/File;

    .end local v1    # "f":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v8, v8, p1

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1    # "f":Ljava/io/File;
    goto/16 :goto_41

    .line 3931
    :cond_16e
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v7, v7, p1

    const/4 v8, -0x1

    invoke-virtual {v7, v8, p2}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    goto/16 :goto_53

    .line 3934
    :cond_178
    if-eqz v3, :cond_1bc

    .line 3935
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v8, v8, p1

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1b2

    .line 3936
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v7, v7, p1

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    .line 3943
    :goto_191
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v8, v8, p1

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    .line 3944
    .local v6, "progress":Ljava/lang/Float;
    if-nez v6, :cond_1a4

    .line 3945
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 3947
    :cond_1a4
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v7, v7, p1

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setProgress(FZ)V

    goto/16 :goto_53

    .line 3938
    .end local v6    # "progress":Ljava/lang/Float;
    :cond_1b2
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v7, v7, p1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    goto :goto_191

    .line 3941
    :cond_1bc
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v7, v7, p1

    const/4 v8, 0x0

    invoke-virtual {v7, v8, p2}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    goto :goto_191

    .line 3950
    :cond_1c5
    const/4 v7, 0x0

    goto/16 :goto_72

    .line 3953
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "index":I
    .end local v3    # "isVideo":Z
    :cond_1c8
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v7, v7, p1

    const/4 v8, -0x1

    invoke-virtual {v7, v8, p2}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    goto/16 :goto_74
.end method

.method private closeCaptionEnter(Z)V
    .registers 7
    .param p1, "apply"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2317
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    if-ltz v1, :cond_f

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_10

    .line 2351
    :cond_f
    :goto_f
    return-void

    .line 2320
    :cond_10
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2321
    .local v0, "object":Ljava/lang/Object;
    if-eqz p1, :cond_57

    .line 2322
    instance-of v1, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v1, :cond_c1

    move-object v1, v0

    .line 2323
    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getFieldCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    .line 2328
    :cond_29
    :goto_29
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getFieldCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v1, v3}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->isPhotoChecked(I)Z

    move-result v1

    if-nez v1, :cond_57

    .line 2329
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v1, v3}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->setPhotoChecked(I)V

    .line 2330
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v3, v4}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->isPhotoChecked(I)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Components/CheckBox;->setChecked(ZZ)V

    .line 2331
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateSelectedCount()V

    .line 2334
    :cond_57
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setTag(Ljava/lang/Object;)V

    .line 2335
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->lastTitle:Ljava/lang/String;

    if-eqz v1, :cond_69

    .line 2336
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->lastTitle:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2337
    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->lastTitle:Ljava/lang/String;

    .line 2339
    :cond_69
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionItem:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_a1

    .line 2340
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    if-eqz v1, :cond_d2

    const-string v1, "AttachGif"

    const v4, 0x7f0700bf

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_80
    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2341
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    if-eqz v1, :cond_dc

    move-object v1, v2

    :goto_8a
    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 2342
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionItem:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getFieldCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_df

    const v1, 0x7f020219

    :goto_9e
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2345
    :cond_a1
    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer;->updateCaptionTextForCurrentPhoto(Ljava/lang/Object;)V

    .line 2346
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getFieldCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/telegram/ui/PhotoViewer;->setCurrentCaption(Ljava/lang/CharSequence;)V

    .line 2347
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 2348
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->hidePopup()V

    .line 2350
    :cond_ba
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->closeKeyboard()V

    goto/16 :goto_f

    .line 2324
    :cond_c1
    instance-of v1, v0, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v1, :cond_29

    move-object v1, v0

    .line 2325
    check-cast v1, Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getFieldCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    goto/16 :goto_29

    .line 2340
    :cond_d2
    const-string v1, "AttachVideo"

    const v4, 0x7f0700c4

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_80

    .line 2341
    :cond_dc
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentSubtitle:Ljava/lang/String;

    goto :goto_8a

    .line 2342
    :cond_df
    const v1, 0x7f02021a

    goto :goto_9e
.end method

.method private didChangedCompressionLevel(Z)V
    .registers 7
    .param p1, "request"    # Z

    .prologue
    .line 5698
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "mainconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 5699
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5700
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "compress_video2"

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5701
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5702
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateWidthHeightBitrateForCompression()V

    .line 5703
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateVideoInfo()V

    .line 5704
    if-eqz p1, :cond_23

    .line 5705
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lorg/telegram/ui/PhotoViewer;->requestVideoPreview(I)V

    .line 5707
    :cond_23
    return-void
.end method

.method private getAdditionX()I
    .registers 3

    .prologue
    .line 4760
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-eqz v0, :cond_10

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    .line 4761
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 4763
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private getAdditionY()I
    .registers 5

    .prologue
    const/16 v3, 0x15

    const/4 v0, 0x0

    .line 4767
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 4768
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_12

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :cond_12
    add-int/2addr v0, v1

    .line 4772
    :cond_13
    :goto_13
    return v0

    .line 4769
    :cond_14
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-eqz v1, :cond_13

    .line 4770
    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_24

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :cond_24
    add-int/2addr v0, v1

    goto :goto_13
.end method

.method private getContainerViewHeight()I
    .registers 2

    .prologue
    .line 4788
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight(I)I

    move-result v0

    return v0
.end method

.method private getContainerViewHeight(I)I
    .registers 5
    .param p1, "mode"    # I

    .prologue
    .line 4792
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v1, Landroid/graphics/Point;->y:I

    .line 4793
    .local v0, "height":I
    if-nez p1, :cond_f

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_f

    .line 4794
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v0, v1

    .line 4796
    :cond_f
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1a

    .line 4797
    const/high16 v1, 0x43100000    # 144.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 4803
    :cond_19
    :goto_19
    return v0

    .line 4798
    :cond_1a
    const/4 v1, 0x2

    if-ne p1, v1, :cond_25

    .line 4799
    const/high16 v1, 0x431a0000    # 154.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_19

    .line 4800
    :cond_25
    const/4 v1, 0x3

    if-ne p1, v1, :cond_19

    .line 4801
    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    goto :goto_19
.end method

.method private getContainerViewWidth()I
    .registers 2

    .prologue
    .line 4776
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth(I)I

    move-result v0

    return v0
.end method

.method private getContainerViewWidth(I)I
    .registers 4
    .param p1, "mode"    # I

    .prologue
    .line 4780
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getWidth()I

    move-result v0

    .line 4781
    .local v0, "width":I
    if-eqz p1, :cond_12

    const/4 v1, 0x3

    if-eq p1, v1, :cond_12

    .line 4782
    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 4784
    :cond_12
    return v0
.end method

.method private getFileLocation(I[I)Lorg/telegram/tgnet/TLObject;
    .registers 10
    .param p1, "index"    # I
    .param p2, "size"    # [I

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 3242
    if-gez p1, :cond_6

    .line 3292
    :cond_5
    :goto_5
    return-object v2

    .line 3245
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 3246
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_5

    .line 3249
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p2, v5

    .line 3250
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLObject;

    goto :goto_5

    .line 3251
    :cond_2d
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 3252
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_5

    .line 3255
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 3256
    .local v0, "message":Lorg/telegram/messenger/MessageObject;
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    if-eqz v3, :cond_78

    .line 3257
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserUpdatedPhoto;

    if-eqz v3, :cond_5c

    .line 3258
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->newUserPhoto:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_5

    .line 3260
    :cond_5c
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 3261
    .local v1, "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v1, :cond_75

    .line 3262
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    aput v2, p2, v5

    .line 3263
    aget v2, p2, v5

    if-nez v2, :cond_72

    .line 3264
    aput v6, p2, v5

    .line 3266
    :cond_72
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_5

    .line 3268
    :cond_75
    aput v6, p2, v5

    goto :goto_5

    .line 3271
    .end local v1    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_78
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v3, :cond_88

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-nez v3, :cond_98

    :cond_88
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v3, :cond_b6

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v3, :cond_b6

    .line 3272
    :cond_98
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 3273
    .restart local v1    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v1, :cond_b2

    .line 3274
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    aput v2, p2, v5

    .line 3275
    aget v2, p2, v5

    if-nez v2, :cond_ae

    .line 3276
    aput v6, p2, v5

    .line 3278
    :cond_ae
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_5

    .line 3280
    :cond_b2
    aput v6, p2, v5

    goto/16 :goto_5

    .line 3282
    .end local v1    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_b6
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v3, :cond_c8

    .line 3283
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->photo:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    goto/16 :goto_5

    .line 3284
    :cond_c8
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v3, :cond_5

    .line 3285
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    aput v2, p2, v5

    .line 3286
    aget v2, p2, v5

    if-nez v2, :cond_e6

    .line 3287
    aput v6, p2, v5

    .line 3289
    :cond_e6
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_5
.end method

.method private getFileName(I)Ljava/lang/String;
    .registers 12
    .param p1, "index"    # I

    .prologue
    const/4 v6, 0x0

    .line 3192
    if-gez p1, :cond_4

    .line 3238
    :cond_3
    :goto_3
    return-object v6

    .line 3195
    :cond_4
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_14

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6d

    .line 3196
    :cond_14
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4e

    .line 3197
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge p1, v7, :cond_3

    .line 3200
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 3201
    .local v2, "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 3202
    .end local v2    # "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_4e
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 3203
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge p1, v7, :cond_3

    .line 3206
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getMessageFileName(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 3208
    :cond_6d
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 3209
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge p1, v7, :cond_3

    .line 3212
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 3213
    .local v3, "object":Ljava/lang/Object;
    instance-of v7, v3, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v7, :cond_e5

    move-object v4, v3

    .line 3214
    check-cast v4, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 3215
    .local v4, "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    iget-object v6, v4, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v6, :cond_96

    .line 3216
    iget-object v6, v4, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    .line 3217
    :cond_96
    iget v6, v4, Lorg/telegram/messenger/MediaController$SearchImage;->type:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_be

    iget-object v6, v4, Lorg/telegram/messenger/MediaController$SearchImage;->localUrl:Ljava/lang/String;

    if-eqz v6, :cond_be

    iget-object v6, v4, Lorg/telegram/messenger/MediaController$SearchImage;->localUrl:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_be

    .line 3218
    new-instance v1, Ljava/io/File;

    iget-object v6, v4, Lorg/telegram/messenger/MediaController$SearchImage;->localUrl:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3219
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_ba

    .line 3220
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    .line 3222
    :cond_ba
    const-string v6, ""

    iput-object v6, v4, Lorg/telegram/messenger/MediaController$SearchImage;->localUrl:Ljava/lang/String;

    .line 3225
    .end local v1    # "file":Ljava/io/File;
    :cond_be
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    const-string v8, "jpg"

    invoke-static {v7, v8}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    .line 3226
    .end local v4    # "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_e5
    instance-of v7, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v7, :cond_3

    move-object v0, v3

    .line 3227
    check-cast v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 3228
    .local v0, "botInlineResult":Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v7, :cond_f8

    .line 3229
    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    .line 3230
    :cond_f8
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v7, :cond_10e

    .line 3231
    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v7

    invoke-static {v6, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    .line 3232
    .local v5, "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    .line 3233
    .end local v5    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_10e
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 3234
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    const-string v8, "jpg"

    invoke-static {v7, v8}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3
.end method

.method public static getInstance()Lorg/telegram/ui/PhotoViewer;
    .registers 4

    .prologue
    .line 780
    sget-object v0, Lorg/telegram/ui/PhotoViewer;->Instance:Lorg/telegram/ui/PhotoViewer;

    .line 781
    .local v0, "localInstance":Lorg/telegram/ui/PhotoViewer;
    if-nez v0, :cond_14

    .line 782
    const-class v3, Lorg/telegram/ui/PhotoViewer;

    monitor-enter v3

    .line 783
    :try_start_7
    sget-object v0, Lorg/telegram/ui/PhotoViewer;->Instance:Lorg/telegram/ui/PhotoViewer;

    .line 784
    if-nez v0, :cond_13

    .line 785
    new-instance v1, Lorg/telegram/ui/PhotoViewer;

    invoke-direct {v1}, Lorg/telegram/ui/PhotoViewer;-><init>()V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_15

    .end local v0    # "localInstance":Lorg/telegram/ui/PhotoViewer;
    .local v1, "localInstance":Lorg/telegram/ui/PhotoViewer;
    :try_start_10
    sput-object v1, Lorg/telegram/ui/PhotoViewer;->Instance:Lorg/telegram/ui/PhotoViewer;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_18

    move-object v0, v1

    .line 787
    .end local v1    # "localInstance":Lorg/telegram/ui/PhotoViewer;
    .restart local v0    # "localInstance":Lorg/telegram/ui/PhotoViewer;
    :cond_13
    :try_start_13
    monitor-exit v3

    .line 789
    :cond_14
    return-object v0

    .line 787
    :catchall_15
    move-exception v2

    :goto_16
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_15

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/ui/PhotoViewer;
    .restart local v1    # "localInstance":Lorg/telegram/ui/PhotoViewer;
    :catchall_18
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/ui/PhotoViewer;
    .restart local v0    # "localInstance":Lorg/telegram/ui/PhotoViewer;
    goto :goto_16
.end method

.method private goToNext()V
    .registers 6

    .prologue
    .line 5042
    const/4 v0, 0x0

    .line 5043
    .local v0, "extra":F
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1b

    .line 5044
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    mul-float v0, v1, v2

    .line 5046
    :cond_1b
    const/4 v1, 0x1

    iput v1, p0, Lorg/telegram/ui/PhotoViewer;->switchImageAfterAnimation:I

    .line 5047
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v0

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    .line 5048
    return-void
.end method

.method private goToPrev()V
    .registers 6

    .prologue
    .line 5051
    const/4 v0, 0x0

    .line 5052
    .local v0, "extra":F
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1b

    .line 5053
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    mul-float v0, v1, v2

    .line 5055
    :cond_1b
    const/4 v1, 0x2

    iput v1, p0, Lorg/telegram/ui/PhotoViewer;->switchImageAfterAnimation:I

    .line 5056
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-float/2addr v2, v0

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    .line 5057
    return-void
.end method

.method private onActionClick(Z)V
    .registers 10
    .param p1, "download"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 5328
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v2, :cond_a

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v2, :cond_10

    :cond_a
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v2, v2, v6

    if-nez v2, :cond_11

    .line 5396
    :cond_10
    :goto_10
    return-void

    .line 5331
    :cond_11
    const/4 v0, 0x0

    .line 5332
    .local v0, "file":Ljava/io/File;
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_71

    .line 5333
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3c

    .line 5334
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5335
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3c

    .line 5336
    const/4 v0, 0x0

    .line 5339
    :cond_3c
    if-nez v0, :cond_4d

    .line 5340
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    .line 5341
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4d

    .line 5342
    const/4 v0, 0x0

    .line 5358
    :cond_4d
    :goto_4d
    if-nez v0, :cond_135

    .line 5359
    if-eqz p1, :cond_10

    .line 5360
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_d9

    .line 5361
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_ca

    .line 5362
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-virtual {v2, v3, v7, v6}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    goto :goto_10

    .line 5345
    :cond_71
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v2, :cond_4d

    .line 5346
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_8b

    .line 5347
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v0

    .line 5348
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4d

    .line 5349
    const/4 v0, 0x0

    goto :goto_4d

    .line 5352
    :cond_8b
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    const-string v5, "mp4"

    invoke-static {v4, v5}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5353
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4d

    .line 5354
    const/4 v0, 0x0

    goto :goto_4d

    .line 5364
    :cond_ca
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto/16 :goto_10

    .line 5366
    :cond_d9
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v2, :cond_10

    .line 5367
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_10b

    .line 5368
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_fe

    .line 5369
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v2, v3, v7, v6}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    goto/16 :goto_10

    .line 5371
    :cond_fe
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto/16 :goto_10

    .line 5374
    :cond_10b
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageLoader;->isLoadingHttpFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_128

    .line 5375
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    const-string v4, "mp4"

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/ImageLoader;->loadHttpFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 5377
    :cond_128
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageLoader;->cancelLoadHttpFile(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 5383
    :cond_135
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_140

    .line 5384
    invoke-direct {p0, v0, v7, v6}, Lorg/telegram/ui/PhotoViewer;->preparePlayer(Ljava/io/File;ZZ)V

    goto/16 :goto_10

    .line 5386
    :cond_140
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5387
    .local v1, "intent":Landroid/content/Intent;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_166

    .line 5388
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5389
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    const-string v3, "com.mobotel.provider"

    invoke-static {v2, v3, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "video/mp4"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 5393
    :goto_15d
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    const/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_10

    .line 5391
    :cond_166
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "video/mp4"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_15d
.end method

.method private onDraw(Landroid/graphics/Canvas;)V
    .registers 38
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 5099
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    move/from16 v31, v0

    if-nez v31, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_25

    .line 5325
    :cond_24
    :goto_24
    return-void

    .line 5106
    :cond_25
    const/high16 v5, -0x40800000    # -1.0f

    .line 5108
    .local v5, "aty":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v31, v0

    if-eqz v31, :cond_748

    .line 5109
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->isFinished()Z

    move-result v31

    if-nez v31, :cond_44

    .line 5110
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->abortAnimation()V

    .line 5113
    :cond_44
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v33, v0

    sub-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValue:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    add-float v27, v31, v32

    .line 5114
    .local v27, "ts":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animateToX:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    move/from16 v33, v0

    sub-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValue:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    add-float v28, v31, v32

    .line 5115
    .local v28, "tx":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    move/from16 v33, v0

    sub-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValue:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    add-float v29, v31, v32

    .line 5116
    .local v29, "ty":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_bb

    .line 5117
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValue:F

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lorg/telegram/ui/Components/PhotoCropView;->setAnimationProgress(F)V

    .line 5120
    :cond_bb
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    move/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-nez v31, :cond_e1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-nez v31, :cond_e1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    move/from16 v31, v0

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-nez v31, :cond_e1

    .line 5121
    move/from16 v5, v29

    .line 5123
    :cond_e1
    move/from16 v8, v27

    .line 5124
    .local v8, "currentScale":F
    move/from16 v10, v29

    .line 5125
    .local v10, "currentTranslationY":F
    move/from16 v9, v28

    .line 5126
    .local v9, "currentTranslationX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    .line 5166
    .end local v27    # "ts":F
    .end local v28    # "tx":F
    .end local v29    # "ty":F
    :cond_f0
    :goto_f0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v31, v0

    if-nez v31, :cond_8ca

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-nez v31, :cond_8ca

    const/high16 v31, -0x40800000    # -1.0f

    cmpl-float v31, v5, v31

    if-eqz v31, :cond_8ca

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    move/from16 v31, v0

    if-nez v31, :cond_8ca

    .line 5167
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x40800000    # 4.0f

    div-float v15, v31, v32

    .line 5168
    .local v15, "maxValue":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    move-object/from16 v31, v0

    const/high16 v32, 0x42fe0000    # 127.0f

    const/high16 v33, 0x437f0000    # 255.0f

    const/high16 v34, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v35

    move/from16 v0, v35

    invoke-static {v0, v15}, Ljava/lang/Math;->min(FF)F

    move-result v35

    div-float v35, v35, v15

    sub-float v34, v34, v35

    mul-float v33, v33, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(FF)F

    move-result v32

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->setAlpha(I)V

    .line 5173
    .end local v15    # "maxValue":F
    :goto_147
    const/16 v24, 0x0

    .line 5174
    .local v24, "sideImage":Lorg/telegram/messenger/ImageReceiver;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v31, v0

    if-nez v31, :cond_194

    .line 5175
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-ltz v31, :cond_18a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    move/from16 v31, v0

    if-nez v31, :cond_18a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->zooming:Z

    move/from16 v31, v0

    if-nez v31, :cond_18a

    .line 5176
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    move/from16 v31, v0

    const/high16 v32, 0x40a00000    # 5.0f

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v31, v31, v32

    cmpl-float v31, v9, v31

    if-lez v31, :cond_8d7

    .line 5177
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    .line 5182
    :cond_18a
    :goto_18a
    if-eqz v24, :cond_8f6

    const/16 v31, 0x1

    :goto_18e
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/PhotoViewer;->changingPage:Z

    .line 5185
    :cond_194
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_323

    .line 5186
    move/from16 v25, v9

    .line 5187
    .local v25, "tranlateX":F
    const/16 v21, 0x0

    .line 5188
    .local v21, "scaleDiff":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 5189
    .local v4, "alpha":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    move/from16 v31, v0

    if-nez v31, :cond_1f2

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->minX:F

    move/from16 v31, v0

    cmpg-float v31, v25, v31

    if-gez v31, :cond_1f2

    .line 5190
    const/high16 v31, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->minX:F

    move/from16 v32, v0

    sub-float v32, v32, v25

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v32, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 5191
    const/high16 v31, 0x3f800000    # 1.0f

    sub-float v31, v31, v4

    const v32, 0x3e99999a

    mul-float v21, v31, v32

    .line 5192
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v31

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x41f00000    # 30.0f

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    sub-int v31, v31, v32

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v25, v0

    .line 5195
    :cond_1f2
    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v31

    if-eqz v31, :cond_2ad

    .line 5196
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5197
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5198
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v31

    const/high16 v32, 0x41f00000    # 30.0f

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    add-int v31, v31, v32

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v31, v31, v25

    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5199
    const/high16 v31, 0x3f800000    # 1.0f

    sub-float v31, v31, v21

    const/high16 v32, 0x3f800000    # 1.0f

    sub-float v32, v32, v21

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 5200
    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v7

    .line 5201
    .local v7, "bitmapWidth":I
    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v6

    .line 5203
    .local v6, "bitmapHeight":I
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v7

    move/from16 v32, v0

    div-float v22, v31, v32

    .line 5204
    .local v22, "scaleX":F
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v6

    move/from16 v32, v0

    div-float v23, v31, v32

    .line 5205
    .local v23, "scaleY":F
    cmpl-float v31, v22, v23

    if-lez v31, :cond_8fa

    move/from16 v18, v23

    .line 5206
    .local v18, "scale":F
    :goto_275
    int-to-float v0, v7

    move/from16 v31, v0

    mul-float v31, v31, v18

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v30, v0

    .line 5207
    .local v30, "width":I
    int-to-float v0, v6

    move/from16 v31, v0

    mul-float v31, v31, v18

    move/from16 v0, v31

    float-to-int v14, v0

    .line 5209
    .local v14, "height":I
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 5210
    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    neg-int v0, v14

    move/from16 v32, v0

    div-int/lit8 v32, v32, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3, v14}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 5211
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 5212
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5215
    .end local v6    # "bitmapHeight":I
    .end local v7    # "bitmapWidth":I
    .end local v14    # "height":I
    .end local v18    # "scale":F
    .end local v22    # "scaleX":F
    .end local v23    # "scaleY":F
    .end local v30    # "width":I
    :cond_2ad
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5216
    div-float v31, v10, v8

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5217
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v32, v0

    const/high16 v33, 0x3f800000    # 1.0f

    add-float v32, v32, v33

    mul-float v31, v31, v32

    const/high16 v32, 0x41f00000    # 30.0f

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v31, v31, v32

    const/high16 v32, 0x40000000    # 2.0f

    div-float v31, v31, v32

    neg-float v0, v10

    move/from16 v32, v0

    div-float v32, v32, v8

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5218
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aget-object v31, v31, v32

    const/high16 v32, 0x3f800000    # 1.0f

    sub-float v32, v32, v21

    invoke-virtual/range {v31 .. v32}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setScale(F)V

    .line 5219
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aget-object v31, v31, v32

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setAlpha(F)V

    .line 5220
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aget-object v31, v31, v32

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->onDraw(Landroid/graphics/Canvas;)V

    .line 5221
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5224
    .end local v4    # "alpha":F
    .end local v21    # "scaleDiff":F
    .end local v25    # "tranlateX":F
    :cond_323
    move/from16 v26, v9

    .line 5225
    .local v26, "translateX":F
    const/16 v21, 0x0

    .line 5226
    .restart local v21    # "scaleDiff":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 5227
    .restart local v4    # "alpha":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    move/from16 v31, v0

    if-nez v31, :cond_36b

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    move/from16 v31, v0

    cmpl-float v31, v26, v31

    if-lez v31, :cond_36b

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v31, v0

    if-nez v31, :cond_36b

    .line 5228
    const/high16 v31, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    move/from16 v32, v0

    sub-float v32, v26, v32

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v32, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 5229
    const v31, 0x3e99999a

    mul-float v21, v4, v31

    .line 5230
    const/high16 v31, 0x3f800000    # 1.0f

    sub-float v4, v31, v4

    .line 5231
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    move/from16 v26, v0

    .line 5233
    :cond_36b
    sget v31, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v32, 0x10

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_8fe

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-object/from16 v31, v0

    if-eqz v31, :cond_8fe

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getVisibility()I

    move-result v31

    if-nez v31, :cond_8fe

    const/4 v11, 0x1

    .line 5234
    .local v11, "drawTextureView":Z
    :goto_38a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v31

    if-eqz v31, :cond_5a5

    .line 5235
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5236
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getAdditionX()I

    move-result v32

    add-int v31, v31, v32

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getAdditionY()I

    move-result v33

    add-int v32, v32, v33

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5237
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5238
    sub-float v31, v8, v21

    sub-float v32, v8, v21

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 5240
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_3f3

    .line 5241
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-virtual {v0, v8, v1, v10}, Lorg/telegram/ui/Components/PhotoCropView;->setBitmapParams(FFF)V

    .line 5244
    :cond_3f3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v7

    .line 5245
    .restart local v7    # "bitmapWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v6

    .line 5246
    .restart local v6    # "bitmapHeight":I
    if-eqz v11, :cond_45a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->textureUploaded:Z

    move/from16 v31, v0

    if-eqz v31, :cond_45a

    .line 5247
    int-to-float v0, v7

    move/from16 v31, v0

    int-to-float v0, v6

    move/from16 v32, v0

    div-float v19, v31, v32

    .line 5248
    .local v19, "scale1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v20, v31, v32

    .line 5249
    .local v20, "scale2":F
    sub-float v31, v19, v20

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(F)F

    move-result v31

    const v32, 0x3c23d70a

    cmpl-float v31, v31, v32

    if-lez v31, :cond_45a

    .line 5250
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v7

    .line 5251
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v6

    .line 5255
    .end local v19    # "scale1":F
    .end local v20    # "scale2":F
    :cond_45a
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v7

    move/from16 v32, v0

    div-float v22, v31, v32

    .line 5256
    .restart local v22    # "scaleX":F
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v6

    move/from16 v32, v0

    div-float v23, v31, v32

    .line 5257
    .restart local v23    # "scaleY":F
    cmpl-float v31, v22, v23

    if-lez v31, :cond_901

    move/from16 v18, v23

    .line 5258
    .restart local v18    # "scale":F
    :goto_47c
    int-to-float v0, v7

    move/from16 v31, v0

    mul-float v31, v31, v18

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v30, v0

    .line 5259
    .restart local v30    # "width":I
    int-to-float v0, v6

    move/from16 v31, v0

    mul-float v31, v31, v18

    move/from16 v0, v31

    float-to-int v14, v0

    .line 5261
    .restart local v14    # "height":I
    if-eqz v11, :cond_4ac

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->textureUploaded:Z

    move/from16 v31, v0

    if-eqz v31, :cond_4ac

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeStarted:Z

    move/from16 v31, v0

    if-eqz v31, :cond_4ac

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    move/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-eqz v31, :cond_4e1

    .line 5262
    :cond_4ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 5263
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v32, v0

    div-int/lit8 v32, v32, 0x2

    neg-int v0, v14

    move/from16 v33, v0

    div-int/lit8 v33, v33, 0x2

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3, v14}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 5264
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 5266
    :cond_4e1
    if-eqz v11, :cond_5a2

    .line 5267
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeStarted:Z

    move/from16 v31, v0

    if-nez v31, :cond_50d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->textureUploaded:Z

    move/from16 v31, v0

    if-eqz v31, :cond_50d

    .line 5268
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeStarted:Z

    .line 5269
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    .line 5270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlphaLastTime:J

    .line 5272
    :cond_50d
    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    neg-int v0, v14

    move/from16 v32, v0

    div-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5273
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    move/from16 v32, v0

    mul-float v32, v32, v4

    invoke-virtual/range {v31 .. v32}, Landroid/view/TextureView;->setAlpha(F)V

    .line 5274
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 5275
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeStarted:Z

    move/from16 v31, v0

    if-eqz v31, :cond_5a2

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    move/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    cmpg-float v31, v31, v32

    if-gez v31, :cond_5a2

    .line 5276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 5277
    .local v16, "newUpdateTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlphaLastTime:J

    move-wide/from16 v32, v0

    sub-long v12, v16, v32

    .line 5278
    .local v12, "dt":J
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlphaLastTime:J

    .line 5279
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    move/from16 v31, v0

    long-to-float v0, v12

    move/from16 v32, v0

    const/high16 v33, 0x43960000    # 300.0f

    div-float v32, v32, v33

    add-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    .line 5280
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    .line 5281
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    move/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-lez v31, :cond_5a2

    .line 5282
    const/high16 v31, 0x3f800000    # 1.0f

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    .line 5286
    .end local v12    # "dt":J
    .end local v16    # "newUpdateTime":J
    :cond_5a2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5288
    .end local v6    # "bitmapHeight":I
    .end local v7    # "bitmapWidth":I
    .end local v14    # "height":I
    .end local v18    # "scale":F
    .end local v22    # "scaleX":F
    .end local v23    # "scaleY":F
    .end local v30    # "width":I
    :cond_5a5
    if-nez v11, :cond_5fd

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    if-eqz v31, :cond_5bb

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v31

    if-eqz v31, :cond_5fd

    .line 5289
    :cond_5bb
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5290
    div-float v31, v10, v8

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5291
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget-object v31, v31, v32

    const/high16 v32, 0x3f800000    # 1.0f

    sub-float v32, v32, v21

    invoke-virtual/range {v31 .. v32}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setScale(F)V

    .line 5292
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget-object v31, v31, v32

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setAlpha(F)V

    .line 5293
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget-object v31, v31, v32

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->onDraw(Landroid/graphics/Canvas;)V

    .line 5294
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5297
    :cond_5fd
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v31, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_24

    .line 5298
    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v31

    if-eqz v31, :cond_6cf

    .line 5299
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5300
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5301
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v32, v0

    const/high16 v33, 0x3f800000    # 1.0f

    add-float v32, v32, v33

    mul-float v31, v31, v32

    const/high16 v32, 0x41f00000    # 30.0f

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v31, v31, v32

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x40000000    # 2.0f

    div-float v31, v31, v32

    add-float v31, v31, v9

    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5302
    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v7

    .line 5303
    .restart local v7    # "bitmapWidth":I
    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v6

    .line 5305
    .restart local v6    # "bitmapHeight":I
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v7

    move/from16 v32, v0

    div-float v22, v31, v32

    .line 5306
    .restart local v22    # "scaleX":F
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v6

    move/from16 v32, v0

    div-float v23, v31, v32

    .line 5307
    .restart local v23    # "scaleY":F
    cmpl-float v31, v22, v23

    if-lez v31, :cond_905

    move/from16 v18, v23

    .line 5308
    .restart local v18    # "scale":F
    :goto_693
    int-to-float v0, v7

    move/from16 v31, v0

    mul-float v31, v31, v18

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v30, v0

    .line 5309
    .restart local v30    # "width":I
    int-to-float v0, v6

    move/from16 v31, v0

    mul-float v31, v31, v18

    move/from16 v0, v31

    float-to-int v14, v0

    .line 5311
    .restart local v14    # "height":I
    const/high16 v31, 0x3f800000    # 1.0f

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 5312
    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    neg-int v0, v14

    move/from16 v32, v0

    div-int/lit8 v32, v32, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3, v14}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 5313
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 5314
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5317
    .end local v6    # "bitmapHeight":I
    .end local v7    # "bitmapWidth":I
    .end local v14    # "height":I
    .end local v18    # "scale":F
    .end local v22    # "scaleX":F
    .end local v23    # "scaleY":F
    .end local v30    # "width":I
    :cond_6cf
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5318
    div-float v31, v10, v8

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5319
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v32, v0

    const/high16 v33, 0x3f800000    # 1.0f

    add-float v32, v32, v33

    mul-float v31, v31, v32

    const/high16 v32, 0x41f00000    # 30.0f

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v31, v31, v32

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x40000000    # 2.0f

    div-float v31, v31, v32

    neg-float v0, v10

    move/from16 v32, v0

    div-float v32, v32, v8

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5320
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    aget-object v31, v31, v32

    const/high16 v32, 0x3f800000    # 1.0f

    invoke-virtual/range {v31 .. v32}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setScale(F)V

    .line 5321
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    aget-object v31, v31, v32

    const/high16 v32, 0x3f800000    # 1.0f

    invoke-virtual/range {v31 .. v32}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setAlpha(F)V

    .line 5322
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    aget-object v31, v31, v32

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->onDraw(Landroid/graphics/Canvas;)V

    .line 5323
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_24

    .line 5128
    .end local v4    # "alpha":F
    .end local v8    # "currentScale":F
    .end local v9    # "currentTranslationX":F
    .end local v10    # "currentTranslationY":F
    .end local v11    # "drawTextureView":Z
    .end local v21    # "scaleDiff":F
    .end local v24    # "sideImage":Lorg/telegram/messenger/ImageReceiver;
    .end local v26    # "translateX":F
    :cond_748
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v31, v32, v34

    if-eqz v31, :cond_7ae

    .line 5129
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animateToX:F

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->translationX:F

    .line 5130
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 5131
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->scale:F

    .line 5132
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    .line 5133
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_799

    .line 5134
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    move-object/from16 v31, v0

    const/high16 v32, 0x3f800000    # 1.0f

    invoke-virtual/range {v31 .. v32}, Lorg/telegram/ui/Components/PhotoCropView;->setAnimationProgress(F)V

    .line 5136
    :cond_799
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 5137
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    .line 5139
    :cond_7ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->isFinished()Z

    move-result v31

    if-nez v31, :cond_85d

    .line 5140
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v31

    if-eqz v31, :cond_85d

    .line 5141
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->getStartX()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    move/from16 v32, v0

    cmpg-float v31, v31, v32

    if-gez v31, :cond_80d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->getStartX()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->minX:F

    move/from16 v32, v0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_80d

    .line 5142
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->getCurrX()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->translationX:F

    .line 5144
    :cond_80d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->getStartY()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    move/from16 v32, v0

    cmpg-float v31, v31, v32

    if-gez v31, :cond_854

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->getStartY()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->minY:F

    move/from16 v32, v0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_854

    .line 5145
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->getCurrY()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 5147
    :cond_854
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    .line 5150
    :cond_85d
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->switchImageAfterAnimation:I

    move/from16 v31, v0

    if-eqz v31, :cond_88e

    .line 5151
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->switchImageAfterAnimation:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_8a8

    .line 5152
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    .line 5156
    :cond_886
    :goto_886
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->switchImageAfterAnimation:I

    .line 5158
    :cond_88e
    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    .line 5159
    .restart local v8    # "currentScale":F
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 5160
    .restart local v10    # "currentTranslationY":F
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    .line 5161
    .restart local v9    # "currentTranslationX":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    move/from16 v31, v0

    if-nez v31, :cond_f0

    .line 5162
    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    goto/16 :goto_f0

    .line 5153
    .end local v8    # "currentScale":F
    .end local v9    # "currentTranslationX":F
    .end local v10    # "currentTranslationY":F
    :cond_8a8
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->switchImageAfterAnimation:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_886

    .line 5154
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    goto :goto_886

    .line 5170
    .restart local v8    # "currentScale":F
    .restart local v9    # "currentTranslationX":F
    .restart local v10    # "currentTranslationY":F
    :cond_8ca
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    move-object/from16 v31, v0

    const/16 v32, 0xff

    invoke-virtual/range {v31 .. v32}, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->setAlpha(I)V

    goto/16 :goto_147

    .line 5178
    .restart local v24    # "sideImage":Lorg/telegram/messenger/ImageReceiver;
    :cond_8d7
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->minX:F

    move/from16 v31, v0

    const/high16 v32, 0x40a00000    # 5.0f

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v31, v31, v32

    cmpg-float v31, v9, v31

    if-gez v31, :cond_18a

    .line 5179
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    goto/16 :goto_18a

    .line 5182
    :cond_8f6
    const/16 v31, 0x0

    goto/16 :goto_18e

    .restart local v4    # "alpha":F
    .restart local v6    # "bitmapHeight":I
    .restart local v7    # "bitmapWidth":I
    .restart local v21    # "scaleDiff":F
    .restart local v22    # "scaleX":F
    .restart local v23    # "scaleY":F
    .restart local v25    # "tranlateX":F
    :cond_8fa
    move/from16 v18, v22

    .line 5205
    goto/16 :goto_275

    .line 5233
    .end local v6    # "bitmapHeight":I
    .end local v7    # "bitmapWidth":I
    .end local v22    # "scaleX":F
    .end local v23    # "scaleY":F
    .end local v25    # "tranlateX":F
    .restart local v26    # "translateX":F
    :cond_8fe
    const/4 v11, 0x0

    goto/16 :goto_38a

    .restart local v6    # "bitmapHeight":I
    .restart local v7    # "bitmapWidth":I
    .restart local v11    # "drawTextureView":Z
    .restart local v22    # "scaleX":F
    .restart local v23    # "scaleY":F
    :cond_901
    move/from16 v18, v22

    .line 5257
    goto/16 :goto_47c

    :cond_905
    move/from16 v18, v22

    .line 5307
    goto/16 :goto_693
.end method

.method private onPhotoClosed(Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V
    .registers 8
    .param p1, "object"    # Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 4653
    iput-boolean v4, p0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    .line 4654
    iput-boolean v5, p0, Lorg/telegram/ui/PhotoViewer;->disableShowCheck:Z

    .line 4655
    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 4656
    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 4657
    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 4658
    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    .line 4659
    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    .line 4660
    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    .line 4661
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_1e

    .line 4662
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setSecondParentView(Landroid/view/View;)V

    .line 4663
    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 4665
    :cond_1e
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1f
    const/4 v1, 0x3

    if-ge v0, v1, :cond_33

    .line 4666
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_30

    .line 4667
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v1, v1, v0

    const/4 v3, -0x1

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    .line 4665
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 4670
    :cond_33
    invoke-direct {p0, v4}, Lorg/telegram/ui/PhotoViewer;->requestVideoPreview(I)V

    .line 4671
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    if-eqz v1, :cond_3f

    .line 4672
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoTimelineView;->destroy()V

    .line 4674
    :cond_3f
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object v1, v2

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4675
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object v1, v2

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4676
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    move-object v1, v2

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4677
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$60;

    invoke-direct {v3, p0}, Lorg/telegram/ui/PhotoViewer$60;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->post(Ljava/lang/Runnable;)Z

    .line 4691
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-eqz v1, :cond_6a

    .line 4692
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-interface {v1}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->willHidePhotoViewer()V

    .line 4694
    :cond_6a
    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    .line 4695
    iput-boolean v4, p0, Lorg/telegram/ui/PhotoViewer;->disableShowCheck:Z

    .line 4696
    if-eqz p1, :cond_75

    .line 4697
    iget-object v1, p1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v5, v5}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 4699
    :cond_75
    return-void
.end method

.method private onPhotoShow(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V
    .registers 24
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p5, "index"    # I
    .param p6, "object"    # Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$FileLocation;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;I",
            "Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3303
    .local p3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .local p4, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    .line 3304
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 3305
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 3306
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    .line 3307
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 3308
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    .line 3309
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 3310
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 3311
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 3312
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    .line 3313
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    .line 3314
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    .line 3315
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    .line 3316
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->isFirstLoading:Z

    .line 3317
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    .line 3318
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    .line 3319
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-boolean v4, v2, v3

    .line 3320
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-nez v2, :cond_c5

    const/4 v2, 0x1

    :goto_78
    aput-boolean v2, v3, v4

    .line 3321
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    .line 3322
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    .line 3323
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    .line 3324
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3325
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3326
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3327
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3328
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3329
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_ad
    const/4 v2, 0x2

    if-ge v10, v2, :cond_c7

    .line 3330
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 3331
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIdsTemp:[Ljava/util/HashMap;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 3329
    add-int/lit8 v10, v10, 0x1

    goto :goto_ad

    .line 3320
    .end local v10    # "a":I
    :cond_c5
    const/4 v2, 0x0

    goto :goto_78

    .line 3333
    .restart local v10    # "a":I
    :cond_c7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3334
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentUserAvatarLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 3335
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setPadding(IIII)V

    .line 3336
    if-eqz p6, :cond_276

    move-object/from16 v0, p6

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    :goto_e4
    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    .line 3337
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 3338
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3339
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3340
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 3341
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 3342
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3343
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3344
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    if-eqz v2, :cond_13f

    .line 3345
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->setVisibility(I)V

    .line 3346
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    .line 3347
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->setTag(Ljava/lang/Object;)V

    .line 3349
    :cond_13f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_151

    .line 3350
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3351
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    .line 3353
    :cond_151
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    .line 3354
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 3355
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 3356
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 3357
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTranslationY(F)V

    .line 3358
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setTranslationY(F)V

    .line 3359
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CheckBox;->setAlpha(F)V

    .line 3360
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setAlpha(F)V

    .line 3361
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 3362
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    .line 3363
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->paintItem:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3364
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3365
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3366
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1ce

    .line 3367
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3369
    :cond_1ce
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionItem:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3370
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionItem:Landroid/widget/ImageView;

    const v3, 0x7f020219

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3371
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3372
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setVisibility(I)V

    .line 3373
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 3374
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3375
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 3376
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->masksItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 3377
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    .line 3378
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    const v3, 0x7f020298

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3379
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    .line 3380
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 3381
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3382
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    if-eqz v2, :cond_24d

    .line 3383
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoCropView;->setVisibility(I)V

    .line 3385
    :cond_24d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    if-eqz v2, :cond_25c

    .line 3386
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoFilterView;->setVisibility(I)V

    .line 3389
    :cond_25c
    const/4 v10, 0x0

    :goto_25d
    const/4 v2, 0x3

    if-ge v10, v2, :cond_279

    .line 3390
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v2, v2, v10

    if-eqz v2, :cond_273

    .line 3391
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v2, v2, v10

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    .line 3389
    :cond_273
    add-int/lit8 v10, v10, 0x1

    goto :goto_25d

    .line 3336
    :cond_276
    const/4 v2, 0x0

    goto/16 :goto_e4

    .line 3395
    :cond_279
    if-eqz p1, :cond_352

    if-nez p3, :cond_352

    .line 3396
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3397
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v2, :cond_309

    .line 3398
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    .line 3404
    :cond_291
    :goto_291
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    .line 3486
    :cond_298
    :goto_298
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v2, :cond_2d2

    .line 3487
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5ed

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    if-nez v2, :cond_5ed

    .line 3488
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    .line 3489
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2d2

    .line 3490
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    .line 3496
    :cond_2d2
    :goto_2d2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_2e2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v2

    if-nez v2, :cond_302

    :cond_2e2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v2, :cond_60a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_302

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-eqz v2, :cond_60a

    .line 3497
    :cond_302
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PhotoViewer;->onActionClick(Z)V

    .line 3508
    :cond_308
    :goto_308
    return-void

    .line 3399
    :cond_309
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-nez v2, :cond_291

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v2, :cond_291

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-eqz v2, :cond_32f

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;

    if-eqz v2, :cond_291

    .line 3400
    :cond_32f
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    .line 3401
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3402
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    goto/16 :goto_291

    .line 3405
    :cond_352
    if-eqz p2, :cond_3d4

    .line 3406
    move-object/from16 v0, p6

    iget v2, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->dialogId:I

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    .line 3407
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3408
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    move-object/from16 v0, p6

    iget v3, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->size:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3409
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3410
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_394

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3c7

    :cond_394
    const/4 v2, 0x0

    :goto_395
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3411
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    .line 3412
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 3413
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3ca

    .line 3414
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 3418
    :goto_3b8
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    .line 3419
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->currentUserAvatarLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_298

    .line 3410
    :cond_3c7
    const/16 v2, 0x8

    goto :goto_395

    .line 3416
    :cond_3ca
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    goto :goto_3b8

    .line 3420
    :cond_3d4
    if-eqz p3, :cond_447

    .line 3421
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 3422
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    .line 3423
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3424
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-nez v2, :cond_405

    .line 3425
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 3426
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v2, v2, p5

    add-int/lit8 p5, v2, -0x1

    .line 3428
    :cond_405
    const/4 v10, 0x0

    :goto_406
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_43d

    .line 3429
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/MessageObject;

    .line 3430
    .local v14, "message":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_43b

    const/4 v2, 0x0

    :goto_42b
    aget-object v2, v3, v2

    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3428
    add-int/lit8 v10, v10, 0x1

    goto :goto_406

    .line 3430
    :cond_43b
    const/4 v2, 0x1

    goto :goto_42b

    .line 3432
    .end local v14    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_43d
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    goto/16 :goto_298

    .line 3433
    :cond_447
    if-eqz p4, :cond_298

    .line 3434
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v2, :cond_457

    .line 3435
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 3437
    :cond_457
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 3438
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3439
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    .line 3440
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    .line 3441
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3442
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    .line 3443
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 3445
    .local v15, "obj":Ljava/lang/Object;
    instance-of v2, v15, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v2, :cond_5a5

    .line 3446
    check-cast v15, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .end local v15    # "obj":Ljava/lang/Object;
    iget-boolean v2, v15, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v2, :cond_59b

    .line 3447
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3448
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3449
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3453
    :goto_4bb
    const/4 v11, 0x1

    .line 3461
    .local v11, "allowCaption":Z
    :goto_4bc
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_572

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v2, :cond_4da

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v2

    const/16 v3, 0x2e

    if-lt v2, v3, :cond_572

    .line 3462
    :cond_4da
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 3463
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_5d9

    const/4 v2, 0x1

    :goto_4f4
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setNeedUsernames(Z)V

    .line 3464
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setNeedBotContext(Z)V

    .line 3465
    if-eqz v11, :cond_5dc

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-eqz v2, :cond_517

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-eqz v2, :cond_5dc

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-interface {v2}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->allowCaption()Z

    move-result v2

    if-eqz v2, :cond_5dc

    :cond_517
    const/4 v2, 0x1

    :goto_518
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    .line 3466
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    if-eqz v2, :cond_5df

    const/4 v2, 0x0

    :goto_527
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setVisibility(I)V

    .line 3467
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5e3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    if-eqz v2, :cond_5e3

    .line 3468
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const-string v3, "AddCaption"

    const v4, 0x7f070065

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3469
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const-string v3, "empty"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 3470
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const v3, -0x4d000001

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3471
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3475
    :goto_565
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    if-eqz v2, :cond_572

    .line 3476
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onCreate()V

    .line 3479
    :cond_572
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_596

    .line 3480
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->paintItem:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3481
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3483
    :cond_596
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->updateSelectedCount()V

    goto/16 :goto_298

    .line 3451
    .end local v11    # "allowCaption":Z
    :cond_59b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4bb

    .line 3454
    .restart local v15    # "obj":Ljava/lang/Object;
    :cond_5a5
    instance-of v2, v15, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v2, :cond_5b5

    .line 3455
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3456
    const/4 v11, 0x0

    .restart local v11    # "allowCaption":Z
    goto/16 :goto_4bc

    .line 3458
    .end local v11    # "allowCaption":Z
    :cond_5b5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    instance-of v2, v15, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v2, :cond_5d4

    check-cast v15, Lorg/telegram/messenger/MediaController$SearchImage;

    .end local v15    # "obj":Ljava/lang/Object;
    iget v2, v15, Lorg/telegram/messenger/MediaController$SearchImage;->type:I

    if-nez v2, :cond_5d4

    const/4 v2, 0x0

    :goto_5c4
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3459
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5d7

    const/4 v11, 0x1

    .restart local v11    # "allowCaption":Z
    :goto_5d2
    goto/16 :goto_4bc

    .line 3458
    .end local v11    # "allowCaption":Z
    :cond_5d4
    const/16 v2, 0x8

    goto :goto_5c4

    .line 3459
    :cond_5d7
    const/4 v11, 0x0

    goto :goto_5d2

    .line 3463
    .restart local v11    # "allowCaption":Z
    :cond_5d9
    const/4 v2, 0x0

    goto/16 :goto_4f4

    .line 3465
    :cond_5dc
    const/4 v2, 0x0

    goto/16 :goto_518

    .line 3466
    :cond_5df
    const/16 v2, 0x8

    goto/16 :goto_527

    .line 3473
    :cond_5e3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_565

    .line 3492
    .end local v11    # "allowCaption":Z
    :cond_5ed
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    if-eqz v2, :cond_2d2

    .line 3493
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    const/4 v4, 0x0

    const/16 v5, 0x50

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    invoke-virtual/range {v2 .. v9}, Lorg/telegram/messenger/MessagesController;->loadDialogPhotos(IIIJZI)V

    goto/16 :goto_2d2

    .line 3498
    :cond_60a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_308

    .line 3499
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 3500
    .local v13, "entry":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 3501
    .local v12, "caption":Ljava/lang/CharSequence;
    instance-of v2, v13, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v2, :cond_308

    move-object/from16 v16, v13

    .line 3502
    check-cast v16, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 3503
    .local v16, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v2, :cond_308

    .line 3504
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, v16

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lorg/telegram/ui/PhotoViewer;->preparePlayer(Ljava/io/File;ZZ)V

    goto/16 :goto_308
.end method

.method private onSharePressed()V
    .registers 10

    .prologue
    .line 1056
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v6, :cond_8

    iget-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    if-nez v6, :cond_9

    .line 1106
    :cond_8
    :goto_8
    return-void

    .line 1060
    :cond_9
    const/4 v2, 0x0

    .line 1061
    .local v2, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 1063
    .local v5, "isVideo":Z
    :try_start_b
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_74

    .line 1064
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v5

    .line 1069
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_33

    .line 1070
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2c} :catch_6f

    .line 1071
    .end local v2    # "f":Ljava/io/File;
    .local v3, "f":Ljava/io/File;
    :try_start_2c
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_cb

    move-result v6

    if-nez v6, :cond_ce

    .line 1072
    const/4 v2, 0x0

    .line 1075
    .end local v3    # "f":Ljava/io/File;
    .restart local v2    # "f":Ljava/io/File;
    :cond_33
    :goto_33
    if-nez v2, :cond_3d

    .line 1076
    :try_start_35
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v2

    .line 1082
    :cond_3d
    :goto_3d
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_9a

    .line 1083
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1084
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_86

    .line 1085
    const-string v6, "video/mp4"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1093
    :goto_51
    const-string v6, "android.intent.extra.STREAM"

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1095
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    const-string v7, "ShareFile"

    const v8, 0x7f0704fe

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v7

    const/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_6e} :catch_6f

    goto :goto_8

    .line 1103
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_6f
    move-exception v1

    .line 1104
    .local v1, "e":Ljava/lang/Exception;
    :goto_70
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 1078
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_74
    :try_start_74
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v6, :cond_3d

    .line 1079
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    if-eqz v6, :cond_84

    const/4 v6, 0x1

    :goto_7f
    invoke-static {v7, v6}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v2

    goto :goto_3d

    :cond_84
    const/4 v6, 0x0

    goto :goto_7f

    .line 1087
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_86
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_94

    .line 1088
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_51

    .line 1090
    :cond_94
    const-string v6, "image/jpeg"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_51

    .line 1097
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_9a
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1098
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v6, "AppName"

    const v7, 0x7f070092

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1099
    const-string v6, "OK"

    const v7, 0x7f0703d4

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1100
    const-string v6, "PleaseDownload"

    const v7, 0x7f07045b

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1101
    invoke-virtual {p0, v0}, Lorg/telegram/ui/PhotoViewer;->showAlertDialog(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_c9} :catch_6f

    goto/16 :goto_8

    .line 1103
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v2    # "f":Ljava/io/File;
    .restart local v3    # "f":Ljava/io/File;
    :catch_cb
    move-exception v1

    move-object v2, v3

    .end local v3    # "f":Ljava/io/File;
    .restart local v2    # "f":Ljava/io/File;
    goto :goto_70

    .end local v2    # "f":Ljava/io/File;
    .restart local v3    # "f":Ljava/io/File;
    :cond_ce
    move-object v2, v3

    .end local v3    # "f":Ljava/io/File;
    .restart local v2    # "f":Ljava/io/File;
    goto/16 :goto_33
.end method

.method private onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4807
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    if-nez v9, :cond_c

    iget-wide v10, p0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-eqz v9, :cond_e

    .line 4808
    :cond_c
    const/4 v9, 0x0

    .line 5021
    :goto_d
    return v9

    .line 4811
    :cond_e
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1a

    .line 4812
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v9, p1}, Lorg/telegram/ui/Components/PhotoFilterView;->onTouch(Landroid/view/MotionEvent;)V

    .line 4813
    const/4 v9, 0x1

    goto :goto_d

    .line 4816
    :cond_1a
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_21

    .line 4817
    const/4 v9, 0x1

    goto :goto_d

    .line 4820
    :cond_21
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v9

    if-nez v9, :cond_31

    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isKeyboardVisible()Z

    move-result v9

    if-eqz v9, :cond_3e

    .line 4821
    :cond_31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3c

    .line 4822
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->closeCaptionEnter(Z)V

    .line 4824
    :cond_3c
    const/4 v9, 0x1

    goto :goto_d

    .line 4827
    :cond_3e
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-nez v9, :cond_64

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_64

    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v9, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_64

    .line 4828
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->doubleTap:Z

    if-eqz v9, :cond_64

    .line 4829
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->doubleTap:Z

    .line 4830
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    .line 4831
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->zooming:Z

    .line 4832
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->checkMinMax(Z)V

    .line 4833
    const/4 v9, 0x1

    goto :goto_d

    .line 4837
    :cond_64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    if-eqz v9, :cond_71

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_120

    .line 4838
    :cond_71
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7b

    .line 4839
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/PhotoCropView;->cancelAnimationRunnable()V

    .line 4841
    :cond_7b
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->discardTap:Z

    .line 4842
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->isFinished()Z

    move-result v9

    if-nez v9, :cond_8b

    .line 4843
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->abortAnimation()V

    .line 4845
    :cond_8b
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    if-nez v9, :cond_f8

    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->changingPage:Z

    if-nez v9, :cond_f8

    .line 4846
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->canZoom:Z

    if-eqz v9, :cond_fb

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_fb

    .line 4847
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    sub-float/2addr v9, v10

    float-to-double v10, v9

    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    const/4 v12, 0x0

    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    sub-float/2addr v9, v12

    float-to-double v12, v9

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    double-to-float v9, v10

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartDistance:F

    .line 4848
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    .line 4849
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterX:F

    .line 4850
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterY:F

    .line 4851
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartX:F

    .line 4852
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartY:F

    .line 4853
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->zooming:Z

    .line 4854
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    .line 4855
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_f8

    .line 4856
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->clear()V

    .line 5021
    :cond_f8
    :goto_f8
    const/4 v9, 0x0

    goto/16 :goto_d

    .line 4858
    :cond_fb
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_f8

    .line 4859
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->moveStartX:F

    .line 4860
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->moveStartY:F

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->dragY:F

    .line 4861
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    .line 4862
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->canDragDown:Z

    .line 4863
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_f8

    .line 4864
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_f8

    .line 4868
    :cond_120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_36b

    .line 4869
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_131

    .line 4870
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/PhotoCropView;->cancelAnimationRunnable()V

    .line 4872
    :cond_131
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->canZoom:Z

    if-eqz v9, :cond_1bc

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1bc

    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    if-nez v9, :cond_1bc

    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->zooming:Z

    if-eqz v9, :cond_1bc

    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->changingPage:Z

    if-nez v9, :cond_1bc

    .line 4873
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->discardTap:Z

    .line 4874
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    sub-float/2addr v9, v10

    float-to-double v10, v9

    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    const/4 v12, 0x0

    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    sub-float/2addr v9, v12

    float-to-double v12, v9

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    double-to-float v9, v10

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartDistance:F

    div-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    mul-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    .line 4875
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartX:F

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    iget v12, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    .line 4876
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartY:F

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    iget v12, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 4877
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 4878
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v9}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    goto/16 :goto_f8

    .line 4879
    :cond_1bc
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_f8

    .line 4880
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_1cc

    .line 4881
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4883
    :cond_1cc
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->moveStartX:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 4884
    .local v2, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->dragY:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 4885
    .local v3, "dy":F
    const/high16 v9, 0x40400000    # 3.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v2, v9

    if-gtz v9, :cond_1f8

    const/high16 v9, 0x40400000    # 3.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v3, v9

    if-lez v9, :cond_1fb

    .line 4886
    :cond_1f8
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->discardTap:Z

    .line 4888
    :cond_1fb
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    instance-of v9, v9, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;

    if-nez v9, :cond_256

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-nez v9, :cond_256

    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->canDragDown:Z

    if-eqz v9, :cond_256

    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    if-nez v9, :cond_256

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_256

    const/high16 v9, 0x41f00000    # 30.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v3, v9

    if-ltz v9, :cond_256

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v3, v9

    cmpl-float v9, v9, v2

    if-lez v9, :cond_256

    .line 4889
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    .line 4890
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    .line 4891
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->dragY:F

    .line 4892
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->isActionBarVisible:Z

    if-eqz v9, :cond_244

    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    if-eqz v9, :cond_244

    .line 4893
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lorg/telegram/ui/PhotoViewer;->toggleActionBar(ZZ)V

    .line 4898
    :cond_241
    :goto_241
    const/4 v9, 0x1

    goto/16 :goto_d

    .line 4894
    :cond_244
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->getVisibility()I

    move-result v9

    if-nez v9, :cond_241

    .line 4895
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lorg/telegram/ui/PhotoViewer;->toggleActionBar(ZZ)V

    .line 4896
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->toggleCheckImageView(Z)V

    goto :goto_241

    .line 4899
    :cond_256
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    if-eqz v9, :cond_26a

    .line 4900
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->dragY:F

    sub-float/2addr v9, v10

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 4901
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v9}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    goto/16 :goto_f8

    .line 4902
    :cond_26a
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->invalidCoords:Z

    if-nez v9, :cond_35a

    iget-wide v10, p0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-nez v9, :cond_35a

    .line 4903
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->moveStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    sub-float v4, v9, v10

    .line 4904
    .local v4, "moveDx":F
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->moveStartY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float v5, v9, v10

    .line 4905
    .local v5, "moveDy":F
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    if-nez v9, :cond_2b2

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-nez v9, :cond_2b2

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_2aa

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x41400000    # 12.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_2b2

    :cond_2aa
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_f8

    .line 4906
    :cond_2b2
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    if-nez v9, :cond_2be

    .line 4907
    const/4 v4, 0x0

    .line 4908
    const/4 v5, 0x0

    .line 4909
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    .line 4910
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->canDragDown:Z

    .line 4913
    :cond_2be
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->moveStartX:F

    .line 4914
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->moveStartY:F

    .line 4915
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 4916
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2e3

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-nez v9, :cond_2f7

    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->hasImage()Z

    move-result v9

    if-eqz v9, :cond_2f7

    :cond_2e3
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2fa

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-nez v9, :cond_2f7

    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->hasImage()Z

    move-result v9

    if-nez v9, :cond_2fa

    .line 4917
    :cond_2f7
    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v4, v9

    .line 4919
    :cond_2fa
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_346

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_346

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-nez v9, :cond_346

    .line 4920
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    sub-float/2addr v9, v5

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_337

    .line 4921
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 4922
    const/4 v5, 0x0

    .line 4933
    :cond_31a
    :goto_31a
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    sub-float/2addr v9, v4

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    .line 4934
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_32b

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-eqz v9, :cond_330

    .line 4935
    :cond_32b
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    sub-float/2addr v9, v5

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 4938
    :cond_330
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v9}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    goto/16 :goto_f8

    .line 4923
    :cond_337
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    sub-float/2addr v9, v5

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_31a

    .line 4924
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 4925
    const/4 v5, 0x0

    goto :goto_31a

    .line 4928
    :cond_346
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_356

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_31a

    .line 4929
    :cond_356
    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v5, v9

    goto :goto_31a

    .line 4941
    .end local v4    # "moveDx":F
    .end local v5    # "moveDy":F
    :cond_35a
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->invalidCoords:Z

    .line 4942
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->moveStartX:F

    .line 4943
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/PhotoViewer;->moveStartY:F

    goto/16 :goto_f8

    .line 4946
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    :cond_36b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_380

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_380

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x6

    if-ne v9, v10, :cond_f8

    .line 4947
    :cond_380
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_38a

    .line 4948
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/PhotoCropView;->startAnimationRunnable()V

    .line 4950
    :cond_38a
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->zooming:Z

    if-eqz v9, :cond_424

    .line 4951
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->invalidCoords:Z

    .line 4952
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_3ab

    .line 4953
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 4954
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {p0, v9, v10, v11, v12}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    .line 4973
    :goto_3a6
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->zooming:Z

    goto/16 :goto_f8

    .line 4955
    :cond_3ab
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v10, 0x40400000    # 3.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_41f

    .line 4956
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartX:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x40400000    # 3.0f

    iget v12, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    sub-float v0, v9, v10

    .line 4957
    .local v0, "atx":F
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartY:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x40400000    # 3.0f

    iget v12, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    sub-float v1, v9, v10

    .line 4958
    .local v1, "aty":F
    const/high16 v9, 0x40400000    # 3.0f

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 4959
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    cmpg-float v9, v0, v9

    if-gez v9, :cond_40d

    .line 4960
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    .line 4964
    :cond_3fe
    :goto_3fe
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    cmpg-float v9, v1, v9

    if-gez v9, :cond_416

    .line 4965
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    .line 4969
    :cond_406
    :goto_406
    const/high16 v9, 0x40400000    # 3.0f

    const/4 v10, 0x1

    invoke-direct {p0, v9, v0, v1, v10}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    goto :goto_3a6

    .line 4961
    :cond_40d
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    cmpl-float v9, v0, v9

    if-lez v9, :cond_3fe

    .line 4962
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    goto :goto_3fe

    .line 4966
    :cond_416
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    cmpl-float v9, v1, v9

    if-lez v9, :cond_406

    .line 4967
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    goto :goto_406

    .line 4971
    .end local v0    # "atx":F
    .end local v1    # "aty":F
    :cond_41f
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->checkMinMax(Z)V

    goto :goto_3a6

    .line 4974
    :cond_424
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    if-eqz v9, :cond_463

    .line 4975
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->dragY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x40c00000    # 6.0f

    div-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_449

    .line 4976
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    .line 4984
    :goto_444
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    goto/16 :goto_f8

    .line 4978
    :cond_449
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->getVisibility()I

    move-result v9

    if-nez v9, :cond_45a

    .line 4979
    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lorg/telegram/ui/PhotoViewer;->toggleActionBar(ZZ)V

    .line 4980
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->toggleCheckImageView(Z)V

    .line 4982
    :cond_45a
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v9, v10, v11, v12}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    goto :goto_444

    .line 4985
    :cond_463
    iget-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    if-eqz v9, :cond_f8

    .line 4986
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    .line 4987
    .local v6, "moveToX":F
    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 4988
    .local v7, "moveToY":F
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 4989
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    .line 4990
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/PhotoViewer;->canDragDown:Z

    .line 4991
    const/4 v8, 0x0

    .line 4992
    .local v8, "velocity":F
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_490

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_490

    .line 4993
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v10, 0x3e8

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 4994
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v8

    .line 4997
    :cond_490
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-nez v9, :cond_4e9

    .line 4998
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x3

    int-to-float v11, v11

    sub-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_4b1

    const v9, 0x44228000    # 650.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    cmpg-float v9, v8, v9

    if-gez v9, :cond_4bf

    :cond_4b1
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->hasImage()Z

    move-result v9

    if-eqz v9, :cond_4bf

    .line 4999
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->goToNext()V

    .line 5000
    const/4 v9, 0x1

    goto/16 :goto_d

    .line 5002
    :cond_4bf
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x3

    int-to-float v11, v11

    add-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-gtz v9, :cond_4db

    const v9, 0x44228000    # 650.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_4e9

    :cond_4db
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->hasImage()Z

    move-result v9

    if-eqz v9, :cond_4e9

    .line 5003
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->goToPrev()V

    .line 5004
    const/4 v9, 0x1

    goto/16 :goto_d

    .line 5008
    :cond_4e9
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_505

    .line 5009
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    .line 5013
    :cond_4f3
    :goto_4f3
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_510

    .line 5014
    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    .line 5018
    :cond_4fd
    :goto_4fd
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/4 v10, 0x0

    invoke-direct {p0, v9, v6, v7, v10}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    goto/16 :goto_f8

    .line 5010
    :cond_505
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4f3

    .line 5011
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    goto :goto_4f3

    .line 5015
    :cond_510
    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4fd

    .line 5016
    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    goto :goto_4fd
.end method

.method private openCaptionEnter()V
    .registers 4

    .prologue
    .line 2302
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_c

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-eqz v0, :cond_d

    .line 2314
    :cond_c
    :goto_c
    return-void

    .line 2305
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setTag(Ljava/lang/Object;)V

    .line 2306
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->openKeyboard()V

    .line 2307
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->lastTitle:Ljava/lang/String;

    .line 2308
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionItem:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4f

    .line 2309
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    if-eqz v0, :cond_45

    const-string v0, "GifCaption"

    const v2, 0x7f07026b

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_3b
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2310
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 2309
    :cond_45
    const-string v0, "VideoCaption"

    const v2, 0x7f070576

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    .line 2312
    :cond_4f
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "PhotoCaption"

    const v2, 0x7f07044b

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_c
.end method

.method private preparePlayer(Ljava/io/File;ZZ)V
    .registers 16
    .param p1, "file"    # Ljava/io/File;
    .param p2, "playWhenReady"    # Z
    .param p3, "preview"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/16 v9, 0x8

    const-wide/16 v10, 0x3c

    const/4 v5, -0x1

    const/4 v8, 0x0

    .line 2382
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    if-nez v2, :cond_c

    .line 2517
    :goto_b
    return-void

    .line 2385
    :cond_c
    if-nez p3, :cond_10

    .line 2386
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->currentPlayingVideoFile:Ljava/io/File;

    .line 2388
    :cond_10
    iput-boolean p3, p0, Lorg/telegram/ui/PhotoViewer;->inPreview:Z

    .line 2389
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->releasePlayer()V

    .line 2390
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    if-nez v2, :cond_4f

    .line 2391
    new-instance v2, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    .line 2392
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setVisibility(I)V

    .line 2393
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    const/16 v4, 0x11

    invoke-static {v5, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v8, v4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2395
    new-instance v2, Landroid/view/TextureView;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    .line 2396
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, v8}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 2397
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    const/16 v4, 0x11

    invoke-static {v5, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2399
    :cond_4f
    iput-boolean v8, p0, Lorg/telegram/ui/PhotoViewer;->textureUploaded:Z

    .line 2400
    iput-boolean v8, p0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeStarted:Z

    .line 2401
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    const/4 v3, 0x0

    iput v3, p0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setAlpha(F)V

    .line 2402
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;

    const v3, 0x7f020195

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2403
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v2, :cond_d2

    .line 2404
    new-instance v2, Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v2}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 2405
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 2406
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$38;

    invoke-direct {v3, p0}, Lorg/telegram/ui/PhotoViewer$38;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    .line 2490
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v2, :cond_135

    .line 2491
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v0

    .line 2492
    .local v0, "duration":J
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-nez v2, :cond_94

    .line 2493
    const-wide/16 v0, 0x0

    .line 2498
    :cond_94
    :goto_94
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 2499
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const-string v3, "%02d:%02d / %02d:%02d"

    new-array v4, v6, [Ljava/lang/Object;

    div-long v6, v0, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x1

    rem-long v6, v0, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    div-long v6, v0, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    rem-long v6, v0, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 2501
    .end local v0    # "duration":J
    :cond_d2
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "other"

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    .line 2502
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_12c

    .line 2503
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v2, :cond_10d

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fb

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-eqz v2, :cond_10d

    .line 2504
    :cond_fb
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2505
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2507
    :cond_10d
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2508
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2509
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2510
    iget-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    if-eqz v2, :cond_12c

    .line 2511
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2512
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 2515
    :cond_12c
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v2, p2}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    .line 2516
    iput-boolean p3, p0, Lorg/telegram/ui/PhotoViewer;->inPreview:Z

    goto/16 :goto_b

    .line 2496
    :cond_135
    const-wide/16 v0, 0x0

    .restart local v0    # "duration":J
    goto/16 :goto_94
.end method

.method private processOpenVideo(Ljava/lang/String;)Z
    .registers 36
    .param p1, "videoPath"    # Ljava/lang/String;

    .prologue
    .line 5935
    const/16 v29, 0x0

    :try_start_2
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 5936
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    const/16 v30, 0x8

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5937
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    .line 5938
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoTimelineView;->setVideoPath(Ljava/lang/String;)V

    .line 5939
    const/16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    .line 5940
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5941
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/PhotoViewer;->originalSize:J

    .line 5943
    new-instance v15, Lcom/coremedia/iso/IsoFile;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Lcom/coremedia/iso/IsoFile;-><init>(Ljava/lang/String;)V

    .line 5944
    .local v15, "isoFile":Lcom/coremedia/iso/IsoFile;
    const-string v29, "/moov/trak/"

    move-object/from16 v0, v29

    invoke-static {v15, v0}, Lcom/googlecode/mp4parser/util/Path;->getPaths(Lcom/coremedia/iso/boxes/Container;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 5945
    .local v8, "boxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    const/16 v28, 0x0

    .line 5946
    .local v28, "trackHeaderBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    const/4 v13, 0x1

    .line 5947
    .local v13, "isAvc":Z
    const/4 v14, 0x1

    .line 5949
    .local v14, "isMp4A":Z
    const-string v29, "/moov/trak/mdia/minf/stbl/stsd/mp4a/"

    move-object/from16 v0, v29

    invoke-static {v15, v0}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/coremedia/iso/boxes/Container;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v7

    .line 5950
    .local v7, "boxTest":Lcom/coremedia/iso/boxes/Box;
    if-nez v7, :cond_5f

    .line 5951
    const/4 v14, 0x0

    .line 5954
    :cond_5f
    if-nez v14, :cond_64

    .line 5955
    const/16 v29, 0x0

    .line 6064
    .end local v7    # "boxTest":Lcom/coremedia/iso/boxes/Box;
    .end local v8    # "boxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    .end local v11    # "file":Ljava/io/File;
    .end local v13    # "isAvc":Z
    .end local v14    # "isMp4A":Z
    .end local v15    # "isoFile":Lcom/coremedia/iso/IsoFile;
    .end local v28    # "trackHeaderBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    :goto_63
    return v29

    .line 5958
    .restart local v7    # "boxTest":Lcom/coremedia/iso/boxes/Box;
    .restart local v8    # "boxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    .restart local v11    # "file":Ljava/io/File;
    .restart local v13    # "isAvc":Z
    .restart local v14    # "isMp4A":Z
    .restart local v15    # "isoFile":Lcom/coremedia/iso/IsoFile;
    .restart local v28    # "trackHeaderBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    :cond_64
    const-string v29, "/moov/trak/mdia/minf/stbl/stsd/avc1/"

    move-object/from16 v0, v29

    invoke-static {v15, v0}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/coremedia/iso/boxes/Container;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v7

    .line 5959
    if-nez v7, :cond_6f

    .line 5960
    const/4 v13, 0x0

    .line 5963
    :cond_6f
    const/4 v5, 0x0

    .local v5, "b":I
    :goto_70
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v5, v0, :cond_160

    .line 5964
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coremedia/iso/boxes/Box;

    .line 5965
    .local v6, "box":Lcom/coremedia/iso/boxes/Box;
    move-object v0, v6

    check-cast v0, Lcom/coremedia/iso/boxes/TrackBox;

    move-object/from16 v25, v0
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_83} :catch_149

    .line 5966
    .local v25, "trackBox":Lcom/coremedia/iso/boxes/TrackBox;
    const-wide/16 v22, 0x0

    .line 5967
    .local v22, "sampleSizes":J
    const-wide/16 v26, 0x0

    .line 5969
    .local v26, "trackBitrate":J
    :try_start_87
    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/TrackBox;->getMediaBox()Lcom/coremedia/iso/boxes/MediaBox;

    move-result-object v17

    .line 5970
    .local v17, "mediaBox":Lcom/coremedia/iso/boxes/MediaBox;
    invoke-virtual/range {v17 .. v17}, Lcom/coremedia/iso/boxes/MediaBox;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/MediaHeaderBox;

    move-result-object v18

    .line 5971
    .local v18, "mediaHeaderBox":Lcom/coremedia/iso/boxes/MediaHeaderBox;
    invoke-virtual/range {v17 .. v17}, Lcom/coremedia/iso/boxes/MediaBox;->getMediaInformationBox()Lcom/coremedia/iso/boxes/MediaInformationBox;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/coremedia/iso/boxes/MediaInformationBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleSizeBox()Lcom/coremedia/iso/boxes/SampleSizeBox;

    move-result-object v21

    .line 5972
    .local v21, "sampleSizeBox":Lcom/coremedia/iso/boxes/SampleSizeBox;
    invoke-virtual/range {v21 .. v21}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleSizes()[J

    move-result-object v24

    .line 5973
    .local v24, "sizes":[J
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_a0
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v4, v0, :cond_b0

    .line 5974
    aget-wide v30, v24, v4

    add-long v22, v22, v30

    .line 5973
    add-int/lit8 v4, v4, 0x1

    goto :goto_a0

    .line 5976
    :cond_b0
    invoke-virtual/range {v18 .. v18}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getDuration()J

    move-result-wide v30

    move-wide/from16 v0, v30

    long-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v18 .. v18}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getTimescale()J

    move-result-wide v30

    move-wide/from16 v0, v30

    long-to-float v0, v0

    move/from16 v30, v0

    div-float v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    .line 5977
    const-wide/16 v30, 0x8

    mul-long v30, v30, v22

    move-wide/from16 v0, v30

    long-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    move/from16 v30, v0
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_d9} :catch_144

    div-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v26, v0

    .line 5981
    .end local v4    # "a":I
    .end local v17    # "mediaBox":Lcom/coremedia/iso/boxes/MediaBox;
    .end local v18    # "mediaHeaderBox":Lcom/coremedia/iso/boxes/MediaHeaderBox;
    .end local v21    # "sampleSizeBox":Lcom/coremedia/iso/boxes/SampleSizeBox;
    .end local v24    # "sizes":[J
    :goto_e5
    :try_start_e5
    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v12

    .line 5982
    .local v12, "headerBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    invoke-virtual {v12}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getWidth()D

    move-result-wide v30

    const-wide/16 v32, 0x0

    cmpl-double v29, v30, v32

    if-eqz v29, :cond_151

    invoke-virtual {v12}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getHeight()D

    move-result-wide v30

    const-wide/16 v32, 0x0

    cmpl-double v29, v30, v32

    if-eqz v29, :cond_151

    .line 5983
    move-object/from16 v28, v12

    .line 5984
    const-wide/32 v30, 0x186a0

    div-long v30, v26, v30

    const-wide/32 v32, 0x186a0

    mul-long v30, v30, v32

    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->bitrate:I

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->originalBitrate:I

    .line 5985
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->bitrate:I

    move/from16 v29, v0

    const v30, 0xdbba0

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_132

    .line 5986
    const v29, 0xdbba0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->bitrate:I

    .line 5988
    :cond_132
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/PhotoViewer;->videoFramesSize:J

    move-wide/from16 v30, v0

    add-long v30, v30, v22

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/PhotoViewer;->videoFramesSize:J

    .line 5963
    :goto_140
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_70

    .line 5978
    .end local v12    # "headerBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    :catch_144
    move-exception v10

    .line 5979
    .local v10, "e":Ljava/lang/Exception;
    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_148} :catch_149

    goto :goto_e5

    .line 6028
    .end local v5    # "b":I
    .end local v6    # "box":Lcom/coremedia/iso/boxes/Box;
    .end local v7    # "boxTest":Lcom/coremedia/iso/boxes/Box;
    .end local v8    # "boxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "file":Ljava/io/File;
    .end local v13    # "isAvc":Z
    .end local v14    # "isMp4A":Z
    .end local v15    # "isoFile":Lcom/coremedia/iso/IsoFile;
    .end local v22    # "sampleSizes":J
    .end local v25    # "trackBox":Lcom/coremedia/iso/boxes/TrackBox;
    .end local v26    # "trackBitrate":J
    .end local v28    # "trackHeaderBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    :catch_149
    move-exception v10

    .line 6029
    .restart local v10    # "e":Ljava/lang/Exception;
    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 6030
    const/16 v29, 0x0

    goto/16 :goto_63

    .line 5990
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v5    # "b":I
    .restart local v6    # "box":Lcom/coremedia/iso/boxes/Box;
    .restart local v7    # "boxTest":Lcom/coremedia/iso/boxes/Box;
    .restart local v8    # "boxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    .restart local v11    # "file":Ljava/io/File;
    .restart local v12    # "headerBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    .restart local v13    # "isAvc":Z
    .restart local v14    # "isMp4A":Z
    .restart local v15    # "isoFile":Lcom/coremedia/iso/IsoFile;
    .restart local v22    # "sampleSizes":J
    .restart local v25    # "trackBox":Lcom/coremedia/iso/boxes/TrackBox;
    .restart local v26    # "trackBitrate":J
    .restart local v28    # "trackHeaderBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    :cond_151
    :try_start_151
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/PhotoViewer;->audioFramesSize:J

    move-wide/from16 v30, v0

    add-long v30, v30, v22

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/PhotoViewer;->audioFramesSize:J

    goto :goto_140

    .line 5993
    .end local v6    # "box":Lcom/coremedia/iso/boxes/Box;
    .end local v12    # "headerBox":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    .end local v22    # "sampleSizes":J
    .end local v25    # "trackBox":Lcom/coremedia/iso/boxes/TrackBox;
    .end local v26    # "trackBitrate":J
    :cond_160
    if-nez v28, :cond_166

    .line 5994
    const/16 v29, 0x0

    goto/16 :goto_63

    .line 5997
    :cond_166
    invoke-virtual/range {v28 .. v28}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getMatrix()Lcom/googlecode/mp4parser/util/Matrix;

    move-result-object v16

    .line 5998
    .local v16, "matrix":Lcom/googlecode/mp4parser/util/Matrix;
    sget-object v29, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_90:Lcom/googlecode/mp4parser/util/Matrix;

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/util/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_227

    .line 5999
    const/16 v29, 0x5a

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    .line 6005
    :cond_17e
    :goto_17e
    invoke-virtual/range {v28 .. v28}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getWidth()D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->resultWidth:I

    .line 6006
    invoke-virtual/range {v28 .. v28}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getHeight()D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->resultHeight:I

    .line 6008
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    move/from16 v29, v0

    const/high16 v30, 0x447a0000    # 1000.0f

    mul-float v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    .line 6010
    sget-object v29, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v30, "mainconfig"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 6011
    .local v20, "preferences":Landroid/content/SharedPreferences;
    const-string v29, "compress_video2"

    const/16 v30, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    .line 6012
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    move/from16 v29, v0

    const/16 v30, 0x500

    move/from16 v0, v29

    move/from16 v1, v30

    if-gt v0, v1, :cond_1f2

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    move/from16 v29, v0

    const/16 v30, 0x500

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_253

    .line 6013
    :cond_1f2
    const/16 v29, 0x5

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    .line 6023
    :goto_1fa
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->updateWidthHeightBitrateForCompression()V

    .line 6025
    if-nez v13, :cond_2ce

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->resultWidth:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_223

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->resultHeight:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_2ce

    .line 6026
    :cond_223
    const/16 v29, 0x0

    goto/16 :goto_63

    .line 6000
    .end local v20    # "preferences":Landroid/content/SharedPreferences;
    :cond_227
    sget-object v29, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_180:Lcom/googlecode/mp4parser/util/Matrix;

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/util/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_23d

    .line 6001
    const/16 v29, 0xb4

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    goto/16 :goto_17e

    .line 6002
    :cond_23d
    sget-object v29, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_270:Lcom/googlecode/mp4parser/util/Matrix;

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/util/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_17e

    .line 6003
    const/16 v29, 0x10e

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    goto/16 :goto_17e

    .line 6014
    .restart local v20    # "preferences":Landroid/content/SharedPreferences;
    :cond_253
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    move/from16 v29, v0

    const/16 v30, 0x350

    move/from16 v0, v29

    move/from16 v1, v30

    if-gt v0, v1, :cond_26f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    move/from16 v29, v0

    const/16 v30, 0x350

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_278

    .line 6015
    :cond_26f
    const/16 v29, 0x4

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    goto :goto_1fa

    .line 6016
    :cond_278
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    move/from16 v29, v0

    const/16 v30, 0x280

    move/from16 v0, v29

    move/from16 v1, v30

    if-gt v0, v1, :cond_294

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    move/from16 v29, v0

    const/16 v30, 0x280

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_29e

    .line 6017
    :cond_294
    const/16 v29, 0x3

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    goto/16 :goto_1fa

    .line 6018
    :cond_29e
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    move/from16 v29, v0

    const/16 v30, 0x1e0

    move/from16 v0, v29

    move/from16 v1, v30

    if-gt v0, v1, :cond_2ba

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    move/from16 v29, v0

    const/16 v30, 0x1e0

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_2c4

    .line 6019
    :cond_2ba
    const/16 v29, 0x2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    goto/16 :goto_1fa

    .line 6021
    :cond_2c4
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I
    :try_end_2cc
    .catch Ljava/lang/Exception; {:try_start_151 .. :try_end_2cc} :catch_149

    goto/16 :goto_1fa

    .line 6033
    :cond_2ce
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    move/from16 v29, v0

    const/16 v31, 0x1

    move/from16 v0, v29

    move/from16 v1, v31

    if-le v0, v1, :cond_328

    const/16 v29, 0x0

    :goto_2e4
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6034
    sget v29, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v30, 0x10

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_31e

    sget v29, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v30, 0x12

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_31e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/ImageView;->getVisibility()I

    move-result v29

    if-nez v29, :cond_31e

    .line 6036
    :try_start_30b
    const-string v29, "video/avc"

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/MediaController;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v9

    .line 6037
    .local v9, "codecInfo":Landroid/media/MediaCodecInfo;
    if-nez v9, :cond_32b

    .line 6038
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    const/16 v30, 0x8

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_31e
    .catch Ljava/lang/Exception; {:try_start_30b .. :try_end_31e} :catch_38f

    .line 6061
    .end local v9    # "codecInfo":Landroid/media/MediaCodecInfo;
    :cond_31e
    :goto_31e
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->updateVideoInfo()V

    .line 6062
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->updateMuteButton()V

    .line 6064
    const/16 v29, 0x1

    goto/16 :goto_63

    .line 6033
    :cond_328
    const/16 v29, 0x8

    goto :goto_2e4

    .line 6040
    .restart local v9    # "codecInfo":Landroid/media/MediaCodecInfo;
    :cond_32b
    :try_start_32b
    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v19

    .line 6041
    .local v19, "name":Ljava/lang/String;
    const-string v29, "OMX.google.h264.encoder"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_383

    const-string v29, "OMX.ST.VFM.H264Enc"

    .line 6042
    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_383

    const-string v29, "OMX.Exynos.avc.enc"

    .line 6043
    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_383

    const-string v29, "OMX.MARVELL.VIDEO.HW.CODA7542ENCODER"

    .line 6044
    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_383

    const-string v29, "OMX.MARVELL.VIDEO.H264ENCODER"

    .line 6045
    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_383

    const-string v29, "OMX.k3.video.encoder.avc"

    .line 6046
    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_383

    const-string v29, "OMX.TI.DUCATI1.VIDEO.H264E"

    .line 6047
    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_39f

    .line 6048
    :cond_383
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    const/16 v30, 0x8

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_38e
    .catch Ljava/lang/Exception; {:try_start_32b .. :try_end_38e} :catch_38f

    goto :goto_31e

    .line 6055
    .end local v9    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v19    # "name":Ljava/lang/String;
    :catch_38f
    move-exception v10

    .line 6056
    .restart local v10    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    const/16 v30, 0x8

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6057
    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_31e

    .line 6050
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v9    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v19    # "name":Ljava/lang/String;
    :cond_39f
    :try_start_39f
    const-string v29, "video/avc"

    move-object/from16 v0, v29

    invoke-static {v9, v0}, Lorg/telegram/messenger/MediaController;->selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result v29

    if-nez v29, :cond_31e

    .line 6051
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    const/16 v30, 0x8

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_3b4
    .catch Ljava/lang/Exception; {:try_start_39f .. :try_end_3b4} :catch_38f

    goto/16 :goto_31e
.end method

.method private redraw(I)V
    .registers 6
    .param p1, "count"    # I

    .prologue
    .line 4702
    const/4 v0, 0x6

    if-ge p1, v0, :cond_16

    .line 4703
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    if-eqz v0, :cond_16

    .line 4704
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    .line 4705
    new-instance v0, Lorg/telegram/ui/PhotoViewer$61;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PhotoViewer$61;-><init>(Lorg/telegram/ui/PhotoViewer;I)V

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 4713
    :cond_16
    return-void
.end method

.method private releasePlayer()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2520
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v1, :cond_d

    .line 2521
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer()V

    .line 2522
    iput-object v4, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 2525
    :cond_d
    :try_start_d
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_18} :catch_6c

    .line 2529
    :goto_18
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v1, :cond_25

    .line 2530
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->removeView(Landroid/view/View;)V

    .line 2531
    iput-object v4, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    .line 2533
    :cond_25
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    if-eqz v1, :cond_2b

    .line 2534
    iput-object v4, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    .line 2536
    :cond_2b
    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->isPlaying:Z

    if-eqz v1, :cond_3e

    .line 2537
    iput-boolean v3, p0, Lorg/telegram/ui/PhotoViewer;->isPlaying:Z

    .line 2538
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;

    const v2, 0x7f020195

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2539
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2541
    :cond_3e
    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->inPreview:Z

    if-nez v1, :cond_6b

    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->requestingPreview:Z

    if-nez v1, :cond_6b

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_6b

    .line 2542
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2543
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2544
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2545
    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    if-eqz v1, :cond_6b

    .line 2546
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2547
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 2550
    :cond_6b
    return-void

    .line 2526
    :catch_6c
    move-exception v0

    .line 2527
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_18
.end method

.method private requestVideoPreview(I)V
    .registers 12
    .param p1, "request"    # I

    .prologue
    .line 5763
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-ge v6, v7, :cond_7

    .line 5825
    :cond_6
    :goto_6
    return-void

    .line 5766
    :cond_7
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_14

    .line 5767
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MediaController;->cancelVideoConvert(Lorg/telegram/messenger/MessageObject;)V

    .line 5769
    :cond_14
    iget-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->requestingPreview:Z

    if-eqz v6, :cond_41

    iget-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->tryStartRequestPreviewOnFinish:Z

    if-nez v6, :cond_41

    const/4 v3, 0x1

    .line 5770
    .local v3, "wasRequestingPreview":Z
    :goto_1d
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->requestingPreview:Z

    .line 5771
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->loadInitialVideo:Z

    .line 5772
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 5773
    const/4 v6, 0x1

    if-ne p1, v6, :cond_12b

    .line 5774
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_4d

    .line 5775
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->tryStartRequestPreviewOnFinish:Z

    .line 5776
    if-nez v3, :cond_43

    .line 5777
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentPlayingVideoFile:Ljava/io/File;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lorg/telegram/ui/PhotoViewer;->preparePlayer(Ljava/io/File;ZZ)V

    goto :goto_6

    .line 5769
    .end local v3    # "wasRequestingPreview":Z
    :cond_41
    const/4 v3, 0x0

    goto :goto_1d

    .line 5779
    .restart local v3    # "wasRequestingPreview":Z
    :cond_43
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 5780
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->loadInitialVideo:Z

    goto :goto_6

    .line 5783
    :cond_4d
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->requestingPreview:Z

    .line 5784
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->releasePlayer()V

    .line 5785
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v6, :cond_c1

    .line 5786
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 5787
    .local v2, "message":Lorg/telegram/tgnet/TLRPC$TL_message;
    const/4 v6, 0x0

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    .line 5788
    const-string v6, ""

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    .line 5789
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 5790
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;-><init>()V

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 5791
    new-instance v6, Lorg/telegram/messenger/MessageObject;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v6, v2, v7, v8}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    iput-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 5792
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

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

    .line 5793
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    new-instance v7, Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct {v7}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    iput-object v7, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 5794
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    iput v7, v6, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    .line 5795
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    iput v7, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    .line 5796
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    iput v7, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    .line 5797
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->currentPlayingVideoFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    .line 5799
    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$TL_message;
    :cond_c1
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v4, p0, Lorg/telegram/ui/PhotoViewer;->startTime:J

    iput-wide v4, v6, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    .line 5800
    .local v4, "start":J
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->endTime:J

    iput-wide v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 5801
    .local v0, "end":J
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_d9

    .line 5802
    const-wide/16 v4, 0x0

    .line 5804
    :cond_d9
    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-nez v6, :cond_e5

    .line 5805
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    float-to-long v0, v6

    .line 5807
    :cond_e5
    sub-long v6, v0, v4

    const-wide/32 v8, 0x4c4b40

    cmp-long v6, v6, v8

    if-lez v6, :cond_f8

    .line 5808
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    const-wide/32 v8, 0x4c4b40

    add-long/2addr v8, v4

    iput-wide v8, v6, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 5810
    :cond_f8
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->bitrate:I

    iput v7, v6, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    .line 5811
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->resultWidth:I

    iput v7, v6, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    .line 5812
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->resultHeight:I

    iput v7, v6, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    .line 5813
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/MediaController;->scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;Z)Z

    move-result v6

    if-nez v6, :cond_120

    .line 5814
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->tryStartRequestPreviewOnFinish:Z

    .line 5816
    :cond_120
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->requestingPreview:Z

    .line 5817
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    goto/16 :goto_6

    .line 5820
    .end local v0    # "end":J
    .end local v4    # "start":J
    :cond_12b
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->tryStartRequestPreviewOnFinish:Z

    .line 5821
    const/4 v6, 0x2

    if-ne p1, v6, :cond_6

    .line 5822
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentPlayingVideoFile:Ljava/io/File;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lorg/telegram/ui/PhotoViewer;->preparePlayer(Ljava/io/File;ZZ)V

    goto/16 :goto_6
.end method

.method private setCurrentCaption(Ljava/lang/CharSequence;)V
    .registers 9
    .param p1, "caption"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 3839
    if-eqz p1, :cond_6e

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_6e

    .line 3840
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    .line 3841
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    .line 3842
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    .line 3843
    const/4 v2, 0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->createChatResources(Landroid/content/Context;Z)V

    .line 3844
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v2, v3, v4, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v1

    .line 3845
    .local v1, "str":Ljava/lang/CharSequence;
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 3847
    :try_start_3d
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_42} :catch_67

    .line 3851
    :goto_42
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3852
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_59

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6c

    :cond_59
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_5b
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 3853
    new-instance v2, Lorg/telegram/ui/PhotoViewer$50;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoViewer$50;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3877
    .end local v1    # "str":Ljava/lang/CharSequence;
    :goto_66
    return-void

    .line 3848
    .restart local v1    # "str":Ljava/lang/CharSequence;
    :catch_67
    move-exception v0

    .line 3849
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_42

    .line 3852
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6c
    const/4 v2, 0x0

    goto :goto_5b

    .line 3862
    .end local v1    # "str":Ljava/lang/CharSequence;
    :cond_6e
    iget-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    if-eqz v2, :cond_9a

    .line 3864
    :try_start_72
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const-string v3, "AddCaption"

    const v4, 0x7f070065

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_80} :catch_95

    .line 3868
    :goto_80
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const-string v3, "empty"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 3869
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3870
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const v3, -0x4d000001

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_66

    .line 3865
    :catch_95
    move-exception v0

    .line 3866
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_80

    .line 3872
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9a
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3873
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 3874
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_66
.end method

.method private setImageIndex(IZ)V
    .registers 35
    .param p1, "index"    # I
    .param p2, "init"    # Z

    .prologue
    .line 3523
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-nez v2, :cond_f

    .line 3836
    :cond_e
    :goto_e
    return-void

    .line 3526
    :cond_f
    if-nez p2, :cond_16

    .line 3527
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    .line 3529
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/PhotoViewer;->getFileName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 3530
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v3, 0x1

    add-int/lit8 v4, p1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/telegram/ui/PhotoViewer;->getFileName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 3531
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v3, 0x2

    add-int/lit8 v4, p1, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/telegram/ui/PhotoViewer;->getFileName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 3532
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v2, v3, v4, v5}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->willSwitchFromPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V

    .line 3533
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    move/from16 v25, v0

    .line 3534
    .local v25, "prevIndex":I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    .line 3535
    const/16 v19, 0x0

    .line 3536
    .local v19, "isVideo":Z
    const/16 v26, 0x0

    .line 3539
    .local v26, "sameImage":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_65e

    .line 3540
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    if-ltz v2, :cond_80

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_88

    .line 3541
    :cond_80
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto :goto_e

    .line 3544
    :cond_88
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/messenger/MessageObject;

    .line 3545
    .local v21, "newMessageObject":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_283

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-ne v2, v3, :cond_283

    const/16 v26, 0x1

    .line 3546
    :goto_ac
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 3547
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v19

    .line 3548
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isInvoice()Z

    move-result v18

    .line 3549
    .local v18, "isInvoice":Z
    if-eqz v18, :cond_287

    .line 3550
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->masksItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 3551
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 3552
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 3553
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->description:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PhotoViewer;->setCurrentCaption(Ljava/lang/CharSequence;)V

    .line 3554
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    .line 3555
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3556
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 3557
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 3596
    :goto_11c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v2, :cond_3c8

    .line 3597
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 3598
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 3599
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_147

    .line 3600
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 3602
    :cond_147
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    .line 3603
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3604
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "AttachGif"

    const v4, 0x7f0700bf

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 3749
    .end local v18    # "isInvoice":Z
    .end local v21    # "newMessageObject":Lorg/telegram/messenger/MessageObject;
    :cond_164
    :goto_164
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    if-eqz v2, :cond_17b

    .line 3750
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    if-nez v2, :cond_918

    .line 3751
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    iget-object v2, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 3756
    :cond_17b
    :goto_17b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v2, v3, v4, v5}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    .line 3757
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    if-eqz v2, :cond_1aa

    .line 3758
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    if-nez v2, :cond_922

    .line 3759
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    iget-object v2, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 3765
    :cond_1aa
    :goto_1aa
    if-nez v26, :cond_26e

    .line 3766
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    .line 3767
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    .line 3768
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    .line 3769
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    .line 3770
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToX:F

    .line 3771
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    .line 3772
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    .line 3773
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    .line 3774
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    .line 3775
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    .line 3776
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v2, :cond_1ef

    .line 3777
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setVisibility(I)V

    .line 3779
    :cond_1ef
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->releasePlayer()V

    .line 3781
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->pinchStartDistance:F

    .line 3782
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    .line 3783
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->pinchCenterX:F

    .line 3784
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->pinchCenterY:F

    .line 3785
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->pinchStartX:F

    .line 3786
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->pinchStartY:F

    .line 3787
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->moveStartX:F

    .line 3788
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->moveStartY:F

    .line 3789
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->zooming:Z

    .line 3790
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    .line 3791
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->doubleTap:Z

    .line 3792
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->invalidCoords:Z

    .line 3793
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->canDragDown:Z

    .line 3794
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->changingPage:Z

    .line 3795
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->switchImageAfterAnimation:I

    .line 3796
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_260

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_92c

    if-nez v19, :cond_92c

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    # getter for: Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->access$10400(Lorg/telegram/ui/PhotoViewer$PhotoProgressView;)I

    move-result v2

    if-eqz v2, :cond_92c

    :cond_260
    const/4 v2, 0x1

    :goto_261
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->canZoom:Z

    .line 3797
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 3800
    :cond_26e
    const/4 v2, -0x1

    move/from16 v0, v25

    if-ne v0, v2, :cond_92f

    .line 3801
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->setImages()V

    .line 3803
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_277
    const/4 v2, 0x3

    if-ge v10, v2, :cond_e

    .line 3804
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    .line 3803
    add-int/lit8 v10, v10, 0x1

    goto :goto_277

    .line 3545
    .end local v10    # "a":I
    .restart local v21    # "newMessageObject":Lorg/telegram/messenger/MessageObject;
    :cond_283
    const/16 v26, 0x0

    goto/16 :goto_ac

    .line 3559
    .restart local v18    # "isInvoice":Z
    :cond_287
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->masksItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->hasPhotoStickers()Z

    move-result v2

    if-eqz v2, :cond_36d

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    long-to-int v2, v4

    if-eqz v2, :cond_36d

    const/4 v2, 0x0

    :goto_2a1
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 3560
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_370

    .line 3561
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 3565
    :goto_2b7
    if-eqz v19, :cond_37a

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_37a

    .line 3566
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 3570
    :goto_2c8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v2

    if-eqz v2, :cond_390

    .line 3571
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v31

    .line 3572
    .local v31, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v31, :cond_385

    .line 3573
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3585
    .end local v31    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_2f3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v14, v2, v4

    .line 3586
    .local v14, "date":J
    const-string v2, "formatDateAtTime"

    const v3, 0x7f0705d1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 3587
    .local v16, "dateString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_3be

    if-eqz v19, :cond_3be

    .line 3588
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const-string v3, "%s (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v16, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v7

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    int-to-long v8, v7

    invoke-static {v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3592
    :goto_360
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v12, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    .line 3593
    .local v12, "caption":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/telegram/ui/PhotoViewer;->setCurrentCaption(Ljava/lang/CharSequence;)V

    goto/16 :goto_11c

    .line 3559
    .end local v12    # "caption":Ljava/lang/CharSequence;
    .end local v14    # "date":J
    .end local v16    # "dateString":Ljava/lang/String;
    :cond_36d
    const/4 v2, 0x4

    goto/16 :goto_2a1

    .line 3563
    :cond_370
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto/16 :goto_2b7

    .line 3568
    :cond_37a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto/16 :goto_2c8

    .line 3575
    .restart local v31    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_385
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2f3

    .line 3578
    .end local v31    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_390
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v13

    .line 3579
    .local v13, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v13, :cond_3b3

    .line 3580
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    iget-object v3, v13, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2f3

    .line 3582
    :cond_3b3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2f3

    .line 3590
    .end local v13    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v14    # "date":J
    .restart local v16    # "dateString":Ljava/lang/String;
    :cond_3be
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_360

    .line 3606
    .end local v14    # "date":J
    .end local v16    # "dateString":Ljava/lang/String;
    :cond_3c8
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v2, v3

    if-eqz v2, :cond_5c7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    if-nez v2, :cond_5c7

    .line 3607
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-eqz v2, :cond_4f2

    .line 3608
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_46b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    if-nez v2, :cond_46b

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    if-le v2, v3, :cond_46b

    .line 3609
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4d2

    const/4 v6, 0x0

    .line 3610
    .local v6, "loadFromMaxId":I
    :goto_413
    const/16 v20, 0x0

    .line 3611
    .local v20, "loadIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    aget-boolean v2, v2, v20

    if-eqz v2, :cond_454

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_454

    .line 3612
    const/16 v20, 0x1

    .line 3613
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_454

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_454

    .line 3614
    const/4 v6, 0x0

    .line 3618
    :cond_454
    if-nez v20, :cond_4ec

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    :goto_45a
    const/4 v4, 0x0

    const/16 v5, 0x50

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    .line 3619
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    .line 3621
    .end local v6    # "loadFromMaxId":I
    .end local v20    # "loadIndex":I
    :cond_46b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "Of"

    const v4, 0x7f0703d5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 3647
    :cond_49b
    :goto_49b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-eqz v2, :cond_616

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    const/16 v3, 0xe10

    if-ge v2, v3, :cond_616

    .line 3648
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    .line 3649
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 3650
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3651
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto/16 :goto_164

    .line 3609
    :cond_4d2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    goto/16 :goto_413

    .line 3618
    .restart local v6    # "loadFromMaxId":I
    .restart local v20    # "loadIndex":I
    :cond_4ec
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    goto/16 :goto_45a

    .line 3623
    .end local v6    # "loadFromMaxId":I
    .end local v20    # "loadIndex":I
    :cond_4f2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_56c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    if-nez v2, :cond_56c

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_56c

    .line 3624
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5b1

    const/4 v6, 0x0

    .line 3625
    .restart local v6    # "loadFromMaxId":I
    :goto_51d
    const/16 v20, 0x0

    .line 3626
    .restart local v20    # "loadIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    aget-boolean v2, v2, v20

    if-eqz v2, :cond_555

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_555

    .line 3627
    const/16 v20, 0x1

    .line 3628
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_555

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_555

    .line 3629
    const/4 v6, 0x0

    .line 3633
    :cond_555
    if-nez v20, :cond_5c2

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    :goto_55b
    const/4 v4, 0x0

    const/16 v5, 0x50

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    .line 3634
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    .line 3636
    .end local v6    # "loadFromMaxId":I
    .end local v20    # "loadIndex":I
    :cond_56c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "Of"

    const v4, 0x7f0703d5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_49b

    .line 3624
    :cond_5b1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    goto/16 :goto_51d

    .line 3633
    .restart local v6    # "loadFromMaxId":I
    .restart local v20    # "loadIndex":I
    :cond_5c2
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    goto :goto_55b

    .line 3638
    .end local v6    # "loadFromMaxId":I
    .end local v20    # "loadIndex":I
    :cond_5c7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v2, :cond_601

    .line 3639
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_5ef

    .line 3640
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "AttachVideo"

    const v4, 0x7f0700c4

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_49b

    .line 3642
    :cond_5ef
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "AttachPhoto"

    const v4, 0x7f0700c2

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_49b

    .line 3644
    :cond_601
    if-eqz v18, :cond_49b

    .line 3645
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_49b

    .line 3653
    :cond_616
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    .line 3654
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 3655
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_637

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_650

    :cond_637
    const/4 v2, 0x0

    :goto_638
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3656
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_653

    .line 3657
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto/16 :goto_164

    .line 3655
    :cond_650
    const/16 v2, 0x8

    goto :goto_638

    .line 3659
    :cond_653
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    goto/16 :goto_164

    .line 3663
    .end local v18    # "isInvoice":Z
    .end local v21    # "newMessageObject":Lorg/telegram/messenger/MessageObject;
    :cond_65e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_767

    .line 3664
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3665
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3666
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    if-ne v2, v3, :cond_6b3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6b3

    .line 3667
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 3671
    :goto_696
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v23, v0

    .line 3672
    .local v23, "old":Lorg/telegram/tgnet/TLRPC$FileLocation;
    if-ltz p1, :cond_6aa

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, p1

    if-lt v0, v2, :cond_6bc

    .line 3673
    :cond_6aa
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto/16 :goto_e

    .line 3669
    .end local v23    # "old":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_6b3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto :goto_696

    .line 3676
    .restart local v23    # "old":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_6bc
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 3677
    if-eqz v23, :cond_6f0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v2, :cond_6f0

    move-object/from16 v0, v23

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v2, v3, :cond_6f0

    move-object/from16 v0, v23

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_6f0

    .line 3678
    const/16 v26, 0x1

    .line 3680
    :cond_6f0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "Of"

    const v4, 0x7f0703d5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 3681
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 3682
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    .line 3683
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_740

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_759

    :cond_740
    const/4 v2, 0x0

    :goto_741
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3684
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_75c

    .line 3685
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto/16 :goto_164

    .line 3683
    :cond_759
    const/16 v2, 0x8

    goto :goto_741

    .line 3687
    :cond_75c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    goto/16 :goto_164

    .line 3689
    .end local v23    # "old":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_767
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_164

    .line 3690
    if-ltz p1, :cond_77f

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, p1

    if-lt v0, v2, :cond_788

    .line 3691
    :cond_77f
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto/16 :goto_e

    .line 3694
    :cond_788
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    .line 3695
    .local v22, "object":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 3696
    .local v17, "fromCamera":Z
    const/4 v12, 0x0

    .line 3697
    .restart local v12    # "caption":Ljava/lang/CharSequence;
    move-object/from16 v0, v22

    instance-of v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v2, :cond_84b

    move-object/from16 v24, v22

    .line 3698
    check-cast v24, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 3699
    .local v24, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    move-object/from16 v0, v24

    iget-object v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    .line 3700
    move-object/from16 v0, v24

    iget v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->bucketId:I

    if-nez v2, :cond_847

    move-object/from16 v0, v24

    iget-wide v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->dateTaken:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_847

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_847

    const/16 v17, 0x1

    .line 3701
    :goto_7c4
    move-object/from16 v0, v24

    iget-object v12, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    .line 3702
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    move/from16 v19, v0

    .line 3725
    .end local v24    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_7ce
    :goto_7ce
    if-eqz v17, :cond_8e7

    .line 3726
    if-eqz v19, :cond_8d5

    .line 3727
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3728
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionItem:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3729
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/high16 v3, 0x42c00000    # 96.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 3730
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/high16 v3, 0x42c00000    # 96.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 3731
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3732
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PhotoViewer;->processOpenVideo(Ljava/lang/String;)Z

    .line 3733
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "AttachVideo"

    const v4, 0x7f0700c4

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 3740
    :goto_81f
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v2, :cond_839

    .line 3741
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v3, v4}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->isPhotoChecked(I)Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/CheckBox;->setChecked(ZZ)V

    .line 3744
    :cond_839
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/telegram/ui/PhotoViewer;->setCurrentCaption(Ljava/lang/CharSequence;)V

    .line 3745
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/telegram/ui/PhotoViewer;->updateCaptionTextForCurrentPhoto(Ljava/lang/Object;)V

    goto/16 :goto_164

    .line 3700
    .restart local v24    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_847
    const/16 v17, 0x0

    goto/16 :goto_7c4

    .line 3703
    .end local v24    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_84b
    move-object/from16 v0, v22

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v2, :cond_8a5

    move-object/from16 v11, v22

    .line 3704
    check-cast v11, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 3705
    .local v11, "botInlineResult":Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_873

    .line 3706
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v19

    .line 3707
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    goto/16 :goto_7ce

    .line 3708
    :cond_873
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v2, :cond_891

    .line 3709
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v28

    .line 3710
    .local v28, "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    goto/16 :goto_7ce

    .line 3711
    .end local v28    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_891
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    if-eqz v2, :cond_7ce

    .line 3712
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    .line 3713
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    goto/16 :goto_7ce

    .line 3716
    .end local v11    # "botInlineResult":Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    :cond_8a5
    move-object/from16 v0, v22

    instance-of v2, v0, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v2, :cond_7ce

    move-object/from16 v27, v22

    .line 3717
    check-cast v27, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 3718
    .local v27, "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    move-object/from16 v0, v27

    iget-object v2, v0, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_8cc

    .line 3719
    move-object/from16 v0, v27

    iget-object v2, v0, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    .line 3723
    :goto_8c6
    move-object/from16 v0, v27

    iget-object v12, v0, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    goto/16 :goto_7ce

    .line 3721
    :cond_8cc
    move-object/from16 v0, v27

    iget-object v2, v0, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    goto :goto_8c6

    .line 3735
    .end local v27    # "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_8d5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "AttachPhoto"

    const v4, 0x7f0700c2

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_81f

    .line 3738
    :cond_8e7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "Of"

    const v4, 0x7f0703d5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_81f

    .line 3753
    .end local v12    # "caption":Ljava/lang/CharSequence;
    .end local v17    # "fromCamera":Z
    .end local v22    # "object":Ljava/lang/Object;
    :cond_918
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->showAfterAnimation:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    goto/16 :goto_17b

    .line 3761
    :cond_922
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->hideAfterAnimation:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    goto/16 :goto_1aa

    .line 3796
    :cond_92c
    const/4 v2, 0x0

    goto/16 :goto_261

    .line 3807
    :cond_92f
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    .line 3808
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    move/from16 v0, v25

    if-le v0, v2, :cond_995

    .line 3809
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v29, v0

    .line 3810
    .local v29, "temp":Lorg/telegram/messenger/ImageReceiver;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    .line 3811
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    .line 3812
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    .line 3814
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v3, 0x0

    aget-object v30, v2, v3

    .line 3815
    .local v30, "tempProgress":Lorg/telegram/ui/PhotoViewer$PhotoProgressView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    .line 3816
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v3, 0x2

    aput-object v30, v2, v3

    .line 3817
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 3819
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    .line 3820
    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    goto/16 :goto_e

    .line 3821
    .end local v29    # "temp":Lorg/telegram/messenger/ImageReceiver;
    .end local v30    # "tempProgress":Lorg/telegram/ui/PhotoViewer$PhotoProgressView;
    :cond_995
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    move/from16 v0, v25

    if-ge v0, v2, :cond_e

    .line 3822
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v29, v0

    .line 3823
    .restart local v29    # "temp":Lorg/telegram/messenger/ImageReceiver;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    .line 3824
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    .line 3825
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    .line 3827
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v3, 0x0

    aget-object v30, v2, v3

    .line 3828
    .restart local v30    # "tempProgress":Lorg/telegram/ui/PhotoViewer$PhotoProgressView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    .line 3829
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v3, 0x1

    aput-object v30, v2, v3

    .line 3830
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 3832
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    .line 3833
    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    goto/16 :goto_e
.end method

.method private setImages()V
    .registers 3

    .prologue
    .line 3515
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    if-nez v0, :cond_1d

    .line 3516
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PhotoViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 3517
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PhotoViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 3518
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PhotoViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 3520
    :cond_1d
    return-void
.end method

.method private setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V
    .registers 36
    .param p1, "imageReceiver"    # Lorg/telegram/messenger/ImageReceiver;
    .param p2, "index"    # I

    .prologue
    .line 3958
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Lorg/telegram/messenger/ImageReceiver;->setOrientation(IZ)V

    .line 3959
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_228

    .line 3960
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setParentMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 3961
    if-ltz p2, :cond_21e

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, p2

    if-ge v0, v3, :cond_21e

    .line 3962
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    .line 3963
    .local v27, "object":Ljava/lang/Object;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v3

    int-to-float v3, v3

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v3, v5

    float-to-int v0, v3

    move/from16 v30, v0

    .line 3964
    .local v30, "size":I
    const/16 v29, 0x0

    .line 3965
    .local v29, "placeHolder":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_50

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_50

    .line 3966
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    move-object/from16 v29, v0

    .line 3968
    :cond_50
    if-nez v29, :cond_5e

    .line 3969
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v0, p2

    invoke-interface {v3, v5, v7, v0}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Landroid/graphics/Bitmap;

    move-result-object v29

    .line 3971
    :cond_5e
    const/4 v6, 0x0

    .line 3972
    .local v6, "path":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3973
    .local v4, "document":Lorg/telegram/tgnet/TLRPC$Document;
    const/4 v12, 0x0

    .line 3974
    .local v12, "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    const/4 v10, 0x0

    .line 3975
    .local v10, "imageSize":I
    const/4 v14, 0x0

    .line 3976
    .local v14, "filter":Ljava/lang/String;
    move-object/from16 v0, v27

    instance-of v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v3, :cond_db

    move-object/from16 v28, v27

    .line 3977
    check-cast v28, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 3978
    .local v28, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    move-object/from16 v0, v28

    iget-boolean v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-nez v3, :cond_96

    .line 3979
    move-object/from16 v0, v28

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    if-eqz v3, :cond_cc

    .line 3980
    move-object/from16 v0, v28

    iget-object v6, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    .line 3985
    :goto_7d
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%d_%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 4025
    .end local v28    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_96
    :goto_96
    if-eqz v4, :cond_1d2

    .line 4026
    const/4 v5, 0x0

    const-string v6, "d"

    .end local v6    # "path":Ljava/lang/String;
    if-eqz v29, :cond_1cc

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-direct {v7, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_a5
    if-nez v29, :cond_1cf

    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :goto_ab
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%d_%d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v11, v13

    const/4 v13, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v11, v13

    invoke-static {v3, v9, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 4086
    .end local v4    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v10    # "imageSize":I
    .end local v12    # "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    .end local v14    # "filter":Ljava/lang/String;
    .end local v27    # "object":Ljava/lang/Object;
    .end local v29    # "placeHolder":Landroid/graphics/Bitmap;
    .end local v30    # "size":I
    :goto_cb
    return-void

    .line 3982
    .restart local v4    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .restart local v6    # "path":Ljava/lang/String;
    .restart local v10    # "imageSize":I
    .restart local v12    # "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    .restart local v14    # "filter":Ljava/lang/String;
    .restart local v27    # "object":Ljava/lang/Object;
    .restart local v28    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    .restart local v29    # "placeHolder":Landroid/graphics/Bitmap;
    .restart local v30    # "size":I
    :cond_cc
    move-object/from16 v0, v28

    iget v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Lorg/telegram/messenger/ImageReceiver;->setOrientation(IZ)V

    .line 3983
    move-object/from16 v0, v28

    iget-object v6, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    goto :goto_7d

    .line 3987
    .end local v28    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_db
    move-object/from16 v0, v27

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v3, :cond_19a

    move-object/from16 v25, v27

    .line 3988
    check-cast v25, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 3989
    .local v25, "botInlineResult":Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    move-object/from16 v0, v25

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v5, "video"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_fb

    move-object/from16 v0, v25

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v3

    if-eqz v3, :cond_10f

    .line 3990
    :cond_fb
    move-object/from16 v0, v25

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_10a

    .line 3991
    move-object/from16 v0, v25

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v12, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_96

    .line 3993
    :cond_10a
    move-object/from16 v0, v25

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb_url:Ljava/lang/String;

    goto :goto_96

    .line 3995
    :cond_10f
    move-object/from16 v0, v25

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v5, "gif"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12f

    move-object/from16 v0, v25

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_12f

    .line 3996
    move-object/from16 v0, v25

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 3997
    move-object/from16 v0, v25

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v10, v3, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    .line 3998
    const-string v14, "d"

    goto/16 :goto_96

    .line 3999
    :cond_12f
    move-object/from16 v0, v25

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v3, :cond_166

    .line 4000
    move-object/from16 v0, v25

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v5

    invoke-static {v3, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v31

    .line 4001
    .local v31, "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-object/from16 v0, v31

    iget-object v12, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 4002
    move-object/from16 v0, v31

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 4003
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%d_%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 4004
    goto/16 :goto_96

    .end local v31    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_166
    move-object/from16 v0, v25

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    if-eqz v3, :cond_96

    .line 4005
    move-object/from16 v0, v25

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v5, "gif"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_180

    .line 4006
    const-string v14, "d"

    .line 4010
    :goto_17a
    move-object/from16 v0, v25

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    goto/16 :goto_96

    .line 4008
    :cond_180
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%d_%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto :goto_17a

    .line 4012
    .end local v25    # "botInlineResult":Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    :cond_19a
    move-object/from16 v0, v27

    instance-of v3, v0, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v3, :cond_96

    move-object/from16 v28, v27

    .line 4013
    check-cast v28, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 4014
    .local v28, "photoEntry":Lorg/telegram/messenger/MediaController$SearchImage;
    move-object/from16 v0, v28

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$SearchImage;->imagePath:Ljava/lang/String;

    if-eqz v3, :cond_1b2

    .line 4015
    move-object/from16 v0, v28

    iget-object v6, v0, Lorg/telegram/messenger/MediaController$SearchImage;->imagePath:Ljava/lang/String;

    .line 4023
    :goto_1ae
    const-string v14, "d"

    goto/16 :goto_96

    .line 4016
    :cond_1b2
    move-object/from16 v0, v28

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_1c3

    .line 4017
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 4018
    move-object/from16 v0, v28

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v10, v3, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    goto :goto_1ae

    .line 4020
    :cond_1c3
    move-object/from16 v0, v28

    iget-object v6, v0, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    .line 4021
    move-object/from16 v0, v28

    iget v10, v0, Lorg/telegram/messenger/MediaController$SearchImage;->size:I

    goto :goto_1ae

    .line 4026
    .end local v6    # "path":Ljava/lang/String;
    .end local v28    # "photoEntry":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_1cc
    const/4 v7, 0x0

    goto/16 :goto_a5

    :cond_1cf
    const/4 v8, 0x0

    goto/16 :goto_ab

    .line 4027
    .restart local v6    # "path":Ljava/lang/String;
    :cond_1d2
    if-eqz v12, :cond_209

    .line 4028
    const/4 v13, 0x0

    if-eqz v29, :cond_207

    new-instance v15, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-direct {v15, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_1df
    const/16 v16, 0x0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%d_%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v11, p1

    move/from16 v18, v10

    invoke-virtual/range {v11 .. v20}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    goto/16 :goto_cb

    :cond_207
    const/4 v15, 0x0

    goto :goto_1df

    .line 4030
    :cond_209
    if-eqz v29, :cond_21c

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-direct {v8, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_213
    const/4 v9, 0x0

    move-object/from16 v5, p1

    move-object v7, v14

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    goto/16 :goto_cb

    :cond_21c
    const/4 v8, 0x0

    goto :goto_213

    .line 4033
    .end local v4    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v6    # "path":Ljava/lang/String;
    .end local v10    # "imageSize":I
    .end local v12    # "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    .end local v14    # "filter":Ljava/lang/String;
    .end local v27    # "object":Ljava/lang/Object;
    .end local v29    # "placeHolder":Landroid/graphics/Bitmap;
    .end local v30    # "size":I
    :cond_21e
    const/4 v3, 0x0

    check-cast v3, Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_cb

    .line 4036
    :cond_228
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v30, v0

    .line 4037
    .local v30, "size":[I
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->getFileLocation(I[I)Lorg/telegram/tgnet/TLObject;

    move-result-object v16

    .line 4039
    .local v16, "fileLocation":Lorg/telegram/tgnet/TLObject;
    if-eqz v16, :cond_367

    .line 4040
    const/16 v26, 0x0

    .line 4041
    .local v26, "messageObject":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_251

    .line 4042
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "messageObject":Lorg/telegram/messenger/MessageObject;
    check-cast v26, Lorg/telegram/messenger/MessageObject;

    .line 4044
    .restart local v26    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_251
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setParentMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 4045
    if-eqz v26, :cond_260

    .line 4046
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setShouldGenerateQualityThumb(Z)V

    .line 4049
    :cond_260
    if-eqz v26, :cond_2de

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_2de

    .line 4050
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setNeedsQualityThumb(Z)V

    .line 4051
    move-object/from16 v0, v26

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    if-eqz v3, :cond_2c8

    move-object/from16 v0, v26

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2c8

    .line 4052
    const/16 v29, 0x0

    .line 4053
    .restart local v29    # "placeHolder":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_294

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_294

    .line 4054
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    move-object/from16 v29, v0

    .line 4056
    :cond_294
    move-object/from16 v0, v26

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    const/16 v5, 0x64

    invoke-static {v3, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v32

    .line 4057
    .local v32, "thumbLocation":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    if-eqz v29, :cond_2c5

    .end local v16    # "fileLocation":Lorg/telegram/tgnet/TLObject;
    new-instance v19, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-direct {v0, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_2b0
    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v20, v0

    const-string v21, "b"

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v15, p1

    invoke-virtual/range {v15 .. v24}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    goto/16 :goto_cb

    :cond_2c5
    const/16 v19, 0x0

    goto :goto_2b0

    .line 4059
    .end local v29    # "placeHolder":Landroid/graphics/Bitmap;
    .end local v32    # "thumbLocation":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .restart local v16    # "fileLocation":Lorg/telegram/tgnet/TLObject;
    :cond_2c8
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f020224

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_cb

    .line 4061
    :cond_2de
    if-eqz v26, :cond_2fc

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v3, :cond_2fc

    .line 4062
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 4063
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setSecondParentView(Landroid/view/View;)V

    goto/16 :goto_cb

    .line 4065
    :cond_2fc
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setNeedsQualityThumb(Z)V

    .line 4066
    const/16 v29, 0x0

    .line 4067
    .restart local v29    # "placeHolder":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_318

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_318

    .line 4068
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    move-object/from16 v29, v0

    .line 4070
    :cond_318
    const/4 v3, 0x0

    aget v3, v30, v3

    if-nez v3, :cond_321

    .line 4071
    const/4 v3, 0x0

    const/4 v5, -0x1

    aput v5, v30, v3

    .line 4073
    :cond_321
    if-eqz v26, :cond_35b

    move-object/from16 v0, v26

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    const/16 v5, 0x64

    invoke-static {v3, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v32

    .line 4074
    .restart local v32    # "thumbLocation":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :goto_32d
    const/16 v17, 0x0

    const/16 v18, 0x0

    if-eqz v29, :cond_35e

    new-instance v19, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-direct {v0, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_33d
    if-eqz v32, :cond_361

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v20, v0

    :goto_345
    const-string v21, "b"

    const/4 v3, 0x0

    aget v22, v30, v3

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    if-eqz v3, :cond_364

    const/16 v24, 0x1

    :goto_354
    move-object/from16 v15, p1

    invoke-virtual/range {v15 .. v24}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    goto/16 :goto_cb

    .line 4073
    .end local v32    # "thumbLocation":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_35b
    const/16 v32, 0x0

    goto :goto_32d

    .line 4074
    .restart local v32    # "thumbLocation":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_35e
    const/16 v19, 0x0

    goto :goto_33d

    :cond_361
    const/16 v20, 0x0

    goto :goto_345

    :cond_364
    const/16 v24, 0x0

    goto :goto_354

    .line 4077
    .end local v26    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v29    # "placeHolder":Landroid/graphics/Bitmap;
    .end local v32    # "thumbLocation":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_367
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setNeedsQualityThumb(Z)V

    .line 4078
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setParentMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 4079
    const/4 v3, 0x0

    aget v3, v30, v3

    if-nez v3, :cond_382

    .line 4080
    const/4 v3, 0x0

    check-cast v3, Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_cb

    .line 4082
    :cond_382
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f020224

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_cb
.end method

.method private setScaleToFill()V
    .registers 10

    .prologue
    .line 1109
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v7

    int-to-float v1, v7

    .line 1110
    .local v1, "bitmapWidth":F
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v7

    int-to-float v3, v7

    .line 1111
    .local v3, "containerWidth":F
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v7

    int-to-float v0, v7

    .line 1112
    .local v0, "bitmapHeight":F
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v7

    int-to-float v2, v7

    .line 1113
    .local v2, "containerHeight":F
    div-float v7, v2, v0

    div-float v8, v3, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1114
    .local v5, "scaleFit":F
    mul-float v7, v1, v5

    float-to-int v7, v7

    int-to-float v6, v7

    .line 1115
    .local v6, "width":F
    mul-float v7, v0, v5

    float-to-int v7, v7

    int-to-float v4, v7

    .line 1116
    .local v4, "height":F
    div-float v7, v3, v6

    div-float v8, v2, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    .line 1117
    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    invoke-direct {p0, v7}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 1118
    return-void
.end method

.method private showQualityView(Z)V
    .registers 13
    .param p1, "show"    # Z

    .prologue
    const/high16 v10, 0x42400000    # 48.0f

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 5864
    if-eqz p1, :cond_c

    .line 5865
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->previousCompression:I

    .line 5867
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_15

    .line 5868
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 5870
    :cond_15
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    .line 5871
    if-eqz p1, :cond_9b

    .line 5872
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->setTag(Ljava/lang/Object;)V

    .line 5873
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const-string v3, "translationY"

    new-array v4, v8, [F

    aput v9, v4, v7

    const/high16 v5, 0x43180000    # 152.0f

    .line 5874
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;

    const-string v3, "translationY"

    new-array v4, v8, [F

    aput v9, v4, v7

    const/high16 v5, 0x43180000    # 152.0f

    .line 5875
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const-string v3, "translationY"

    new-array v4, v8, [F

    .line 5876
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v7

    const/high16 v5, 0x42d00000    # 104.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    .line 5873
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 5886
    :goto_7a
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$63;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/PhotoViewer$63;-><init>(Lorg/telegram/ui/PhotoViewer;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5928
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 5929
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5930
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 5931
    return-void

    .line 5879
    :cond_9b
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->setTag(Ljava/lang/Object;)V

    .line 5880
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    const-string v3, "translationY"

    new-array v4, v8, [F

    aput v9, v4, v7

    const/high16 v5, 0x43260000    # 166.0f

    .line 5881
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const-string v3, "translationY"

    new-array v4, v8, [F

    aput v9, v4, v7

    const/high16 v5, 0x43260000    # 166.0f

    .line 5882
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const-string v3, "translationY"

    new-array v4, v8, [F

    .line 5883
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v7

    const/high16 v5, 0x42ec0000    # 118.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    .line 5880
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_7a
.end method

.method private switchToEditMode(I)V
    .registers 26
    .param p1, "mode"    # I

    .prologue
    .line 2660
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_36

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_36

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    if-nez v2, :cond_36

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    if-nez v2, :cond_36

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    # getter for: Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->access$10400(Lorg/telegram/ui/PhotoViewer$PhotoProgressView;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_36

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 3113
    :cond_36
    :goto_36
    return-void

    .line 2663
    :cond_37
    if-nez p1, :cond_2bd

    .line 2664
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_56

    .line 2665
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_56

    .line 2666
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->switchToOrFromEditMode()V

    goto :goto_36

    .line 2670
    :cond_56
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 2671
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v10, :cond_110

    .line 2672
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v12

    .line 2673
    .local v12, "bitmapWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v11

    .line 2675
    .local v11, "bitmapHeight":I
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v12

    div-float v19, v2, v3

    .line 2676
    .local v19, "scaleX":F
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v11

    div-float v20, v2, v3

    .line 2677
    .local v20, "scaleY":F
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v12

    div-float v16, v2, v3

    .line 2678
    .local v16, "newScaleX":F
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v11

    div-float v17, v2, v3

    .line 2679
    .local v17, "newScaleY":F
    cmpl-float v2, v19, v20

    if-lez v2, :cond_190

    move/from16 v18, v20

    .line 2680
    .local v18, "scale":F
    :goto_9c
    cmpl-float v2, v16, v17

    if-lez v2, :cond_194

    move/from16 v15, v17

    .line 2682
    .local v15, "newScale":F
    :goto_a2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_19c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->applying:Z

    if-nez v2, :cond_19c

    .line 2683
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v14, v2

    .line 2684
    .local v14, "minSide":F
    int-to-float v2, v12

    div-float v19, v14, v2

    .line 2685
    int-to-float v2, v11

    div-float v20, v14, v2

    .line 2686
    cmpl-float v2, v19, v20

    if-lez v2, :cond_198

    move/from16 v13, v19

    .line 2688
    .local v13, "fillScale":F
    :goto_c8
    div-float v2, v13, v18

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    .line 2689
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    mul-float/2addr v2, v15

    div-float/2addr v2, v13

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    .line 2694
    .end local v13    # "fillScale":F
    .end local v14    # "minSide":F
    :goto_d8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToX:F

    .line 2695
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a4

    .line 2696
    const/high16 v2, 0x42680000    # 58.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    .line 2702
    :cond_ef
    :goto_ef
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_103

    .line 2703
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    .line 2705
    :cond_103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    .line 2706
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    .line 2709
    .end local v11    # "bitmapHeight":I
    .end local v12    # "bitmapWidth":I
    .end local v15    # "newScale":F
    .end local v16    # "newScaleX":F
    .end local v17    # "newScaleY":F
    .end local v18    # "scale":F
    .end local v19    # "scaleX":F
    .end local v20    # "scaleY":F
    :cond_110
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    .line 2710
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d3

    .line 2711
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const-string v6, "translationY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v21, 0x42400000    # 48.0f

    .line 2712
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    aput v21, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "animationValue"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_65c

    .line 2713
    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    const-string v6, "alpha"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/16 v21, 0x0

    aput v21, v7, v8

    .line 2714
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2711
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2731
    :cond_16e
    :goto_16e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2732
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$40;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/PhotoViewer$40;-><init>(Lorg/telegram/ui/PhotoViewer;I)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2783
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_36

    .restart local v11    # "bitmapHeight":I
    .restart local v12    # "bitmapWidth":I
    .restart local v16    # "newScaleX":F
    .restart local v17    # "newScaleY":F
    .restart local v19    # "scaleX":F
    .restart local v20    # "scaleY":F
    :cond_190
    move/from16 v18, v19

    .line 2679
    goto/16 :goto_9c

    .restart local v18    # "scale":F
    :cond_194
    move/from16 v15, v16

    .line 2680
    goto/16 :goto_a2

    .restart local v14    # "minSide":F
    .restart local v15    # "newScale":F
    :cond_198
    move/from16 v13, v20

    .line 2686
    goto/16 :goto_c8

    .line 2691
    .end local v14    # "minSide":F
    :cond_19c
    div-float v2, v15, v18

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    goto/16 :goto_d8

    .line 2697
    :cond_1a4
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1b8

    .line 2698
    const/high16 v2, 0x42780000    # 62.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    goto/16 :goto_ef

    .line 2699
    :cond_1b8
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_ef

    .line 2700
    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    goto/16 :goto_ef

    .line 2716
    .end local v11    # "bitmapHeight":I
    .end local v12    # "bitmapWidth":I
    .end local v15    # "newScale":F
    .end local v16    # "newScaleX":F
    .end local v17    # "newScaleY":F
    .end local v18    # "scale":F
    .end local v19    # "scaleX":F
    .end local v20    # "scaleY":F
    :cond_1d3
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_220

    .line 2717
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->shutdown()V

    .line 2718
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    .line 2719
    invoke-virtual {v5}, Lorg/telegram/ui/Components/PhotoFilterView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v5

    const-string v6, "translationY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v21, 0x42fc0000    # 126.0f

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    aput v21, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "animationValue"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_664

    .line 2720
    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2718
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_16e

    .line 2722
    :cond_220
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_16e

    .line 2723
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoPaintView;->shutdown()V

    .line 2724
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const/4 v2, 0x4

    new-array v4, v2, [Landroid/animation/Animator;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    .line 2725
    invoke-virtual {v5}, Lorg/telegram/ui/Components/PhotoPaintView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v5

    const-string v6, "translationY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v21, 0x42fc0000    # 126.0f

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    aput v21, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    .line 2726
    invoke-virtual {v5}, Lorg/telegram/ui/Components/PhotoPaintView;->getColorPicker()Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    move-result-object v5

    const-string v6, "translationX"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v21, 0x42700000    # 60.0f

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    aput v21, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    .line 2727
    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoPaintView;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v6

    const-string v7, "translationY"

    const/4 v2, 0x1

    new-array v8, v2, [F

    const/16 v21, 0x0

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    neg-int v0, v2

    move/from16 v22, v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0x15

    move/from16 v0, v23

    if-lt v2, v0, :cond_2bb

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_29a
    sub-int v2, v22, v2

    int-to-float v2, v2

    aput v2, v8, v21

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x3

    const-string v5, "animationValue"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_66c

    .line 2728
    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v2

    .line 2724
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_16e

    .line 2727
    :cond_2bb
    const/4 v2, 0x0

    goto :goto_29a

    .line 2784
    .end local v10    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2bd
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_3e5

    .line 2785
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    if-nez v2, :cond_30d

    .line 2786
    new-instance v2, Lorg/telegram/ui/Components/PhotoCropView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/PhotoCropView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    .line 2787
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoCropView;->setVisibility(I)V

    .line 2788
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    move-object/from16 v22, v0

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x33

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x42400000    # 48.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2789
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$41;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$41;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoCropView;->setDelegate(Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;)V

    .line 2813
    :cond_30d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoCropView;->onAppear()V

    .line 2815
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v2, v2, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    const-string v3, "Crop"

    const v4, 0x7f0701a4

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2816
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v2, v2, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    const v3, -0xae420d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2818
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    .line 2819
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2820
    .local v9, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const-string v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2821
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBar;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2822
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    if-eqz v2, :cond_3a3

    .line 2823
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const-string v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2825
    :cond_3a3
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v2, :cond_3bc

    .line 2826
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const-string v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_674

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2828
    :cond_3bc
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2829
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2830
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$42;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/PhotoViewer$42;-><init>(Lorg/telegram/ui/PhotoViewer;I)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2899
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_36

    .line 2900
    .end local v9    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_3e5
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_508

    .line 2901
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    if-nez v2, :cond_455

    .line 2902
    new-instance v2, Lorg/telegram/ui/Components/PhotoFilterView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getOrientation()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lorg/telegram/ui/Components/PhotoFilterView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    .line 2903
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2904
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->getDoneTextView()Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/PhotoViewer$43;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$43;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2911
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->getCancelTextView()Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/PhotoViewer$44;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$44;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2934
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v2

    const/high16 v3, 0x42fc0000    # 126.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2937
    :cond_455
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    .line 2938
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2939
    .restart local v9    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const-string v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2940
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBar;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2941
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    if-eqz v2, :cond_4c6

    .line 2942
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const-string v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2944
    :cond_4c6
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v2, :cond_4df

    .line 2945
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const-string v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_67c

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2947
    :cond_4df
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2948
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2949
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$45;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/PhotoViewer$45;-><init>(Lorg/telegram/ui/PhotoViewer;I)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3009
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_36

    .line 3010
    .end local v9    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_508
    const/4 v2, 0x3

    move/from16 v0, p1

    if-ne v0, v2, :cond_36

    .line 3011
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    if-nez v2, :cond_5a5

    .line 3012
    new-instance v2, Lorg/telegram/ui/Components/PhotoPaintView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getOrientation()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lorg/telegram/ui/Components/PhotoPaintView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    .line 3013
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3014
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoPaintView;->getDoneTextView()Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/PhotoViewer$46;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$46;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3021
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoPaintView;->getCancelTextView()Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/PhotoViewer$47;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PhotoViewer$47;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3032
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoPaintView;->getColorPicker()Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    move-result-object v2

    const/high16 v3, 0x42700000    # 60.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setTranslationX(F)V

    .line 3033
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoPaintView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v2

    const/high16 v3, 0x42fc0000    # 126.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3034
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoPaintView;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    neg-int v4, v2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v2, v5, :cond_658

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_59f
    sub-int v2, v4, v2

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTranslationY(F)V

    .line 3037
    :cond_5a5
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    .line 3038
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3039
    .restart local v9    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const-string v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3040
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBar;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3042
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    if-eqz v2, :cond_616

    .line 3043
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const-string v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3045
    :cond_616
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v2, :cond_62f

    .line 3046
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const-string v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_684

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3048
    :cond_62f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 3049
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3050
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$48;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/PhotoViewer$48;-><init>(Lorg/telegram/ui/PhotoViewer;I)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3111
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_36

    .line 3034
    .end local v9    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_658
    const/4 v2, 0x0

    goto/16 :goto_59f

    .line 2712
    nop

    :array_65c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 2719
    :array_664
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 2727
    :array_66c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 2826
    :array_674
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 2945
    :array_67c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 3046
    :array_684
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private toggleActionBar(ZZ)V
    .registers 12
    .param p1, "show"    # Z
    .param p2, "animated"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 3131
    if-eqz p1, :cond_24

    .line 3132
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setVisibility(I)V

    .line 3133
    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    if-eqz v1, :cond_24

    .line 3134
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3135
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 3136
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3140
    :cond_24
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->isActionBarVisible:Z

    .line 3141
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setEnabled(Z)V

    .line 3142
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 3144
    if-eqz p2, :cond_9f

    .line 3145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3146
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v5, "alpha"

    new-array v6, v8, [F

    if-eqz p1, :cond_99

    move v1, v2

    :goto_40
    aput v1, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3147
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const-string v5, "alpha"

    new-array v6, v8, [F

    if-eqz p1, :cond_9b

    move v1, v2

    :goto_52
    aput v1, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3148
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_74

    .line 3149
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const-string v4, "alpha"

    new-array v5, v8, [F

    if-eqz p1, :cond_9d

    :goto_6b
    aput v2, v5, v7

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3151
    :cond_74
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    .line 3152
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 3153
    if-nez p1, :cond_8c

    .line 3154
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/PhotoViewer$49;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoViewer$49;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3171
    :cond_8c
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3172
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 3189
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_98
    :goto_98
    return-void

    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_99
    move v1, v3

    .line 3146
    goto :goto_40

    :cond_9b
    move v1, v3

    .line 3147
    goto :goto_52

    :cond_9d
    move v2, v3

    .line 3149
    goto :goto_6b

    .line 3174
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_9f
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p1, :cond_dd

    move v1, v2

    :goto_a4
    invoke-virtual {v4, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAlpha(F)V

    .line 3175
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_df

    move v1, v2

    :goto_ac
    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3176
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_be

    .line 3177
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_e1

    :goto_bb
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 3179
    :cond_be
    if-nez p1, :cond_98

    .line 3180
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setVisibility(I)V

    .line 3181
    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    if-eqz v1, :cond_98

    .line 3182
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3183
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_98

    .line 3184
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_98

    :cond_dd
    move v1, v3

    .line 3174
    goto :goto_a4

    :cond_df
    move v1, v3

    .line 3175
    goto :goto_ac

    :cond_e1
    move v2, v3

    .line 3177
    goto :goto_bb
.end method

.method private toggleCheckImageView(Z)V
    .registers 12
    .param p1, "show"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 3116
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 3117
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3118
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const-string v6, "alpha"

    new-array v7, v9, [F

    if-eqz p1, :cond_58

    move v2, v3

    :goto_18
    aput v2, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3119
    iget-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    if-eqz v2, :cond_37

    .line 3120
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const-string v6, "alpha"

    new-array v7, v9, [F

    if-eqz p1, :cond_5a

    move v2, v3

    :goto_2e
    aput v2, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3122
    :cond_37
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v2, :cond_4c

    .line 3123
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const-string v5, "alpha"

    new-array v6, v9, [F

    if-eqz p1, :cond_5c

    :goto_43
    aput v3, v6, v8

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3125
    :cond_4c
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 3126
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3127
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 3128
    return-void

    :cond_58
    move v2, v4

    .line 3118
    goto :goto_18

    :cond_5a
    move v2, v4

    .line 3120
    goto :goto_2e

    :cond_5c
    move v3, v4

    .line 3123
    goto :goto_43
.end method

.method private updateCaptionTextForCurrentPhoto(Ljava/lang/Object;)V
    .registers 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 2553
    const/4 v0, 0x0

    .line 2554
    .local v0, "caption":Ljava/lang/CharSequence;
    instance-of v1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v1, :cond_19

    .line 2555
    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    .line 2561
    :cond_9
    :goto_9
    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_26

    .line 2562
    :cond_11
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    .line 2566
    :goto_18
    return-void

    .line 2556
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_19
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-nez v1, :cond_9

    .line 2558
    instance-of v1, p1, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v1, :cond_9

    .line 2559
    check-cast p1, Lorg/telegram/messenger/MediaController$SearchImage;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    goto :goto_9

    .line 2564
    :cond_26
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    goto :goto_18
.end method

.method private updateMinMax(F)V
    .registers 7
    .param p1, "scale"    # F

    .prologue
    const/4 v4, 0x0

    .line 4737
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v1, v2, 0x2

    .line 4738
    .local v1, "maxW":I
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v0, v2, 0x2

    .line 4739
    .local v0, "maxH":I
    if-lez v1, :cond_67

    .line 4740
    neg-int v2, v1

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    .line 4741
    int-to-float v2, v1

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    .line 4745
    :goto_2c
    if-lez v0, :cond_6c

    .line 4746
    neg-int v2, v0

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    .line 4747
    int-to-float v2, v0

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    .line 4751
    :goto_35
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_66

    .line 4752
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoCropView;->getLimitX()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    .line 4753
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoCropView;->getLimitY()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    .line 4754
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoCropView;->getLimitWidth()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    .line 4755
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoCropView;->getLimitHeight()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    .line 4757
    :cond_66
    return-void

    .line 4743
    :cond_67
    iput v4, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    iput v4, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    goto :goto_2c

    .line 4749
    :cond_6c
    iput v4, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    iput v4, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    goto :goto_35
.end method

.method private updateSelectedCount()V
    .registers 4

    .prologue
    .line 3296
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-nez v0, :cond_5

    .line 3300
    :goto_4
    return-void

    .line 3299
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-interface {v1}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getSelectedCount()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->updateSelectedCount(IZ)V

    goto :goto_4
.end method

.method private updateVideoInfo()V
    .registers 15

    .prologue
    const-wide/16 v12, 0x3e8

    const/16 v9, 0x10e

    const/16 v8, 0x5a

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 5710
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez v6, :cond_d

    .line 5760
    :goto_c
    return-void

    .line 5714
    :cond_d
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    if-nez v6, :cond_ee

    .line 5715
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const v7, 0x7f02028e

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5726
    :cond_19
    :goto_19
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v7

    sub-float/2addr v6, v7

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-long v6, v6

    iput-wide v6, p0, Lorg/telegram/ui/PhotoViewer;->estimatedDuration:J

    .line 5731
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_4b

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_130

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_130

    .line 5732
    :cond_4b
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    if-eq v6, v8, :cond_53

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    if-ne v6, v9, :cond_128

    :cond_53
    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    .line 5733
    .local v5, "width":I
    :goto_55
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    if-eq v6, v8, :cond_5d

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    if-ne v6, v9, :cond_12c

    :cond_5d
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    .line 5734
    .local v0, "height":I
    :goto_5f
    iget-wide v6, p0, Lorg/telegram/ui/PhotoViewer;->originalSize:J

    long-to-float v6, v6

    iget-wide v8, p0, Lorg/telegram/ui/PhotoViewer;->estimatedDuration:J

    long-to-float v7, v8

    iget v8, p0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lorg/telegram/ui/PhotoViewer;->estimatedSize:I

    .line 5743
    :goto_6c
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_169

    .line 5744
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lorg/telegram/ui/PhotoViewer;->startTime:J

    .line 5748
    :goto_7b
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_178

    .line 5749
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lorg/telegram/ui/PhotoViewer;->endTime:J

    .line 5754
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

    .line 5755
    .local v3, "videoDimension":Ljava/lang/String;
    iget-wide v6, p0, Lorg/telegram/ui/PhotoViewer;->estimatedDuration:J

    div-long/2addr v6, v12

    const-wide/16 v8, 0x3c

    div-long/2addr v6, v8

    long-to-int v1, v6

    .line 5756
    .local v1, "minutes":I
    iget-wide v6, p0, Lorg/telegram/ui/PhotoViewer;->estimatedDuration:J

    div-long/2addr v6, v12

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    mul-int/lit8 v7, v1, 0x3c

    sub-int v2, v6, v7

    .line 5757
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

    iget v8, p0, Lorg/telegram/ui/PhotoViewer;->estimatedSize:I

    int-to-long v8, v8

    invoke-static {v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 5758
    .local v4, "videoTimeSize":Ljava/lang/String;
    const-string v6, "%s, %s"

    new-array v7, v11, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    aput-object v4, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentSubtitle:Ljava/lang/String;

    .line 5759
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    if-eqz v6, :cond_187

    const/4 v6, 0x0

    :goto_e9
    invoke-virtual {v7, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 5716
    .end local v0    # "height":I
    .end local v1    # "minutes":I
    .end local v2    # "seconds":I
    .end local v3    # "videoDimension":Ljava/lang/String;
    .end local v4    # "videoTimeSize":Ljava/lang/String;
    .end local v5    # "width":I
    :cond_ee
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    if-ne v6, v10, :cond_fc

    .line 5717
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const v7, 0x7f02028f

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_19

    .line 5718
    :cond_fc
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    if-ne v6, v11, :cond_10a

    .line 5719
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const v7, 0x7f020290

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_19

    .line 5720
    :cond_10a
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_119

    .line 5721
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const v7, 0x7f020291

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_19

    .line 5722
    :cond_119
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_19

    .line 5723
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const v7, 0x7f02028d

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_19

    .line 5732
    :cond_128
    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    goto/16 :goto_55

    .line 5733
    .restart local v5    # "width":I
    :cond_12c
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    goto/16 :goto_5f

    .line 5736
    .end local v5    # "width":I
    :cond_130
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    if-eq v6, v8, :cond_138

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    if-ne v6, v9, :cond_163

    :cond_138
    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->resultHeight:I

    .line 5737
    .restart local v5    # "width":I
    :goto_13a
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    if-eq v6, v8, :cond_142

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    if-ne v6, v9, :cond_166

    :cond_142
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->resultWidth:I

    .line 5739
    .restart local v0    # "height":I
    :goto_144
    iget-wide v6, p0, Lorg/telegram/ui/PhotoViewer;->audioFramesSize:J

    iget-wide v8, p0, Lorg/telegram/ui/PhotoViewer;->videoFramesSize:J

    add-long/2addr v6, v8

    long-to-float v6, v6

    iget-wide v8, p0, Lorg/telegram/ui/PhotoViewer;->estimatedDuration:J

    long-to-float v7, v8

    iget v8, p0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lorg/telegram/ui/PhotoViewer;->estimatedSize:I

    .line 5740
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->estimatedSize:I

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->estimatedSize:I

    const v8, 0x8000

    div-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x10

    add-int/2addr v6, v7

    iput v6, p0, Lorg/telegram/ui/PhotoViewer;->estimatedSize:I

    goto/16 :goto_6c

    .line 5736
    .end local v0    # "height":I
    .end local v5    # "width":I
    :cond_163
    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->resultWidth:I

    goto :goto_13a

    .line 5737
    .restart local v5    # "width":I
    :cond_166
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->resultHeight:I

    goto :goto_144

    .line 5746
    .restart local v0    # "height":I
    :cond_169
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v6

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    mul-float/2addr v6, v7

    float-to-long v6, v6

    mul-long/2addr v6, v12

    iput-wide v6, p0, Lorg/telegram/ui/PhotoViewer;->startTime:J

    goto/16 :goto_7b

    .line 5751
    :cond_178
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v6

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    mul-float/2addr v6, v7

    float-to-long v6, v6

    mul-long/2addr v6, v12

    iput-wide v6, p0, Lorg/telegram/ui/PhotoViewer;->endTime:J

    goto/16 :goto_8b

    .line 5759
    .restart local v1    # "minutes":I
    .restart local v2    # "seconds":I
    .restart local v3    # "videoDimension":Ljava/lang/String;
    .restart local v4    # "videoTimeSize":Ljava/lang/String;
    :cond_187
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentSubtitle:Ljava/lang/String;

    goto/16 :goto_e9
.end method

.method private updateVideoPlayerTime()V
    .registers 13

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v10, 0x3c

    .line 2355
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v3, :cond_21

    .line 2356
    const-string v2, "00:00 / 00:00"

    .line 2375
    .local v2, "newText":Ljava/lang/String;
    :goto_f
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 2376
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2378
    :cond_20
    return-void

    .line 2358
    .end local v2    # "newText":Ljava/lang/String;
    :cond_21
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    .line 2359
    .local v0, "current":J
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v4

    .line 2360
    .local v4, "total":J
    cmp-long v3, v4, v6

    if-eqz v3, :cond_96

    cmp-long v3, v0, v6

    if-eqz v3, :cond_96

    .line 2361
    iget-boolean v3, p0, Lorg/telegram/ui/PhotoViewer;->inPreview:Z

    if-nez v3, :cond_65

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_65

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_65

    .line 2362
    long-to-float v3, v4

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v7

    sub-float/2addr v6, v7

    mul-float/2addr v3, v6

    float-to-long v4, v3

    .line 2363
    long-to-float v3, v0

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v6

    long-to-float v7, v4

    mul-float/2addr v6, v7

    sub-float/2addr v3, v6

    float-to-long v0, v3

    .line 2364
    cmp-long v3, v0, v4

    if-lez v3, :cond_65

    .line 2365
    move-wide v0, v4

    .line 2368
    :cond_65
    div-long/2addr v0, v8

    .line 2369
    div-long/2addr v4, v8

    .line 2370
    const-string v3, "%02d:%02d / %02d:%02d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    div-long v8, v0, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    rem-long v8, v0, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    div-long v8, v4, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    rem-long v8, v4, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "newText":Ljava/lang/String;
    goto/16 :goto_f

    .line 2372
    .end local v2    # "newText":Ljava/lang/String;
    :cond_96
    const-string v2, "00:00 / 00:00"

    .restart local v2    # "newText":Ljava/lang/String;
    goto/16 :goto_f
.end method

.method private updateWidthHeightBitrateForCompression()V
    .registers 7

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 5828
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    if-lt v3, v4, :cond_e

    .line 5829
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    .line 5831
    :cond_e
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_62

    .line 5834
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    packed-switch v3, :pswitch_data_7c

    .line 5849
    const v2, 0x186a00

    .line 5850
    .local v2, "targetBitrate":I
    const/high16 v0, 0x44a00000    # 1280.0f

    .line 5853
    .local v0, "maxSize":F
    :goto_20
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    if-le v3, v4, :cond_75

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    int-to-float v3, v3

    div-float v1, v0, v3

    .line 5854
    .local v1, "scale":F
    :goto_2b
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    div-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lorg/telegram/ui/PhotoViewer;->resultWidth:I

    .line 5855
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    div-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lorg/telegram/ui/PhotoViewer;->resultHeight:I

    .line 5856
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->bitrate:I

    if-eqz v3, :cond_62

    .line 5857
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->originalBitrate:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/PhotoViewer;->bitrate:I

    .line 5858
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->bitrate:I

    div-int/lit8 v3, v3, 0x8

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    float-to-long v4, v3

    iput-wide v4, p0, Lorg/telegram/ui/PhotoViewer;->videoFramesSize:J

    .line 5861
    .end local v0    # "maxSize":F
    .end local v1    # "scale":F
    .end local v2    # "targetBitrate":I
    :cond_62
    return-void

    .line 5836
    :pswitch_63
    const/high16 v0, 0x43d80000    # 432.0f

    .line 5837
    .restart local v0    # "maxSize":F
    const v2, 0x61a80

    .line 5838
    .restart local v2    # "targetBitrate":I
    goto :goto_20

    .line 5840
    .end local v0    # "maxSize":F
    .end local v2    # "targetBitrate":I
    :pswitch_69
    const/high16 v0, 0x44200000    # 640.0f

    .line 5841
    .restart local v0    # "maxSize":F
    const v2, 0xdbba0

    .line 5842
    .restart local v2    # "targetBitrate":I
    goto :goto_20

    .line 5844
    .end local v0    # "maxSize":F
    .end local v2    # "targetBitrate":I
    :pswitch_6f
    const/high16 v0, 0x44540000    # 848.0f

    .line 5845
    .restart local v0    # "maxSize":F
    const v2, 0x10c8e0

    .line 5846
    .restart local v2    # "targetBitrate":I
    goto :goto_20

    .line 5853
    :cond_75
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    int-to-float v3, v3

    div-float v1, v0, v3

    goto :goto_2b

    .line 5834
    nop

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_63
        :pswitch_69
        :pswitch_6f
    .end packed-switch
.end method


# virtual methods
.method public closePhoto(ZZ)V
    .registers 35
    .param p1, "animated"    # Z
    .param p2, "fromEditMode"    # Z

    .prologue
    .line 4382
    if-nez p2, :cond_62

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v24, v0

    if-eqz v24, :cond_62

    .line 4383
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_41

    .line 4384
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    new-instance v26, Lorg/telegram/ui/PhotoViewer$55;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PhotoViewer$55;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/PhotoPaintView;->maybeShowDismissalAlert(Lorg/telegram/ui/PhotoViewer;Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 4630
    :cond_40
    :goto_40
    return-void

    .line 4393
    :cond_41
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_58

    .line 4394
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/Components/PhotoCropView;->cancelAnimationRunnable()V

    .line 4396
    :cond_58
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/telegram/ui/PhotoViewer;->switchToEditMode(I)V

    goto :goto_40

    .line 4399
    :cond_62
    sget v24, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v25, 0x10

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_90

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_90

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->getTag()Ljava/lang/Object;

    move-result-object v24

    if-eqz v24, :cond_90

    .line 4400
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->cancelButton:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->callOnClick()Z

    goto :goto_40

    .line 4404
    :cond_90
    :try_start_90
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    move-object/from16 v24, v0

    if-eqz v24, :cond_a9

    .line 4405
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 4406
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_a9} :catch_6d3

    .line 4412
    :cond_a9
    :goto_a9
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v24, v0

    if-eqz v24, :cond_e7

    .line 4413
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_6d9

    .line 4414
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/Components/PhotoFilterView;->shutdown()V

    .line 4415
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->removeView(Landroid/view/View;)V

    .line 4416
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    .line 4421
    :cond_df
    :goto_df
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    .line 4424
    :cond_e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    move-object/from16 v24, v0

    if-eqz v24, :cond_40

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    move/from16 v24, v0

    if-eqz v24, :cond_40

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->checkAnimation()Z

    move-result v24

    if-nez v24, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-object/from16 v24, v0

    if-eqz v24, :cond_40

    .line 4427
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->hideActionMode()Z

    move-result v24

    if-eqz v24, :cond_113

    if-eqz p2, :cond_40

    .line 4431
    :cond_113
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->releasePlayer()V

    .line 4432
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onDestroy()V

    .line 4433
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    .line 4434
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v24

    sget v25, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 4435
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v24

    sget v25, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 4436
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v24

    sget v25, Lorg/telegram/messenger/NotificationCenter;->FileLoadProgressChanged:I

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 4437
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v24

    sget v25, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoaded:I

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 4438
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v24

    sget v25, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoaded:I

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 4439
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v24

    sget v25, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosLoaded:I

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 4440
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v24

    sget v25, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 4441
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v24

    sget v25, Lorg/telegram/messenger/NotificationCenter;->FilePreparingFailed:I

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 4442
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v24

    sget v25, Lorg/telegram/messenger/NotificationCenter;->FileNewChunkAvailable:I

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 4443
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequestsForGuid(I)V

    .line 4445
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/PhotoViewer;->isActionBarVisible:Z

    .line 4447
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1dc

    .line 4448
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/VelocityTracker;->recycle()V

    .line 4449
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    .line 4451
    :cond_1dc
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequestsForGuid(I)V

    .line 4453
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    move/from16 v27, v0

    invoke-interface/range {v24 .. v27}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v16

    .line 4455
    .local v16, "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    if-eqz p1, :cond_80a

    .line 4456
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    .line 4457
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->setVisibility(I)V

    .line 4458
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    .line 4460
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 4462
    .local v5, "animatorSet":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/Components/ClippingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 4463
    .local v15, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v11, 0x0

    .line 4464
    .local v11, "drawRegion":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getOrientation()I

    move-result v17

    .line 4465
    .local v17, "orientation":I
    const/4 v4, 0x0

    .line 4466
    .local v4, "animatedOrientation":I
    if-eqz v16, :cond_252

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    if-eqz v24, :cond_252

    .line 4467
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getAnimatedOrientation()I

    move-result v4

    .line 4469
    :cond_252
    if-eqz v4, :cond_256

    .line 4470
    move/from16 v17, v4

    .line 4472
    :cond_256
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClippingImageView;->setOrientation(I)V

    .line 4473
    if-eqz v16, :cond_703

    .line 4474
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v25, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:I

    move/from16 v24, v0

    if-eqz v24, :cond_6ff

    const/16 v24, 0x1

    :goto_275
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClippingImageView;->setNeedRadius(Z)V

    .line 4475
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/Rect;

    move-result-object v11

    .line 4476
    iget v0, v11, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4477
    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4478
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4485
    :goto_2b1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lorg/telegram/ui/Components/ClippingImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4487
    sget-object v24, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v19, v24, v25

    .line 4488
    .local v19, "scaleX":F
    sget-object v24, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    sget v24, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x15

    move/from16 v0, v24

    move/from16 v1, v26

    if-lt v0, v1, :cond_73f

    sget v24, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_2e8
    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v20, v24, v25

    .line 4489
    .local v20, "scaleY":F
    cmpl-float v24, v19, v20

    if-lez v24, :cond_743

    move/from16 v18, v20

    .line 4490
    .local v18, "scale2":F
    :goto_300
    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    mul-float v21, v24, v18

    .line 4491
    .local v21, "width":F
    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    mul-float v14, v24, v18

    .line 4492
    .local v14, "height":F
    sget-object v24, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v24, v21

    const/high16 v25, 0x40000000    # 2.0f

    div-float v22, v24, v25

    .line 4493
    .local v22, "xPos":F
    sget-object v24, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    sget v24, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x15

    move/from16 v0, v24

    move/from16 v1, v26

    if-lt v0, v1, :cond_747

    sget v24, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_34d
    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v24, v14

    const/high16 v25, 0x40000000    # 2.0f

    div-float v23, v24, v25

    .line 4494
    .local v23, "yPos":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    move/from16 v25, v0

    add-float v25, v25, v22

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->setTranslationX(F)V

    .line 4495
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    move/from16 v25, v0

    add-float v25, v25, v23

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->setTranslationY(F)V

    .line 4496
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v25, v0

    mul-float v25, v25, v18

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->setScaleX(F)V

    .line 4497
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->scale:F

    move/from16 v25, v0

    mul-float v25, v25, v18

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->setScaleY(F)V

    .line 4499
    if-eqz v16, :cond_753

    .line 4500
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 4501
    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/ImageReceiver;->getImageX()I

    move-result v25

    sub-int v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 4502
    .local v7, "clipHorizontal":I
    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/ImageReceiver;->getImageY()I

    move-result v25

    sub-int v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 4504
    .local v9, "clipVertical":I
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v10, v0, [I

    .line 4505
    .local v10, "coords2":[I
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationInWindow([I)V

    .line 4506
    const/16 v24, 0x1

    aget v25, v10, v24

    sget v24, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x15

    move/from16 v0, v24

    move/from16 v1, v26

    if-lt v0, v1, :cond_74b

    const/16 v24, 0x0

    :goto_3f6
    sub-int v24, v25, v24

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    move/from16 v25, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    add-int v25, v25, v26

    sub-int v24, v24, v25

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipTopAddition:I

    move/from16 v25, v0

    add-int v8, v24, v25

    .line 4507
    .local v8, "clipTop":I
    if-gez v8, :cond_411

    .line 4508
    const/4 v8, 0x0

    .line 4510
    :cond_411
    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    move/from16 v24, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    add-int v24, v24, v25

    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    add-int v25, v25, v24

    const/16 v24, 0x1

    aget v24, v10, v24

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHeight()I

    move-result v26

    add-int v26, v26, v24

    sget v24, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v27, 0x15

    move/from16 v0, v24

    move/from16 v1, v27

    if-lt v0, v1, :cond_74f

    const/16 v24, 0x0

    :goto_445
    sub-int v24, v26, v24

    sub-int v24, v25, v24

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipBottomAddition:I

    move/from16 v25, v0

    add-int v6, v24, v25

    .line 4511
    .local v6, "clipBottom":I
    if-gez v6, :cond_454

    .line 4512
    const/4 v6, 0x0

    .line 4515
    :cond_454
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 4516
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 4518
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/ui/Components/ClippingImageView;->getScaleX()F

    move-result v26

    aput v26, v24, v25

    .line 4519
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/ui/Components/ClippingImageView;->getScaleY()F

    move-result v26

    aput v26, v24, v25

    .line 4520
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/ui/Components/ClippingImageView;->getTranslationX()F

    move-result v26

    aput v26, v24, v25

    .line 4521
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/ui/Components/ClippingImageView;->getTranslationY()F

    move-result v26

    aput v26, v24, v25

    .line 4522
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x4

    const/16 v26, 0x0

    aput v26, v24, v25

    .line 4523
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x5

    const/16 v26, 0x0

    aput v26, v24, v25

    .line 4524
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x6

    const/16 v26, 0x0

    aput v26, v24, v25

    .line 4525
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x7

    const/16 v26, 0x0

    aput v26, v24, v25

    .line 4527
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    move/from16 v26, v0

    aput v26, v24, v25

    .line 4528
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x1

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    move/from16 v26, v0

    aput v26, v24, v25

    .line 4529
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    add-float v26, v26, v27

    aput v26, v24, v25

    .line 4530
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x3

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    add-float v26, v26, v27

    aput v26, v24, v25

    .line 4531
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x4

    int-to-float v0, v7

    move/from16 v26, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    aput v26, v24, v25

    .line 4532
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x5

    int-to-float v0, v8

    move/from16 v26, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    aput v26, v24, v25

    .line 4533
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x6

    int-to-float v0, v6

    move/from16 v26, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    aput v26, v24, v25

    .line 4534
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x7

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    aput v26, v24, v25

    .line 4536
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v26, v0

    const-string v27, "animationProgress"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    fill-array-data v28, :array_8ea

    .line 4537
    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    move-object/from16 v26, v0

    const-string v27, "alpha"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v30, v28, v29

    .line 4538
    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v26, v0

    const-string v27, "alpha"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v30, v28, v29

    .line 4539
    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v26

    aput-object v26, v24, v25

    .line 4536
    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4551
    .end local v6    # "clipBottom":I
    .end local v7    # "clipHorizontal":I
    .end local v8    # "clipTop":I
    .end local v9    # "clipVertical":I
    .end local v10    # "coords2":[I
    :goto_644
    new-instance v24, Lorg/telegram/ui/PhotoViewer$56;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$56;-><init>(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    .line 4562
    const-wide/16 v24, 0xc8

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4563
    new-instance v24, Lorg/telegram/ui/PhotoViewer$57;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PhotoViewer$57;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4577
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/PhotoViewer;->transitionAnimationStartTime:J

    .line 4578
    sget v24, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v25, 0x12

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_68b

    .line 4579
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4581
    :cond_68b
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 4622
    .end local v4    # "animatedOrientation":I
    .end local v11    # "drawRegion":Landroid/graphics/Rect;
    .end local v14    # "height":F
    .end local v15    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v17    # "orientation":I
    .end local v18    # "scale2":F
    .end local v19    # "scaleX":F
    .end local v20    # "scaleY":F
    .end local v21    # "width":F
    .end local v22    # "xPos":F
    .end local v23    # "yPos":F
    :goto_68e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_6ba

    .line 4623
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setSecondParentView(Landroid/view/View;)V

    .line 4624
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 4625
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v25, v0

    const/16 v24, 0x0

    check-cast v24, Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 4627
    :cond_6ba
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;

    move/from16 v24, v0

    if-eqz v24, :cond_40

    .line 4628
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->cancelButtonPressed()Z

    goto/16 :goto_40

    .line 4408
    .end local v5    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v16    # "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    :catch_6d3
    move-exception v12

    .line 4409
    .local v12, "e":Ljava/lang/Exception;
    invoke-static {v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_a9

    .line 4417
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_6d9
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_df

    .line 4418
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    .line 4419
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/ui/Components/PhotoCropView;->setVisibility(I)V

    goto/16 :goto_df

    .line 4474
    .restart local v4    # "animatedOrientation":I
    .restart local v5    # "animatorSet":Landroid/animation/AnimatorSet;
    .restart local v11    # "drawRegion":Landroid/graphics/Rect;
    .restart local v15    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v16    # "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .restart local v17    # "orientation":I
    :cond_6ff
    const/16 v24, 0x0

    goto/16 :goto_275

    .line 4480
    :cond_703
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->setNeedRadius(Z)V

    .line 4481
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()I

    move-result v24

    move/from16 v0, v24

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4482
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()I

    move-result v24

    move/from16 v0, v24

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4483
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/telegram/ui/Components/ClippingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2b1

    .line 4488
    .restart local v19    # "scaleX":F
    :cond_73f
    const/16 v24, 0x0

    goto/16 :goto_2e8

    .restart local v20    # "scaleY":F
    :cond_743
    move/from16 v18, v19

    .line 4489
    goto/16 :goto_300

    .line 4493
    .restart local v14    # "height":F
    .restart local v18    # "scale2":F
    .restart local v21    # "width":F
    .restart local v22    # "xPos":F
    :cond_747
    const/16 v24, 0x0

    goto/16 :goto_34d

    .line 4506
    .restart local v7    # "clipHorizontal":I
    .restart local v9    # "clipVertical":I
    .restart local v10    # "coords2":[I
    .restart local v23    # "yPos":F
    :cond_74b
    sget v24, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto/16 :goto_3f6

    .line 4510
    .restart local v8    # "clipTop":I
    :cond_74f
    sget v24, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto/16 :goto_445

    .line 4542
    .end local v7    # "clipHorizontal":I
    .end local v8    # "clipTop":I
    .end local v9    # "clipVertical":I
    .end local v10    # "coords2":[I
    :cond_753
    sget-object v24, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    sget v24, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x15

    move/from16 v0, v24

    move/from16 v1, v26

    if-lt v0, v1, :cond_7fd

    sget v24, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_767
    add-int v13, v25, v24

    .line 4543
    .local v13, "h":I
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v25, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    move-object/from16 v26, v0

    const-string v27, "alpha"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v30, v28, v29

    .line 4544
    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v26

    aput-object v26, v25, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v26, v0

    const-string v27, "alpha"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v30, v28, v29

    .line 4545
    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v26

    aput-object v26, v25, v24

    const/16 v26, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v27, v0

    const-string v28, "translationY"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [F

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    move/from16 v24, v0

    const/16 v31, 0x0

    cmpl-float v24, v24, v31

    if-ltz v24, :cond_801

    int-to-float v0, v13

    move/from16 v24, v0

    :goto_7d0
    aput v24, v29, v30

    .line 4546
    invoke-static/range {v27 .. v29}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v24

    aput-object v24, v25, v26

    const/16 v24, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v26, v0

    const-string v27, "alpha"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v30, v28, v29

    .line 4547
    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v26

    aput-object v26, v25, v24

    .line 4543
    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_644

    .line 4542
    .end local v13    # "h":I
    :cond_7fd
    const/16 v24, 0x0

    goto/16 :goto_767

    .line 4545
    .restart local v13    # "h":I
    :cond_801
    neg-int v0, v13

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    goto :goto_7d0

    .line 4583
    .end local v4    # "animatedOrientation":I
    .end local v5    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v11    # "drawRegion":Landroid/graphics/Rect;
    .end local v13    # "h":I
    .end local v14    # "height":F
    .end local v15    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v17    # "orientation":I
    .end local v18    # "scale2":F
    .end local v19    # "scaleX":F
    .end local v20    # "scaleY":F
    .end local v21    # "width":F
    .end local v22    # "xPos":F
    .end local v23    # "yPos":F
    :cond_80a
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 4584
    .restart local v5    # "animatorSet":Landroid/animation/AnimatorSet;
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v26, v0

    const-string v27, "scaleX"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const v30, 0x3f666666

    aput v30, v28, v29

    .line 4585
    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v26, v0

    const-string v27, "scaleY"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const v30, 0x3f666666

    aput v30, v28, v29

    .line 4586
    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    move-object/from16 v26, v0

    const-string v27, "alpha"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v30, v28, v29

    .line 4587
    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v26, v0

    const-string v27, "alpha"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v30, v28, v29

    .line 4588
    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v26

    aput-object v26, v24, v25

    .line 4584
    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4590
    const/16 v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    .line 4591
    new-instance v24, Lorg/telegram/ui/PhotoViewer$58;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$58;-><init>(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    .line 4606
    const-wide/16 v24, 0xc8

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4607
    new-instance v24, Lorg/telegram/ui/PhotoViewer$59;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/PhotoViewer$59;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4616
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/PhotoViewer;->transitionAnimationStartTime:J

    .line 4617
    sget v24, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v25, 0x12

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_8e5

    .line 4618
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4620
    :cond_8e5
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_68e

    .line 4536
    :array_8ea
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public destroyPhotoViewer()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 4633
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    if-nez v2, :cond_a

    .line 4650
    :cond_9
    :goto_9
    return-void

    .line 4636
    :cond_a
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->releasePlayer()V

    .line 4638
    :try_start_d
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 4639
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 4640
    .local v1, "wm":Landroid/view/WindowManager;
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 4642
    .end local v1    # "wm":Landroid/view/WindowManager;
    :cond_24
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_27} :catch_33

    .line 4646
    :goto_27
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    if-eqz v2, :cond_30

    .line 4647
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onDestroy()V

    .line 4649
    :cond_30
    sput-object v4, Lorg/telegram/ui/PhotoViewer;->Instance:Lorg/telegram/ui/PhotoViewer;

    goto :goto_9

    .line 4643
    :catch_33
    move-exception v0

    .line 4644
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_27
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 39
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 799
    sget v2, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_3b

    .line 800
    const/4 v2, 0x0

    aget-object v24, p2, v2

    check-cast v24, Ljava/lang/String;

    .line 801
    .local v24, "location":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_c
    const/4 v2, 0x3

    if-ge v10, v2, :cond_37

    .line 802
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v2, v2, v10

    if-eqz v2, :cond_38

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v2, v2, v10

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 803
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v2, v2, v10

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setProgress(FZ)V

    .line 804
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    .line 1053
    .end local v10    # "a":I
    .end local v24    # "location":Ljava/lang/String;
    :cond_37
    :goto_37
    return-void

    .line 801
    .restart local v10    # "a":I
    .restart local v24    # "location":Ljava/lang/String;
    :cond_38
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    .line 808
    .end local v10    # "a":I
    .end local v24    # "location":Ljava/lang/String;
    :cond_3b
    sget v2, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_b4

    .line 809
    const/4 v2, 0x0

    aget-object v24, p2, v2

    check-cast v24, Ljava/lang/String;

    .line 810
    .restart local v24    # "location":Ljava/lang/String;
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_47
    const/4 v2, 0x3

    if-ge v10, v2, :cond_37

    .line 811
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v2, v2, v10

    if-eqz v2, :cond_b1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v2, v2, v10

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 812
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v2, v2, v10

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setProgress(FZ)V

    .line 813
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    .line 814
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_37

    if-nez v10, :cond_37

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_8a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v2

    if-nez v2, :cond_aa

    :cond_8a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v2, :cond_37

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_aa

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 815
    :cond_aa
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PhotoViewer;->onActionClick(Z)V

    goto :goto_37

    .line 810
    :cond_b1
    add-int/lit8 v10, v10, 0x1

    goto :goto_47

    .line 820
    .end local v10    # "a":I
    .end local v24    # "location":Ljava/lang/String;
    :cond_b4
    sget v2, Lorg/telegram/messenger/NotificationCenter;->FileLoadProgressChanged:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_ef

    .line 821
    const/4 v2, 0x0

    aget-object v24, p2, v2

    check-cast v24, Ljava/lang/String;

    .line 822
    .restart local v24    # "location":Ljava/lang/String;
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_c0
    const/4 v2, 0x3

    if-ge v10, v2, :cond_37

    .line 823
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v2, v2, v10

    if-eqz v2, :cond_ec

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v2, v2, v10

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ec

    .line 824
    const/4 v2, 0x1

    aget-object v29, p2, v2

    check-cast v29, Ljava/lang/Float;

    .line 825
    .local v29, "progress":Ljava/lang/Float;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v2, v2, v10

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setProgress(FZ)V

    .line 822
    .end local v29    # "progress":Ljava/lang/Float;
    :cond_ec
    add-int/lit8 v10, v10, 0x1

    goto :goto_c0

    .line 828
    .end local v10    # "a":I
    .end local v24    # "location":Ljava/lang/String;
    :cond_ef
    sget v2, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosLoaded:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_252

    .line 829
    const/4 v2, 0x4

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 830
    .local v21, "guid":I
    const/4 v2, 0x0

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 831
    .local v15, "did":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    if-ne v2, v15, :cond_37

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    move/from16 v0, v21

    if-ne v2, v0, :cond_37

    .line 832
    const/4 v2, 0x3

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    .line 834
    .local v20, "fromCache":Z
    const/16 v30, -0x1

    .line 835
    .local v30, "setToImage":I
    const/4 v2, 0x5

    aget-object v28, p2, v2

    check-cast v28, Ljava/util/ArrayList;

    .line 836
    .local v28, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Photo;>;"
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_37

    .line 839
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 840
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 841
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 842
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_141
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_1d9

    .line 843
    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/telegram/tgnet/TLRPC$Photo;

    .line 844
    .local v27, "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    if-eqz v27, :cond_15d

    move-object/from16 v0, v27

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    if-nez v2, :cond_15d

    move-object/from16 v0, v27

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    if-nez v2, :cond_160

    .line 842
    :cond_15d
    :goto_15d
    add-int/lit8 v10, v10, 0x1

    goto :goto_141

    .line 847
    :cond_160
    move-object/from16 v0, v27

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v3, 0x280

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v32

    .line 848
    .local v32, "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v32, :cond_15d

    .line 849
    const/4 v2, -0x1

    move/from16 v0, v30

    if-ne v0, v2, :cond_1b2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v2, :cond_1b2

    .line 850
    const/4 v13, 0x0

    .local v13, "b":I
    :goto_178
    move-object/from16 v0, v27

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_1b2

    .line 851
    move-object/from16 v0, v27

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 852
    .local v31, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-object/from16 v0, v31

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v2, v3, :cond_1d6

    move-object/from16 v0, v31

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1d6

    .line 853
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v30

    .line 858
    .end local v13    # "b":I
    .end local v31    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_1b2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 859
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15d

    .line 850
    .restart local v13    # "b":I
    .restart local v31    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_1d6
    add-int/lit8 v13, v13, 0x1

    goto :goto_178

    .line 863
    .end local v13    # "b":I
    .end local v27    # "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    .end local v31    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v32    # "sizeFull":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_1d9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_21b

    .line 864
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 868
    :goto_1eb
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    .line 869
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    .line 870
    const/4 v2, -0x1

    move/from16 v0, v30

    if-eq v0, v2, :cond_224

    .line 871
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    .line 878
    :goto_202
    if-eqz v20, :cond_37

    .line 879
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    const/4 v4, 0x0

    const/16 v5, 0x50

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    invoke-virtual/range {v2 .. v9}, Lorg/telegram/messenger/MessagesController;->loadDialogPhotos(IIIJZI)V

    goto/16 :goto_37

    .line 866
    :cond_21b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto :goto_1eb

    .line 873
    :cond_224
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    const/4 v3, 0x0

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 874
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 875
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 876
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    goto :goto_202

    .line 882
    .end local v10    # "a":I
    .end local v15    # "did":I
    .end local v20    # "fromCache":Z
    .end local v21    # "guid":I
    .end local v28    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Photo;>;"
    .end local v30    # "setToImage":I
    :cond_252
    sget v2, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoaded:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_34c

    .line 883
    const/4 v2, 0x0

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    .line 884
    .local v34, "uid":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    cmp-long v2, v34, v2

    if-eqz v2, :cond_271

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    cmp-long v2, v34, v2

    if-nez v2, :cond_37

    .line 885
    :cond_271
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    cmp-long v2, v34, v2

    if-nez v2, :cond_2af

    .line 886
    const/4 v2, 0x1

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    .line 896
    :cond_286
    :goto_286
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    if-eqz v2, :cond_2c5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->isFirstLoading:Z

    if-eqz v2, :cond_2c5

    .line 897
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->isFirstLoading:Z

    .line 898
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    .line 899
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    const/4 v4, 0x0

    const/16 v5, 0x50

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    goto/16 :goto_37

    .line 890
    :cond_2af
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    cmp-long v2, v34, v2

    if-nez v2, :cond_286

    .line 891
    const/4 v2, 0x1

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    goto :goto_286

    .line 900
    :cond_2c5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_37

    .line 901
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-eqz v2, :cond_307

    .line 902
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "Of"

    const v4, 0x7f0703d5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_37

    .line 904
    :cond_307
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "Of"

    const v4, 0x7f0703d5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_37

    .line 908
    .end local v34    # "uid":J
    :cond_34c
    sget v2, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoaded:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_671

    .line 909
    const/4 v2, 0x0

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    .line 910
    .restart local v34    # "uid":J
    const/4 v2, 0x3

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 911
    .restart local v21    # "guid":I
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    cmp-long v2, v34, v2

    if-eqz v2, :cond_374

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    cmp-long v2, v34, v2

    if-nez v2, :cond_37

    :cond_374
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    move/from16 v0, v21

    if-ne v0, v2, :cond_37

    .line 912
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    .line 913
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    cmp-long v2, v34, v2

    if-nez v2, :cond_3be

    const/16 v23, 0x0

    .line 914
    .local v23, "loadIndex":I
    :goto_38b
    const/4 v2, 0x2

    aget-object v12, p2, v2

    check-cast v12, Ljava/util/ArrayList;

    .line 915
    .local v12, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    const/4 v2, 0x5

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v3, v23

    .line 916
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    if-eqz v2, :cond_5d7

    .line 917
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3c1

    if-nez v23, :cond_3b7

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3c1

    .line 918
    :cond_3b7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    goto/16 :goto_37

    .line 913
    .end local v12    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v23    # "loadIndex":I
    :cond_3be
    const/16 v23, 0x1

    goto :goto_38b

    .line 921
    .restart local v12    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v23    # "loadIndex":I
    :cond_3c1
    const/16 v17, -0x1

    .line 923
    .local v17, "foundIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/MessageObject;

    .line 925
    .local v14, "currentMessage":Lorg/telegram/messenger/MessageObject;
    const/4 v11, 0x0

    .line 926
    .local v11, "added":I
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_3d3
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_443

    .line 927
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/messenger/MessageObject;

    .line 928
    .local v25, "message":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIdsTemp:[Ljava/util/HashMap;

    aget-object v2, v2, v23

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_423

    .line 929
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIdsTemp:[Ljava/util/HashMap;

    aget-object v2, v2, v23

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-eqz v2, :cond_426

    .line 931
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-ne v2, v3, :cond_421

    .line 933
    move/from16 v17, v11

    .line 935
    :cond_421
    add-int/lit8 v11, v11, 0x1

    .line 926
    :cond_423
    :goto_423
    add-int/lit8 v10, v10, 0x1

    goto :goto_3d3

    .line 937
    :cond_426
    add-int/lit8 v11, v11, 0x1

    .line 938
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 939
    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-ne v2, v3, :cond_423

    .line 940
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v17, v2, v11

    goto :goto_423

    .line 945
    .end local v25    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_443
    if-nez v11, :cond_462

    if-nez v23, :cond_451

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_462

    .line 946
    :cond_451
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    .line 947
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    .line 950
    :cond_462
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_4d2

    .line 951
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 952
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 953
    const/4 v10, 0x0

    :goto_47a
    const/4 v2, 0x2

    if-ge v10, v2, :cond_4a1

    .line 954
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 955
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    aget-object v2, v2, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIdsTemp:[Ljava/util/HashMap;

    aget-object v3, v3, v10

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 956
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIdsTemp:[Ljava/util/HashMap;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 953
    add-int/lit8 v10, v10, 0x1

    goto :goto_47a

    .line 958
    :cond_4a1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 959
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    .line 960
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    .line 961
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    if-lt v0, v2, :cond_4c8

    .line 962
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v17, v2, -0x1

    .line 964
    :cond_4c8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    goto/16 :goto_37

    .line 967
    :cond_4d2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-eqz v2, :cond_564

    .line 968
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_54b

    const/4 v6, 0x0

    .line 969
    .local v6, "loadFromMaxId":I
    :goto_4e3
    if-nez v23, :cond_524

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    aget-boolean v2, v2, v23

    if-eqz v2, :cond_524

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_524

    .line 970
    const/16 v23, 0x1

    .line 971
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_524

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_524

    .line 972
    const/4 v6, 0x0

    .line 985
    :cond_524
    :goto_524
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    aget-boolean v2, v2, v23

    if-nez v2, :cond_37

    .line 986
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    .line 987
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-eqz v2, :cond_5be

    .line 988
    if-nez v23, :cond_5b9

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    :goto_53d
    const/4 v4, 0x0

    const/16 v5, 0x50

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    goto/16 :goto_37

    .line 968
    .end local v6    # "loadFromMaxId":I
    :cond_54b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    goto :goto_4e3

    .line 976
    :cond_564
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5a9

    const/4 v6, 0x0

    .line 977
    .restart local v6    # "loadFromMaxId":I
    :goto_56f
    if-nez v23, :cond_524

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    aget-boolean v2, v2, v23

    if-eqz v2, :cond_524

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_524

    .line 978
    const/16 v23, 0x1

    .line 979
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_524

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_524

    .line 980
    const/4 v6, 0x0

    goto/16 :goto_524

    .line 976
    .end local v6    # "loadFromMaxId":I
    :cond_5a9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    goto :goto_56f

    .line 988
    .restart local v6    # "loadFromMaxId":I
    :cond_5b9
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    goto :goto_53d

    .line 990
    :cond_5be
    if-nez v23, :cond_5d2

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    :goto_5c4
    const/4 v4, 0x0

    const/16 v5, 0x50

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    goto/16 :goto_37

    :cond_5d2
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    goto :goto_5c4

    .line 995
    .end local v6    # "loadFromMaxId":I
    .end local v10    # "a":I
    .end local v11    # "added":I
    .end local v14    # "currentMessage":Lorg/telegram/messenger/MessageObject;
    .end local v17    # "foundIndex":I
    :cond_5d7
    const/4 v11, 0x0

    .line 996
    .restart local v11    # "added":I
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5dc
    :goto_5dc
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_62c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/messenger/MessageObject;

    .line 997
    .restart local v25    # "message":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    aget-object v3, v3, v23

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5dc

    .line 998
    add-int/lit8 v11, v11, 0x1

    .line 999
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-eqz v3, :cond_621

    .line 1000
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1004
    :goto_60d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    aget-object v3, v3, v23

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5dc

    .line 1002
    :cond_621
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_60d

    .line 1007
    .end local v25    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_62c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-eqz v2, :cond_647

    .line 1008
    if-nez v11, :cond_37

    .line 1009
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    .line 1010
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    goto/16 :goto_37

    .line 1013
    :cond_647
    if-eqz v11, :cond_65e

    .line 1014
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    move/from16 v22, v0

    .line 1015
    .local v22, "index":I
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    .line 1016
    add-int v2, v22, v11

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    goto/16 :goto_37

    .line 1018
    .end local v22    # "index":I
    :cond_65e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    .line 1019
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    goto/16 :goto_37

    .line 1024
    .end local v11    # "added":I
    .end local v12    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v21    # "guid":I
    .end local v23    # "loadIndex":I
    .end local v34    # "uid":J
    :cond_671
    sget v2, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_686

    .line 1025
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_37

    .line 1026
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    goto/16 :goto_37

    .line 1028
    :cond_686
    sget v2, Lorg/telegram/messenger/NotificationCenter;->FilePreparingFailed:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_6e9

    .line 1029
    const/4 v2, 0x0

    aget-object v26, p2, v2

    check-cast v26, Lorg/telegram/messenger/MessageObject;

    .line 1030
    .local v26, "messageObject":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->loadInitialVideo:Z

    if-eqz v2, :cond_6b1

    .line 1031
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->loadInitialVideo:Z

    .line 1032
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 1033
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->currentPlayingVideoFile:Ljava/io/File;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lorg/telegram/ui/PhotoViewer;->preparePlayer(Ljava/io/File;ZZ)V

    goto/16 :goto_37

    .line 1034
    :cond_6b1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->tryStartRequestPreviewOnFinish:Z

    if-eqz v2, :cond_6d2

    .line 1035
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->releasePlayer()V

    .line 1036
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MediaController;->scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;Z)Z

    move-result v2

    if-nez v2, :cond_6d0

    const/4 v2, 0x1

    :goto_6ca
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->tryStartRequestPreviewOnFinish:Z

    goto/16 :goto_37

    :cond_6d0
    const/4 v2, 0x0

    goto :goto_6ca

    .line 1037
    :cond_6d2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v26

    if-ne v0, v2, :cond_37

    .line 1038
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->requestingPreview:Z

    .line 1039
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    goto/16 :goto_37

    .line 1041
    .end local v26    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_6e9
    sget v2, Lorg/telegram/messenger/NotificationCenter;->FileNewChunkAvailable:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_37

    .line 1042
    const/4 v2, 0x0

    aget-object v26, p2, v2

    check-cast v26, Lorg/telegram/messenger/MessageObject;

    .line 1043
    .restart local v26    # "messageObject":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v26

    if-ne v0, v2, :cond_37

    .line 1044
    const/4 v2, 0x1

    aget-object v16, p2, v2

    check-cast v16, Ljava/lang/String;

    .line 1045
    .local v16, "finalPath":Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 1046
    .local v18, "finalSize":J
    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-eqz v2, :cond_37

    .line 1047
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->requestingPreview:Z

    .line 1048
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 1049
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lorg/telegram/ui/PhotoViewer;->preparePlayer(Ljava/io/File;ZZ)V

    goto/16 :goto_37
.end method

.method public getAnimationValue()F
    .registers 2

    .prologue
    .line 5094
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->animationValue:F

    return v0
.end method

.method public isMuteVideo()Z
    .registers 2

    .prologue
    .line 3511
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    return v0
.end method

.method public isShowingImage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/String;

    .prologue
    .line 4097
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->disableShowCheck:Z

    if-nez v0, :cond_18

    if-eqz p1, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public isShowingImage(Lorg/telegram/messenger/MessageObject;)Z
    .registers 4
    .param p1, "object"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 4089
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->disableShowCheck:Z

    if-nez v0, :cond_1c

    if-eqz p1, :cond_1c

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public isShowingImage(Lorg/telegram/tgnet/TLRPC$FileLocation;)Z
    .registers 6
    .param p1, "object"    # Lorg/telegram/tgnet/TLRPC$FileLocation;

    .prologue
    .line 4093
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->disableShowCheck:Z

    if-nez v0, :cond_2a

    if-eqz p1, :cond_2a

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v0, :cond_2a

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v0, v1, :cond_2a

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    if-ne v0, v1, :cond_2a

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public isVisible()Z
    .registers 2

    .prologue
    .line 4733
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/high16 v9, 0x40400000    # 3.0f

    const/4 v8, 0x0

    .line 5474
    iget-boolean v4, p0, Lorg/telegram/ui/PhotoViewer;->canZoom:Z

    if-eqz v4, :cond_1d

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    cmpl-float v4, v4, v10

    if-nez v4, :cond_1f

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_1d

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_1f

    :cond_1d
    move v2, v3

    .line 5499
    :goto_1e
    return v2

    .line 5477
    :cond_1f
    iget-wide v4, p0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2b

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    if-eqz v4, :cond_2d

    :cond_2b
    move v2, v3

    .line 5478
    goto :goto_1e

    .line 5480
    :cond_2d
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    cmpl-float v3, v3, v10

    if-nez v3, :cond_a2

    .line 5481
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    sub-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    div-float v5, v9, v5

    mul-float/2addr v4, v5

    sub-float v0, v3, v4

    .line 5482
    .local v0, "atx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    sub-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    div-float v5, v9, v5

    mul-float/2addr v4, v5

    sub-float v1, v3, v4

    .line 5483
    .local v1, "aty":F
    invoke-direct {p0, v9}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    .line 5484
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    cmpg-float v3, v0, v3

    if-gez v3, :cond_90

    .line 5485
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    .line 5489
    :cond_82
    :goto_82
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    cmpg-float v3, v1, v3

    if-gez v3, :cond_99

    .line 5490
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    .line 5494
    :cond_8a
    :goto_8a
    invoke-direct {p0, v9, v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    .line 5498
    .end local v0    # "atx":F
    .end local v1    # "aty":F
    :goto_8d
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->doubleTap:Z

    goto :goto_1e

    .line 5486
    .restart local v0    # "atx":F
    .restart local v1    # "aty":F
    :cond_90
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    cmpl-float v3, v0, v3

    if-lez v3, :cond_82

    .line 5487
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    goto :goto_82

    .line 5491
    :cond_99
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    cmpl-float v3, v1, v3

    if-lez v3, :cond_8a

    .line 5492
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    goto :goto_8a

    .line 5496
    .end local v0    # "atx":F
    .end local v1    # "aty":F
    :cond_a2
    invoke-direct {p0, v10, v8, v8, v2}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    goto :goto_8d
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 5504
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 5400
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 14
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 5425
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_37

    .line 5426
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 5427
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    float-to-int v5, v5

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    float-to-int v6, v6

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    float-to-int v7, v7

    iget v8, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    float-to-int v8, v8

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 5428
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->postInvalidate()V

    .line 5430
    :cond_37
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 5421
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 4723
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_9

    .line 4724
    invoke-virtual {p0, v1, v1}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    .line 4730
    :cond_8
    :goto_8
    return-void

    .line 4727
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->lastTitle:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 4728
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer;->closeCaptionEnter(Z)V

    goto :goto_8
.end method

.method public onResume()V
    .registers 7

    .prologue
    .line 4716
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer;->redraw(I)V

    .line 4717
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_16

    .line 4718
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 4720
    :cond_16
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 5415
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 5406
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x3

    const/4 v5, 0x0

    const/high16 v9, 0x42c80000    # 100.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v4, 0x1

    .line 5435
    iget-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->discardTap:Z

    if-eqz v6, :cond_d

    move v4, v5

    .line 5469
    :cond_c
    :goto_c
    return v4

    .line 5438
    :cond_d
    iget-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    if-eqz v6, :cond_93

    .line 5439
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_87

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v6, :cond_87

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_87

    move v0, v4

    .line 5440
    .local v0, "drawTextureView":Z
    :goto_24
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v6, v6, v5

    if-eqz v6, :cond_89

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    if-eqz v6, :cond_89

    if-nez v0, :cond_89

    .line 5441
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v6, v6, v5

    # getter for: Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I
    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->access$10400(Lorg/telegram/ui/PhotoViewer$PhotoProgressView;)I

    move-result v1

    .line 5442
    .local v1, "state":I
    if-lez v1, :cond_89

    if-gt v1, v10, :cond_89

    .line 5443
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 5444
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 5445
    .local v3, "y":F
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_89

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_89

    .line 5446
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_89

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_89

    .line 5447
    invoke-direct {p0, v4}, Lorg/telegram/ui/PhotoViewer;->onActionClick(Z)V

    .line 5448
    invoke-direct {p0, v5, v4}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    goto :goto_c

    .end local v0    # "drawTextureView":Z
    .end local v1    # "state":I
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_87
    move v0, v5

    .line 5439
    goto :goto_24

    .line 5453
    .restart local v0    # "drawTextureView":Z
    :cond_89
    iget-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->isActionBarVisible:Z

    if-nez v6, :cond_8e

    move v5, v4

    :cond_8e
    invoke-direct {p0, v5, v4}, Lorg/telegram/ui/PhotoViewer;->toggleActionBar(ZZ)V

    goto/16 :goto_c

    .line 5454
    .end local v0    # "drawTextureView":Z
    :cond_93
    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v6, :cond_9e

    .line 5455
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/CheckBox;->performClick()Z

    goto/16 :goto_c

    .line 5456
    :cond_9e
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v7, "video"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b8

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 5457
    :cond_b8
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v6, v6, v5

    # getter for: Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I
    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->access$10400(Lorg/telegram/ui/PhotoViewer$PhotoProgressView;)I

    move-result v1

    .line 5458
    .restart local v1    # "state":I
    if-lez v1, :cond_c

    if-gt v1, v10, :cond_c

    .line 5459
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 5460
    .restart local v2    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 5461
    .restart local v3    # "y":F
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_c

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_c

    .line 5462
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_c

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_c

    .line 5463
    invoke-direct {p0, v4}, Lorg/telegram/ui/PhotoViewer;->onActionClick(Z)V

    .line 5464
    invoke-direct {p0, v5, v4}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    goto/16 :goto_c
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 5410
    const/4 v0, 0x0

    return v0
.end method

.method public openForPaint(Ljava/util/ArrayList;IILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;Z)V
    .registers 11
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "photoViewerProvider"    # Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;
    .param p5, "chatActivity"    # Lorg/telegram/ui/ChatActivity;
    .param p6, "z"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;II",
            "Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;",
            "Lorg/telegram/ui/ChatActivity;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 6067
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isPainting:Z

    .line 6068
    invoke-virtual/range {p0 .. p5}, Lorg/telegram/ui/PhotoViewer;->openPhotoForSelect(Ljava/util/ArrayList;IILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 6069
    new-instance v0, Lorg/telegram/ui/PhotoViewer$64;

    invoke-direct {v0, p0, p6}, Lorg/telegram/ui/PhotoViewer$64;-><init>(Lorg/telegram/ui/PhotoViewer;Z)V

    const-wide/16 v2, 0xc8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 6077
    :cond_13
    return-void
.end method

.method public openPhoto(Ljava/util/ArrayList;IJJLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z
    .registers 21
    .param p2, "index"    # I
    .param p3, "dialogId"    # J
    .param p5, "mergeDialogId"    # J
    .param p7, "provider"    # Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;IJJ",
            "Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 4113
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move v5, p2

    move-object/from16 v6, p7

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    invoke-virtual/range {v0 .. v11}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;JJ)Z

    move-result v0

    return v0
.end method

.method public openPhoto(Lorg/telegram/messenger/MessageObject;JJLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z
    .registers 19
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "dialogId"    # J
    .param p4, "mergeDialogId"    # J
    .param p6, "provider"    # Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    .prologue
    .line 4105
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v6, p6

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-virtual/range {v0 .. v11}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;JJ)Z

    move-result v0

    return v0
.end method

.method public openPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;JJ)Z
    .registers 42
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p5, "index"    # I
    .param p6, "provider"    # Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;
    .param p7, "chatActivity"    # Lorg/telegram/ui/ChatActivity;
    .param p8, "dialogId"    # J
    .param p10, "mDialogId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$FileLocation;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;I",
            "Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;",
            "Lorg/telegram/ui/ChatActivity;",
            "JJ)Z"
        }
    .end annotation

    .prologue
    .line 4138
    .local p3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .local p4, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v4, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    if-nez v4, :cond_1c

    if-nez p6, :cond_14

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->checkAnimation()Z

    move-result v4

    if-nez v4, :cond_1c

    :cond_14
    if-nez p1, :cond_1e

    if-nez p2, :cond_1e

    if-nez p3, :cond_1e

    if-nez p4, :cond_1e

    .line 4139
    :cond_1c
    const/4 v4, 0x0

    .line 4378
    :goto_1d
    return v4

    .line 4142
    :cond_1e
    move-object/from16 v0, p6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    invoke-interface {v0, v1, v2, v3}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v10

    .line 4143
    .local v10, "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    if-nez v10, :cond_30

    if-nez p4, :cond_30

    .line 4144
    const/4 v4, 0x0

    goto :goto_1d

    .line 4146
    :cond_30
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PhotoViewer;->lastInsets:Ljava/lang/Object;

    .line 4147
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/WindowManager;

    .line 4148
    .local v27, "wm":Landroid/view/WindowManager;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/PhotoViewer;->attachedToWindow:Z

    if-eqz v4, :cond_50

    .line 4150
    :try_start_47
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_50} :catch_50d

    .line 4158
    :cond_50
    :goto_50
    :try_start_50
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x63

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4159
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_47f

    .line 4160
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v5, -0x7ffefef8

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4167
    :goto_67
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x110

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 4168
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 4169
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setFocusable(Z)V

    .line 4170
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v27

    invoke-interface {v0, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_8c} :catch_489

    .line 4176
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/ui/PhotoViewer;->doneButtonPressed:Z

    .line 4177
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    .line 4179
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v5, "Of"

    const v6, 0x7f0703d5

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 4180
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 4181
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 4182
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->FileLoadProgressChanged:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 4183
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoaded:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 4184
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoaded:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 4185
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosLoaded:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 4186
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 4187
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->FilePreparingFailed:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 4188
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->FileNewChunkAvailable:I

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 4190
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    .line 4191
    move-wide/from16 v0, p10

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    .line 4192
    move-wide/from16 v0, p8

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    .line 4194
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_13d

    .line 4195
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    .line 4198
    :cond_13d
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    .line 4199
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/telegram/ui/PhotoViewer;->toggleActionBar(ZZ)V

    .line 4201
    if-eqz v10, :cond_4a5

    .line 4202
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/ui/PhotoViewer;->disableShowCheck:Z

    .line 4203
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    .line 4204
    if-eqz p1, :cond_161

    .line 4205
    iget-object v4, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    :cond_161
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    .line 4208
    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/PhotoViewer;->onPhotoShow(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    .line 4210
    iget-object v4, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/Rect;

    move-result-object v18

    .line 4211
    .local v18, "drawRegion":Landroid/graphics/Rect;
    iget-object v4, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getOrientation()I

    move-result v22

    .line 4212
    .local v22, "orientation":I
    iget-object v4, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getAnimatedOrientation()I

    move-result v11

    .line 4213
    .local v11, "animatedOrientation":I
    if-eqz v11, :cond_186

    .line 4214
    move/from16 v22, v11

    .line 4217
    :cond_186
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setVisibility(I)V

    .line 4218
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setRadius(I)V

    .line 4219
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setOrientation(I)V

    .line 4220
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v4, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:I

    if-eqz v4, :cond_490

    const/4 v4, 0x1

    :goto_1a9
    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/ClippingImageView;->setNeedRadius(Z)V

    .line 4221
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget-object v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4223
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setAlpha(F)V

    .line 4224
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setPivotX(F)V

    .line 4225
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setPivotY(F)V

    .line 4226
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setScaleX(F)V

    .line 4227
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setScaleY(F)V

    .line 4228
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    int-to-float v5, v5

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setTranslationX(F)V

    .line 4229
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    int-to-float v5, v5

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v7, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setTranslationY(F)V

    .line 4230
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ClippingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    .line 4231
    .local v21, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    move-object/from16 v0, v21

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4232
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    move-object/from16 v0, v21

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4233
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4235
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    move-object/from16 v0, v21

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v5, v5

    div-float v24, v4, v5

    .line 4236
    .local v24, "scaleX":F
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->y:I

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v4, v6, :cond_493

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_249
    add-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, v21

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v5, v5

    div-float v25, v4, v5

    .line 4237
    .local v25, "scaleY":F
    cmpl-float v4, v24, v25

    if-lez v4, :cond_496

    move/from16 v23, v25

    .line 4238
    .local v23, "scale":F
    :goto_258
    move-object/from16 v0, v21

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v4, v4

    mul-float v26, v4, v23

    .line 4239
    .local v26, "width":F
    move-object/from16 v0, v21

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v4, v4

    mul-float v20, v4, v23

    .line 4240
    .local v20, "height":F
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    sub-float v4, v4, v26

    const/high16 v5, 0x40000000    # 2.0f

    div-float v28, v4, v5

    .line 4241
    .local v28, "xPos":F
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->y:I

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v4, v6, :cond_49a

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_27d
    add-int/2addr v4, v5

    int-to-float v4, v4

    sub-float v4, v4, v20

    const/high16 v5, 0x40000000    # 2.0f

    div-float v29, v4, v5

    .line 4242
    .local v29, "yPos":F
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 4243
    .local v14, "clipHorizontal":I
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget-object v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageY()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v16

    .line 4245
    .local v16, "clipVertical":I
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v17, v0

    .line 4246
    .local v17, "coords2":[I
    iget-object v4, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 4247
    const/4 v4, 0x1

    aget v5, v17, v4

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v4, v6, :cond_49d

    const/4 v4, 0x0

    :goto_2b9
    sub-int v4, v5, v4

    iget v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    iget v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipTopAddition:I

    add-int v15, v4, v5

    .line 4248
    .local v15, "clipTop":I
    if-gez v15, :cond_2ca

    .line 4249
    const/4 v15, 0x0

    .line 4251
    :cond_2ca
    iget v4, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    move-object/from16 v0, v21

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v5, v4

    const/4 v4, 0x1

    aget v4, v17, v4

    iget-object v6, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v4

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v4, v7, :cond_4a1

    const/4 v4, 0x0

    :goto_2e7
    sub-int v4, v6, v4

    sub-int v4, v5, v4

    iget v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipBottomAddition:I

    add-int v13, v4, v5

    .line 4252
    .local v13, "clipBottom":I
    if-gez v13, :cond_2f2

    .line 4253
    const/4 v13, 0x0

    .line 4255
    :cond_2f2
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 4256
    move/from16 v0, v16

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 4258
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ClippingImageView;->getScaleX()F

    move-result v6

    aput v6, v4, v5

    .line 4259
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ClippingImageView;->getScaleY()F

    move-result v6

    aput v6, v4, v5

    .line 4260
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ClippingImageView;->getTranslationX()F

    move-result v6

    aput v6, v4, v5

    .line 4261
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ClippingImageView;->getTranslationY()F

    move-result v6

    aput v6, v4, v5

    .line 4262
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x4

    int-to-float v6, v14

    iget v7, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v6, v7

    aput v6, v4, v5

    .line 4263
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x5

    int-to-float v6, v15

    iget v7, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v6, v7

    aput v6, v4, v5

    .line 4264
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x6

    int-to-float v6, v13

    iget v7, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v6, v7

    aput v6, v4, v5

    .line 4265
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ClippingImageView;->getRadius()I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    .line 4267
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aput v23, v4, v5

    .line 4268
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aput v23, v4, v5

    .line 4269
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aput v28, v4, v5

    .line 4270
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x3

    aput v29, v4, v5

    .line 4271
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 4272
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x5

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 4273
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x6

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 4274
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x7

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 4276
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setAnimationProgress(F)V

    .line 4277
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->setAlpha(I)V

    .line 4278
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setAlpha(F)V

    .line 4280
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 4281
    .local v12, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const-string v7, "animationProgress"

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_510

    .line 4282
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    const-string v7, "alpha"

    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_518

    .line 4283
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const-string v7, "alpha"

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_520

    .line 4284
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v4, v5

    .line 4281
    invoke-virtual {v12, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4287
    new-instance v4, Lorg/telegram/ui/PhotoViewer$51;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/PhotoViewer$51;-><init>(Lorg/telegram/ui/PhotoViewer;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    .line 4324
    const-wide/16 v4, 0xc8

    invoke-virtual {v12, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4325
    new-instance v4, Lorg/telegram/ui/PhotoViewer$52;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/PhotoViewer$52;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v12, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/ui/PhotoViewer;->transitionAnimationStartTime:J

    .line 4341
    new-instance v4, Lorg/telegram/ui/PhotoViewer$53;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v12}, Lorg/telegram/ui/PhotoViewer$53;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4349
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_46e

    .line 4350
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4352
    :cond_46e
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    new-instance v5, Lorg/telegram/ui/PhotoViewer$54;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v10}, Lorg/telegram/ui/PhotoViewer$54;-><init>(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    # setter for: Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->drawRunnable:Ljava/lang/Runnable;
    invoke-static {v4, v5}, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->access$13102(Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 4378
    .end local v11    # "animatedOrientation":I
    .end local v12    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v13    # "clipBottom":I
    .end local v14    # "clipHorizontal":I
    .end local v15    # "clipTop":I
    .end local v16    # "clipVertical":I
    .end local v17    # "coords2":[I
    .end local v18    # "drawRegion":Landroid/graphics/Rect;
    .end local v20    # "height":F
    .end local v21    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v22    # "orientation":I
    .end local v23    # "scale":F
    .end local v24    # "scaleX":F
    .end local v25    # "scaleY":F
    .end local v26    # "width":F
    .end local v28    # "xPos":F
    .end local v29    # "yPos":F
    :goto_47c
    const/4 v4, 0x1

    goto/16 :goto_1d

    .line 4165
    :cond_47f
    :try_start_47f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x8

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_487
    .catch Ljava/lang/Exception; {:try_start_47f .. :try_end_487} :catch_489

    goto/16 :goto_67

    .line 4171
    :catch_489
    move-exception v19

    .line 4172
    .local v19, "e":Ljava/lang/Exception;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4173
    const/4 v4, 0x0

    goto/16 :goto_1d

    .line 4220
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v11    # "animatedOrientation":I
    .restart local v18    # "drawRegion":Landroid/graphics/Rect;
    .restart local v22    # "orientation":I
    :cond_490
    const/4 v4, 0x0

    goto/16 :goto_1a9

    .line 4236
    .restart local v21    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v24    # "scaleX":F
    :cond_493
    const/4 v4, 0x0

    goto/16 :goto_249

    .restart local v25    # "scaleY":F
    :cond_496
    move/from16 v23, v24

    .line 4237
    goto/16 :goto_258

    .line 4241
    .restart local v20    # "height":F
    .restart local v23    # "scale":F
    .restart local v26    # "width":F
    .restart local v28    # "xPos":F
    :cond_49a
    const/4 v4, 0x0

    goto/16 :goto_27d

    .line 4247
    .restart local v14    # "clipHorizontal":I
    .restart local v16    # "clipVertical":I
    .restart local v17    # "coords2":[I
    .restart local v29    # "yPos":F
    :cond_49d
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto/16 :goto_2b9

    .line 4251
    .restart local v15    # "clipTop":I
    :cond_4a1
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto/16 :goto_2e7

    .line 4360
    .end local v11    # "animatedOrientation":I
    .end local v14    # "clipHorizontal":I
    .end local v15    # "clipTop":I
    .end local v16    # "clipVertical":I
    .end local v17    # "coords2":[I
    .end local v18    # "drawRegion":Landroid/graphics/Rect;
    .end local v20    # "height":F
    .end local v21    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v22    # "orientation":I
    .end local v23    # "scale":F
    .end local v24    # "scaleX":F
    .end local v25    # "scaleY":F
    .end local v26    # "width":F
    .end local v28    # "xPos":F
    .end local v29    # "yPos":F
    :cond_4a5
    if-eqz p4, :cond_4e2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4e2

    .line 4361
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_505

    .line 4362
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v5, -0x7ffeff00

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4368
    :goto_4bd
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x110

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 4369
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v27

    invoke-interface {v0, v4, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4370
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 4371
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setFocusable(Z)V

    .line 4374
    :cond_4e2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->setAlpha(I)V

    .line 4375
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setAlpha(F)V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    .line 4376
    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/PhotoViewer;->onPhotoShow(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    goto/16 :goto_47c

    .line 4366
    :cond_505
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_4bd

    .line 4151
    :catch_50d
    move-exception v4

    goto/16 :goto_50

    .line 4281
    :array_510
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 4282
    :array_518
    .array-data 4
        0x0
        0xff
    .end array-data

    .line 4283
    :array_520
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public openPhoto(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z
    .registers 15
    .param p1, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p2, "provider"    # Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    .line 4109
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, v1

    move-object v6, p2

    move-object v7, v1

    move-wide v10, v8

    invoke-virtual/range {v0 .. v11}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;JJ)Z

    move-result v0

    return v0
.end method

.method public openPhotoForSelect(Ljava/util/ArrayList;IILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;)Z
    .registers 18
    .param p2, "index"    # I
    .param p3, "type"    # I
    .param p4, "provider"    # Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;
    .param p5, "chatActivity"    # Lorg/telegram/ui/ChatActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;II",
            "Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;",
            "Lorg/telegram/ui/ChatActivity;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 4117
    .local p1, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iput p3, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    .line 4118
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    if-eqz v0, :cond_1f

    .line 4119
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v1, v0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_32

    const-string v0, "Set"

    const v2, 0x7f0704f0

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4121
    :cond_1f
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v11}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;JJ)Z

    move-result v0

    return v0

    .line 4119
    :cond_32
    const-string v0, "Send"

    const v2, 0x7f0704d4

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c
.end method

.method public setAnimationValue(F)V
    .registers 3
    .param p1, "value"    # F

    .prologue
    .line 5089
    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->animationValue:F

    .line 5090
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    .line 5091
    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .registers 16
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1125
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    if-ne v0, p1, :cond_5

    .line 2299
    :goto_4
    return-void

    .line 1128
    :cond_5
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    .line 1129
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    const v2, 0x7f0a0080

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    .line 1131
    sget-object v0, Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_64

    .line 1132
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    sput-object v0, Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    .line 1133
    sget-object v0, Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02009b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1134
    sget-object v0, Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02008f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1135
    sget-object v0, Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1136
    sget-object v0, Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02022f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1139
    :cond_64
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    .line 1141
    new-instance v0, Lorg/telegram/ui/PhotoViewer$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PhotoViewer$2;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    .line 1271
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1272
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 1273
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 1275
    new-instance v0, Lorg/telegram/ui/Components/ClippingImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/ClippingImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    .line 1276
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClippingImageView;->setAnimationValues([[F)V

    .line 1277
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/16 v2, 0x28

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1279
    new-instance v0, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    .line 1280
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setFocusable(Z)V

    .line 1281
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/16 v4, 0x33

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1282
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_db

    .line 1283
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setFitsSystemWindows(Z)V

    .line 1284
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$3;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 1296
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setSystemUiVisibility(I)V

    .line 1299
    :cond_db
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 1300
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1301
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1302
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1303
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1304
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x63

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1305
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_9df

    .line 1306
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, -0x7ffefef8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1314
    :goto_10a
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 1315
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 1316
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitleColor(I)V

    .line 1317
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 1318
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_9e7

    const/4 v0, 0x1

    :goto_12d
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 1319
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x40ffffff

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 1320
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200dd

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 1321
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "Of"

    const v2, 0x7f0703d5

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1322
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1324
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$4;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 1566
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v10

    .line 1568
    .local v10, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/16 v0, 0xd

    const v1, 0x7f020138

    invoke-virtual {v10, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->masksItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1570
    const/4 v0, 0x0

    const v1, 0x7f0200e7

    invoke-virtual {v10, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1571
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0xb

    const-string v2, "OpenInExternalApp"

    const v3, 0x7f0703e2

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 1572
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x2

    const-string v2, "ShowAllMedia"

    const v3, 0x7f07050f

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 1573
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0xa

    const-string v2, "ShareFile"

    const v3, 0x7f0704fe

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 1574
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x1

    const-string v2, "SaveToGallery"

    const v3, 0x7f0704b2

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 1575
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x6

    const-string v2, "Delete"

    const v3, 0x7f0701c7

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 1577
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    .line 1578
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1579
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    const/16 v3, 0x30

    const/16 v4, 0x53

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1581
    new-instance v0, Lorg/telegram/ui/PhotoViewer$5;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/PhotoViewer$5;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    .line 1587
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1588
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1589
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1590
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 1591
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1592
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1593
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1594
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1595
    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v13, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x53

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x42400000    # 48.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v12, v13, v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1596
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$6;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1605
    new-instance v0, Lorg/telegram/ui/PhotoViewer$7;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/PhotoViewer$7;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    .line 1611
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1612
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1613
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1614
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 1615
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1616
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1617
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1618
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1619
    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v13, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x53

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x42400000    # 48.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v12, v13, v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1620
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$8;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1629
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v1, 0x0

    new-instance v2, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-direct {v2, p0, v3, v4}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Landroid/view/View;)V

    aput-object v2, v0, v1

    .line 1630
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    .line 1631
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v1, 0x1

    new-instance v2, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-direct {v2, p0, v3, v4}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Landroid/view/View;)V

    aput-object v2, v0, v1

    .line 1632
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    .line 1633
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v1, 0x2

    new-instance v2, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-direct {v2, p0, v3, v4}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Landroid/view/View;)V

    aput-object v2, v0, v1

    .line 1634
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    .line 1636
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    .line 1637
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    const v1, 0x7f02024e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1638
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1639
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    const v1, 0x40ffffff

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1640
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    const/16 v2, 0x32

    const/4 v3, -0x1

    const/16 v4, 0x35

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1641
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$9;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1648
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    .line 1649
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1650
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1651
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1652
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1653
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1654
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1655
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1656
    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v13, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x33

    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v4, 0x40a00000    # 5.0f

    const/high16 v5, 0x42700000    # 60.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v12, v13, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1658
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    .line 1659
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1660
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1661
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1662
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1663
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1664
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1665
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1666
    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v13, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x33

    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v4, 0x41c80000    # 25.0f

    const/high16 v5, 0x42480000    # 50.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v12, v13, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1668
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_5f3

    .line 1669
    new-instance v0, Lorg/telegram/ui/Components/SeekBar;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

    .line 1670
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

    const v1, 0x66ffffff

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/SeekBar;->setColors(III)V

    .line 1671
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$10;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SeekBar;->setDelegate(Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;)V

    .line 1683
    new-instance v0, Lorg/telegram/ui/PhotoViewer$11;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/PhotoViewer$11;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    .line 1742
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 1743
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/16 v4, 0x33

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1745
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;

    .line 1746
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1747
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;

    const/16 v2, 0x30

    const/16 v3, 0x30

    const/16 v4, 0x33

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1748
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$12;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$12;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1765
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    .line 1766
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1767
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1768
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1769
    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    iget-object v13, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0x35

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x41000000    # 8.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v12, v13, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1771
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;

    .line 1772
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1773
    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v13, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;

    const/4 v0, -0x1

    const/high16 v1, 0x42500000    # 52.0f

    const/16 v2, 0x53

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v12, v13, v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1775
    new-instance v0, Lorg/telegram/ui/Components/VideoTimelineView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/VideoTimelineView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    .line 1776
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$13;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$13;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoTimelineView;->setDelegate(Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;)V

    .line 1803
    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;

    iget-object v13, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    const/4 v0, -0x1

    const/high16 v1, 0x42300000    # 44.0f

    const/16 v2, 0x33

    const/4 v3, 0x0

    const/high16 v4, 0x41000000    # 8.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v12, v13, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1805
    new-instance v0, Lorg/telegram/ui/Components/RadialProgressView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    .line 1806
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 1807
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const v1, 0x7f02009b

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setBackgroundResource(I)V

    .line 1808
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 1809
    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v13, p0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v0, 0x36

    const/high16 v1, 0x42580000    # 54.0f

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x42700000    # 60.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v12, v13, v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1811
    new-instance v0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    .line 1812
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setBackgroundColor(I)V

    .line 1813
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->updateSelectedCount(IZ)V

    .line 1814
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/high16 v1, 0x42f00000    # 120.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setTranslationY(F)V

    .line 1815
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v0, v0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    const-string v1, "Done"

    const v2, 0x7f0701e8

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1816
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v2, -0x1

    const/16 v3, 0x30

    const/16 v4, 0x53

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1817
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v0, v0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->cancelButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$14;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$14;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1826
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v0, v0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$15;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$15;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1834
    new-instance v0, Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    .line 1835
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    const/high16 v1, 0x42f00000    # 120.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->setTranslationY(F)V

    .line 1836
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->setVisibility(I)V

    .line 1837
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->setBackgroundColor(I)V

    .line 1838
    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v13, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    const/4 v0, -0x1

    const/high16 v1, 0x428c0000    # 70.0f

    const/16 v2, 0x53

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v12, v13, v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1841
    :cond_5f3
    new-instance v0, Lorg/telegram/ui/PhotoViewer$16;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/PhotoViewer$16;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    .line 1857
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setBackgroundColor(I)V

    .line 1858
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v2, -0x1

    const/16 v3, 0x30

    const/16 v4, 0x53

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1859
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v0, v0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->cancelButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$17;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$17;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1869
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v0, v0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$18;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$18;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1908
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1909
    .local v8, "itemsLayout":Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1910
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v1, -0x2

    const/16 v2, 0x30

    const/16 v3, 0x31

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1912
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Landroid/widget/ImageView;

    .line 1913
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1914
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Landroid/widget/ImageView;

    const v1, 0x7f02021b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1915
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Landroid/widget/ImageView;

    const v1, 0x40ffffff

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1916
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Landroid/widget/ImageView;

    const/16 v1, 0x38

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1917
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$19;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$19;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1924
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->paintItem:Landroid/widget/ImageView;

    .line 1925
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->paintItem:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1926
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->paintItem:Landroid/widget/ImageView;

    const v1, 0x7f020213

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1927
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->paintItem:Landroid/widget/ImageView;

    const v1, 0x40ffffff

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1928
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->paintItem:Landroid/widget/ImageView;

    const/16 v1, 0x38

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1929
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->paintItem:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$20;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$20;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1936
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    .line 1937
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1938
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    const v1, 0x7f020210

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1939
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    const v1, 0x40ffffff

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1940
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    const/16 v1, 0x38

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1941
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$21;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$21;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1948
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionItem:Landroid/widget/ImageView;

    .line 1949
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionItem:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1950
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionItem:Landroid/widget/ImageView;

    const v1, 0x40ffffff

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1951
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionItem:Landroid/widget/ImageView;

    const/16 v1, 0x38

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1952
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionItem:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$22;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$22;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1959
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    .line 1960
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1961
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const v1, 0x40ffffff

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1962
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const/16 v1, 0x38

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1963
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$23;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$23;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1971
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    .line 1972
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1973
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    const v1, 0x40ffffff

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1974
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    const/16 v1, 0x38

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1975
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$24;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$24;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1983
    new-instance v0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    .line 1984
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setBackgroundColor(I)V

    .line 1985
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->updateSelectedCount(IZ)V

    .line 1986
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    .line 1987
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v2, -0x1

    const/16 v3, 0x30

    const/16 v4, 0x53

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1988
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v0, v0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->cancelButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$25;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$25;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1997
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v0, v0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$26;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$26;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2008
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    .line 2009
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2010
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2011
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2012
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 2013
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    const v1, -0xc2c2c3

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2014
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2015
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    const-string v1, "Reset"

    const v2, 0x7f0701a7

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2016
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2017
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/16 v4, 0x31

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2018
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$27;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$27;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2025
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->gestureDetector:Landroid/view/GestureDetector;

    .line 2026
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 2028
    new-instance v7, Lorg/telegram/ui/PhotoViewer$28;

    invoke-direct {v7, p0}, Lorg/telegram/ui/PhotoViewer$28;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    .line 2047
    .local v7, "imageReceiverDelegate":Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 2048
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeAlpha(B)V

    .line 2049
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    .line 2050
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 2051
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 2052
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeAlpha(B)V

    .line 2053
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    .line 2054
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 2055
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 2056
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeAlpha(B)V

    .line 2057
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    .line 2058
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 2060
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 2061
    .local v9, "manager":Landroid/view/WindowManager;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v11

    .line 2063
    .local v11, "rotation":I
    new-instance v0, Lorg/telegram/ui/PhotoViewer$29;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f02024c

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/ui/PhotoViewer$29;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    .line 2069
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setDrawBackground(Z)V

    .line 2070
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setSize(I)V

    .line 2071
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setCheckOffset(I)V

    .line 2072
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const v1, -0xc33511

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/CheckBox;->setColor(II)V

    .line 2073
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 2074
    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v13, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/16 v0, 0x2d

    const/high16 v1, 0x42340000    # 45.0f

    const/16 v2, 0x35

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eq v11, v4, :cond_909

    const/4 v4, 0x1

    if-ne v11, v4, :cond_9ea

    :cond_909
    const/high16 v4, 0x42680000    # 58.0f

    :goto_90b
    const/high16 v5, 0x41200000    # 10.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v12, v13, v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2075
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_92a

    .line 2076
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2078
    :cond_92a
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$30;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$30;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2089
    new-instance v0, Lorg/telegram/ui/PhotoViewer$31;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/telegram/ui/PhotoViewer$31;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    .line 2115
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$32;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$32;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setDelegate(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;)V

    .line 2144
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/16 v4, 0x53

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2146
    new-instance v0, Lorg/telegram/ui/PhotoViewer$33;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/PhotoViewer$33;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 2162
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setTag(Ljava/lang/Object;)V

    .line 2163
    new-instance v0, Lorg/telegram/ui/PhotoViewer$34;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/PhotoViewer$34;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    .line 2169
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setOrientation(I)V

    .line 2170
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 2171
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setBackgroundColor(I)V

    .line 2172
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2173
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 2174
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOverScrollMode(I)V

    .line 2175
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, -0x1

    const/16 v3, 0x6e

    const/16 v4, 0x53

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2177
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    new-instance v6, Lorg/telegram/ui/PhotoViewer$35;

    invoke-direct {v6, p0}, Lorg/telegram/ui/PhotoViewer$35;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Adapters/MentionsAdapter;-><init>(Landroid/content/Context;ZJLorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 2259
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setAllowNewMentions(Z)V

    .line 2261
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$36;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$36;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 2278
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$37;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$37;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    goto/16 :goto_4

    .line 1311
    .end local v7    # "imageReceiverDelegate":Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;
    .end local v8    # "itemsLayout":Landroid/widget/LinearLayout;
    .end local v9    # "manager":Landroid/view/WindowManager;
    .end local v10    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .end local v11    # "rotation":I
    :cond_9df
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto/16 :goto_10a

    .line 1318
    :cond_9e7
    const/4 v0, 0x0

    goto/16 :goto_12d

    .line 2074
    .restart local v7    # "imageReceiverDelegate":Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;
    .restart local v8    # "itemsLayout":Landroid/widget/LinearLayout;
    .restart local v9    # "manager":Landroid/view/WindowManager;
    .restart local v10    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .restart local v11    # "rotation":I
    :cond_9ea
    const/high16 v4, 0x42880000    # 68.0f

    goto/16 :goto_90b
.end method

.method public setParentAlert(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .registers 2
    .param p1, "alert"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 1121
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    .line 1122
    return-void
.end method

.method public setParentChatActivity(Lorg/telegram/ui/ChatActivity;)V
    .registers 2
    .param p1, "chatActivity"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 4101
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    .line 4102
    return-void
.end method

.method public showAlertDialog(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V
    .registers 5
    .param p1, "builder"    # Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .prologue
    .line 2569
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    if-nez v1, :cond_5

    .line 2592
    :goto_4
    return-void

    .line 2573
    :cond_5
    :try_start_5
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v1, :cond_11

    .line 2574
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 2575
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_2d

    .line 2581
    :cond_11
    :goto_11
    :try_start_11
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 2582
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2583
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    new-instance v2, Lorg/telegram/ui/PhotoViewer$39;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoViewer$39;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_27} :catch_28

    goto :goto_4

    .line 2589
    :catch_28
    move-exception v0

    .line 2590
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 2577
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2d
    move-exception v0

    .line 2578
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method public updateMuteButton()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 5671
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_f

    .line 5672
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setMute(Z)V

    .line 5674
    :cond_f
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    if-eqz v0, :cond_54

    .line 5675
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "AttachGif"

    const v2, 0x7f0700bf

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 5676
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 5677
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    const v1, 0x7f020297

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5678
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_48

    .line 5679
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 5680
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 5681
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 5683
    :cond_48
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    const v1, 0x46ea6000    # 30000.0f

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoTimelineView;->setMaxProgressDiff(F)V

    .line 5695
    :goto_53
    return-void

    .line 5685
    :cond_54
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "AttachVideo"

    const v2, 0x7f0700c4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 5686
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentSubtitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 5687
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    const v1, 0x7f020298

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5688
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_88

    .line 5689
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 5690
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 5691
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 5693
    :cond_88
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/VideoTimelineView;->setMaxProgressDiff(F)V

    goto :goto_53
.end method
