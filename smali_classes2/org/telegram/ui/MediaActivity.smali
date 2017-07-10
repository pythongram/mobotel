.class public Lorg/telegram/ui/MediaActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "MediaActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;,
        Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;,
        Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;,
        Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;,
        Lorg/telegram/ui/MediaActivity$SharedMediaData;
    }
.end annotation


# static fields
.field private static final add_download:I = 0xf

.field private static final delete:I = 0x4

.field private static final files_item:I = 0x2

.field private static final filter:I = 0xd

.field private static final forward:I = 0x3

.field private static final links_item:I = 0x5

.field private static final music_item:I = 0x6

.field private static final shared_media_item:I = 0x1


# instance fields
.field private actionModeViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private audioAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

.field private audioSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

.field private cantDeleteMessagesCount:I

.field private cellCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Cells/SharedPhotoVideoCell;",
            ">;"
        }
    .end annotation
.end field

.field private columnsCount:I

.field private dialog_id:J

.field private documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

.field private documentsSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

.field private dropDown:Landroid/widget/TextView;

.field private dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private dropDownDrawable:Landroid/graphics/drawable/Drawable;

.field private emptyImageView:Landroid/widget/ImageView;

.field private emptyTextView:Landroid/widget/TextView;

.field private emptyView:Landroid/widget/LinearLayout;

.field private filterType:I

.field private fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

.field protected info:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

.field private linksSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private mergeDialogId:J

.field private photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

.field private popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field private progressBar:Lorg/telegram/ui/Components/RadialProgressView;

.field private progressView:Landroid/widget/LinearLayout;

.field private scrolling:Z

.field private searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private searchWas:Z

.field private searching:Z

.field private selectedFiles:[Ljava/util/HashMap;
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

.field private selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

.field private selectedMode:I

.field private sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 229
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity;->cellCache:Ljava/util/ArrayList;

    .line 132
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v3

    const/4 v1, 0x1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionModeViews:Ljava/util/ArrayList;

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 141
    iput v3, p0, Lorg/telegram/ui/MediaActivity;->filterType:I

    .line 142
    const/4 v0, 0x4

    iput v0, p0, Lorg/telegram/ui/MediaActivity;->columnsCount:I

    .line 217
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iput-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    .line 230
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/MediaActivity;)J
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    return-wide v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/MediaActivity;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p1, "x1"    # I

    .prologue
    .line 104
    iput p1, p0, Lorg/telegram/ui/MediaActivity;->filterType:I

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/MediaActivity;)J
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->mergeDialogId:J

    return-wide v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/MediaActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    return v0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/MediaActivity;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p1, "x1"    # I

    .prologue
    .line 104
    iput p1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/MediaActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->classGuid:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/MediaActivity;Lorg/telegram/messenger/MessageObject;)Z
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p1, "x1"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lorg/telegram/ui/MediaActivity;->downloaded(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/MediaActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    invoke-direct {p0}, Lorg/telegram/ui/MediaActivity;->switchToCurrentSelectedMode()V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/MediaActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget-boolean v0, p0, Lorg/telegram/ui/MediaActivity;->searching:Z

    return v0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/MediaActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lorg/telegram/ui/MediaActivity;->searching:Z

    return p1
.end method

.method static synthetic access$2400(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->documentsSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->linksSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->audioSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/MediaActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget-boolean v0, p0, Lorg/telegram/ui/MediaActivity;->searchWas:Z

    return v0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/MediaActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lorg/telegram/ui/MediaActivity;->searchWas:Z

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/MediaActivity;ILandroid/view/View;Lorg/telegram/messenger/MessageObject;I)V
    .registers 5
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Lorg/telegram/messenger/MessageObject;
    .param p4, "x4"    # I

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/MediaActivity;->onItemClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;I)V

    return-void
.end method

.method static synthetic access$2900(Lorg/telegram/ui/MediaActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget-boolean v0, p0, Lorg/telegram/ui/MediaActivity;->scrolling:Z

    return v0
.end method

.method static synthetic access$2902(Lorg/telegram/ui/MediaActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lorg/telegram/ui/MediaActivity;->scrolling:Z

    return p1
.end method

.method static synthetic access$3000(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/MediaActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->classGuid:I

    return v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/MediaActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->classGuid:I

    return v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/MediaActivity;Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z
    .registers 5
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p1, "x1"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # I

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/MediaActivity;->onItemLongClick(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/MediaActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    invoke-direct {p0}, Lorg/telegram/ui/MediaActivity;->fixLayoutInternal()V

    return-void
.end method

.method static synthetic access$3700(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/Components/NumberTextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    return-object v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/MediaActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionModeViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/MediaActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    invoke-direct {p0}, Lorg/telegram/ui/MediaActivity;->showAddToDownload()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/MediaActivity;Lorg/telegram/tgnet/TLRPC$WebPage;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$WebPage;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lorg/telegram/ui/MediaActivity;->openWebView(Lorg/telegram/tgnet/TLRPC$WebPage;)V

    return-void
.end method

.method static synthetic access$4600(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/MediaActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->columnsCount:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/MediaActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->cellCache:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/MediaActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->classGuid:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/MediaActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    return v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/MediaActivity;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;
    .param p1, "x1"    # I

    .prologue
    .line 104
    iput p1, p0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    return p1
.end method

.method static synthetic access$708(Lorg/telegram/ui/MediaActivity;)I
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method private downloaded(Lorg/telegram/messenger/MessageObject;)Z
    .registers 5
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 2261
    const/4 v0, 0x0

    .line 2262
    .local v0, "canSave":Z
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-nez v2, :cond_1b

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    if-nez v2, :cond_1b

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 2263
    :cond_1b
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v2, :cond_3b

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3b

    .line 2264
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2265
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 2266
    const/4 v0, 0x1

    .line 2269
    .end local v1    # "f":Ljava/io/File;
    :cond_3b
    if-nez v0, :cond_4a

    .line 2270
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v1

    .line 2271
    .restart local v1    # "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 2272
    const/4 v0, 0x1

    .line 2276
    .end local v1    # "f":Ljava/io/File;
    :cond_4a
    return v0
.end method

.method private fixLayoutInternal()V
    .registers 11

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/high16 v7, 0x43000000    # 128.0f

    const/4 v3, 0x0

    const/high16 v6, 0x42200000    # 40.0f

    .line 1423
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v4, :cond_c

    .line 1462
    :cond_b
    :goto_b
    return-void

    .line 1426
    :cond_c
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1427
    .local v1, "manager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 1429
    .local v2, "rotation":I
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-nez v4, :cond_95

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v8, :cond_95

    .line 1430
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v5, 0x12

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    .line 1435
    :goto_39
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 1436
    iput v9, p0, Lorg/telegram/ui/MediaActivity;->columnsCount:I

    .line 1437
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1447
    :goto_52
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    invoke-virtual {v4}, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->notifyDataSetChanged()V

    .line 1449
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v4, :cond_b

    .line 1450
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-nez v4, :cond_78

    .line 1451
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1452
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_71

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :cond_71
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1453
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1456
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_78
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-nez v3, :cond_c8

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v8, :cond_c8

    .line 1457
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_b

    .line 1432
    :cond_95
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    goto :goto_39

    .line 1439
    :cond_9d
    const/4 v4, 0x3

    if-eq v2, v4, :cond_a3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_b4

    .line 1440
    :cond_a3
    const/4 v4, 0x6

    iput v4, p0, Lorg/telegram/ui/MediaActivity;->columnsCount:I

    .line 1441
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v4, v5, v3, v6, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_52

    .line 1443
    :cond_b4
    iput v9, p0, Lorg/telegram/ui/MediaActivity;->columnsCount:I

    .line 1444
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_52

    .line 1459
    :cond_c8
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_b
.end method

.method private onItemClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;I)V
    .registers 29
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "message"    # Lorg/telegram/messenger/MessageObject;
    .param p4, "a"    # I

    .prologue
    .line 1270
    if-nez p3, :cond_3

    .line 1416
    .end local p2    # "view":Landroid/view/View;
    :cond_2
    :goto_2
    return-void

    .line 1273
    .restart local p2    # "view":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v3

    if-eqz v3, :cond_17f

    .line 1274
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_b2

    const/16 v19, 0x0

    .line 1275
    .local v19, "loadIndex":I
    :goto_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    aget-object v3, v3, v19

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 1276
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    aget-object v3, v3, v19

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_53

    .line 1278
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    .line 1289
    :cond_53
    :goto_53
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f9

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f9

    .line 1290
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 1295
    :goto_74
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    if-nez v3, :cond_135

    const/4 v3, 0x0

    :goto_88
    invoke-virtual {v4, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1296
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/ui/MediaActivity;->scrolling:Z

    .line 1297
    move-object/from16 v0, p2

    instance-of v3, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v3, :cond_139

    .line 1298
    check-cast p2, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .end local p2    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    aget-object v3, v3, v19

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    goto/16 :goto_2

    .line 1274
    .end local v19    # "loadIndex":I
    .restart local p2    # "view":Landroid/view/View;
    :cond_b2
    const/16 v19, 0x1

    goto/16 :goto_1b

    .line 1281
    .restart local v19    # "loadIndex":I
    :cond_b6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    add-int/2addr v3, v4

    const/16 v4, 0x64

    if-ge v3, v4, :cond_2

    .line 1284
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    aget-object v3, v3, v19

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_53

    .line 1286
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    goto/16 :goto_53

    .line 1292
    :cond_f9
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    add-int/2addr v4, v5

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    .line 1293
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v3

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->showAddToDownload()Z

    move-result v3

    if-eqz v3, :cond_132

    const/4 v3, 0x0

    :goto_12d
    invoke-virtual {v4, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    goto/16 :goto_74

    :cond_132
    const/16 v3, 0x8

    goto :goto_12d

    .line 1295
    :cond_135
    const/16 v3, 0x8

    goto/16 :goto_88

    .line 1299
    :cond_139
    move-object/from16 v0, p2

    instance-of v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    if-eqz v3, :cond_15d

    .line 1300
    check-cast p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    .end local p2    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    aget-object v3, v3, v19

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->setChecked(IZZ)V

    goto/16 :goto_2

    .line 1301
    .restart local p2    # "view":Landroid/view/View;
    :cond_15d
    move-object/from16 v0, p2

    instance-of v3, v0, Lorg/telegram/ui/Cells/SharedLinkCell;

    if-eqz v3, :cond_2

    .line 1302
    check-cast p2, Lorg/telegram/ui/Cells/SharedLinkCell;

    .end local p2    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    aget-object v3, v3, v19

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Cells/SharedLinkCell;->setChecked(ZZ)V

    goto/16 :goto_2

    .line 1305
    .end local v19    # "loadIndex":I
    .restart local p2    # "view":Landroid/view/View;
    :cond_17f
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-nez v3, :cond_1b3

    .line 1306
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 1307
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v4, v4, v5

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3500(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/ui/MediaActivity;->mergeDialogId:J

    move/from16 v5, p1

    move-object/from16 v10, p0

    invoke-virtual/range {v3 .. v10}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Ljava/util/ArrayList;IJJLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    goto/16 :goto_2

    .line 1308
    :cond_1b3
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1c1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3d8

    .line 1309
    :cond_1c1
    move-object/from16 v0, p2

    instance-of v3, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v3, :cond_2

    move-object/from16 v11, p2

    .line 1310
    check-cast v11, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 1311
    .local v11, "cell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/SharedDocumentCell;->isLoaded()Z

    move-result v3

    if-eqz v3, :cond_3a8

    .line 1312
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v3

    if-eqz v3, :cond_1f1

    .line 1313
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v4, v4, v5

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3500(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v3, v4, v0}, Lorg/telegram/messenger/MediaController;->setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1317
    :cond_1f1
    const/4 v14, 0x0

    .line 1318
    .local v14, "f":Ljava/io/File;
    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v3, :cond_260

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v15

    .line 1319
    .local v15, "fileName":Ljava/lang/String;
    :goto_202
    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v3, :cond_221

    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_221

    .line 1320
    new-instance v14, Ljava/io/File;

    .end local v14    # "f":Ljava/io/File;
    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v14, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1322
    .restart local v14    # "f":Ljava/io/File;
    :cond_221
    if-eqz v14, :cond_22b

    if-eqz v14, :cond_233

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_233

    .line 1323
    :cond_22b
    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v14

    .line 1325
    :cond_233
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1326
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "attheme"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29c

    .line 1327
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v14, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->applyThemeFile(Ljava/io/File;Ljava/lang/String;Z)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v22

    .line 1328
    .local v22, "themeInfo":Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    if-eqz v22, :cond_263

    .line 1329
    new-instance v3, Lorg/telegram/ui/ThemePreviewActivity;

    move-object/from16 v0, v22

    invoke-direct {v3, v14, v0}, Lorg/telegram/ui/ThemePreviewActivity;-><init>(Ljava/io/File;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/MediaActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_2

    .line 1318
    .end local v15    # "fileName":Ljava/lang/String;
    .end local v22    # "themeInfo":Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    :cond_260
    const-string v15, ""

    goto :goto_202

    .line 1331
    .restart local v15    # "fileName":Ljava/lang/String;
    .restart local v22    # "themeInfo":Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    :cond_263
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1332
    .local v2, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v3, "AppName"

    const v4, 0x7f070092

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1333
    const-string v3, "IncorrectTheme"

    const v4, 0x7f070294

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1334
    const-string v3, "OK"

    const v4, 0x7f0703d4

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1335
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/MediaActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_2

    .line 1338
    .end local v2    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v22    # "themeInfo":Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    :cond_29c
    const/16 v21, 0x0

    .line 1340
    .local v21, "realMimeType":Ljava/lang/String;
    :try_start_29e
    new-instance v17, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1341
    .local v17, "intent":Landroid/content/Intent;
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1342
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v20

    .line 1343
    .local v20, "myMime":Landroid/webkit/MimeTypeMap;
    const/16 v3, 0x2e

    invoke-virtual {v15, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    .line 1344
    .local v16, "idx":I
    const/4 v3, -0x1

    move/from16 v0, v16

    if-eq v0, v3, :cond_2e0

    .line 1345
    add-int/lit8 v3, v16, 0x1

    invoke-virtual {v15, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 1346
    .local v13, "ext":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1347
    if-nez v21, :cond_2e0

    .line 1348
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 1349
    if-eqz v21, :cond_2de

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2e0

    .line 1350
    :cond_2de
    const/16 v21, 0x0

    .line 1354
    .end local v13    # "ext":Ljava/lang/String;
    :cond_2e0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_37d

    .line 1355
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.mobotel.provider"

    invoke-static {v3, v4, v14}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v21, :cond_379

    move-object/from16 v3, v21

    :goto_2f4
    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2f9
    .catch Ljava/lang/Exception; {:try_start_29e .. :try_end_2f9} :catch_32d

    .line 1359
    :goto_2f9
    if-eqz v21, :cond_39b

    .line 1361
    :try_start_2fb
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0x1f4

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_306
    .catch Ljava/lang/Exception; {:try_start_2fb .. :try_end_306} :catch_308

    goto/16 :goto_2

    .line 1362
    :catch_308
    move-exception v12

    .line 1363
    .local v12, "e":Ljava/lang/Exception;
    :try_start_309
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_38f

    .line 1364
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.mobotel.provider"

    invoke-static {v3, v4, v14}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "text/plain"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1368
    :goto_320
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0x1f4

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_32b
    .catch Ljava/lang/Exception; {:try_start_309 .. :try_end_32b} :catch_32d

    goto/16 :goto_2

    .line 1373
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v16    # "idx":I
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v20    # "myMime":Landroid/webkit/MimeTypeMap;
    :catch_32d
    move-exception v12

    .line 1374
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1377
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1378
    .restart local v2    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v3, "AppName"

    const v4, 0x7f070092

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1379
    const-string v3, "OK"

    const v4, 0x7f0703d4

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1380
    const-string v3, "NoHandleAppInstalled"

    const v4, 0x7f070359

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1381
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/MediaActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_2

    .line 1355
    .end local v2    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v16    # "idx":I
    .restart local v17    # "intent":Landroid/content/Intent;
    .restart local v20    # "myMime":Landroid/webkit/MimeTypeMap;
    :cond_379
    :try_start_379
    const-string v3, "text/plain"

    goto/16 :goto_2f4

    .line 1357
    :cond_37d
    invoke-static {v14}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v21, :cond_38c

    move-object/from16 v3, v21

    :goto_385
    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2f9

    :cond_38c
    const-string v3, "text/plain"

    goto :goto_385

    .line 1366
    .restart local v12    # "e":Ljava/lang/Exception;
    :cond_38f
    invoke-static {v14}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "text/plain"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_320

    .line 1371
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_39b
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0x1f4

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3a6
    .catch Ljava/lang/Exception; {:try_start_379 .. :try_end_3a6} :catch_32d

    goto/16 :goto_2

    .line 1385
    .end local v14    # "f":Ljava/io/File;
    .end local v15    # "fileName":Ljava/lang/String;
    .end local v16    # "idx":I
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v20    # "myMime":Landroid/webkit/MimeTypeMap;
    .end local v21    # "realMimeType":Ljava/lang/String;
    :cond_3a8
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/SharedDocumentCell;->isLoading()Z

    move-result v3

    if-nez v3, :cond_3c4

    .line 1386
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    .line 1387
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon()V

    goto/16 :goto_2

    .line 1389
    :cond_3c4
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 1390
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon()V

    goto/16 :goto_2

    .line 1393
    .end local v11    # "cell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    :cond_3d8
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 1395
    :try_start_3df
    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    move-object/from16 v23, v0

    .line 1396
    .local v23, "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    const/16 v18, 0x0

    .line 1397
    .local v18, "link":Ljava/lang/String;
    if-eqz v23, :cond_41e

    move-object/from16 v0, v23

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_webPageEmpty;

    if-nez v3, :cond_41e

    .line 1398
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_418

    move-object/from16 v0, v23

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_url:Ljava/lang/String;

    if-eqz v3, :cond_418

    move-object/from16 v0, v23

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_url:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_418

    .line 1399
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/telegram/ui/MediaActivity;->openWebView(Lorg/telegram/tgnet/TLRPC$WebPage;)V
    :try_end_410
    .catch Ljava/lang/Exception; {:try_start_3df .. :try_end_410} :catch_412

    goto/16 :goto_2

    .line 1411
    .end local v18    # "link":Ljava/lang/String;
    .end local v23    # "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    .end local p2    # "view":Landroid/view/View;
    :catch_412
    move-exception v12

    .line 1412
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-static {v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 1402
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v18    # "link":Ljava/lang/String;
    .restart local v23    # "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    .restart local p2    # "view":Landroid/view/View;
    :cond_418
    :try_start_418
    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1405
    :cond_41e
    if-nez v18, :cond_429

    .line 1406
    check-cast p2, Lorg/telegram/ui/Cells/SharedLinkCell;

    .end local p2    # "view":Landroid/view/View;
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/SharedLinkCell;->getLink(I)Ljava/lang/String;

    move-result-object v18

    .line 1408
    :cond_429
    if-eqz v18, :cond_2

    .line 1409
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_434
    .catch Ljava/lang/Exception; {:try_start_418 .. :try_end_434} :catch_412

    goto/16 :goto_2
.end method

.method private onItemLongClick(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z
    .registers 10
    .param p1, "item"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "a"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1204
    iget-object v4, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1267
    :goto_a
    return v2

    .line 1208
    :cond_b
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 1210
    .local v0, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/CharSequence;

    const-string v4, "TurboSelect"

    const v5, 0x7f070817

    .line 1211
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v2, "TurboGotoMessage"

    const v4, 0x7f070812

    .line 1212
    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 1214
    .local v1, "items":[Ljava/lang/CharSequence;
    new-instance v2, Lorg/telegram/ui/MediaActivity$10;

    invoke-direct {v2, p0, p1, p2, p3}, Lorg/telegram/ui/MediaActivity$10;-><init>(Lorg/telegram/ui/MediaActivity;Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 1265
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/MediaActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move v2, v3

    .line 1267
    goto :goto_a
.end method

.method private openWebView(Lorg/telegram/tgnet/TLRPC$WebPage;)V
    .registers 9
    .param p1, "webPage"    # Lorg/telegram/tgnet/TLRPC$WebPage;

    .prologue
    .line 1419
    invoke-virtual {p0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->site_name:Ljava/lang/String;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->description:Ljava/lang/String;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_url:Ljava/lang/String;

    iget v5, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_width:I

    iget v6, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_height:I

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/EmbedBottomSheet;->show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1420
    return-void
.end method

.method private showAddToDownload()Z
    .registers 11

    .prologue
    .line 2240
    const/4 v5, 0x0

    .line 2241
    .local v5, "result":Z
    const/4 v0, 0x1

    .local v0, "a":I
    :goto_2
    if-ltz v0, :cond_60

    .line 2242
    new-instance v3, Ljava/util/ArrayList;

    iget-object v6, p0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2243
    .local v3, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 2244
    .local v1, "currentEncryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    iget-wide v6, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v6, v6

    if-nez v6, :cond_29

    .line 2245
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v8, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    const/16 v7, 0x20

    shr-long/2addr v8, v7

    long-to-int v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v1

    .line 2247
    :cond_29
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5d

    .line 2248
    if-nez v1, :cond_5d

    .line 2249
    iget-object v6, p0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3d
    :goto_3d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2250
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/MessageObject;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 2251
    .local v4, "msg":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result v7

    if-nez v7, :cond_3d

    invoke-direct {p0, v4}, Lorg/telegram/ui/MediaActivity;->downloaded(Lorg/telegram/messenger/MessageObject;)Z

    move-result v7

    if-nez v7, :cond_3d

    .line 2252
    const/4 v5, 0x1

    goto :goto_3d

    .line 2241
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/MessageObject;>;"
    .end local v4    # "msg":Lorg/telegram/messenger/MessageObject;
    :cond_5d
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 2258
    .end local v1    # "currentEncryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v3    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_60
    return v5
.end method

.method private switchToCurrentSelectedMode()V
    .registers 10

    .prologue
    const/4 v4, 0x4

    const/4 v5, 0x3

    const/16 v8, 0x8

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1099
    iget-boolean v0, p0, Lorg/telegram/ui/MediaActivity;->searching:Z

    if-eqz v0, :cond_63

    iget-boolean v0, p0, Lorg/telegram/ui/MediaActivity;->searchWas:Z

    if-eqz v0, :cond_63

    .line 1100
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_22

    .line 1101
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-ne v0, v6, :cond_41

    .line 1102
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->documentsSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 1103
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->documentsSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->notifyDataSetChanged()V

    .line 1112
    :cond_22
    :goto_22
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_40

    .line 1113
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string v1, "NoResult"

    const v2, 0x7f070368

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1114
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1115
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1201
    :cond_40
    :goto_40
    return-void

    .line 1104
    :cond_41
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-ne v0, v5, :cond_52

    .line 1105
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->linksSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 1106
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->linksSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->notifyDataSetChanged()V

    goto :goto_22

    .line 1107
    :cond_52
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-ne v0, v4, :cond_22

    .line 1108
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->audioSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 1109
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->audioSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->notifyDataSetChanged()V

    goto :goto_22

    .line 1118
    :cond_63
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41880000    # 17.0f

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1119
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1120
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-nez v0, :cond_102

    .line 1121
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 1122
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const-string v1, "SharedMediaTitle"

    const v3, 0x7f07050a

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1123
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyImageView:Landroid/widget/ImageView;

    const v1, 0x7f020272

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1124
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v0, v0

    if-nez v0, :cond_e6

    .line 1125
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string v1, "NoMediaSecret"

    const v3, 0x7f07035e

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1129
    :goto_a3
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1130
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->loading:Z
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Z

    move-result v0

    if-eqz v0, :cond_f5

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3500(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 1131
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1132
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 1133
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1138
    :goto_d4
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1139
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    goto/16 :goto_40

    .line 1127
    :cond_e6
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string v1, "NoMedia"

    const v3, 0x7f07035c

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a3

    .line 1135
    :cond_f5
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1136
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_d4

    .line 1140
    :cond_102
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-eq v0, v6, :cond_10a

    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-ne v0, v4, :cond_23d

    .line 1141
    :cond_10a
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-ne v0, v6, :cond_1e4

    .line 1142
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 1143
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const-string v1, "DocumentsTitle"

    const v3, 0x7f0701e7

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1144
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyImageView:Landroid/widget/ImageView;

    const v1, 0x7f020273

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1145
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v0, v0

    if-nez v0, :cond_1d4

    .line 1146
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string v1, "NoSharedFilesSecret"

    const v3, 0x7f07036c

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1160
    :cond_13e
    :goto_13e
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v3, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v3

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3500(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22a

    move v0, v2

    :goto_151
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1161
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->loading:Z
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Z

    move-result v0

    if-nez v0, :cond_196

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->endReached:[Z
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[Z

    move-result-object v0

    aget-boolean v0, v0, v2

    if-nez v0, :cond_196

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3500(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_196

    .line 1162
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    # setter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->loading:Z
    invoke-static {v0, v6}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$402(Lorg/telegram/ui/MediaActivity$SharedMediaData;Z)Z

    .line 1163
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    const/16 v3, 0x32

    iget v5, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-ne v5, v6, :cond_22d

    move v5, v6

    :goto_190
    iget v7, p0, Lorg/telegram/ui/MediaActivity;->classGuid:I

    move v4, v2

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    .line 1165
    :cond_196
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1166
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->loading:Z
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Z

    move-result v0

    if-eqz v0, :cond_230

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3500(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_230

    .line 1167
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1168
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 1169
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1174
    :goto_1c7
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    goto/16 :goto_40

    .line 1148
    :cond_1d4
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string v1, "NoSharedFiles"

    const v3, 0x7f07036b

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_13e

    .line 1150
    :cond_1e4
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-ne v0, v4, :cond_13e

    .line 1151
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->audioAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 1152
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const-string v1, "AudioTitle"

    const v3, 0x7f0700c5

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1153
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyImageView:Landroid/widget/ImageView;

    const v1, 0x7f020275

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1154
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v0, v0

    if-nez v0, :cond_21a

    .line 1155
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string v1, "NoSharedAudioSecret"

    const v3, 0x7f07036a

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_13e

    .line 1157
    :cond_21a
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string v1, "NoSharedAudio"

    const v3, 0x7f070369

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_13e

    :cond_22a
    move v0, v8

    .line 1160
    goto/16 :goto_151

    :cond_22d
    move v5, v4

    .line 1163
    goto/16 :goto_190

    .line 1171
    :cond_230
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1172
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_1c7

    .line 1175
    :cond_23d
    iget v0, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-ne v0, v5, :cond_40

    .line 1176
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 1177
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const-string v1, "LinksTitle"

    const v3, 0x7f0702ea

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1178
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyImageView:Landroid/widget/ImageView;

    const v1, 0x7f020274

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1179
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v0, v0

    if-nez v0, :cond_300

    .line 1180
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string v1, "NoSharedLinksSecret"

    const v3, 0x7f07036e

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1184
    :goto_271
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v0, v0, v5

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3500(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_310

    move v0, v2

    :goto_282
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1185
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->loading:Z
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Z

    move-result v0

    if-nez v0, :cond_2c2

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->endReached:[Z
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[Z

    move-result-object v0

    aget-boolean v0, v0, v2

    if-nez v0, :cond_2c2

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3500(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c2

    .line 1186
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    # setter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->loading:Z
    invoke-static {v0, v6}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$402(Lorg/telegram/ui/MediaActivity$SharedMediaData;Z)Z

    .line 1187
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    const/16 v3, 0x32

    iget v7, p0, Lorg/telegram/ui/MediaActivity;->classGuid:I

    move v4, v2

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    .line 1189
    :cond_2c2
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1190
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->loading:Z
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Z

    move-result v0

    if-eqz v0, :cond_313

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v0, v0, v1

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3500(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_313

    .line 1191
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1192
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 1193
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1198
    :goto_2f3
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    goto/16 :goto_40

    .line 1182
    :cond_300
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string v1, "NoSharedLinks"

    const v3, 0x7f07036d

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_271

    :cond_310
    move v0, v8

    .line 1184
    goto/16 :goto_282

    .line 1195
    :cond_313
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1196
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_2f3
.end method


# virtual methods
.method public DM_AddMessage(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2211
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/MediaActivity$12;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/MediaActivity$12;-><init>(Lorg/telegram/ui/MediaActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2238
    return-void
.end method

.method public allowCaption()Z
    .registers 2

    .prologue
    .line 1063
    const/4 v0, 0x1

    return v0
.end method

.method public cancelButtonPressed()Z
    .registers 2

    .prologue
    .line 1079
    const/4 v0, 0x1

    return v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 24
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 264
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 267
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/MediaActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/MediaActivity$1;-><init>(Lorg/telegram/ui/MediaActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 547
    const/4 v11, 0x1

    .local v11, "a":I
    :goto_2d
    if-ltz v11, :cond_3b

    .line 548
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;

    aget-object v4, v4, v11

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 547
    add-int/lit8 v11, v11, -0x1

    goto :goto_2d

    .line 550
    :cond_3b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I

    .line 551
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->actionModeViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 553
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v16

    .line 554
    .local v16, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/4 v4, 0x0

    const v5, 0x7f0200ea

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/MediaActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/MediaActivity$2;-><init>(Lorg/telegram/ui/MediaActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/MediaActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 601
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Landroid/widget/EditText;

    move-result-object v4

    const-string v5, "Search"

    const v6, 0x7f0704b8

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 602
    const/16 v4, 0xd

    const v5, 0x7f020288

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 603
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 605
    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-direct {v4, v0, v1, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;II)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 606
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 607
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v5, 0x1

    const-string v6, "SharedMediaTitle"

    const v7, 0x7f07050a

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 608
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v5, 0x2

    const-string v6, "DocumentsTitle"

    const v7, 0x7f0701e7

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 609
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v4, v4

    if-eqz v4, :cond_3cc

    .line 610
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v5, 0x5

    const-string v6, "LinksTitle"

    const v7, 0x7f0702ea

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 611
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v5, 0x6

    const-string v6, "AudioTitle"

    const v7, 0x7f0700c5

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 618
    :cond_f6
    :goto_f6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/4 v4, -0x2

    const/high16 v5, -0x40800000    # -1.0f

    const/16 v6, 0x33

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_3ff

    const/high16 v7, 0x42800000    # 64.0f

    :goto_111
    const/4 v8, 0x0

    const/high16 v9, 0x42200000    # 40.0f

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 619
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v5, Lorg/telegram/ui/MediaActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/MediaActivity$3;-><init>(Lorg/telegram/ui/MediaActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 626
    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    .line 627
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 628
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 629
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 630
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 631
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 632
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const-string v5, "actionBarDefaultTitle"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 633
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const-string v5, "fonts/rmedium.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 634
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200f6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/MediaActivity;->dropDownDrawable:Landroid/graphics/drawable/Drawable;

    .line 635
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->dropDownDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    const-string v6, "actionBarDefaultTitle"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 636
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/MediaActivity;->dropDownDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 637
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 638
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/4 v4, -0x2

    const/high16 v5, -0x40000000    # -2.0f

    const/16 v6, 0x10

    const/high16 v7, 0x41800000    # 16.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 641
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v12

    .line 643
    .local v12, "actionMode":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    new-instance v4, Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/telegram/ui/Components/NumberTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    .line 644
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v5, 0x12

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    .line 645
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const-string v5, "fonts/rmedium.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/NumberTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 646
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const-string v5, "actionBarActionModeDefaultIcon"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    .line 647
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    new-instance v5, Lorg/telegram/ui/MediaActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/MediaActivity$4;-><init>(Lorg/telegram/ui/MediaActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/NumberTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    move-object/from16 v19, v0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v7, 0x41

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v12, v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 655
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v4, v4

    if-eqz v4, :cond_28c

    .line 657
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->actionModeViews:Ljava/util/ArrayList;

    const/16 v5, 0xf

    const v6, 0x7f0200e1

    const/high16 v7, 0x42340000    # 45.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v12, v5, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    const/16 v4, 0xf

    invoke-virtual {v12, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 660
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->actionModeViews:Ljava/util/ArrayList;

    const/4 v5, 0x3

    const v6, 0x7f0200e4

    const/high16 v7, 0x42580000    # 54.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v12, v5, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    :cond_28c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->actionModeViews:Ljava/util/ArrayList;

    const/4 v5, 0x4

    const v6, 0x7f0200df

    const/high16 v7, 0x42580000    # 54.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v12, v5, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    new-instance v4, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;-><init>(Lorg/telegram/ui/MediaActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    .line 665
    new-instance v4, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1, v5}, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;-><init>(Lorg/telegram/ui/MediaActivity;Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    .line 666
    new-instance v4, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    const/4 v5, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1, v5}, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;-><init>(Lorg/telegram/ui/MediaActivity;Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/MediaActivity;->audioAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    .line 667
    new-instance v4, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1, v5}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;-><init>(Lorg/telegram/ui/MediaActivity;Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/MediaActivity;->documentsSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    .line 668
    new-instance v4, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    const/4 v5, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1, v5}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;-><init>(Lorg/telegram/ui/MediaActivity;Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/MediaActivity;->audioSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    .line 669
    new-instance v4, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    const/4 v5, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1, v5}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;-><init>(Lorg/telegram/ui/MediaActivity;Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/MediaActivity;->linksSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    .line 670
    new-instance v4, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;-><init>(Lorg/telegram/ui/MediaActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    .line 673
    new-instance v14, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .local v14, "frameLayout":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/telegram/ui/MediaActivity;->fragmentView:Landroid/view/View;

    .line 675
    const/16 v18, -0x1

    .line 676
    .local v18, "scrollToPositionOnRecreate":I
    const/16 v17, 0x0

    .line 677
    .local v17, "scrollToOffsetOnRecreate":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    if-eqz v4, :cond_340

    .line 678
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v18

    .line 679
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getItemCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v18

    if-eq v0, v4, :cond_407

    .line 680
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/RecyclerListView;->findViewHolderForAdapterPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v15

    check-cast v15, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 681
    .local v15, "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    if-eqz v15, :cond_403

    .line 682
    iget-object v4, v15, Lorg/telegram/ui/Components/RecyclerListView$Holder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v17

    .line 691
    .end local v15    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    :cond_340
    :goto_340
    new-instance v4, Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 692
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 693
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setSectionsType(I)V

    .line 694
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v6, v7}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/telegram/ui/MediaActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 695
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 696
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/MediaActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/MediaActivity$5;-><init>(Lorg/telegram/ui/MediaActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 706
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/MediaActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/MediaActivity$6;-><init>(Lorg/telegram/ui/MediaActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 747
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/MediaActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/MediaActivity$7;-><init>(Lorg/telegram/ui/MediaActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 762
    const/4 v4, -0x1

    move/from16 v0, v18

    if-eq v0, v4, :cond_3b7

    .line 763
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 766
    :cond_3b7
    const/4 v11, 0x0

    :goto_3b8
    const/4 v4, 0x6

    if-ge v11, v4, :cond_40b

    .line 767
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->cellCache:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    add-int/lit8 v11, v11, 0x1

    goto :goto_3b8

    .line 613
    .end local v12    # "actionMode":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .end local v14    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v17    # "scrollToOffsetOnRecreate":I
    .end local v18    # "scrollToPositionOnRecreate":I
    :cond_3cc
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    const/16 v5, 0x20

    shr-long/2addr v6, v5

    long-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v13

    .line 614
    .local v13, "currentEncryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-eqz v13, :cond_f6

    iget v4, v13, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v5, 0x2e

    if-lt v4, v5, :cond_f6

    .line 615
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v5, 0x6

    const-string v6, "AudioTitle"

    const v7, 0x7f0700c5

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    goto/16 :goto_f6

    .line 618
    .end local v13    # "currentEncryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    :cond_3ff
    const/high16 v7, 0x42600000    # 56.0f

    goto/16 :goto_111

    .line 684
    .restart local v12    # "actionMode":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .restart local v14    # "frameLayout":Landroid/widget/FrameLayout;
    .restart local v15    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .restart local v17    # "scrollToOffsetOnRecreate":I
    .restart local v18    # "scrollToPositionOnRecreate":I
    :cond_403
    const/16 v18, -0x1

    goto/16 :goto_340

    .line 687
    .end local v15    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    :cond_407
    const/16 v18, -0x1

    goto/16 :goto_340

    .line 770
    :cond_40b
    new-instance v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    .line 771
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 772
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 773
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 774
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    const-string v5, "windowBackgroundGray"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 775
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    const/4 v5, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 776
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    new-instance v5, Lorg/telegram/ui/MediaActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/MediaActivity$8;-><init>(Lorg/telegram/ui/MediaActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 783
    new-instance v4, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/MediaActivity;->emptyImageView:Landroid/widget/ImageView;

    .line 784
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/MediaActivity;->emptyImageView:Landroid/widget/ImageView;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 786
    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    .line 787
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const-string v5, "windowBackgroundWhiteGrayText2"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 788
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 789
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const/4 v5, 0x1

    const/high16 v6, 0x41880000    # 17.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 790
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    const/high16 v7, 0x42200000    # 40.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/high16 v8, 0x43000000    # 128.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/16 v6, 0x11

    const/4 v7, 0x0

    const/16 v8, 0x18

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 793
    new-instance v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    .line 794
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 795
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 796
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 797
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    const-string v5, "windowBackgroundGray"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 798
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    const/4 v5, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 800
    new-instance v4, Lorg/telegram/ui/Components/RadialProgressView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/MediaActivity;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    .line 801
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/MediaActivity;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 803
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/MediaActivity;->switchToCurrentSelectedMode()V

    .line 805
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-nez v4, :cond_563

    .line 806
    new-instance v19, Lorg/telegram/ui/Components/FragmentContextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/FragmentContextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/MediaActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    const/4 v4, -0x1

    const/high16 v5, 0x421c0000    # 39.0f

    const/16 v6, 0x33

    const/4 v7, 0x0

    const/high16 v8, -0x3df00000    # -36.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v14, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 809
    :cond_563
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->fragmentView:Landroid/view/View;

    return-object v4
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 30
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 814
    sget v2, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoaded:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_209

    .line 815
    const/4 v2, 0x0

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 816
    .local v24, "uid":J
    const/4 v2, 0x3

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 817
    .local v16, "guid":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->classGuid:I

    move/from16 v0, v16

    if-ne v0, v2, :cond_1bd

    .line 818
    const/4 v2, 0x4

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 819
    .local v7, "type":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v2, v2, v7

    const/4 v3, 0x0

    # setter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->loading:Z
    invoke-static {v2, v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$402(Lorg/telegram/ui/MediaActivity$SharedMediaData;Z)Z

    .line 820
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v3, v2, v7

    const/4 v2, 0x1

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # setter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->totalCount:I
    invoke-static {v3, v2}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3402(Lorg/telegram/ui/MediaActivity$SharedMediaData;I)I

    .line 821
    const/4 v2, 0x2

    aget-object v11, p2, v2

    check-cast v11, Ljava/util/ArrayList;

    .line 822
    .local v11, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v2, v2

    if-nez v2, :cond_7b

    const/4 v15, 0x1

    .line 823
    .local v15, "enc":Z
    :goto_52
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    cmp-long v2, v24, v2

    if-nez v2, :cond_7d

    const/16 v18, 0x0

    .line 824
    .local v18, "loadIndex":I
    :goto_5c
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_5d
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_c9

    .line 825
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/telegram/messenger/MessageObject;

    .line 828
    .local v20, "message":Lorg/telegram/messenger/MessageObject;
    const/4 v2, 0x3

    if-ne v7, v2, :cond_80

    .line 829
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v2, v2, v7

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v3, v15}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->addMessage(Lorg/telegram/messenger/MessageObject;ZZ)Z

    .line 824
    :cond_78
    :goto_78
    add-int/lit8 v10, v10, 0x1

    goto :goto_5d

    .line 822
    .end local v10    # "a":I
    .end local v15    # "enc":Z
    .end local v18    # "loadIndex":I
    .end local v20    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_7b
    const/4 v15, 0x0

    goto :goto_52

    .line 823
    .restart local v15    # "enc":Z
    :cond_7d
    const/16 v18, 0x1

    goto :goto_5c

    .line 831
    .restart local v10    # "a":I
    .restart local v18    # "loadIndex":I
    .restart local v20    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_80
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->filterType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9e

    .line 832
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/telegram/ui/MediaActivity;->downloaded(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 833
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v2, v2, v7

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v3, v15}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->addMessage(Lorg/telegram/messenger/MessageObject;ZZ)Z

    goto :goto_78

    .line 834
    :cond_9e
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->filterType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_bc

    .line 835
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/telegram/ui/MediaActivity;->downloaded(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    if-nez v2, :cond_78

    .line 836
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v2, v2, v7

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v3, v15}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->addMessage(Lorg/telegram/messenger/MessageObject;ZZ)Z

    goto :goto_78

    .line 838
    :cond_bc
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v2, v2, v7

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v3, v15}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->addMessage(Lorg/telegram/messenger/MessageObject;ZZ)Z

    goto :goto_78

    .line 842
    .end local v20    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_c9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v2, v2, v7

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->endReached:[Z
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[Z

    move-result-object v3

    const/4 v2, 0x5

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v3, v18

    .line 843
    if-nez v18, :cond_12c

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v2, v2, v3

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3500(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12c

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/MediaActivity;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_12c

    .line 844
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v2, v2, v3

    const/4 v3, 0x1

    # setter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->loading:Z
    invoke-static {v2, v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$402(Lorg/telegram/ui/MediaActivity$SharedMediaData;Z)Z

    .line 845
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/MediaActivity;->mergeDialogId:J

    const/4 v4, 0x0

    const/16 v5, 0x32

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v6, v6, v8

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->max_id:[I
    invoke-static {v6}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$200(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[I

    move-result-object v6

    const/4 v8, 0x1

    aget v6, v6, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/MediaActivity;->classGuid:I

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    .line 847
    :cond_12c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v2, v2, v3

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->loading:Z
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Z

    move-result v2

    if-nez v2, :cond_16c

    .line 848
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_14b

    .line 849
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 851
    :cond_14b
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-ne v2, v7, :cond_16c

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v2, :cond_16c

    .line 852
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getEmptyView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_16c

    .line 853
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 857
    :cond_16c
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/MediaActivity;->scrolling:Z

    .line 858
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-nez v2, :cond_1be

    if-nez v7, :cond_1be

    .line 859
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    if-eqz v2, :cond_186

    .line 860
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->notifyDataSetChanged()V

    .line 875
    :cond_186
    :goto_186
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_19b

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_19b

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1bd

    .line 876
    :cond_19b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v2, v2, v4

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3500(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_206

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/MediaActivity;->searching:Z

    if-nez v2, :cond_206

    const/4 v2, 0x0

    :goto_1ba
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 968
    .end local v7    # "type":I
    .end local v10    # "a":I
    .end local v11    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v15    # "enc":Z
    .end local v16    # "guid":I
    .end local v18    # "loadIndex":I
    .end local v24    # "uid":J
    :cond_1bd
    :goto_1bd
    return-void

    .line 862
    .restart local v7    # "type":I
    .restart local v10    # "a":I
    .restart local v11    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v15    # "enc":Z
    .restart local v16    # "guid":I
    .restart local v18    # "loadIndex":I
    .restart local v24    # "uid":J
    :cond_1be
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d6

    const/4 v2, 0x1

    if-ne v7, v2, :cond_1d6

    .line 863
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    if-eqz v2, :cond_186

    .line 864
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->notifyDataSetChanged()V

    goto :goto_186

    .line 866
    :cond_1d6
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1ee

    const/4 v2, 0x3

    if-ne v7, v2, :cond_1ee

    .line 867
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    if-eqz v2, :cond_186

    .line 868
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->notifyDataSetChanged()V

    goto :goto_186

    .line 870
    :cond_1ee
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_186

    const/4 v2, 0x4

    if-ne v7, v2, :cond_186

    .line 871
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->audioAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    if-eqz v2, :cond_186

    .line 872
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->audioAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->notifyDataSetChanged()V

    goto :goto_186

    .line 876
    :cond_206
    const/16 v2, 0x8

    goto :goto_1ba

    .line 879
    .end local v7    # "type":I
    .end local v10    # "a":I
    .end local v11    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v15    # "enc":Z
    .end local v16    # "guid":I
    .end local v18    # "loadIndex":I
    .end local v24    # "uid":J
    :cond_209
    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_2fc

    .line 880
    const/4 v13, 0x0

    .line 881
    .local v13, "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v2, v2

    if-gez v2, :cond_229

    .line 882
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v3, v4

    neg-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v13

    .line 884
    :cond_229
    const/4 v2, 0x1

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 885
    .local v12, "channelId":I
    const/16 v18, 0x0

    .line 886
    .restart local v18    # "loadIndex":I
    invoke-static {v13}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_281

    .line 887
    if-nez v12, :cond_27a

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/MediaActivity;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_27a

    .line 888
    const/16 v18, 0x1

    .line 897
    :cond_248
    :goto_248
    const/4 v2, 0x0

    aget-object v19, p2, v2

    check-cast v19, Ljava/util/ArrayList;

    .line 898
    .local v19, "markAsDeletedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v26, 0x0

    .line 899
    .local v26, "updated":Z
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_253
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_285

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 900
    .local v17, "ids":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    array-length v5, v4

    const/4 v2, 0x0

    :goto_265
    if-ge v2, v5, :cond_253

    aget-object v14, v4, v2

    .line 901
    .local v14, "data":Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move/from16 v0, v18

    invoke-virtual {v14, v6, v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->deleteMessage(II)Z

    move-result v6

    if-eqz v6, :cond_277

    .line 902
    const/16 v26, 0x1

    .line 900
    :cond_277
    add-int/lit8 v2, v2, 0x1

    goto :goto_265

    .line 889
    .end local v14    # "data":Lorg/telegram/ui/MediaActivity$SharedMediaData;
    .end local v17    # "ids":Ljava/lang/Integer;
    .end local v19    # "markAsDeletedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v26    # "updated":Z
    :cond_27a
    iget v2, v13, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    if-ne v12, v2, :cond_1bd

    .line 890
    const/16 v18, 0x0

    goto :goto_248

    .line 894
    :cond_281
    if-eqz v12, :cond_248

    goto/16 :goto_1bd

    .line 906
    .restart local v19    # "markAsDeletedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v26    # "updated":Z
    :cond_285
    if-eqz v26, :cond_1bd

    .line 907
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/MediaActivity;->scrolling:Z

    .line 908
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    if-eqz v2, :cond_299

    .line 909
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->notifyDataSetChanged()V

    .line 911
    :cond_299
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    if-eqz v2, :cond_2a6

    .line 912
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->notifyDataSetChanged()V

    .line 914
    :cond_2a6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    if-eqz v2, :cond_2b3

    .line 915
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->notifyDataSetChanged()V

    .line 917
    :cond_2b3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->audioAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    if-eqz v2, :cond_2c0

    .line 918
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->audioAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->notifyDataSetChanged()V

    .line 920
    :cond_2c0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2d5

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2d5

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1bd

    .line 921
    :cond_2d5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v2, v2, v4

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3500(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2f9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/MediaActivity;->searching:Z

    if-nez v2, :cond_2f9

    const/4 v2, 0x0

    :goto_2f4
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    goto/16 :goto_1bd

    :cond_2f9
    const/16 v2, 0x8

    goto :goto_2f4

    .line 924
    .end local v12    # "channelId":I
    .end local v13    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v18    # "loadIndex":I
    .end local v19    # "markAsDeletedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v26    # "updated":Z
    :cond_2fc
    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_3d0

    .line 925
    const/4 v2, 0x0

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 926
    .restart local v24    # "uid":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    cmp-long v2, v24, v2

    if-nez v2, :cond_1bd

    .line 927
    const/4 v2, 0x1

    aget-object v11, p2, v2

    check-cast v11, Ljava/util/ArrayList;

    .line 928
    .restart local v11    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v2, v2

    if-nez v2, :cond_357

    const/4 v15, 0x1

    .line 929
    .restart local v15    # "enc":Z
    :goto_320
    const/16 v26, 0x0

    .line 930
    .restart local v26    # "updated":Z
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_326
    :goto_326
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_359

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/telegram/messenger/MessageObject;

    .line 931
    .local v23, "obj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v23

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v3, :cond_326

    .line 934
    move-object/from16 v0, v23

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v3}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v7

    .line 935
    .restart local v7    # "type":I
    const/4 v3, -0x1

    if-eq v7, v3, :cond_1bd

    .line 938
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v3, v3, v7

    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v3, v0, v4, v15}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->addMessage(Lorg/telegram/messenger/MessageObject;ZZ)Z

    move-result v3

    if-eqz v3, :cond_326

    .line 939
    const/16 v26, 0x1

    goto :goto_326

    .line 928
    .end local v7    # "type":I
    .end local v15    # "enc":Z
    .end local v23    # "obj":Lorg/telegram/messenger/MessageObject;
    .end local v26    # "updated":Z
    :cond_357
    const/4 v15, 0x0

    goto :goto_320

    .line 942
    .restart local v15    # "enc":Z
    .restart local v26    # "updated":Z
    :cond_359
    if-eqz v26, :cond_1bd

    .line 943
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/MediaActivity;->scrolling:Z

    .line 944
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    if-eqz v2, :cond_36d

    .line 945
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->notifyDataSetChanged()V

    .line 947
    :cond_36d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    if-eqz v2, :cond_37a

    .line 948
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->notifyDataSetChanged()V

    .line 950
    :cond_37a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    if-eqz v2, :cond_387

    .line 951
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->notifyDataSetChanged()V

    .line 953
    :cond_387
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->audioAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    if-eqz v2, :cond_394

    .line 954
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->audioAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->notifyDataSetChanged()V

    .line 956
    :cond_394
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3a9

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3a9

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1bd

    .line 957
    :cond_3a9
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    aget-object v2, v2, v4

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->messages:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3500(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3cd

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/MediaActivity;->searching:Z

    if-nez v2, :cond_3cd

    const/4 v2, 0x0

    :goto_3c8
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    goto/16 :goto_1bd

    :cond_3cd
    const/16 v2, 0x8

    goto :goto_3c8

    .line 961
    .end local v11    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v15    # "enc":Z
    .end local v24    # "uid":J
    .end local v26    # "updated":Z
    :cond_3d0
    sget v2, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_1bd

    .line 962
    const/4 v2, 0x0

    aget-object v21, p2, v2

    check-cast v21, Ljava/lang/Integer;

    .line 963
    .local v21, "msgId":Ljava/lang/Integer;
    const/4 v2, 0x1

    aget-object v22, p2, v2

    check-cast v22, Ljava/lang/Integer;

    .line 964
    .local v22, "newMsgId":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_3e6
    if-ge v2, v4, :cond_1bd

    aget-object v14, v3, v2

    .line 965
    .restart local v14    # "data":Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v14, v5, v6}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->replaceMid(II)V

    .line 964
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e6
.end method

.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .registers 16
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 1022
    if-eqz p1, :cond_a

    iget-object v9, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v9, :cond_a

    iget v9, p0, Lorg/telegram/ui/MediaActivity;->selectedMode:I

    if-eqz v9, :cond_c

    .line 1023
    :cond_a
    const/4 v7, 0x0

    .line 1053
    :goto_b
    return-object v7

    .line 1025
    :cond_c
    iget-object v9, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v3

    .line 1027
    .local v3, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_13
    if-ge v0, v3, :cond_81

    .line 1028
    iget-object v9, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1029
    .local v8, "view":Landroid/view/View;
    instance-of v9, v8, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    if-eqz v9, :cond_2c

    move-object v1, v8

    .line 1030
    check-cast v1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    .line 1031
    .local v1, "cell":Lorg/telegram/ui/Cells/SharedPhotoVideoCell;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_23
    const/4 v9, 0x6

    if-ge v4, v9, :cond_2c

    .line 1032
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->getMessageObject(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    .line 1033
    .local v6, "message":Lorg/telegram/messenger/MessageObject;
    if-nez v6, :cond_2f

    .line 1027
    .end local v1    # "cell":Lorg/telegram/ui/Cells/SharedPhotoVideoCell;
    .end local v4    # "i":I
    .end local v6    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1036
    .restart local v1    # "cell":Lorg/telegram/ui/Cells/SharedPhotoVideoCell;
    .restart local v4    # "i":I
    .restart local v6    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_2f
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->getImageView(I)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v5

    .line 1037
    .local v5, "imageView":Lorg/telegram/ui/Components/BackupImageView;
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    if-ne v9, v10, :cond_7e

    .line 1038
    const/4 v9, 0x2

    new-array v2, v9, [I

    .line 1039
    .local v2, "coords":[I
    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/BackupImageView;->getLocationInWindow([I)V

    .line 1040
    new-instance v7, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-direct {v7}, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;-><init>()V

    .line 1041
    .local v7, "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    const/4 v9, 0x0

    aget v9, v2, v9

    iput v9, v7, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    .line 1042
    const/4 v9, 0x1

    aget v10, v2, v9

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v9, v11, :cond_7b

    const/4 v9, 0x0

    :goto_57
    sub-int v9, v10, v9

    iput v9, v7, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    .line 1043
    iget-object v9, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iput-object v9, v7, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    .line 1044
    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v9

    iput-object v9, v7, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 1045
    iget-object v9, v7, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, v7, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    .line 1046
    iget-object v9, v7, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    invoke-virtual {v9, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1047
    const/high16 v9, 0x42200000    # 40.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    iput v9, v7, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipTopAddition:I

    goto :goto_b

    .line 1042
    :cond_7b
    sget v9, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_57

    .line 1031
    .end local v2    # "coords":[I
    .end local v7    # "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    :cond_7e
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 1053
    .end local v1    # "cell":Lorg/telegram/ui/Cells/SharedPhotoVideoCell;
    .end local v4    # "i":I
    .end local v5    # "imageView":Lorg/telegram/ui/Components/BackupImageView;
    .end local v6    # "message":Lorg/telegram/messenger/MessageObject;
    .end local v8    # "view":Landroid/view/View;
    :cond_81
    const/4 v7, 0x0

    goto :goto_b
.end method

.method public getSelectedCount()I
    .registers 2

    .prologue
    .line 1085
    const/4 v0, 0x0

    return v0
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .registers 13

    .prologue
    .line 2126
    new-instance v9, Lorg/telegram/ui/MediaActivity$11;

    invoke-direct {v9, p0}, Lorg/telegram/ui/MediaActivity$11;-><init>(Lorg/telegram/ui/MediaActivity;)V

    .line 2138
    .local v9, "\u0441ellDelegate":Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;
    const/16 v0, 0x35

    new-array v10, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundGray"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->progressView:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundGray"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultSubmenuBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultSubmenuItem"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->dropDown:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/MediaActivity;->dropDownDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xd

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->emptyView:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "emptyListPlaceholder"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xe

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarActionModeDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xf

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarActionModeDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x10

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_TOPBACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarActionModeDefaultTop"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x11

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarActionModeDefaultSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x12

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultSearch"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x13

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultSearchPlaceholder"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x14

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarActionModeDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x15

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "progressCircle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x16

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->emptyTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhiteGrayText2"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x17

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GraySectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText2"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x18

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GraySectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "graySection"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x19

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "nameTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x1a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "dateTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText3"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x1b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "progressView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "sharedMedia_startStopLoadIcon"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x1c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "statusImageView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "sharedMedia_startStopLoadIcon"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x1d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "checkbox"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x1e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "checkboxCheck"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x1f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "thumbImageView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "files_folderIcon"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x20

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "extTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "files_iconText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x21

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GraySectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText2"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x22

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GraySectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "graySection"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x23

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/LoadingCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "progressBar"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "progressCircle"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x24

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "checkbox"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x25

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "checkboxCheck"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x26

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "titleTextPaint"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x27

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhiteLinkText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x28

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->linkSelectionPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhiteLinkSelection"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x29

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "letterDrawable"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "sharedMedia_linkPlaceholderText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x2a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "letterDrawable"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "sharedMedia_linkPlaceholder"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x2b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedMediaSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x2c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedMediaSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x2d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedMediaSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x2e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "checkbox"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x2f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "checkboxCheck"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x30

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "frameLayout"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "inappPlayerBackground"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x31

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "playButton"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "inappPlayerPlayPause"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x32

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "titleTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "inappPlayerTitle"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x33

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "frameLayout"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "inappPlayerPerformer"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x34

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "closeButton"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "inappPlayerClose"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    return-object v10
.end method

.method public getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 1058
    const/4 v0, 0x0

    return-object v0
.end method

.method public isPhotoChecked(I)Z
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 1073
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 996
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 997
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_15

    .line 998
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 999
    .local v0, "obs":Landroid/view/ViewTreeObserver;
    new-instance v1, Lorg/telegram/ui/MediaActivity$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/MediaActivity$9;-><init>(Lorg/telegram/ui/MediaActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1008
    .end local v0    # "obs":Landroid/view/ViewTreeObserver;
    :cond_15
    return-void
.end method

.method public onFragmentCreate()Z
    .registers 13

    .prologue
    const-wide/16 v10, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 234
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 235
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 236
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 237
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 238
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 239
    invoke-virtual {p0}, Lorg/telegram/ui/MediaActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dialog_id"

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    .line 240
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_38
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    array-length v0, v0

    if-ge v8, v0, :cond_81

    .line 241
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    new-instance v1, Lorg/telegram/ui/MediaActivity$SharedMediaData;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;-><init>(Lorg/telegram/ui/MediaActivity;Lorg/telegram/ui/MediaActivity$1;)V

    aput-object v1, v0, v8

    .line 242
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v0, v0, v8

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->max_id:[I
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$200(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[I

    move-result-object v1

    iget-wide v4, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    long-to-int v0, v4

    if-nez v0, :cond_7d

    const/high16 v0, -0x80000000

    :goto_56
    aput v0, v1, v2

    .line 243
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->mergeDialogId:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_7a

    .line 244
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v0, v0, v8

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->max_id:[I
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$200(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[I

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_max_id:I

    aput v1, v0, v6

    .line 245
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v0, v0, v8

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->endReached:[Z
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[Z

    move-result-object v0

    aput-boolean v2, v0, v6

    .line 240
    :cond_7a
    add-int/lit8 v8, v8, 0x1

    goto :goto_38

    .line 242
    :cond_7d
    const v0, 0x7fffffff

    goto :goto_56

    .line 248
    :cond_81
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    aget-object v0, v0, v2

    # setter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->loading:Z
    invoke-static {v0, v6}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$402(Lorg/telegram/ui/MediaActivity$SharedMediaData;Z)Z

    .line 249
    iget-wide v0, p0, Lorg/telegram/ui/MediaActivity;->dialog_id:J

    const/16 v3, 0x32

    iget v7, p0, Lorg/telegram/ui/MediaActivity;->classGuid:I

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    .line 250
    return v6
.end method

.method public onFragmentDestroy()V
    .registers 3

    .prologue
    .line 255
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 256
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 257
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 258
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 259
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 260
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 972
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 973
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_c

    .line 974
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->closeSubMenu()V

    .line 976
    :cond_c
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 980
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 981
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/MediaActivity;->scrolling:Z

    .line 982
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    if-eqz v0, :cond_f

    .line 983
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->photoVideoAdapter:Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->notifyDataSetChanged()V

    .line 985
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    if-eqz v0, :cond_18

    .line 986
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->documentsAdapter:Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/MediaActivity$SharedDocumentsAdapter;->notifyDataSetChanged()V

    .line 988
    :cond_18
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    if-eqz v0, :cond_21

    .line 989
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->linksAdapter:Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/MediaActivity$SharedLinksAdapter;->notifyDataSetChanged()V

    .line 991
    :cond_21
    invoke-direct {p0}, Lorg/telegram/ui/MediaActivity;->fixLayoutInternal()V

    .line 992
    return-void
.end method

.method public scaleToFill()Z
    .registers 2

    .prologue
    .line 1017
    const/4 v0, 0x0

    return v0
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;)V
    .registers 3
    .param p1, "index"    # I
    .param p2, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;

    .prologue
    .line 1082
    return-void
.end method

.method public setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .registers 4
    .param p1, "chatInfo"    # Lorg/telegram/tgnet/TLRPC$ChatFull;

    .prologue
    .line 1088
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 1089
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_chat_id:I

    if-eqz v0, :cond_14

    .line 1090
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_chat_id:I

    neg-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/ui/MediaActivity;->mergeDialogId:J

    .line 1092
    :cond_14
    return-void
.end method

.method public setMergeDialogId(J)V
    .registers 4
    .param p1, "did"    # J

    .prologue
    .line 1095
    iput-wide p1, p0, Lorg/telegram/ui/MediaActivity;->mergeDialogId:J

    .line 1096
    return-void
.end method

.method public setPhotoChecked(I)V
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 1076
    return-void
.end method

.method public updatePhotoAtIndex(I)V
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 1013
    return-void
.end method

.method public willHidePhotoViewer()V
    .registers 1

    .prologue
    .line 1070
    return-void
.end method

.method public willSwitchFromPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V
    .registers 4
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 1067
    return-void
.end method
