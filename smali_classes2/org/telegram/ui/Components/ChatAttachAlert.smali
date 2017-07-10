.class public Lorg/telegram/ui/Components/ChatAttachAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "ChatAttachAlert.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;
.implements Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;,
        Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;,
        Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;,
        Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;,
        Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;,
        Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;

.field private animateCameraValues:[I

.field private attachPhotoLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

.field private attachView:Landroid/view/ViewGroup;

.field private baseFragment:Lorg/telegram/ui/ChatActivity;

.field private cameraAnimationInProgress:Z

.field private cameraFile:Ljava/io/File;

.field private cameraIcon:Landroid/widget/FrameLayout;

.field private cameraInitied:Z

.field private cameraOpenProgress:F

.field private cameraOpened:Z

.field private cameraPanel:Landroid/widget/FrameLayout;

.field private cameraPhoto:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private cameraView:Lorg/telegram/messenger/camera/CameraView;

.field private cameraViewLocation:[I

.field private cameraViewOffsetX:I

.field private cameraViewOffsetY:I

.field private ciclePaint:Landroid/graphics/Paint;

.field private currentHintAnimation:Landroid/animation/AnimatorSet;

.field private decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

.field private deviceHasGoodCamera:Z

.field private dragging:Z

.field private flashAnimationInProgress:Z

.field private flashModeButton:[Landroid/widget/ImageView;

.field private hideHintRunnable:Ljava/lang/Runnable;

.field private hintShowed:Z

.field private hintTextView:Landroid/widget/TextView;

.field private ignoreLayout:Z

.field private innerAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private lastY:F

.field private layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private lineView:Landroid/view/View;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private loading:Z

.field private maybeStartDraging:Z

.field private mediaCaptured:Z

.field private paused:Z

.field private photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

.field private pressed:Z

.field private progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private recordTime:Landroid/widget/TextView;

.field private requestingPermissions:Z

.field private revealAnimationInProgress:Z

.field private revealRadius:F

.field private revealX:I

.field private revealY:I

.field private scrollOffsetY:I

.field private sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private shutterButton:Lorg/telegram/ui/Components/ShutterButton;

.field private switchCameraButton:Landroid/widget/ImageView;

.field private takingPhoto:Z

.field private useRevealAnimation:Z

.field private videoRecordRunnable:Ljava/lang/Runnable;

.field private videoRecordTime:I

.field private viewPosition:[I

.field private views:[Landroid/view/View;

.field private viewsCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Components/RecyclerListView$Holder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentFragment"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 356
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 97
    const/16 v0, 0x14

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewsCache:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->innerAnimators:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ciclePaint:Landroid/graphics/Paint;

    .line 115
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    .line 117
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    .line 118
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewPosition:[I

    .line 125
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animateCameraValues:[I

    .line 128
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 148
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->loading:Z

    .line 357
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    .line 358
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ciclePaint:Landroid/graphics/Paint;

    const-string v1, "dialogBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 359
    invoke-virtual {p0, p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->setDelegate(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;)V

    .line 360
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->setUseRevealAnimation(Z)V

    .line 361
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCamera(Z)V

    .line 362
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z

    if-eqz v0, :cond_6c

    .line 363
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraController;->initCamera()V

    .line 365
    :cond_6c
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 366
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadInlineHints:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 367
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->cameraInitied:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 368
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020252

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 370
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    .line 493
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setWillNotDraw(Z)V

    .line 494
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 495
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 496
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setOrientation(I)V

    .line 497
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->adapter:Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 498
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 499
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEnabled(Z)V

    .line 500
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string v1, "dialogScrollGlow"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    .line 501
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->addItemDecoration(Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;)V

    .line 511
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 528
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    sget v1, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    const/4 v2, 0x0

    sget v3, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 530
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$4;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachView:Landroid/view/ViewGroup;

    .line 555
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    const/16 v1, 0x8

    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    aput-object v2, v0, v1

    .line 556
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 557
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 558
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 559
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 560
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;)V

    .line 561
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 562
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOverScrollMode(I)V

    .line 563
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, -0x1

    const/high16 v3, 0x42a00000    # 80.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 564
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$5;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$5;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    .line 570
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setOrientation(I)V

    .line 571
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 572
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$6;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 599
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$7;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 606
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    const/16 v1, 0x9

    new-instance v2, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    aput-object v2, v0, v1

    .line 607
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2ad

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2ad

    .line 608
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string v1, "PermissionStorage"

    const v2, 0x7f070440

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setTextSize(I)V

    .line 614
    :goto_1c0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/4 v2, -0x1

    const/high16 v3, 0x42a00000    # 80.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 615
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 617
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    const/16 v1, 0xa

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$8;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert$8;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->lineView:Landroid/view/View;

    aput-object v2, v0, v1

    .line 623
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->lineView:Landroid/view/View;

    const-string v1, "dialogGrayLine"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 624
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->lineView:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/16 v5, 0x33

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 625
    const/16 v0, 0x8

    new-array v9, v0, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const-string v1, "ChatCamera"

    const v2, 0x7f070166

    .line 626
    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x1

    const-string v1, "ChatGallery"

    const v2, 0x7f070168

    .line 627
    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x2

    const-string v1, "ChatVideo"

    const v2, 0x7f07016d

    .line 628
    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x3

    const-string v1, "AttachMusic"

    const v2, 0x7f0700c1

    .line 629
    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x4

    const-string v1, "ChatDocument"

    const v2, 0x7f070167

    .line 630
    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x5

    const-string v1, "AttachContact"

    const v2, 0x7f0700bc

    .line 631
    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x6

    const-string v1, "ChatLocation"

    const v2, 0x7f07016b

    .line 632
    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x7

    const-string v1, ""

    aput-object v1, v9, v0

    .line 635
    .local v9, "items":[Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .local v7, "a":I
    :goto_25f
    const/16 v0, 0x8

    if-ge v7, v0, :cond_2c4

    .line 636
    new-instance v8, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    invoke-direct {v8, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    .line 637
    .local v8, "attachButton":Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;
    aget-object v0, v9, v7

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_attachButtonDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v7

    invoke-virtual {v8, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTextAndIcon(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 638
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachView:Landroid/view/ViewGroup;

    const/16 v1, 0x55

    const/16 v2, 0x5a

    const/16 v3, 0x33

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 639
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTag(Ljava/lang/Object;)V

    .line 640
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    aput-object v8, v0, v7

    .line 641
    const/4 v0, 0x7

    if-ne v7, v0, :cond_2a2

    .line 642
    iput-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    .line 643
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$4300(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 645
    :cond_2a2
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$9;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 635
    add-int/lit8 v7, v7, 0x1

    goto :goto_25f

    .line 611
    .end local v7    # "a":I
    .end local v8    # "attachButton":Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;
    .end local v9    # "items":[Ljava/lang/CharSequence;
    :cond_2ad
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string v1, "NoPhotos"

    const v2, 0x7f070362

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setTextSize(I)V

    goto/16 :goto_1c0

    .line 653
    .restart local v7    # "a":I
    .restart local v9    # "items":[Ljava/lang/CharSequence;
    :cond_2c4
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    .line 654
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const-string v2, "chat_gifSaveHintBackground"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 655
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const-string v1, "chat_gifSaveHintText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 656
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 657
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 658
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const-string v1, "AttachBotsHelp"

    const v2, 0x7f0700bb

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 660
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 661
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const v1, 0x7f020240

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 662
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 663
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachView:Landroid/view/ViewGroup;

    iget-object v11, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, 0x42000000    # 32.0f

    const/16 v2, 0x55

    const/high16 v3, 0x40a00000    # 5.0f

    const/4 v4, 0x0

    const/high16 v5, 0x40a00000    # 5.0f

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v10, v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 665
    const/4 v7, 0x0

    :goto_34f
    const/16 v0, 0x8

    if-ge v7, v0, :cond_361

    .line 666
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewsCache:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->createHolder()Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    add-int/lit8 v7, v7, 0x1

    goto :goto_34f

    .line 669
    :cond_361
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->loading:Z

    if-eqz v0, :cond_498

    .line 670
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    .line 675
    :goto_36a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_49f

    .line 676
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->recordTime:Landroid/widget/TextView;

    .line 677
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->recordTime:Landroid/widget/TextView;

    const v1, 0x7f020265

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 678
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->recordTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v2, 0x66000000

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 679
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->recordTime:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 680
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->recordTime:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 681
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->recordTime:Landroid/widget/TextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 682
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->recordTime:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 683
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->recordTime:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 684
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->recordTime:Landroid/widget/TextView;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 685
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v11, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->recordTime:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x31

    const/4 v3, 0x0

    const/high16 v4, 0x41800000    # 16.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v10, v11, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 687
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$10;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$10;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    .line 710
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 711
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 712
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    const/16 v3, 0x64

    const/16 v4, 0x53

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 714
    new-instance v0, Lorg/telegram/ui/Components/ShutterButton;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/ShutterButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    .line 715
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    const/16 v2, 0x54

    const/16 v3, 0x54

    const/16 v4, 0x11

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 716
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$11;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$11;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ChatActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ShutterButton;->setDelegate(Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;)V

    .line 912
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->switchCameraButton:Landroid/widget/ImageView;

    .line 913
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->switchCameraButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 914
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->switchCameraButton:Landroid/widget/ImageView;

    const/16 v2, 0x30

    const/16 v3, 0x30

    const/16 v4, 0x15

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 915
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->switchCameraButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$12;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$12;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 935
    const/4 v7, 0x0

    :goto_459
    const/4 v0, 0x2

    if-ge v7, v0, :cond_49f

    .line 936
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v7

    .line 937
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v0, v0, v7

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 938
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v0, v0, v7

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 939
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v1, v1, v7

    const/16 v2, 0x30

    const/16 v3, 0x30

    const/16 v4, 0x33

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 940
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v0, v0, v7

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$13;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$13;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 935
    add-int/lit8 v7, v7, 0x1

    goto :goto_459

    .line 672
    :cond_498
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    goto/16 :goto_36a

    .line 975
    :cond_49f
    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraAnimationInProgress:Z

    return v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraAnimationInProgress:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    return v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/MotionEvent;)Z
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->processTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:I

    return v0
.end method

.method static synthetic access$1400()I
    .registers 1

    .prologue
    .line 79
    sget v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingTop:I

    return v0
.end method

.method static synthetic access$1500()I
    .registers 1

    .prologue
    .line 79
    sget v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingTop:I

    return v0
.end method

.method static synthetic access$1600()I
    .registers 1

    .prologue
    .line 79
    sget v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    return v0
.end method

.method static synthetic access$1700()I
    .registers 1

    .prologue
    .line 79
    sget v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/RecyclerListView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateLayout()V

    return-void
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCameraViewPosition()V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->useRevealAnimation:Z

    return v0
.end method

.method static synthetic access$2300()I
    .registers 1

    .prologue
    .line 79
    sget v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    return v0
.end method

.method static synthetic access$2400()I
    .registers 1

    .prologue
    .line 79
    sget v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    return v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealAnimationInProgress:Z

    return v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    return v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    return v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/ChatAttachAlert;)F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealRadius:F

    return v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/Paint;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ciclePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$3000()I
    .registers 1

    .prologue
    .line 79
    sget v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    return v0
.end method

.method static synthetic access$3100()I
    .registers 1

    .prologue
    .line 79
    sget v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    return v0
.end method

.method static synthetic access$3200()I
    .registers 1

    .prologue
    .line 79
    sget v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingTop:I

    return v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintShowed:Z

    return v0
.end method

.method static synthetic access$3402(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintShowed:Z

    return p1
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->hideHint()V

    return-void
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/RecyclerListView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/EmptyTextProgressView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    return-object v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->lineView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ChatActivity;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/ChatAttachAlert;)[Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z

    return v0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->openCamera()V

    return-void
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ShutterButton;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    return-object v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->switchCameraButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/ChatAttachAlert;)[Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaCaptured:Z

    return v0
.end method

.method static synthetic access$4702(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaCaptured:Z

    return p1
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->takingPhoto:Z

    return v0
.end method

.method static synthetic access$4802(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->takingPhoto:Z

    return p1
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/messenger/camera/CameraView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    return-object v0
.end method

.method static synthetic access$5002(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->requestingPermissions:Z

    return p1
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$5102(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/io/File;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 79
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->recordTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videoRecordTime:I

    return v0
.end method

.method static synthetic access$5302(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # I

    .prologue
    .line 79
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videoRecordTime:I

    return p1
.end method

.method static synthetic access$5308(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videoRecordTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videoRecordTime:I

    return v0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videoRecordRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5402(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 79
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videoRecordRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPhoto:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5502(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 79
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPhoto:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->resetRecordState()V

    return-void
.end method

.method static synthetic access$5702(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraInitied:Z

    return p1
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashAnimationInProgress:Z

    return v0
.end method

.method static synthetic access$5802(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashAnimationInProgress:Z

    return p1
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setCameraFlashModeIcon(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    return-object v0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$6002(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 79
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hideHintRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6302(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 79
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hideHintRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$6500(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewsCache:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ChatAttachAlert;Z)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setUseRevealAnimation(Z)V

    return-void
.end method

.method static synthetic access$7000(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$7202(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 79
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$7300(Lorg/telegram/ui/Components/ChatAttachAlert;Z)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->onRevealAnimationEnd(Z)V

    return-void
.end method

.method static synthetic access$7400(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$7702(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 79
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ignoreLayout:Z

    return v0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ignoreLayout:Z

    return p1
.end method

.method private applyCameraViewPosition()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x42a00000    # 80.0f

    .line 1384
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v4, :cond_9a

    .line 1385
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    if-nez v4, :cond_20

    .line 1386
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v5, v5, v7

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/camera/CameraView;->setTranslationX(F)V

    .line 1387
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v5, v5, v8

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/camera/CameraView;->setTranslationY(F)V

    .line 1389
    :cond_20
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v5, v5, v7

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1390
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v5, v5, v8

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1391
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetX:I

    sub-int v1, v4, v5

    .line 1392
    .local v1, "finalWidth":I
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetY:I

    sub-int v0, v4, v5

    .line 1395
    .local v0, "finalHeight":I
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    if-nez v4, :cond_78

    .line 1396
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetX:I

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/camera/CameraView;->setClipLeft(I)V

    .line 1397
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetY:I

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/camera/CameraView;->setClipTop(I)V

    .line 1398
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/CameraView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1399
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v4, v0, :cond_66

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v4, v1, :cond_78

    .line 1400
    :cond_66
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1401
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1402
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v4, v2}, Lorg/telegram/messenger/camera/CameraView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1403
    move-object v3, v2

    .line 1404
    .local v3, "layoutParamsFinal":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlert$17;

    invoke-direct {v4, p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert$17;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1415
    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "layoutParamsFinal":Landroid/widget/FrameLayout$LayoutParams;
    :cond_78
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1416
    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v4, v0, :cond_88

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v4, v1, :cond_9a

    .line 1417
    :cond_88
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1418
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1419
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1420
    move-object v3, v2

    .line 1421
    .restart local v3    # "layoutParamsFinal":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlert$18;

    invoke-direct {v4, p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert$18;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1431
    .end local v0    # "finalHeight":I
    .end local v1    # "finalWidth":I
    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "layoutParamsFinal":Landroid/widget/FrameLayout$LayoutParams;
    :cond_9a
    return-void
.end method

.method private checkCameraViewPosition()V
    .registers 12

    .prologue
    const/high16 v10, 0x42a00000    # 80.0f

    const/high16 v9, -0x3cea0000    # -150.0f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1333
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z

    if-nez v4, :cond_b

    .line 1381
    :goto_a
    return-void

    .line 1336
    :cond_b
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v2

    .line 1337
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_12
    if-ge v0, v2, :cond_2a

    .line 1338
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1339
    .local v1, "child":Landroid/view/View;
    instance-of v4, v1, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    if-eqz v4, :cond_d4

    .line 1340
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_3e

    .line 1341
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    if-nez v4, :cond_3e

    .line 1376
    .end local v1    # "child":Landroid/view/View;
    :cond_2a
    iput v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetX:I

    .line 1377
    iput v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetY:I

    .line 1378
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    aput v5, v4, v7

    .line 1379
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aput v7, v4, v8

    .line 1380
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->applyCameraViewPosition()V

    goto :goto_a

    .line 1345
    .restart local v1    # "child":Landroid/view/View;
    :cond_3e
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    invoke-virtual {v1, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1346
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v5, v4, v7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getLeftInset()I

    move-result v6

    sub-int/2addr v5, v6

    aput v5, v4, v7

    .line 1347
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getX()F

    move-result v4

    sget v5, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getLeftInset()I

    move-result v5

    int-to-float v5, v5

    sub-float v3, v4, v5

    .line 1348
    .local v3, "listViewX":F
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v4, v4, v7

    int-to-float v4, v4

    cmpg-float v4, v4, v3

    if-gez v4, :cond_c4

    .line 1349
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v4, v4, v7

    int-to-float v4, v4

    sub-float v4, v3, v4

    float-to-int v4, v4

    iput v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetX:I

    .line 1350
    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetX:I

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    if-lt v4, v5, :cond_ba

    .line 1351
    iput v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetX:I

    .line 1352
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    aput v5, v4, v7

    .line 1353
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aput v7, v4, v8

    .line 1360
    :goto_88
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_d1

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v4, v4, v8

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    if-ge v4, v5, :cond_d1

    .line 1361
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v5, v5, v8

    sub-int/2addr v4, v5

    iput v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetY:I

    .line 1362
    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetY:I

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    if-lt v4, v5, :cond_c7

    .line 1363
    iput v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetY:I

    .line 1364
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    aput v5, v4, v7

    .line 1365
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aput v7, v4, v8

    .line 1372
    :goto_b5
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->applyCameraViewPosition()V

    goto/16 :goto_a

    .line 1355
    :cond_ba
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v5, v4, v7

    iget v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetX:I

    add-int/2addr v5, v6

    aput v5, v4, v7

    goto :goto_88

    .line 1358
    :cond_c4
    iput v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetX:I

    goto :goto_88

    .line 1367
    :cond_c7
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v5, v4, v8

    iget v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetY:I

    add-int/2addr v5, v6

    aput v5, v4, v8

    goto :goto_b5

    .line 1370
    :cond_d1
    iput v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetY:I

    goto :goto_b5

    .line 1337
    .end local v3    # "listViewX":F
    :cond_d4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_12
.end method

.method private getCellForIndex(I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    .registers 9
    .param p1, "index"    # I

    .prologue
    const/4 v6, 0x0

    .line 1667
    sget-object v5, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v5, :cond_7

    move-object v1, v6

    .line 1684
    :goto_6
    return-object v1

    .line 1670
    :cond_7
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v2

    .line 1671
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_e
    if-ge v0, v2, :cond_3d

    .line 1672
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1673
    .local v4, "view":Landroid/view/View;
    instance-of v5, v4, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v5, :cond_37

    move-object v1, v4

    .line 1674
    check-cast v1, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .line 1675
    .local v1, "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1676
    .local v3, "num":I
    if-ltz v3, :cond_37

    sget-object v5, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v5, v5, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v3, v5, :cond_3a

    .line 1671
    .end local v1    # "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    .end local v3    # "num":I
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1679
    .restart local v1    # "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    .restart local v3    # "num":I
    :cond_3a
    if-ne v3, p1, :cond_37

    goto :goto_6

    .end local v1    # "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    .end local v3    # "num":I
    .end local v4    # "view":Landroid/view/View;
    :cond_3d
    move-object v1, v6

    .line 1684
    goto :goto_6
.end method

.method private hideHint()V
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1118
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hideHintRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    .line 1119
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hideHintRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1120
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hideHintRunnable:Ljava/lang/Runnable;

    .line 1122
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    if-nez v0, :cond_13

    .line 1151
    :goto_12
    return-void

    .line 1125
    :cond_13
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    .line 1126
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    new-array v1, v4, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const-string v3, "alpha"

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    .line 1127
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    .line 1126
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1129
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1130
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$14;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$14;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1149
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1150
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_12
.end method

.method private onRevealAnimationEnd(Z)V
    .registers 5
    .param p1, "open"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1820
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(Z)V

    .line 1821
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealAnimationInProgress:Z

    .line 1822
    if-eqz p1, :cond_19

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_19

    sget-object v0, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v0, :cond_19

    .line 1823
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->loadGalleryPhotosAlbums(I)V

    .line 1825
    :cond_19
    if-eqz p1, :cond_22

    .line 1826
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCamera(Z)V

    .line 1827
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showHint()V

    .line 1829
    :cond_22
    return-void
.end method

.method private openCamera()V
    .registers 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/high16 v10, 0x42a00000    # 80.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1185
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-nez v3, :cond_c

    .line 1220
    :goto_b
    return-void

    .line 1188
    :cond_c
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animateCameraValues:[I

    aput v6, v3, v6

    .line 1189
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animateCameraValues:[I

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetX:I

    sub-int/2addr v4, v5

    aput v4, v3, v7

    .line 1190
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animateCameraValues:[I

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetY:I

    sub-int/2addr v4, v5

    aput v4, v3, v8

    .line 1191
    iput-boolean v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraAnimationInProgress:Z

    .line 1192
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1193
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1194
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1195
    .local v2, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const-string v3, "cameraOpenProgress"

    new-array v4, v8, [F

    fill-array-data v4, :array_a0

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1196
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    const-string v4, "alpha"

    new-array v5, v7, [F

    aput v9, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1197
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_56
    if-ge v0, v8, :cond_73

    .line 1198
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_9c

    .line 1199
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    const-string v4, "alpha"

    new-array v5, v7, [F

    aput v9, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1203
    :cond_73
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1204
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1205
    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1206
    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$15;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$15;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1215
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1216
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_98

    .line 1217
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/16 v4, 0x404

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/camera/CameraView;->setSystemUiVisibility(I)V

    .line 1219
    :cond_98
    iput-boolean v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    goto/16 :goto_b

    .line 1197
    .end local v1    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_9c
    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    .line 1195
    nop

    :array_a0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private processTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x2

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 978
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pressed:Z

    if-nez v5, :cond_10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-eqz v5, :cond_17

    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_26

    .line 979
    :cond_17
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->takingPhoto:Z

    if-nez v5, :cond_25

    .line 980
    iput-boolean v10, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pressed:Z

    .line 981
    iput-boolean v10, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->maybeStartDraging:Z

    .line 982
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->lastY:F

    .line 1037
    :cond_25
    :goto_25
    return v10

    .line 984
    :cond_26
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pressed:Z

    if-eqz v5, :cond_25

    .line 985
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-ne v5, v13, :cond_ba

    .line 986
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 987
    .local v2, "newY":F
    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->lastY:F

    sub-float v1, v2, v5

    .line 988
    .local v1, "dy":F
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->maybeStartDraging:Z

    if-eqz v5, :cond_50

    .line 989
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3ecccccd

    invoke-static {v6, v11}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_25

    .line 990
    iput-boolean v11, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->maybeStartDraging:Z

    .line 991
    iput-boolean v10, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->dragging:Z

    goto :goto_25

    .line 993
    :cond_50
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->dragging:Z

    if-eqz v5, :cond_25

    .line 994
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v5, :cond_25

    .line 995
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v6}, Lorg/telegram/messenger/camera/CameraView;->getTranslationY()F

    move-result v6

    add-float/2addr v6, v1

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/camera/CameraView;->setTranslationY(F)V

    .line 996
    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->lastY:F

    .line 997
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_25

    .line 998
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 999
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1000
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    const-string v7, "alpha"

    new-array v8, v10, [F

    aput v9, v8, v11

    .line 1001
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v6, v6, v11

    const-string v7, "alpha"

    new-array v8, v10, [F

    aput v9, v8, v11

    .line 1002
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v10

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v6, v6, v10

    const-string v7, "alpha"

    new-array v8, v10, [F

    aput v9, v8, v11

    .line 1003
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v13

    .line 1000
    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1004
    const-wide/16 v6, 0xc8

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1005
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_25

    .line 1009
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v1    # "dy":F
    .end local v2    # "newY":F
    :cond_ba
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_ce

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-eq v5, v10, :cond_ce

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_25

    .line 1010
    :cond_ce
    iput-boolean v11, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pressed:Z

    .line 1011
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->dragging:Z

    if-eqz v5, :cond_154

    .line 1012
    iput-boolean v11, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->dragging:Z

    .line 1013
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v5, :cond_25

    .line 1014
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v5}, Lorg/telegram/messenger/camera/CameraView;->getTranslationY()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v6}, Lorg/telegram/messenger/camera/CameraView;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40c00000    # 6.0f

    div-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_f7

    .line 1015
    invoke-virtual {p0, v10}, Lorg/telegram/ui/Components/ChatAttachAlert;->closeCamera(Z)V

    goto/16 :goto_25

    .line 1017
    :cond_f7
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1018
    .restart local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Animator;

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const-string v7, "translationY"

    new-array v8, v10, [F

    aput v9, v8, v11

    .line 1019
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    const-string v7, "alpha"

    new-array v8, v10, [F

    aput v12, v8, v11

    .line 1020
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v10

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v6, v6, v11

    const-string v7, "alpha"

    new-array v8, v10, [F

    aput v12, v8, v11

    .line 1021
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v13

    const/4 v6, 0x3

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v7, v7, v10

    const-string v8, "alpha"

    new-array v9, v10, [F

    aput v12, v9, v11

    .line 1022
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1018
    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1023
    const-wide/16 v6, 0xfa

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1024
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1025
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1026
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_25

    .line 1030
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_154
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewPosition:[I

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/camera/CameraView;->getLocationOnScreen([I)V

    .line 1031
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewPosition:[I

    aget v6, v6, v11

    int-to-float v6, v6

    sub-float v3, v5, v6

    .line 1032
    .local v3, "viewX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewPosition:[I

    aget v6, v6, v10

    int-to-float v6, v6

    sub-float v4, v5, v6

    .line 1033
    .local v4, "viewY":F
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    float-to-int v6, v3

    float-to-int v7, v4

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/camera/CameraView;->focusToPoint(II)V

    goto/16 :goto_25
.end method

.method private resetRecordState()V
    .registers 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1046
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    if-nez v1, :cond_7

    .line 1057
    :goto_6
    return-void

    .line 1049
    :cond_7
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_8
    const/4 v1, 0x2

    if-ge v0, v1, :cond_15

    .line 1050
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1049
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1052
    :cond_15
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->switchCameraButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1053
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->recordTime:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1054
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videoRecordRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1055
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videoRecordRunnable:Ljava/lang/Runnable;

    .line 1056
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->unlockOrientation(Landroid/app/Activity;)V

    goto :goto_6
.end method

.method private setCameraFlashModeIcon(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 5
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "mode"    # Ljava/lang/String;

    .prologue
    .line 1060
    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_40

    :cond_8
    :goto_8
    packed-switch v0, :pswitch_data_4e

    .line 1071
    :goto_b
    return-void

    .line 1060
    :sswitch_c
    const-string v1, "off"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    goto :goto_8

    :sswitch_16
    const-string v1, "on"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :sswitch_20
    const-string v1, "auto"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x2

    goto :goto_8

    .line 1062
    :pswitch_2a
    const v0, 0x7f0200ca

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    .line 1065
    :pswitch_31
    const v0, 0x7f0200cb

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    .line 1068
    :pswitch_38
    const v0, 0x7f0200c9

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    .line 1060
    nop

    :sswitch_data_40
    .sparse-switch
        0xddf -> :sswitch_16
        0x1ad6f -> :sswitch_c
        0x2dddaf -> :sswitch_20
    .end sparse-switch

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_31
        :pswitch_38
    .end packed-switch
.end method

.method private setUseRevealAnimation(Z)V
    .registers 4
    .param p1, "value"    # Z

    .prologue
    .line 2080
    if-eqz p1, :cond_10

    if-eqz p1, :cond_12

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_12

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2081
    :cond_10
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->useRevealAnimation:Z

    .line 2083
    :cond_12
    return-void
.end method

.method private showHint()V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1513
    sget-object v1, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1556
    :cond_a
    :goto_a
    return-void

    .line 1516
    :cond_b
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "mainconfig"

    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1517
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "bothint"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1520
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintShowed:Z

    .line 1522
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1523
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    .line 1524
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    new-array v2, v3, [Landroid/animation/Animator;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_5e

    .line 1525
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    .line 1524
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1527
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1528
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$20;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$20;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1554
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1555
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_a

    .line 1524
    :array_5e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startRevealAnimation(Z)V
    .registers 34
    .param p1, "open"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 2110
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 2112
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2114
    .local v7, "animatorSet":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->getRevealView()Landroid/view/View;

    move-result-object v23

    .line 2115
    .local v23, "view":Landroid/view/View;
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getVisibility()I

    move-result v25

    if-nez v25, :cond_193

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    check-cast v25, Landroid/view/ViewGroup;

    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v25

    if-nez v25, :cond_193

    .line 2116
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v12, v0, [I

    .line 2117
    .local v12, "coords":[I
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2119
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x13

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_187

    .line 2120
    sget-object v25, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v26

    sub-int v25, v25, v26

    sget v26, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v20, v0

    .line 2124
    .local v20, "top":F
    :goto_5e
    const/16 v25, 0x0

    aget v25, v12, v25

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    add-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    .line 2125
    const/16 v25, 0x1

    aget v25, v12, v25

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v25, v25, v20

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    .line 2126
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x13

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_a8

    .line 2127
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    move/from16 v25, v0

    sget v26, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    .line 2134
    .end local v12    # "coords":[I
    .end local v20    # "top":F
    :cond_a8
    :goto_a8
    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v13, v0, [[I

    const/16 v25, 0x0

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    fill-array-data v26, :array_69e

    aput-object v26, v13, v25

    const/16 v25, 0x1

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aput v28, v26, v27

    const/16 v27, 0x1

    const/high16 v28, 0x43980000    # 304.0f

    .line 2136
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v28

    aput v28, v26, v27

    aput-object v26, v13, v25

    const/16 v25, 0x2

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v28, v0

    .line 2137
    invoke-virtual/range {v28 .. v28}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v28

    aput v28, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aput v28, v26, v27

    aput-object v26, v13, v25

    const/16 v25, 0x3

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v28, v0

    .line 2138
    invoke-virtual/range {v28 .. v28}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v28

    aput v28, v26, v27

    const/16 v27, 0x1

    const/high16 v28, 0x43980000    # 304.0f

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v28

    aput v28, v26, v27

    aput-object v26, v13, v25

    .line 2140
    .local v13, "corners":[[I
    const/16 v17, 0x0

    .line 2141
    .local v17, "finalRevealRadius":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    sget v26, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingTop:I

    add-int v24, v25, v26

    .line 2142
    .local v24, "y":I
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_132
    const/16 v25, 0x4

    move/from16 v0, v25

    if-ge v6, v0, :cond_1cd

    .line 2143
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    move/from16 v25, v0

    aget-object v26, v13, v6

    const/16 v27, 0x0

    aget v26, v26, v27

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    move/from16 v26, v0

    aget-object v27, v13, v6

    const/16 v28, 0x0

    aget v27, v27, v28

    sub-int v26, v26, v27

    mul-int v25, v25, v26

    aget-object v26, v13, v6

    const/16 v27, 0x1

    aget v26, v26, v27

    sub-int v26, v24, v26

    aget-object v27, v13, v6

    const/16 v28, 0x1

    aget v27, v27, v28

    sub-int v27, v24, v27

    mul-int v26, v26, v27

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v17

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 2142
    add-int/lit8 v6, v6, 0x1

    goto :goto_132

    .line 2122
    .end local v6    # "a":I
    .end local v13    # "corners":[[I
    .end local v17    # "finalRevealRadius":I
    .end local v24    # "y":I
    .restart local v12    # "coords":[I
    :cond_187
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewGroup;->getY()F

    move-result v20

    .restart local v20    # "top":F
    goto/16 :goto_5e

    .line 2130
    .end local v12    # "coords":[I
    .end local v20    # "top":F
    :cond_193
    sget-object v25, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v25, v0

    div-int/lit8 v25, v25, 0x2

    sget v26, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    add-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    .line 2131
    sget-object v25, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewGroup;->getY()F

    move-result v26

    sub-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    goto/16 :goto_a8

    .line 2145
    .restart local v6    # "a":I
    .restart local v13    # "corners":[[I
    .restart local v17    # "finalRevealRadius":I
    .restart local v24    # "y":I
    :cond_1cd
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_54d

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    move/from16 v18, v0

    .line 2147
    .local v18, "finalRevealX":I
    :goto_1e9
    new-instance v9, Ljava/util/ArrayList;

    const/16 v25, 0x3

    move/from16 v0, v25

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2148
    .local v9, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const-string v26, "revealRadius"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    if-eqz p1, :cond_559

    const/16 v25, 0x0

    :goto_202
    aput v25, v27, v28

    const/16 v28, 0x1

    if-eqz p1, :cond_560

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v25, v0

    :goto_20d
    aput v25, v27, v28

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2149
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v26, v0

    const-string v27, "alpha"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    if-eqz p1, :cond_564

    const/16 v25, 0x33

    :goto_234
    aput v25, v28, v29

    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2150
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x15

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_57b

    .line 2152
    :try_start_249
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    move/from16 v28, v0

    if-eqz p1, :cond_568

    const/16 v25, 0x0

    move/from16 v26, v25

    :goto_25b
    if-eqz p1, :cond_571

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v25, v0

    :goto_262
    move-object/from16 v0, v27

    move/from16 v1, v18

    move/from16 v2, v28

    move/from16 v3, v26

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_275
    .catch Ljava/lang/Exception; {:try_start_249 .. :try_end_275} :catch_575

    .line 2156
    :goto_275
    const-wide/16 v26, 0x140

    move-wide/from16 v0, v26

    invoke-virtual {v7, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2175
    :cond_27c
    :goto_27c
    invoke-virtual {v7, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2176
    new-instance v25, Lorg/telegram/ui/Components/ChatAttachAlert$21;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2, v7}, Lorg/telegram/ui/Components/ChatAttachAlert$21;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;ZLandroid/animation/AnimatorSet;)V

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2201
    if-eqz p1, :cond_696

    .line 2202
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->innerAnimators:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 2203
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v25

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sget v28, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    aput v28, v26, v27

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/messenger/NotificationCenter;->setAllowedNotificationsDutingAnimation([I)V

    .line 2204
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v25

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(Z)V

    .line 2205
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->revealAnimationInProgress:Z

    .line 2207
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x13

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_671

    const/16 v14, 0xb

    .line 2208
    .local v14, "count":I
    :goto_2cc
    const/4 v6, 0x0

    :goto_2cd
    if-ge v6, v14, :cond_696

    .line 2209
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x13

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_675

    .line 2210
    const/16 v25, 0x8

    move/from16 v0, v25

    if-ge v6, v0, :cond_2fb

    .line 2211
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    const v26, 0x3dcccccd

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setScaleX(F)V

    .line 2212
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    const v26, 0x3dcccccd

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setScaleY(F)V

    .line 2214
    :cond_2fb
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setAlpha(F)V

    .line 2220
    :goto_308
    new-instance v19, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;

    const/16 v25, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/Components/ChatAttachAlert$1;)V

    .line 2222
    .local v19, "innerAnimator":Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v26, v0

    aget-object v26, v26, v6

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    add-int v10, v25, v26

    .line 2223
    .local v10, "buttonX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewGroup;->getTop()I

    move-result v26

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v26, v0

    aget-object v26, v26, v6

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    add-int v11, v25, v26

    .line 2224
    .local v11, "buttonY":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    move/from16 v25, v0

    sub-int v25, v25, v10

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    move/from16 v26, v0

    sub-int v26, v26, v10

    mul-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    move/from16 v26, v0

    sub-int v26, v26, v11

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    move/from16 v27, v0

    sub-int v27, v27, v11

    mul-int v26, v26, v27

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v15, v0

    .line 2225
    .local v15, "dist":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    move/from16 v25, v0

    sub-int v25, v25, v10

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v21, v25, v15

    .line 2226
    .local v21, "vecX":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    move/from16 v25, v0

    sub-int v25, v25, v11

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v22, v25, v15

    .line 2227
    .local v22, "vecY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v26, v0

    aget-object v26, v26, v6

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x41a00000    # 20.0f

    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v21

    add-float v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setPivotX(F)V

    .line 2228
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v26, v0

    aget-object v26, v26, v6

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x41a00000    # 20.0f

    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v22

    add-float v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setPivotY(F)V

    .line 2229
    const/high16 v25, 0x42a20000    # 81.0f

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v25, v15, v25

    move-object/from16 v0, v19

    move/from16 v1, v25

    # setter for: Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->startRadius:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->access$6802(Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;F)F

    .line 2231
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    const v26, 0x7f070092

    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2232
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2234
    .restart local v9    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/16 v25, 0x8

    move/from16 v0, v25

    if-ge v6, v0, :cond_693

    .line 2235
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    const-string v26, "scaleX"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    fill-array-data v27, :array_6a6

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2236
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    const-string v26, "scaleY"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    fill-array-data v27, :array_6ae

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2238
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2239
    .local v8, "animatorSetInner":Landroid/animation/AnimatorSet;
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v27, v0

    aget-object v27, v27, v6

    const-string v28, "scaleX"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/high16 v31, 0x3f800000    # 1.0f

    aput v31, v29, v30

    .line 2240
    invoke-static/range {v27 .. v29}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v27, v0

    aget-object v27, v27, v6

    const-string v28, "scaleY"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/high16 v31, 0x3f800000    # 1.0f

    aput v31, v29, v30

    .line 2241
    invoke-static/range {v27 .. v29}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v27

    aput-object v27, v25, v26

    .line 2239
    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2242
    const-wide/16 v26, 0x64

    move-wide/from16 v0, v26

    invoke-virtual {v8, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2243
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2247
    :goto_4d6
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x13

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_501

    .line 2248
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    const-string v26, "alpha"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/high16 v29, 0x3f800000    # 1.0f

    aput v29, v27, v28

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2250
    :cond_501
    new-instance v25, Landroid/animation/AnimatorSet;

    invoke-direct/range {v25 .. v25}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    # setter for: Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->access$6902(Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2251
    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->access$6900(Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2252
    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->access$6900(Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v25

    const-wide/16 v26, 0x96

    invoke-virtual/range {v25 .. v27}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2253
    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->access$6900(Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2254
    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->access$6900(Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v25

    new-instance v26, Lorg/telegram/ui/Components/ChatAttachAlert$22;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$22;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)V

    invoke-virtual/range {v25 .. v26}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2262
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->innerAnimators:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2208
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2cd

    .line 2145
    .end local v8    # "animatorSetInner":Landroid/animation/AnimatorSet;
    .end local v9    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v10    # "buttonX":I
    .end local v11    # "buttonY":I
    .end local v14    # "count":I
    .end local v15    # "dist":F
    .end local v18    # "finalRevealX":I
    .end local v19    # "innerAnimator":Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;
    .end local v21    # "vecX":F
    .end local v22    # "vecY":F
    :cond_54d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v18

    goto/16 :goto_1e9

    .line 2148
    .restart local v9    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .restart local v18    # "finalRevealX":I
    :cond_559
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v25, v0

    goto/16 :goto_202

    :cond_560
    const/16 v25, 0x0

    goto/16 :goto_20d

    .line 2149
    :cond_564
    const/16 v25, 0x0

    goto/16 :goto_234

    .line 2152
    :cond_568
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v26, v25

    goto/16 :goto_25b

    :cond_571
    const/16 v25, 0x0

    goto/16 :goto_262

    .line 2153
    :catch_575
    move-exception v16

    .line 2154
    .local v16, "e":Ljava/lang/Exception;
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_275

    .line 2158
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_57b
    if-nez p1, :cond_636

    .line 2159
    const-wide/16 v26, 0xc8

    move-wide/from16 v0, v26

    invoke-virtual {v7, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2160
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v27

    move/from16 v0, v25

    move/from16 v1, v27

    if-gt v0, v1, :cond_625

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    :goto_5ab
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 2161
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 2162
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    const-string v26, "scaleX"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v29, v27, v28

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2163
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    const-string v26, "scaleY"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v29, v27, v28

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2164
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    const-string v26, "alpha"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v29, v27, v28

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27c

    .line 2160
    :cond_625
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    goto/16 :goto_5ab

    .line 2166
    :cond_636
    const-wide/16 v26, 0xfa

    move-wide/from16 v0, v26

    invoke-virtual {v7, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2167
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    const/high16 v26, 0x3f800000    # 1.0f

    invoke-virtual/range {v25 .. v26}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 2168
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    const/high16 v26, 0x3f800000    # 1.0f

    invoke-virtual/range {v25 .. v26}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 2169
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    const/high16 v26, 0x3f800000    # 1.0f

    invoke-virtual/range {v25 .. v26}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2170
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x13

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_27c

    .line 2171
    const-wide/16 v26, 0x14

    move-wide/from16 v0, v26

    invoke-virtual {v7, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    goto/16 :goto_27c

    .line 2207
    :cond_671
    const/16 v14, 0x8

    goto/16 :goto_2cc

    .line 2216
    .restart local v14    # "count":I
    :cond_675
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    const v26, 0x3f333333

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setScaleX(F)V

    .line 2217
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    const v26, 0x3f333333

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_308

    .line 2245
    .restart local v10    # "buttonX":I
    .restart local v11    # "buttonY":I
    .restart local v15    # "dist":F
    .restart local v19    # "innerAnimator":Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;
    .restart local v21    # "vecX":F
    .restart local v22    # "vecY":F
    :cond_693
    const/4 v8, 0x0

    .restart local v8    # "animatorSetInner":Landroid/animation/AnimatorSet;
    goto/16 :goto_4d6

    .line 2265
    .end local v8    # "animatorSetInner":Landroid/animation/AnimatorSet;
    .end local v10    # "buttonX":I
    .end local v11    # "buttonY":I
    .end local v14    # "count":I
    .end local v15    # "dist":F
    .end local v19    # "innerAnimator":Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;
    .end local v21    # "vecX":F
    .end local v22    # "vecY":F
    :cond_696
    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    .line 2266
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 2267
    return-void

    .line 2134
    :array_69e
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 2235
    :array_6a6
    .array-data 4
        0x3f333333
        0x3f866666
    .end array-data

    .line 2236
    :array_6ae
    .array-data 4
        0x3f333333
        0x3f866666
    .end array-data
.end method

.method private updateLayout()V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1577
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v4

    if-gtz v4, :cond_1b

    .line 1578
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RecyclerListView;->getPaddingTop()I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setTopGlowOffset(I)V

    .line 1579
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->invalidate()V

    .line 1593
    :cond_1a
    :goto_1a
    return-void

    .line 1582
    :cond_1b
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1583
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/RecyclerListView;->findContainingViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 1584
    .local v1, "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1585
    .local v3, "top":I
    const/4 v2, 0x0

    .line 1586
    .local v2, "newOffset":I
    if-ltz v3, :cond_3a

    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;->getAdapterPosition()I

    move-result v4

    if-nez v4, :cond_3a

    .line 1587
    move v2, v3

    .line 1589
    :cond_3a
    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:I

    if-eq v4, v2, :cond_1a

    .line 1590
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:I

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setTopGlowOffset(I)V

    .line 1591
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->invalidate()V

    goto :goto_1a
.end method


# virtual methods
.method public allowCaption()Z
    .registers 2

    .prologue
    .line 1714
    const/4 v0, 0x1

    return v0
.end method

.method public canDismiss()Z
    .registers 2

    .prologue
    .line 1870
    const/4 v0, 0x1

    return v0
.end method

.method protected canDismissWithSwipe()Z
    .registers 2

    .prologue
    .line 1597
    const/4 v0, 0x0

    return v0
.end method

.method protected canDismissWithTouchOutside()Z
    .registers 2

    .prologue
    .line 2304
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public cancelButtonPressed()Z
    .registers 2

    .prologue
    .line 1799
    const/4 v0, 0x0

    return v0
.end method

.method public checkCamera(Z)V
    .registers 7
    .param p1, "request"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1832
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    if-nez v1, :cond_6

    .line 1856
    :cond_5
    :goto_5
    return-void

    .line 1835
    :cond_6
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z

    .line 1836
    .local v0, "old":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_73

    .line 1837
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_61

    .line 1838
    if-eqz p1, :cond_30

    .line 1839
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "android.permission.CAMERA"

    aput-object v3, v2, v4

    const/16 v3, 0x11

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 1841
    :cond_30
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z

    .line 1850
    :cond_32
    :goto_32
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z

    if-eq v0, v1, :cond_3f

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    if-eqz v1, :cond_3f

    .line 1851
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->notifyDataSetChanged()V

    .line 1853
    :cond_3f
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealAnimationInProgress:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    if-nez v1, :cond_5

    .line 1854
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showCamera()V

    goto :goto_5

    .line 1843
    :cond_61
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraController;->initCamera()V

    .line 1844
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraController;->isCameraInitied()Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z

    goto :goto_32

    .line 1846
    :cond_73
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_32

    .line 1847
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraController;->initCamera()V

    .line 1848
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraController;->isCameraInitied()Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z

    goto :goto_32
.end method

.method public closeCamera(Z)V
    .registers 14
    .param p1, "animated"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/high16 v11, 0x42a00000    # 80.0f

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1224
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->takingPhoto:Z

    if-nez v4, :cond_e

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-nez v4, :cond_f

    .line 1278
    :cond_e
    :goto_e
    return-void

    .line 1227
    :cond_f
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animateCameraValues:[I

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetX:I

    sub-int/2addr v5, v6

    aput v5, v4, v9

    .line 1228
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animateCameraValues:[I

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetY:I

    sub-int/2addr v5, v6

    aput v5, v4, v10

    .line 1229
    if-eqz p1, :cond_a4

    .line 1230
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/CameraView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1231
    .local v3, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animateCameraValues:[I

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v5}, Lorg/telegram/messenger/camera/CameraView;->getTranslationY()F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    aput v5, v4, v8

    .line 1232
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/camera/CameraView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1233
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/camera/CameraView;->setTranslationY(F)V

    .line 1235
    iput-boolean v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraAnimationInProgress:Z

    .line 1236
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1237
    .local v2, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const-string v4, "cameraOpenProgress"

    new-array v5, v9, [F

    aput v7, v5, v8

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1238
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    const-string v5, "alpha"

    new-array v6, v9, [F

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1239
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_6a
    if-ge v0, v10, :cond_87

    .line 1240
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_a1

    .line 1241
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    const-string v5, "alpha"

    new-array v6, v9, [F

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1245
    :cond_87
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1246
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1247
    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1248
    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlert$16;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$16;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1261
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_e

    .line 1239
    .end local v1    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_a1
    add-int/lit8 v0, v0, 0x1

    goto :goto_6a

    .line 1263
    .end local v0    # "a":I
    .end local v2    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_a4
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animateCameraValues:[I

    aput v8, v4, v8

    .line 1264
    invoke-virtual {p0, v7}, Lorg/telegram/ui/Components/ChatAttachAlert;->setCameraOpenProgress(F)V

    .line 1265
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1266
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1267
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_b8
    if-ge v0, v10, :cond_cb

    .line 1268
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_dc

    .line 1269
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1273
    :cond_cb
    iput-boolean v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    .line 1274
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_e

    .line 1275
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/16 v5, 0x400

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/camera/CameraView;->setSystemUiVisibility(I)V

    goto/16 :goto_e

    .line 1267
    :cond_dc
    add-int/lit8 v0, v0, 0x1

    goto :goto_b8
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1560
    sget v0, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoaded:I

    if-ne p1, v0, :cond_16

    .line 1561
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    if-eqz v0, :cond_15

    .line 1562
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->loading:Z

    .line 1563
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 1564
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->notifyDataSetChanged()V

    .line 1573
    :cond_15
    :goto_15
    return-void

    .line 1566
    :cond_16
    sget v0, Lorg/telegram/messenger/NotificationCenter;->reloadInlineHints:I

    if-ne p1, v0, :cond_24

    .line 1567
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->adapter:Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;

    if-eqz v0, :cond_15

    .line 1568
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->adapter:Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;->notifyDataSetChanged()V

    goto :goto_15

    .line 1570
    :cond_24
    sget v0, Lorg/telegram/messenger/NotificationCenter;->cameraInitied:I

    if-ne p1, v0, :cond_15

    .line 1571
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCamera(Z)V

    goto :goto_15
.end method

.method public dismiss()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2309
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraAnimationInProgress:Z

    if-eqz v0, :cond_6

    .line 2318
    :goto_5
    return-void

    .line 2312
    :cond_6
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    if-eqz v0, :cond_e

    .line 2313
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->closeCamera(Z)V

    goto :goto_5

    .line 2316
    :cond_e
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->hideCamera(Z)V

    .line 2317
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    goto :goto_5
.end method

.method public dismissInternal()V
    .registers 3

    .prologue
    .line 2271
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    .line 2272
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2274
    :cond_a
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    .line 2275
    return-void
.end method

.method public dismissWithButtonClick(I)V
    .registers 3
    .param p1, "item"    # I

    .prologue
    .line 2298
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissWithButtonClick(I)V

    .line 2299
    if-eqz p1, :cond_d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_d

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->hideCamera(Z)V

    .line 2300
    return-void

    .line 2299
    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getCameraOpenProgress()F
    .registers 2

    .prologue
    .line 1329
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpenProgress:F

    return v0
.end method

.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .registers 10
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    const/4 v5, 0x0

    .line 1689
    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCellForIndex(I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    move-result-object v0

    .line 1690
    .local v0, "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    if-eqz v0, :cond_52

    .line 1691
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 1692
    .local v1, "coords":[I
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/BackupImageView;->getLocationInWindow([I)V

    .line 1693
    aget v3, v1, v5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getLeftInset()I

    move-result v4

    sub-int/2addr v3, v4

    aput v3, v1, v5

    .line 1694
    new-instance v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-direct {v2}, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;-><init>()V

    .line 1695
    .local v2, "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    aget v3, v1, v5

    iput v3, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    .line 1696
    const/4 v3, 0x1

    aget v3, v1, v3

    iput v3, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    .line 1697
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    iput-object v3, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    .line 1698
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 1699
    iget-object v3, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    .line 1700
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getScaleX()F

    move-result v3

    iput v3, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    .line 1701
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBox;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 1704
    .end local v1    # "coords":[I
    .end local v2    # "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    :goto_51
    return-object v2

    :cond_52
    const/4 v2, 0x0

    goto :goto_51
.end method

.method protected getRevealRadius()F
    .registers 2

    .prologue
    .line 2105
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealRadius:F

    return v0
.end method

.method public getSelectedCount()I
    .registers 2

    .prologue
    .line 1816
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getSelectedPhotos()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MediaController$PhotoEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1656
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Landroid/graphics/Bitmap;
    .registers 6
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 1736
    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCellForIndex(I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    move-result-object v0

    .line 1737
    .local v0, "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    if-eqz v0, :cond_13

    .line 1738
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1740
    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public hideCamera(Z)V
    .registers 8
    .param p1, "async"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1494
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-nez v3, :cond_a

    .line 1510
    :cond_9
    :goto_9
    return-void

    .line 1497
    :cond_a
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v3, p1, v5}, Lorg/telegram/messenger/camera/CameraView;->destroy(ZLjava/lang/Runnable;)V

    .line 1498
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->removeView(Landroid/view/View;)V

    .line 1499
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->removeView(Landroid/view/View;)V

    .line 1500
    iput-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    .line 1501
    iput-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    .line 1502
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v2

    .line 1503
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_28
    if-ge v0, v2, :cond_9

    .line 1504
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1505
    .local v1, "child":Landroid/view/View;
    instance-of v3, v1, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    if-eqz v3, :cond_39

    .line 1506
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    .line 1503
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_28
.end method

.method public init()V
    .registers 8

    .prologue
    const v6, 0xf4240

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1634
    sget-object v2, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz v2, :cond_32

    .line 1635
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_a
    const/16 v2, 0x64

    sget-object v3, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v0, v2, :cond_32

    .line 1636
    sget-object v2, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1637
    .local v1, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    iput-object v4, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    .line 1638
    iput-object v4, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    .line 1639
    iput-object v4, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->thumbPath:Ljava/lang/String;

    .line 1640
    iget-object v2, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1635
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1643
    .end local v0    # "a":I
    .end local v1    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_32
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_3d

    .line 1644
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1645
    iput-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    .line 1647
    :cond_3d
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1648
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1649
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v2, v5, v6}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1650
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->clearSelectedPhotos()V

    .line 1651
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v2, v5, v6}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1652
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updatePhotosButton()V

    .line 1653
    return-void
.end method

.method public isPhotoChecked(I)Z
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 1767
    if-ltz p1, :cond_2a

    sget-object v0, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2a

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v1

    sget-object v0, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public loadGalleryPhotos()V
    .registers 3

    .prologue
    .line 1628
    sget-object v0, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v0, :cond_e

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    .line 1629
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->loadGalleryPhotosAlbums(I)V

    .line 1631
    :cond_e
    return-void
.end method

.method protected onContainerTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1042
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    if-eqz v0, :cond_c

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->processTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected onCustomCloseAnimation()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 2288
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->useRevealAnimation:Z

    if-eqz v1, :cond_10

    .line 2289
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 2290
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->startRevealAnimation(Z)V

    .line 2291
    const/4 v0, 0x1

    .line 2293
    :cond_10
    return v0
.end method

.method protected onCustomLayout(Landroid/view/View;IIII)Z
    .registers 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/16 v9, 0x15

    const/high16 v8, 0x42c80000    # 100.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1094
    sub-int v4, p4, p2

    .line 1095
    .local v4, "width":I
    sub-int v0, p5, p3

    .line 1096
    .local v0, "height":I
    if-ge v4, v0, :cond_1f

    move v1, v5

    .line 1097
    .local v1, "isPortrait":Z
    :goto_d
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    if-ne p1, v7, :cond_2d

    .line 1098
    if-eqz v1, :cond_21

    .line 1099
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int v8, p5, v8

    invoke-virtual {v7, v6, v8, v4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 1114
    :goto_1e
    return v5

    .end local v1    # "isPortrait":Z
    :cond_1f
    move v1, v6

    .line 1096
    goto :goto_d

    .line 1101
    .restart local v1    # "isPortrait":Z
    :cond_21
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int v8, p4, v8

    invoke-virtual {v7, v8, v6, p4, v0}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_1e

    .line 1104
    :cond_2d
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v7, v7, v6

    if-eq p1, v7, :cond_39

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v7, v7, v5

    if-ne p1, v7, :cond_73

    .line 1105
    :cond_39
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v9, :cond_61

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    .line 1106
    .local v3, "topAdd":I
    :goto_43
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v9, :cond_63

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 1107
    .local v2, "leftAdd":I
    :goto_4d
    if-eqz v1, :cond_65

    .line 1108
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int v6, p4, v6

    sub-int/2addr v6, v2

    sub-int v7, p4, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {p1, v6, v3, v7, v8}, Landroid/view/View;->layout(IIII)V

    goto :goto_1e

    .end local v2    # "leftAdd":I
    .end local v3    # "topAdd":I
    :cond_61
    move v3, v6

    .line 1105
    goto :goto_43

    .restart local v3    # "topAdd":I
    :cond_63
    move v2, v6

    .line 1106
    goto :goto_4d

    .line 1110
    .restart local v2    # "leftAdd":I
    :cond_65
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {p1, v2, v3, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1e

    .end local v2    # "leftAdd":I
    .end local v3    # "topAdd":I
    :cond_73
    move v5, v6

    .line 1114
    goto :goto_1e
.end method

.method protected onCustomMeasure(Landroid/view/View;II)Z
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    const/4 v1, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    .line 1075
    if-ge p2, p3, :cond_23

    move v0, v1

    .line 1076
    .local v0, "isPortrait":Z
    :goto_9
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-ne p1, v3, :cond_25

    .line 1077
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    if-eqz v3, :cond_4f

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraAnimationInProgress:Z

    if-nez v3, :cond_4f

    .line 1078
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {p3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/camera/CameraView;->measure(II)V

    .line 1089
    :goto_22
    return v1

    .end local v0    # "isPortrait":Z
    :cond_23
    move v0, v2

    .line 1075
    goto :goto_9

    .line 1081
    .restart local v0    # "isPortrait":Z
    :cond_25
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    if-ne p1, v3, :cond_4f

    .line 1082
    if-eqz v0, :cond_3d

    .line 1083
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->measure(II)V

    goto :goto_22

    .line 1085
    :cond_3d
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {p3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->measure(II)V

    goto :goto_22

    :cond_4f
    move v1, v2

    .line 1089
    goto :goto_22
.end method

.method protected onCustomOpenAnimation()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2279
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->useRevealAnimation:Z

    if-eqz v1, :cond_9

    .line 2280
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->startRevealAnimation(Z)V

    .line 2283
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 1660
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1661
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadInlineHints:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1662
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->cameraInitied:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1663
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    .line 1664
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2322
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    if-eqz v0, :cond_17

    const/16 v0, 0x18

    if-eq p1, v0, :cond_c

    const/16 v0, 0x19

    if-ne p1, v0, :cond_17

    .line 2323
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ShutterButton;->getDelegate()Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;->shutterReleased()V

    .line 2324
    const/4 v0, 0x1

    .line 2326
    :goto_16
    return v0

    :cond_17
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_16
.end method

.method public onOpenAnimationEnd()V
    .registers 2

    .prologue
    .line 1860
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->onRevealAnimationEnd(Z)V

    .line 1861
    return-void
.end method

.method public onOpenAnimationStart()V
    .registers 1

    .prologue
    .line 1866
    return-void
.end method

.method public onPause()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1154
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    if-nez v0, :cond_7

    .line 1174
    :goto_6
    return-void

    .line 1157
    :cond_7
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->requestingPermissions:Z

    if-nez v0, :cond_3d

    .line 1158
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ShutterButton;->getState()Lorg/telegram/ui/Components/ShutterButton$State;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/ShutterButton$State;->RECORDING:Lorg/telegram/ui/Components/ShutterButton$State;

    if-ne v0, v1, :cond_30

    .line 1159
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->resetRecordState()V

    .line 1160
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/camera/CameraController;->stopVideoRecording(Lorg/telegram/messenger/camera/CameraSession;Z)V

    .line 1161
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    sget-object v1, Lorg/telegram/ui/Components/ShutterButton$State;->DEFAULT:Lorg/telegram/ui/Components/ShutterButton$State;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ShutterButton;->setState(Lorg/telegram/ui/Components/ShutterButton$State;Z)V

    .line 1163
    :cond_30
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    if-eqz v0, :cond_37

    .line 1164
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->closeCamera(Z)V

    .line 1166
    :cond_37
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->hideCamera(Z)V

    .line 1173
    :goto_3a
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->paused:Z

    goto :goto_6

    .line 1168
    :cond_3d
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ShutterButton;->getState()Lorg/telegram/ui/Components/ShutterButton$State;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/ShutterButton$State;->RECORDING:Lorg/telegram/ui/Components/ShutterButton$State;

    if-ne v0, v1, :cond_52

    .line 1169
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    sget-object v1, Lorg/telegram/ui/Components/ShutterButton$State;->DEFAULT:Lorg/telegram/ui/Components/ShutterButton$State;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ShutterButton;->setState(Lorg/telegram/ui/Components/ShutterButton$State;Z)V

    .line 1171
    :cond_52
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->requestingPermissions:Z

    goto :goto_3a
.end method

.method public onResume()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1177
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->paused:Z

    .line 1178
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1179
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCamera(Z)V

    .line 1181
    :cond_12
    return-void
.end method

.method public scaleToFill()Z
    .registers 2

    .prologue
    .line 1709
    const/4 v0, 0x0

    return v0
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;

    .prologue
    .line 1804
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1805
    if-ltz p1, :cond_18

    sget-object v1, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_19

    .line 1812
    :cond_18
    :goto_18
    return-void

    .line 1808
    :cond_19
    sget-object v1, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1809
    .local v0, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v1

    iget v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1811
    .end local v0    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_32
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(I)V

    goto :goto_18
.end method

.method public setAllowDrawContent(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 1875
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setAllowDrawContent(Z)V

    .line 1876
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCameraViewPosition()V

    .line 1877
    return-void
.end method

.method public setCameraOpenProgress(F)V
    .registers 16
    .param p1, "value"    # F

    .prologue
    const/high16 v13, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v7, 0x0

    .line 1281
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-nez v8, :cond_c

    .line 1326
    :goto_b
    return-void

    .line 1284
    :cond_c
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpenProgress:F

    .line 1285
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animateCameraValues:[I

    aget v8, v8, v6

    int-to-float v5, v8

    .line 1286
    .local v5, "startWidth":F
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animateCameraValues:[I

    const/4 v9, 0x2

    aget v8, v8, v9

    int-to-float v4, v8

    .line 1287
    .local v4, "startHeight":F
    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    if-ge v8, v9, :cond_d5

    move v2, v6

    .line 1290
    .local v2, "isPortrait":Z
    :goto_24
    if-eqz v2, :cond_d8

    .line 1291
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->getWidth()I

    move-result v8

    int-to-float v1, v8

    .line 1292
    .local v1, "endWidth":F
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->getHeight()I

    move-result v8

    int-to-float v0, v8

    .line 1297
    .local v0, "endHeight":F
    :goto_34
    cmpl-float v8, p1, v11

    if-nez v8, :cond_e8

    .line 1298
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetX:I

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/camera/CameraView;->setClipLeft(I)V

    .line 1299
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetY:I

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/camera/CameraView;->setClipTop(I)V

    .line 1300
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v9, v9, v7

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/camera/CameraView;->setTranslationX(F)V

    .line 1301
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v9, v9, v6

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/camera/CameraView;->setTranslationY(F)V

    .line 1302
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v9, v9, v7

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1303
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v9, v9, v6

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1308
    :cond_6e
    :goto_6e
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v8}, Lorg/telegram/messenger/camera/CameraView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1309
    .local v3, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    sub-float v8, v1, v5

    mul-float/2addr v8, p1

    add-float/2addr v8, v5

    float-to-int v8, v8

    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1310
    sub-float v8, v0, v4

    mul-float/2addr v8, p1

    add-float/2addr v8, v4

    float-to-int v8, v8

    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1311
    cmpl-float v8, p1, v11

    if-eqz v8, :cond_108

    .line 1312
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetX:I

    int-to-float v9, v9

    sub-float v10, v12, p1

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/camera/CameraView;->setClipLeft(I)V

    .line 1313
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetY:I

    int-to-float v9, v9

    sub-float v10, v12, p1

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/camera/CameraView;->setClipTop(I)V

    .line 1314
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v8, v8, v7

    int-to-float v8, v8

    sub-float v9, v12, p1

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1315
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animateCameraValues:[I

    aget v8, v8, v7

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v6, v9, v6

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animateCameraValues:[I

    aget v7, v9, v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-float v7, v12, p1

    mul-float/2addr v6, v7

    add-float/2addr v6, v8

    float-to-int v6, v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1320
    :goto_c1
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v6, v3}, Lorg/telegram/messenger/camera/CameraView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1321
    cmpg-float v6, p1, v13

    if-gtz v6, :cond_10d

    .line 1322
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    div-float v7, p1, v13

    sub-float v7, v12, v7

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto/16 :goto_b

    .end local v0    # "endHeight":F
    .end local v1    # "endWidth":F
    .end local v2    # "isPortrait":Z
    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_d5
    move v2, v7

    .line 1287
    goto/16 :goto_24

    .line 1294
    .restart local v2    # "isPortrait":Z
    :cond_d8
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->getWidth()I

    move-result v8

    int-to-float v1, v8

    .line 1295
    .restart local v1    # "endWidth":F
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->getHeight()I

    move-result v8

    int-to-float v0, v8

    .restart local v0    # "endHeight":F
    goto/16 :goto_34

    .line 1304
    :cond_e8
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v8}, Lorg/telegram/messenger/camera/CameraView;->getTranslationX()F

    move-result v8

    cmpl-float v8, v8, v11

    if-nez v8, :cond_fc

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v8}, Lorg/telegram/messenger/camera/CameraView;->getTranslationY()F

    move-result v8

    cmpl-float v8, v8, v11

    if-eqz v8, :cond_6e

    .line 1305
    :cond_fc
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v8, v11}, Lorg/telegram/messenger/camera/CameraView;->setTranslationX(F)V

    .line 1306
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v8, v11}, Lorg/telegram/messenger/camera/CameraView;->setTranslationY(F)V

    goto/16 :goto_6e

    .line 1317
    .restart local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_108
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1318
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_c1

    .line 1324
    :cond_10d
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v11}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto/16 :goto_b
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)V
    .registers 2
    .param p1, "chatAttachViewDelegate"    # Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    .prologue
    .line 1624
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    .line 1625
    return-void
.end method

.method public setPhotoChecked(I)V
    .registers 10
    .param p1, "index"    # I

    .prologue
    .line 1772
    const/4 v1, 0x1

    .line 1773
    .local v1, "add":Z
    if-ltz p1, :cond_d

    sget-object v6, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v6, v6, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt p1, v6, :cond_e

    .line 1795
    :cond_d
    :goto_d
    return-void

    .line 1776
    :cond_e
    sget-object v6, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v6, v6, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1777
    .local v4, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v6

    iget v7, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 1778
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v6

    iget v7, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1779
    const/4 v1, 0x0

    .line 1783
    :goto_3a
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v2

    .line 1784
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_41
    if-ge v0, v2, :cond_5f

    .line 1785
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1786
    .local v5, "view":Landroid/view/View;
    instance-of v6, v5, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v6, :cond_73

    .line 1787
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1788
    .local v3, "num":I
    if-ne v3, p1, :cond_73

    .line 1789
    check-cast v5, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .end local v5    # "view":Landroid/view/View;
    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setChecked(ZZ)V

    .line 1794
    .end local v3    # "num":I
    :cond_5f
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updatePhotosButton()V

    goto :goto_d

    .line 1781
    .end local v0    # "a":I
    .end local v2    # "count":I
    :cond_63
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v6

    iget v7, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    .line 1784
    .restart local v0    # "a":I
    .restart local v2    # "count":I
    .restart local v5    # "view":Landroid/view/View;
    :cond_73
    add-int/lit8 v0, v0, 0x1

    goto :goto_41
.end method

.method protected setRevealRadius(F)V
    .registers 6
    .param p1, "radius"    # F
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 2087
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealRadius:F

    .line 2088
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-gt v2, v3, :cond_d

    .line 2089
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->invalidate()V

    .line 2091
    :cond_d
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isDismissed()Z

    move-result v2

    if-nez v2, :cond_3e

    .line 2092
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_14
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->innerAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3e

    .line 2093
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->innerAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;

    .line 2094
    .local v1, "innerAnimator":Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;
    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->startRadius:F
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->access$6800(Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;)F

    move-result v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_2f

    .line 2092
    :goto_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 2097
    :cond_2f
    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->access$6900(Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 2098
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->innerAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2099
    add-int/lit8 v0, v0, -0x1

    goto :goto_2c

    .line 2102
    .end local v0    # "a":I
    .end local v1    # "innerAnimator":Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;
    :cond_3e
    return-void
.end method

.method public showCamera()V
    .registers 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/high16 v4, 0x42a00000    # 80.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x50

    .line 1435
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->paused:Z

    if-eqz v1, :cond_b

    .line 1491
    :goto_a
    return-void

    .line 1438
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-nez v1, :cond_6b

    .line 1439
    new-instance v1, Lorg/telegram/messenger/camera/CameraView;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Lorg/telegram/messenger/camera/CameraView;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    .line 1440
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v7, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1441
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$19;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$19;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/camera/CameraView;->setDelegate(Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;)V

    .line 1479
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    .line 1480
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    const/4 v3, 0x2

    invoke-static {v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1482
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1483
    .local v0, "cameraImageView":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1484
    const v1, 0x7f020196

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1485
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    const/16 v2, 0x55

    invoke-static {v5, v5, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1487
    .end local v0    # "cameraImageView":Landroid/widget/ImageView;
    :cond_6b
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v2, v2, v6

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/camera/CameraView;->setTranslationX(F)V

    .line 1488
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v2, v2, v7

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/camera/CameraView;->setTranslationY(F)V

    .line 1489
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v2, v2, v6

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1490
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v2, v2, v7

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto/16 :goto_a
.end method

.method public updatePhotoAtIndex(I)V
    .registers 9
    .param p1, "index"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const v5, 0x7f0201fa

    .line 1719
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCellForIndex(I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    move-result-object v0

    .line 1720
    .local v0, "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    if-eqz v0, :cond_36

    .line 1721
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->setOrientation(IZ)V

    .line 1722
    sget-object v2, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1723
    .local v1, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    iget-object v2, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->thumbPath:Ljava/lang/String;

    if-eqz v2, :cond_37

    .line 1724
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->thumbPath:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v6, v4}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 1732
    .end local v1    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_36
    :goto_36
    return-void

    .line 1725
    .restart local v1    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_37
    iget-object v2, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v2, :cond_79

    .line 1726
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v2

    iget v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->setOrientation(IZ)V

    .line 1727
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thumb://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v6, v4}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_36

    .line 1729
    :cond_79
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(I)V

    goto :goto_36
.end method

.method public updatePhotosButton()V
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 1601
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 1602
    .local v0, "count":I
    if-nez v0, :cond_68

    .line 1603
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$4300(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/ImageView;

    move-result-object v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v8, v2, v8, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1604
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$4300(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f02005b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1605
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$4300(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f02005a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1606
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->textView:Landroid/widget/TextView;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$6400(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1614
    :goto_40
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_b4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_b4

    .line 1615
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string v2, "PermissionStorage"

    const v3, 0x7f070440

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 1616
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setTextSize(I)V

    .line 1621
    :goto_67
    return-void

    .line 1608
    :cond_68
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$4300(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/ImageView;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2, v8, v8, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1609
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$4300(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020062

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1610
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$4300(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020061

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1611
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->textView:Landroid/widget/TextView;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$6400(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "SendItems"

    const v3, 0x7f0704da

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "(%d)"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_40

    .line 1618
    :cond_b4
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string v2, "NoPhotos"

    const v3, 0x7f070362

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 1619
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setTextSize(I)V

    goto :goto_67
.end method

.method public willHidePhotoViewer()V
    .registers 7

    .prologue
    .line 1753
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v2

    .line 1754
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_7
    if-ge v0, v2, :cond_2b

    .line 1755
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1756
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v4, :cond_28

    move-object v1, v3

    .line 1757
    check-cast v1, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .line 1758
    .local v1, "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/CheckBox;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_28

    .line 1759
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBox;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 1754
    .end local v1    # "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1763
    .end local v3    # "view":Landroid/view/View;
    :cond_2b
    return-void
.end method

.method public willSwitchFromPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V
    .registers 7
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 1745
    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCellForIndex(I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    move-result-object v0

    .line 1746
    .local v0, "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    if-eqz v0, :cond_e

    .line 1747
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBox;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 1749
    :cond_e
    return-void
.end method
