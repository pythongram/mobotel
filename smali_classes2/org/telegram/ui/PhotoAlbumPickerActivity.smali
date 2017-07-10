.class public Lorg/telegram/ui/PhotoAlbumPickerActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "PhotoAlbumPickerActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;,
        Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;
    }
.end annotation


# static fields
.field private static final item_photos:I = 0x2

.field private static final item_video:I = 0x3


# instance fields
.field private albumsSorted:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$AlbumEntry;",
            ">;"
        }
    .end annotation
.end field

.field private allowCaption:Z

.field private allowGifs:Z

.field private chatActivity:Lorg/telegram/ui/ChatActivity;

.field private columnsCount:I

.field private delegate:Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;

.field private dropDown:Landroid/widget/TextView;

.field private dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private emptyView:Landroid/widget/TextView;

.field private listAdapter:Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private loading:Z

.field private pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

.field private progressView:Landroid/widget/FrameLayout;

.field private recentGifImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;"
        }
    .end annotation
.end field

.field private recentImagesGifKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;"
        }
    .end annotation
.end field

.field private recentImagesWebKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;"
        }
    .end annotation
.end field

.field private recentWebImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;"
        }
    .end annotation
.end field

.field private selectedMode:I

.field private selectedPhotos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MediaController$PhotoEntry;",
            ">;"
        }
    .end annotation
.end field

.field private selectedWebPhotos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;"
        }
    .end annotation
.end field

.field private sendPressed:Z

.field private singlePhoto:Z

.field private videoAlbumsSorted:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$AlbumEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZZZLorg/telegram/ui/ChatActivity;)V
    .registers 6
    .param p1, "singlePhoto"    # Z
    .param p2, "allowGifs"    # Z
    .param p3, "allowCaption"    # Z
    .param p4, "chatActivity"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 60
    iput-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;

    .line 61
    iput-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->videoAlbumsSorted:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentImagesWebKeys:Ljava/util/HashMap;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentImagesGifKeys:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentWebImages:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentGifImages:Ljava/util/ArrayList;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->loading:Z

    .line 70
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->columnsCount:I

    .line 92
    iput-object p4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    .line 93
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->singlePhoto:Z

    .line 94
    iput-boolean p2, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->allowGifs:Z

    .line 95
    iput-boolean p3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->allowCaption:Z

    .line 96
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->delegate:Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/PhotoAlbumPickerActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 52
    iget v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedMode:I

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/PhotoAlbumPickerActivity;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedMode:I

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 52
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->singlePhoto:Z

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/PhotoAlbumPickerActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 52
    iget v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->columnsCount:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->videoAlbumsSorted:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/PhotoAlbumPickerActivity;Lorg/telegram/messenger/MediaController$AlbumEntry;I)V
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;
    .param p1, "x1"    # Lorg/telegram/messenger/MediaController$AlbumEntry;
    .param p2, "x2"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->openPhotoPicker(Lorg/telegram/messenger/MediaController$AlbumEntry;I)V

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 52
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->allowGifs:Z

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDown:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendSelectedPhotos()V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->fixLayoutInternal()V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/PhotoAlbumPickerActivity;)Lorg/telegram/ui/Components/PickerBottomLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PhotoAlbumPickerActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    return-object v0
.end method

.method private fixLayout()V
    .registers 3

    .prologue
    .line 422
    iget-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_12

    .line 423
    iget-object v1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 424
    .local v0, "obs":Landroid/view/ViewTreeObserver;
    new-instance v1, Lorg/telegram/ui/PhotoAlbumPickerActivity$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$6;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 435
    .end local v0    # "obs":Landroid/view/ViewTreeObserver;
    :cond_12
    return-void
.end method

.method private fixLayoutInternal()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    .line 438
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_8

    .line 463
    :cond_7
    :goto_7
    return-void

    .line 442
    :cond_8
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 443
    .local v1, "manager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 444
    .local v2, "rotation":I
    iput v5, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->columnsCount:I

    .line 445
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-nez v3, :cond_2b

    const/4 v3, 0x3

    if-eq v2, v3, :cond_28

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2b

    .line 446
    :cond_28
    const/4 v3, 0x4

    iput v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->columnsCount:I

    .line 448
    :cond_2b
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->notifyDataSetChanged()V

    .line 450
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v3, :cond_7

    .line 451
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-nez v3, :cond_51

    .line 452
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 453
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_6d

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_4a
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 454
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_51
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-nez v3, :cond_6f

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_6f

    .line 458
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDown:Landroid/widget/TextView;

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_7

    .line 453
    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_6d
    const/4 v3, 0x0

    goto :goto_4a

    .line 460
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_6f
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDown:Landroid/widget/TextView;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_7
.end method

.method private openPhotoPicker(Lorg/telegram/messenger/MediaController$AlbumEntry;I)V
    .registers 12
    .param p1, "albumEntry"    # Lorg/telegram/messenger/MediaController$AlbumEntry;
    .param p2, "type"    # I

    .prologue
    .line 466
    const/4 v5, 0x0

    .line 467
    .local v5, "recentImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    if-nez p1, :cond_7

    .line 468
    if-nez p2, :cond_24

    .line 469
    iget-object v5, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentWebImages:Ljava/util/ArrayList;

    .line 474
    :cond_7
    :goto_7
    new-instance v0, Lorg/telegram/ui/PhotoPickerActivity;

    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    iget-boolean v6, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->singlePhoto:Z

    iget-boolean v7, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->allowCaption:Z

    iget-object v8, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    move v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/PhotoPickerActivity;-><init>(ILorg/telegram/messenger/MediaController$AlbumEntry;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;ZZLorg/telegram/ui/ChatActivity;)V

    .line 475
    .local v0, "fragment":Lorg/telegram/ui/PhotoPickerActivity;
    new-instance v1, Lorg/telegram/ui/PhotoAlbumPickerActivity$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$7;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoPickerActivity;->setDelegate(Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;)V

    .line 497
    invoke-virtual {p0, v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 498
    return-void

    .line 470
    .end local v0    # "fragment":Lorg/telegram/ui/PhotoPickerActivity;
    :cond_24
    const/4 v1, 0x1

    if-ne p2, v1, :cond_7

    .line 471
    iget-object v5, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentGifImages:Ljava/util/ArrayList;

    goto :goto_7
.end method

.method private sendSelectedPhotos()V
    .registers 21

    .prologue
    .line 358
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_14

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_20

    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->delegate:Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;

    if-eqz v13, :cond_20

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendPressed:Z

    if-eqz v13, :cond_21

    .line 419
    :cond_20
    :goto_20
    return-void

    .line 361
    :cond_21
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->sendPressed:Z

    .line 362
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .local v8, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v2, "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .local v6, "masks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_41
    :goto_41
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_ad

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 366
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$PhotoEntry;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 367
    .local v7, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    iget-object v13, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    if-eqz v13, :cond_80

    .line 368
    iget-object v13, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    iget-object v13, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    if-eqz v13, :cond_7c

    iget-object v13, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_66
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    iget-object v13, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_7e

    new-instance v13, Ljava/util/ArrayList;

    iget-object v15, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    invoke-direct {v13, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_78
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 369
    :cond_7c
    const/4 v13, 0x0

    goto :goto_66

    .line 370
    :cond_7e
    const/4 v13, 0x0

    goto :goto_78

    .line 371
    :cond_80
    iget-object v13, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v13, :cond_41

    .line 372
    iget-object v13, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    iget-object v13, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    if-eqz v13, :cond_a9

    iget-object v13, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_93
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v13, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_ab

    new-instance v13, Ljava/util/ArrayList;

    iget-object v15, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    invoke-direct {v13, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_a5
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 373
    :cond_a9
    const/4 v13, 0x0

    goto :goto_93

    .line 374
    :cond_ab
    const/4 v13, 0x0

    goto :goto_a5

    .line 377
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$PhotoEntry;>;"
    .end local v7    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_ad
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v12, "webPhotos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    const/4 v5, 0x0

    .line 379
    .local v5, "gifChanged":Z
    const/4 v11, 0x0

    .line 380
    .local v11, "webChange":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_c0
    :goto_c0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_16a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 381
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/telegram/messenger/MediaController$SearchImage;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 382
    .local v10, "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    iget-object v13, v10, Lorg/telegram/messenger/MediaController$SearchImage;->imagePath:Ljava/lang/String;

    if-eqz v13, :cond_12e

    .line 383
    iget-object v13, v10, Lorg/telegram/messenger/MediaController$SearchImage;->imagePath:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    iget-object v13, v10, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    if-eqz v13, :cond_12a

    iget-object v13, v10, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_e5
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object v13, v10, Lorg/telegram/messenger/MediaController$SearchImage;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_12c

    new-instance v13, Ljava/util/ArrayList;

    iget-object v15, v10, Lorg/telegram/messenger/MediaController$SearchImage;->stickers:Ljava/util/ArrayList;

    invoke-direct {v13, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_f7
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    :goto_fa
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v13, v0

    iput v13, v10, Lorg/telegram/messenger/MediaController$SearchImage;->date:I

    .line 391
    iget v13, v10, Lorg/telegram/messenger/MediaController$SearchImage;->type:I

    if-nez v13, :cond_13b

    .line 392
    const/4 v11, 0x1

    .line 393
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentImagesWebKeys:Ljava/util/HashMap;

    iget-object v15, v10, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 394
    .local v9, "recentImage":Lorg/telegram/messenger/MediaController$SearchImage;
    if-eqz v9, :cond_132

    .line 395
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentWebImages:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 396
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentWebImages:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v13, v15, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_c0

    .line 384
    .end local v9    # "recentImage":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_12a
    const/4 v13, 0x0

    goto :goto_e5

    .line 385
    :cond_12c
    const/4 v13, 0x0

    goto :goto_f7

    .line 387
    :cond_12e
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_fa

    .line 398
    .restart local v9    # "recentImage":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_132
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentWebImages:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v13, v15, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_c0

    .line 400
    .end local v9    # "recentImage":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_13b
    iget v13, v10, Lorg/telegram/messenger/MediaController$SearchImage;->type:I

    const/4 v15, 0x1

    if-ne v13, v15, :cond_c0

    .line 401
    const/4 v5, 0x1

    .line 402
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentImagesGifKeys:Ljava/util/HashMap;

    iget-object v15, v10, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 403
    .restart local v9    # "recentImage":Lorg/telegram/messenger/MediaController$SearchImage;
    if-eqz v9, :cond_160

    .line 404
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentGifImages:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 405
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentGifImages:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v13, v15, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_c0

    .line 407
    :cond_160
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentGifImages:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v13, v15, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_c0

    .line 411
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/telegram/messenger/MediaController$SearchImage;>;"
    .end local v9    # "recentImage":Lorg/telegram/messenger/MediaController$SearchImage;
    .end local v10    # "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_16a
    if-eqz v11, :cond_177

    .line 412
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentWebImages:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/MessagesStorage;->putWebRecent(Ljava/util/ArrayList;)V

    .line 414
    :cond_177
    if-eqz v5, :cond_184

    .line 415
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentGifImages:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/MessagesStorage;->putWebRecent(Ljava/util/ArrayList;)V

    .line 418
    :cond_184
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->delegate:Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;

    invoke-interface {v13, v8, v2, v6, v12}, Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;->didSelectPhotos(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_20
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v12, 0x40800000    # 4.0f

    const/4 v11, -0x2

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 119
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v5, -0xcccccd

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 120
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 121
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v5, -0xc2c2c3

    invoke-virtual {v4, v5, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 122
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v5, 0x7f0200dd

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 123
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/PhotoAlbumPickerActivity$1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$1;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 153
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v2

    .line 154
    .local v2, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const v4, 0x7f0200e7

    invoke-virtual {v2, v10, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 156
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->fragmentView:Landroid/view/View;

    .line 158
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 159
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    const/high16 v4, -0x1000000

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 161
    iget-boolean v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->singlePhoto:Z

    if-nez v4, :cond_2be

    .line 162
    iput v8, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedMode:I

    .line 164
    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-direct {v4, p1, v2, v8, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;II)V

    iput-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 165
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 166
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v5, 0x2

    const-string v6, "PickerPhotos"

    const v7, 0x7f070453

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 167
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v5, 0x3

    const-string v6, "PickerVideo"

    const v7, 0x7f070454

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 168
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v5, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->addView(Landroid/view/View;)V

    .line 169
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 170
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 171
    iput v11, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 172
    const/high16 v4, 0x42200000    # 40.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 173
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_2b6

    const/high16 v4, 0x42800000    # 64.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    :goto_a0
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 174
    const/16 v4, 0x33

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 175
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v5, Lorg/telegram/ui/PhotoAlbumPickerActivity$2;

    invoke-direct {v5, p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$2;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDown:Landroid/widget/TextView;

    .line 184
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDown:Landroid/widget/TextView;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 185
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 186
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setLines(I)V

    .line 187
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 188
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDown:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 189
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDown:Landroid/widget/TextView;

    const-string v5, "fonts/rmedium.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 191
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDown:Landroid/widget/TextView;

    const v5, 0x7f0200f6

    invoke-virtual {v4, v8, v8, v5, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 192
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDown:Landroid/widget/TextView;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 193
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDown:Landroid/widget/TextView;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v4, v8, v8, v5, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 194
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDown:Landroid/widget/TextView;

    const-string v5, "PickerPhotos"

    const v6, 0x7f070453

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v5, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addView(Landroid/view/View;)V

    .line 196
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 197
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v11, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 198
    iput v11, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 199
    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 200
    const/16 v4, 0x10

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 201
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :goto_136
    new-instance v4, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v4, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 207
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v4, v5, v8, v6, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 208
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 209
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setHorizontalScrollBarEnabled(Z)V

    .line 210
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 211
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-direct {v5, p1, v10, v8}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 212
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setDrawingCacheEnabled(Z)V

    .line 213
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 214
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 215
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 216
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 217
    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 218
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 220
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const v5, -0xcccccd

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    .line 222
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    .line 223
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    const v5, -0x7f7f80

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 224
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 225
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 226
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    const-string v5, "NoPhotos"

    const v6, 0x7f070362

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 229
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 230
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 231
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 232
    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 233
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    new-instance v5, Lorg/telegram/ui/PhotoAlbumPickerActivity$3;

    invoke-direct {v5, p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$3;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 241
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    .line 242
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 243
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 244
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 245
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 246
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 247
    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 248
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    new-instance v3, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    .line 251
    .local v3, "progressBar":Lorg/telegram/ui/Components/RadialProgressView;
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 252
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 253
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v11, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 254
    iput v11, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 255
    const/16 v4, 0x11

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 256
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    new-instance v4, Lorg/telegram/ui/Components/PickerBottomLayout;

    invoke-direct {v4, p1}, Lorg/telegram/ui/Components/PickerBottomLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    .line 259
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 260
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/PickerBottomLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 261
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 262
    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 263
    const/16 v4, 0x50

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 264
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/PickerBottomLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v4, v4, Lorg/telegram/ui/Components/PickerBottomLayout;->cancelButton:Landroid/widget/TextView;

    new-instance v5, Lorg/telegram/ui/PhotoAlbumPickerActivity$4;

    invoke-direct {v5, p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$4;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v4, v4, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButton:Landroid/widget/LinearLayout;

    new-instance v5, Lorg/telegram/ui/PhotoAlbumPickerActivity$5;

    invoke-direct {v5, p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$5;-><init>(Lorg/telegram/ui/PhotoAlbumPickerActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-boolean v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->loading:Z

    if-eqz v4, :cond_2ce

    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;

    if-eqz v4, :cond_296

    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;

    if-eqz v4, :cond_2ce

    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2ce

    .line 280
    :cond_296
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 281
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 286
    :goto_2a1
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v5, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5, v10}, Lorg/telegram/ui/Components/PickerBottomLayout;->updateSelectedCount(IZ)V

    .line 288
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->fragmentView:Landroid/view/View;

    return-object v4

    .line 173
    .end local v3    # "progressBar":Lorg/telegram/ui/Components/RadialProgressView;
    :cond_2b6
    const/high16 v4, 0x42600000    # 56.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    goto/16 :goto_a0

    .line 203
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2be
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v5, "Gallery"

    const v6, 0x7f070267

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_136

    .line 283
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "progressBar":Lorg/telegram/ui/Components/RadialProgressView;
    :cond_2ce
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 284
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v5, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_2a1
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 9
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 317
    sget v3, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoaded:I

    if-ne p1, v3, :cond_49

    .line 318
    aget-object v3, p2, v5

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 319
    .local v0, "guid":I
    iget v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->classGuid:I

    if-ne v3, v0, :cond_48

    .line 320
    aget-object v3, p2, v4

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->albumsSorted:Ljava/util/ArrayList;

    .line 321
    const/4 v3, 0x3

    aget-object v3, p2, v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->videoAlbumsSorted:Ljava/util/ArrayList;

    .line 322
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_2a

    .line 323
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->progressView:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 325
    :cond_2a
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v3, :cond_3d

    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getEmptyView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_3d

    .line 326
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 328
    :cond_3d
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;

    if-eqz v3, :cond_46

    .line 329
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->notifyDataSetChanged()V

    .line 331
    :cond_46
    iput-boolean v5, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->loading:Z

    .line 351
    .end local v0    # "guid":I
    :cond_48
    :goto_48
    return-void

    .line 333
    :cond_49
    sget v3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    if-ne p1, v3, :cond_51

    .line 334
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->removeSelfFromStack()V

    goto :goto_48

    .line 335
    :cond_51
    sget v3, Lorg/telegram/messenger/NotificationCenter;->recentImagesDidLoaded:I

    if-ne p1, v3, :cond_48

    .line 336
    aget-object v3, p2, v5

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 337
    .local v2, "type":I
    if-nez v2, :cond_84

    .line 338
    aget-object v3, p2, v4

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentWebImages:Ljava/util/ArrayList;

    .line 339
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentImagesWebKeys:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 340
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentWebImages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_70
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 341
    .local v1, "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentImagesWebKeys:Ljava/util/HashMap;

    iget-object v5, v1, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_70

    .line 343
    .end local v1    # "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_84
    if-ne v2, v4, :cond_48

    .line 344
    aget-object v3, p2, v4

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentGifImages:Ljava/util/ArrayList;

    .line 345
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentImagesGifKeys:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 346
    iget-object v3, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentGifImages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_97
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 347
    .restart local v1    # "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    iget-object v4, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->recentImagesGifKeys:Ljava/util/HashMap;

    iget-object v5, v1, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_97
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 310
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 311
    invoke-direct {p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->fixLayout()V

    .line 312
    return-void
.end method

.method public onFragmentCreate()Z
    .registers 3

    .prologue
    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->loading:Z

    .line 101
    iget v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->classGuid:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->loadGalleryPhotosAlbums(I)V

    .line 102
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 103
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentImagesDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 104
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 105
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .registers 3

    .prologue
    .line 110
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 111
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentImagesDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 112
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 113
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 114
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 293
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 294
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_c

    .line 295
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->closeSubMenu()V

    .line 297
    :cond_c
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 301
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 302
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;

    if-eqz v0, :cond_c

    .line 303
    iget-object v0, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoAlbumPickerActivity$ListAdapter;->notifyDataSetChanged()V

    .line 305
    :cond_c
    invoke-direct {p0}, Lorg/telegram/ui/PhotoAlbumPickerActivity;->fixLayout()V

    .line 306
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;)V
    .registers 2
    .param p1, "delegate"    # Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;

    .prologue
    .line 354
    iput-object p1, p0, Lorg/telegram/ui/PhotoAlbumPickerActivity;->delegate:Lorg/telegram/ui/PhotoAlbumPickerActivity$PhotoAlbumPickerActivityDelegate;

    .line 355
    return-void
.end method
