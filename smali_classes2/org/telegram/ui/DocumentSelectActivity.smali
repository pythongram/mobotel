.class public Lorg/telegram/ui/DocumentSelectActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "DocumentSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;,
        Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;,
        Lorg/telegram/ui/DocumentSelectActivity$ListItem;,
        Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;
    }
.end annotation


# static fields
.field private static final done:I = 0x3


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

.field private currentDir:Ljava/io/File;

.field private delegate:Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;

.field private emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private history:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/DocumentSelectActivity$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private listAdapter:Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private receiverRegistered:Z

.field private recentItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/DocumentSelectActivity$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private scrolling:Z

.field private selectedFiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/ui/DocumentSelectActivity$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

.field private sizeLimit:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->receiverRegistered:Z

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->history:Ljava/util/ArrayList;

    .line 77
    const-wide/32 v0, 0x60000000

    iput-wide v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->sizeLimit:J

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedFiles:Ljava/util/HashMap;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionModeViews:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->recentItems:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Lorg/telegram/ui/DocumentSelectActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/DocumentSelectActivity$1;-><init>(Lorg/telegram/ui/DocumentSelectActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->currentDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/DocumentSelectActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/telegram/ui/DocumentSelectActivity;->listRoots()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->listAdapter:Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/DocumentSelectActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/telegram/ui/DocumentSelectActivity;->showErrorBox(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/DocumentSelectActivity;)J
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 60
    iget-wide v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->sizeLimit:J

    return-wide v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/Components/NumberTextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionModeViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->history:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/DocumentSelectActivity;Ljava/io/File;)Z
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/telegram/ui/DocumentSelectActivity;->listFiles(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/DocumentSelectActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/telegram/ui/DocumentSelectActivity;->fixLayoutInternal()V

    return-void
.end method

.method static synthetic access$2600(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->recentItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedFiles:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->delegate:Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/DocumentSelectActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 60
    iget-boolean v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->scrolling:Z

    return v0
.end method

.method static synthetic access$802(Lorg/telegram/ui/DocumentSelectActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lorg/telegram/ui/DocumentSelectActivity;->scrolling:Z

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/DocumentSelectActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DocumentSelectActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method private fixLayoutInternal()V
    .registers 3

    .prologue
    .line 430
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    if-nez v0, :cond_5

    .line 438
    :goto_4
    return-void

    .line 433
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_22

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_22

    .line 434
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    goto :goto_4

    .line 436
    :cond_22
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    goto :goto_4
.end method

.method private getRootSubtitle(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 680
    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 681
    .local v1, "stat":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v8, v8

    mul-long v4, v6, v8

    .line 682
    .local v4, "total":J
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v8, v8

    mul-long v2, v6, v8

    .line 683
    .local v2, "free":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_26

    .line 684
    const-string p1, ""

    .line 690
    .end local v1    # "stat":Landroid/os/StatFs;
    .end local v2    # "free":J
    .end local v4    # "total":J
    .end local p1    # "path":Ljava/lang/String;
    :goto_25
    return-object p1

    .line 686
    .restart local v1    # "stat":Landroid/os/StatFs;
    .restart local v2    # "free":J
    .restart local v4    # "total":J
    .restart local p1    # "path":Ljava/lang/String;
    :cond_26
    const-string v6, "FreeOfTotal"

    const v7, 0x7f07025c

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_41

    move-result-object p1

    goto :goto_25

    .line 687
    .end local v1    # "stat":Landroid/os/StatFs;
    .end local v2    # "free":J
    .end local v4    # "total":J
    :catch_41
    move-exception v0

    .line 688
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_25
.end method

.method private listFiles(Ljava/io/File;)Z
    .registers 14
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 461
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v9

    if-nez v9, :cond_95

    .line 462
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_30

    .line 463
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "/sdcard"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_30

    .line 464
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "/mnt/sdcard"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_87

    .line 465
    :cond_30
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mounted"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_87

    .line 466
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mounted_ro"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_87

    .line 467
    iput-object p1, p0, Lorg/telegram/ui/DocumentSelectActivity;->currentDir:Ljava/io/File;

    .line 468
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 469
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    .line 470
    .local v8, "state":Ljava/lang/String;
    const-string v9, "shared"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_78

    .line 471
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string v10, "UsbActive"

    const v11, 0x7f07055b

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 475
    :goto_69
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->clearDrawableAnimation(Landroid/view/View;)V

    .line 476
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->scrolling:Z

    .line 477
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->listAdapter:Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;

    invoke-virtual {v9}, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->notifyDataSetChanged()V

    .line 478
    const/4 v9, 0x1

    .line 557
    .end local v8    # "state":Ljava/lang/String;
    :goto_77
    return v9

    .line 473
    .restart local v8    # "state":Ljava/lang/String;
    :cond_78
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string v10, "NotMounted"

    const v11, 0x7f070378

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    goto :goto_69

    .line 481
    .end local v8    # "state":Ljava/lang/String;
    :cond_87
    const-string v9, "AccessError"

    const v10, 0x7f070033

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/telegram/ui/DocumentSelectActivity;->showErrorBox(Ljava/lang/String;)V

    .line 482
    const/4 v9, 0x0

    goto :goto_77

    .line 484
    :cond_95
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string v10, "NoFiles"

    const v11, 0x7f070357

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 487
    :try_start_a3
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a6} :catch_b7

    move-result-object v4

    .line 492
    .local v4, "files":[Ljava/io/File;
    if-nez v4, :cond_c1

    .line 493
    const-string v9, "UnknownError"

    const v10, 0x7f070550

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/telegram/ui/DocumentSelectActivity;->showErrorBox(Ljava/lang/String;)V

    .line 494
    const/4 v9, 0x0

    goto :goto_77

    .line 488
    .end local v4    # "files":[Ljava/io/File;
    :catch_b7
    move-exception v1

    .line 489
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/telegram/ui/DocumentSelectActivity;->showErrorBox(Ljava/lang/String;)V

    .line 490
    const/4 v9, 0x0

    goto :goto_77

    .line 496
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "files":[Ljava/io/File;
    :cond_c1
    iput-object p1, p0, Lorg/telegram/ui/DocumentSelectActivity;->currentDir:Ljava/io/File;

    .line 497
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 498
    new-instance v9, Lorg/telegram/ui/DocumentSelectActivity$9;

    invoke-direct {v9, p0}, Lorg/telegram/ui/DocumentSelectActivity$9;-><init>(Lorg/telegram/ui/DocumentSelectActivity;)V

    invoke-static {v4, v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 516
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_d1
    array-length v9, v4

    if-ge v0, v9, :cond_15c

    .line 517
    aget-object v3, v4, v0

    .line 518
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2e

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-nez v9, :cond_e5

    .line 516
    :goto_e2
    add-int/lit8 v0, v0, 0x1

    goto :goto_d1

    .line 521
    :cond_e5
    new-instance v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    const/4 v9, 0x0

    invoke-direct {v6, p0, v9}, Lorg/telegram/ui/DocumentSelectActivity$ListItem;-><init>(Lorg/telegram/ui/DocumentSelectActivity;Lorg/telegram/ui/DocumentSelectActivity$1;)V

    .line 522
    .local v6, "item":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->title:Ljava/lang/String;

    .line 523
    iput-object v3, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    .line 524
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_10f

    .line 525
    const v9, 0x7f020112

    iput v9, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->icon:I

    .line 526
    const-string v9, "Folder"

    const v10, 0x7f070220

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    .line 537
    :cond_109
    :goto_109
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e2

    .line 528
    :cond_10f
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 529
    .local v5, "fname":Ljava/lang/String;
    const-string v9, "\\."

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 530
    .local v7, "sp":[Ljava/lang/String;
    array-length v9, v7

    const/4 v10, 0x1

    if-le v9, v10, :cond_159

    array-length v9, v7

    add-int/lit8 v9, v9, -0x1

    aget-object v9, v7, v9

    :goto_122
    iput-object v9, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->ext:Ljava/lang/String;

    .line 531
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    .line 532
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 533
    const-string v9, ".jpg"

    invoke-virtual {v5, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_152

    const-string v9, ".png"

    invoke-virtual {v5, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_152

    const-string v9, ".gif"

    invoke-virtual {v5, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_152

    const-string v9, ".jpeg"

    invoke-virtual {v5, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_109

    .line 534
    :cond_152
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->thumb:Ljava/lang/String;

    goto :goto_109

    .line 530
    :cond_159
    const-string v9, "?"

    goto :goto_122

    .line 539
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fname":Ljava/lang/String;
    .end local v6    # "item":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .end local v7    # "sp":[Ljava/lang/String;
    :cond_15c
    new-instance v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    const/4 v9, 0x0

    invoke-direct {v6, p0, v9}, Lorg/telegram/ui/DocumentSelectActivity$ListItem;-><init>(Lorg/telegram/ui/DocumentSelectActivity;Lorg/telegram/ui/DocumentSelectActivity$1;)V

    .line 540
    .restart local v6    # "item":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    const-string v9, ".."

    iput-object v9, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->title:Ljava/lang/String;

    .line 541
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1b4

    .line 542
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->history:Ljava/util/ArrayList;

    iget-object v10, p0, Lorg/telegram/ui/DocumentSelectActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;

    .line 543
    .local v2, "entry":Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;
    iget-object v9, v2, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->dir:Ljava/io/File;

    if-nez v9, :cond_1ab

    .line 544
    const-string v9, "Folder"

    const v10, 0x7f070220

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    .line 551
    .end local v2    # "entry":Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;
    :goto_18d
    const v9, 0x7f020112

    iput v9, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->icon:I

    .line 552
    const/4 v9, 0x0

    iput-object v9, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    .line 553
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 554
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->clearDrawableAnimation(Landroid/view/View;)V

    .line 555
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->scrolling:Z

    .line 556
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->listAdapter:Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;

    invoke-virtual {v9}, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->notifyDataSetChanged()V

    .line 557
    const/4 v9, 0x1

    goto/16 :goto_77

    .line 546
    .restart local v2    # "entry":Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;
    :cond_1ab
    iget-object v9, v2, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->dir:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    goto :goto_18d

    .line 549
    .end local v2    # "entry":Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;
    :cond_1b4
    const-string v9, "Folder"

    const v10, 0x7f070220

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    goto :goto_18d
.end method

.method private listRoots()V
    .registers 24
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 569
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/DocumentSelectActivity;->currentDir:Ljava/io/File;

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 572
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 573
    .local v17, "paths":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 574
    .local v5, "defaultPath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v12

    .line 575
    .local v12, "isDefaultPathRemovable":Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 576
    .local v6, "defaultPathState":Ljava/lang/String;
    const-string v21, "mounted"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_3a

    const-string v21, "mounted_ro"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_81

    .line 577
    :cond_3a
    new-instance v8, Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v8, v0, v1}, Lorg/telegram/ui/DocumentSelectActivity$ListItem;-><init>(Lorg/telegram/ui/DocumentSelectActivity;Lorg/telegram/ui/DocumentSelectActivity$1;)V

    .line 578
    .local v8, "ext":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v21

    if-eqz v21, :cond_293

    .line 579
    const-string v21, "SdCard"

    const v22, 0x7f0704b7

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v8, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->title:Ljava/lang/String;

    .line 580
    const v21, 0x7f02011a

    move/from16 v0, v21

    iput v0, v8, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->icon:I

    .line 585
    :goto_5f
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/telegram/ui/DocumentSelectActivity;->getRootSubtitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v8, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    .line 586
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v8, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 591
    .end local v8    # "ext":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    :cond_81
    const/4 v3, 0x0

    .line 593
    .local v3, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_82
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v21, Ljava/io/FileReader;

    const-string v22, "/proc/mounts"

    invoke-direct/range {v21 .. v22}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_90} :catch_2e5
    .catchall {:try_start_82 .. :try_end_90} :catchall_2e3

    .line 595
    .end local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .local v4, "bufferedReader":Ljava/io/BufferedReader;
    :cond_90
    :goto_90
    :try_start_90
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    .local v14, "line":Ljava/lang/String;
    if-eqz v14, :cond_2c0

    .line 596
    const-string v21, "vfat"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_aa

    const-string v21, "/mnt"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_90

    .line 597
    :cond_aa
    invoke-static {v14}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 598
    new-instance v19, Ljava/util/StringTokenizer;

    const-string v21, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v14, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    .local v19, "tokens":Ljava/util/StringTokenizer;
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v20

    .line 600
    .local v20, "unused":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    .line 601
    .local v16, "path":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_90

    .line 604
    const-string v21, "/dev/block/vold"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_90

    .line 605
    const-string v21, "/mnt/secure"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_90

    const-string v21, "/mnt/asec"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_90

    const-string v21, "/mnt/obb"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_90

    const-string v21, "/dev/mapper"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_90

    const-string v21, "tmpfs"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_90

    .line 606
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->isDirectory()Z

    move-result v21

    if-nez v21, :cond_151

    .line 607
    const/16 v21, 0x2f

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .line 608
    .local v11, "index":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v11, v0, :cond_151

    .line 609
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "/storage/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    add-int/lit8 v22, v11, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 610
    .local v15, "newPath":Ljava/lang/String;
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->isDirectory()Z

    move-result v21

    if-eqz v21, :cond_151

    .line 611
    move-object/from16 v16, v15

    .line 615
    .end local v11    # "index":I
    .end local v15    # "newPath":Ljava/lang/String;
    :cond_151
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_158} :catch_1af
    .catchall {:try_start_90 .. :try_end_158} :catchall_2b8

    .line 617
    :try_start_158
    new-instance v13, Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v13, v0, v1}, Lorg/telegram/ui/DocumentSelectActivity$ListItem;-><init>(Lorg/telegram/ui/DocumentSelectActivity;Lorg/telegram/ui/DocumentSelectActivity$1;)V

    .line 618
    .local v13, "item":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    const-string v22, "sd"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_2a9

    .line 619
    const-string v21, "SdCard"

    const v22, 0x7f0704b7

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v13, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->title:Ljava/lang/String;

    .line 623
    :goto_17c
    const v21, 0x7f02011a

    move/from16 v0, v21

    iput v0, v13, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->icon:I

    .line 624
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/telegram/ui/DocumentSelectActivity;->getRootSubtitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v13, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    .line 625
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iput-object v0, v13, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1a7
    .catch Ljava/lang/Exception; {:try_start_158 .. :try_end_1a7} :catch_1a9
    .catchall {:try_start_158 .. :try_end_1a7} :catchall_2b8

    goto/16 :goto_90

    .line 627
    .end local v13    # "item":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    :catch_1a9
    move-exception v7

    .line 628
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1aa
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1ad
    .catch Ljava/lang/Exception; {:try_start_1aa .. :try_end_1ad} :catch_1af
    .catchall {:try_start_1aa .. :try_end_1ad} :catchall_2b8

    goto/16 :goto_90

    .line 634
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v14    # "line":Ljava/lang/String;
    .end local v16    # "path":Ljava/lang/String;
    .end local v19    # "tokens":Ljava/util/StringTokenizer;
    .end local v20    # "unused":Ljava/lang/String;
    :catch_1af
    move-exception v7

    move-object v3, v4

    .line 635
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "e":Ljava/lang/Exception;
    :goto_1b1
    :try_start_1b1
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1b4
    .catchall {:try_start_1b1 .. :try_end_1b4} :catchall_2e3

    .line 637
    if-eqz v3, :cond_1b9

    .line 639
    :try_start_1b6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1b9
    .catch Ljava/lang/Exception; {:try_start_1b6 .. :try_end_1b9} :catch_2cf

    .line 645
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1b9
    :goto_1b9
    new-instance v9, Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v9, v0, v1}, Lorg/telegram/ui/DocumentSelectActivity$ListItem;-><init>(Lorg/telegram/ui/DocumentSelectActivity;Lorg/telegram/ui/DocumentSelectActivity$1;)V

    .line 646
    .local v9, "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    const-string v21, "/"

    move-object/from16 v0, v21

    iput-object v0, v9, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->title:Ljava/lang/String;

    .line 647
    const-string v21, "SystemRoot"

    const v22, 0x7f07052e

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v9, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    .line 648
    const v21, 0x7f020112

    move/from16 v0, v21

    iput v0, v9, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->icon:I

    .line 649
    new-instance v21, Ljava/io/File;

    const-string v22, "/"

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iput-object v0, v9, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    :try_start_1f4
    new-instance v18, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v21

    const-string v22, "Telegram"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 654
    .local v18, "telegramPath":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_23b

    .line 655
    new-instance v10, Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v10, v0, v1}, Lorg/telegram/ui/DocumentSelectActivity$ListItem;-><init>(Lorg/telegram/ui/DocumentSelectActivity;Lorg/telegram/ui/DocumentSelectActivity$1;)V
    :try_end_216
    .catch Ljava/lang/Exception; {:try_start_1f4 .. :try_end_216} :catch_2da

    .line 656
    .end local v9    # "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .local v10, "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    :try_start_216
    const-string v21, "Telegram"

    move-object/from16 v0, v21

    iput-object v0, v10, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->title:Ljava/lang/String;

    .line 657
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v10, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    .line 658
    const v21, 0x7f020112

    move/from16 v0, v21

    iput v0, v10, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->icon:I

    .line 659
    move-object/from16 v0, v18

    iput-object v0, v10, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_23a
    .catch Ljava/lang/Exception; {:try_start_216 .. :try_end_23a} :catch_2e0

    move-object v9, v10

    .line 666
    .end local v10    # "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .end local v18    # "telegramPath":Ljava/io/File;
    .restart local v9    # "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    :cond_23b
    :goto_23b
    new-instance v9, Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    .end local v9    # "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v9, v0, v1}, Lorg/telegram/ui/DocumentSelectActivity$ListItem;-><init>(Lorg/telegram/ui/DocumentSelectActivity;Lorg/telegram/ui/DocumentSelectActivity$1;)V

    .line 667
    .restart local v9    # "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    const-string v21, "Gallery"

    const v22, 0x7f070267

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v9, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->title:Ljava/lang/String;

    .line 668
    const-string v21, "GalleryInfo"

    const v22, 0x7f070268

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v9, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    .line 669
    const v21, 0x7f020186

    move/from16 v0, v21

    iput v0, v9, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->icon:I

    .line 670
    const/16 v21, 0x0

    move-object/from16 v0, v21

    iput-object v0, v9, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DocumentSelectActivity;->items:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->clearDrawableAnimation(Landroid/view/View;)V

    .line 674
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/DocumentSelectActivity;->scrolling:Z

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DocumentSelectActivity;->listAdapter:Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->notifyDataSetChanged()V

    .line 676
    return-void

    .line 582
    .end local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v9    # "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .restart local v8    # "ext":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    :cond_293
    const-string v21, "InternalStorage"

    const v22, 0x7f070297

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v8, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->title:Ljava/lang/String;

    .line 583
    const v21, 0x7f020185

    move/from16 v0, v21

    iput v0, v8, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->icon:I

    goto/16 :goto_5f

    .line 621
    .end local v8    # "ext":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v13    # "item":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "path":Ljava/lang/String;
    .restart local v19    # "tokens":Ljava/util/StringTokenizer;
    .restart local v20    # "unused":Ljava/lang/String;
    :cond_2a9
    :try_start_2a9
    const-string v21, "ExternalStorage"

    const v22, 0x7f070213

    invoke-static/range {v21 .. v22}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v13, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->title:Ljava/lang/String;
    :try_end_2b6
    .catch Ljava/lang/Exception; {:try_start_2a9 .. :try_end_2b6} :catch_1a9
    .catchall {:try_start_2a9 .. :try_end_2b6} :catchall_2b8

    goto/16 :goto_17c

    .line 637
    .end local v13    # "item":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .end local v14    # "line":Ljava/lang/String;
    .end local v16    # "path":Ljava/lang/String;
    .end local v19    # "tokens":Ljava/util/StringTokenizer;
    .end local v20    # "unused":Ljava/lang/String;
    :catchall_2b8
    move-exception v21

    move-object v3, v4

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "bufferedReader":Ljava/io/BufferedReader;
    :goto_2ba
    if-eqz v3, :cond_2bf

    .line 639
    :try_start_2bc
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2bf
    .catch Ljava/lang/Exception; {:try_start_2bc .. :try_end_2bf} :catch_2d5

    .line 642
    :cond_2bf
    :goto_2bf
    throw v21

    .line 637
    .end local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v14    # "line":Ljava/lang/String;
    :cond_2c0
    if-eqz v4, :cond_2e8

    .line 639
    :try_start_2c2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2c5
    .catch Ljava/lang/Exception; {:try_start_2c2 .. :try_end_2c5} :catch_2c8

    move-object v3, v4

    .line 642
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "bufferedReader":Ljava/io/BufferedReader;
    goto/16 :goto_1b9

    .line 640
    .end local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_2c8
    move-exception v7

    .line 641
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v3, v4

    .line 642
    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "bufferedReader":Ljava/io/BufferedReader;
    goto/16 :goto_1b9

    .line 640
    .end local v14    # "line":Ljava/lang/String;
    :catch_2cf
    move-exception v7

    .line 641
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1b9

    .line 640
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_2d5
    move-exception v7

    .line 641
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2bf

    .line 662
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v9    # "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    :catch_2da
    move-exception v7

    .line 663
    .restart local v7    # "e":Ljava/lang/Exception;
    :goto_2db
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_23b

    .line 662
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .restart local v10    # "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .restart local v18    # "telegramPath":Ljava/io/File;
    :catch_2e0
    move-exception v7

    move-object v9, v10

    .end local v10    # "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .restart local v9    # "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    goto :goto_2db

    .line 637
    .end local v9    # "fs":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .end local v18    # "telegramPath":Ljava/io/File;
    :catchall_2e3
    move-exception v21

    goto :goto_2ba

    .line 634
    :catch_2e5
    move-exception v7

    goto/16 :goto_1b1

    .end local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v14    # "line":Ljava/lang/String;
    :cond_2e8
    move-object v3, v4

    .end local v4    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "bufferedReader":Ljava/io/BufferedReader;
    goto/16 :goto_1b9
.end method

.method private showErrorBox(Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 561
    invoke-virtual {p0}, Lorg/telegram/ui/DocumentSelectActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_7

    .line 565
    :goto_6
    return-void

    .line 564
    :cond_7
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/DocumentSelectActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "AppName"

    const v2, 0x7f070092

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    const v2, 0x7f0703d4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_6
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v12, -0x40800000    # -1.0f

    const/4 v11, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 146
    iget-boolean v2, p0, Lorg/telegram/ui/DocumentSelectActivity;->receiverRegistered:Z

    if-nez v2, :cond_49

    .line 147
    iput-boolean v11, p0, Lorg/telegram/ui/DocumentSelectActivity;->receiverRegistered:Z

    .line 148
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 149
    .local v8, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v2, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v2, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v2, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v2, "file"

    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 159
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/telegram/ui/DocumentSelectActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    .end local v8    # "filter":Landroid/content/IntentFilter;
    :cond_49
    iget-object v2, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v3, v0}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    iget-object v2, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v11}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 164
    iget-object v2, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "SelectFile"

    const v4, 0x7f0704d3

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v2, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/DocumentSelectActivity$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/DocumentSelectActivity$2;-><init>(Lorg/telegram/ui/DocumentSelectActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 194
    iget-object v2, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 195
    iget-object v2, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionModeViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 197
    iget-object v2, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v7

    .line 199
    .local v7, "actionMode":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    new-instance v2, Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/NumberTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    .line 200
    iget-object v2, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    .line 201
    iget-object v2, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const-string v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/NumberTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 202
    iget-object v2, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const-string v3, "actionBarActionModeDefaultIcon"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    .line 203
    iget-object v2, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    new-instance v3, Lorg/telegram/ui/DocumentSelectActivity$3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/DocumentSelectActivity$3;-><init>(Lorg/telegram/ui/DocumentSelectActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/NumberTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 209
    iget-object v10, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x41

    move v4, v0

    move v5, v0

    move v6, v0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v7, v10, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    iget-object v2, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionModeViews:Ljava/util/ArrayList;

    const/4 v3, 0x3

    const v4, 0x7f0200e0

    const/high16 v5, 0x42580000    # 54.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v7, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/DocumentSelectActivity;->fragmentView:Landroid/view/View;

    .line 214
    iget-object v9, p0, Lorg/telegram/ui/DocumentSelectActivity;->fragmentView:Landroid/view/View;

    check-cast v9, Landroid/widget/FrameLayout;

    .line 216
    .local v9, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v2, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/DocumentSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    .line 217
    iget-object v2, p0, Lorg/telegram/ui/DocumentSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 218
    iget-object v2, p0, Lorg/telegram/ui/DocumentSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-static {v1, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 221
    iget-object v2, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 222
    iget-object v2, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-direct {v3, p1, v11, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v3, p0, Lorg/telegram/ui/DocumentSelectActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, p0, Lorg/telegram/ui/DocumentSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;-><init>(Lorg/telegram/ui/DocumentSelectActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/DocumentSelectActivity;->listAdapter:Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 225
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v1, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/DocumentSelectActivity$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/DocumentSelectActivity$4;-><init>(Lorg/telegram/ui/DocumentSelectActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 233
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/DocumentSelectActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/DocumentSelectActivity$5;-><init>(Lorg/telegram/ui/DocumentSelectActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 280
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/DocumentSelectActivity$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/DocumentSelectActivity$6;-><init>(Lorg/telegram/ui/DocumentSelectActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 359
    invoke-direct {p0}, Lorg/telegram/ui/DocumentSelectActivity;->listRoots()V

    .line 361
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .registers 12

    .prologue
    .line 770
    const/16 v0, 0x16

    new-array v9, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "emptyListPlaceholder"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarActionModeDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarActionModeDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_TOPBACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarActionModeDefaultTop"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_AM_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarActionModeDefaultSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarActionModeDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v10, 0xd

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    aput-object v0, v9, v10

    const/16 v8, 0xe

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    aput-object v0, v9, v8

    const/16 v10, 0xf

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    aput-object v0, v9, v10

    const/16 v10, 0x10

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    aput-object v0, v9, v10

    const/16 v10, 0x11

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    aput-object v0, v9, v10

    const/16 v10, 0x12

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    aput-object v0, v9, v10

    const/16 v10, 0x13

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    aput-object v0, v9, v10

    const/16 v10, 0x14

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    or-int/2addr v2, v3

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

    const-string v8, "files_folderIconBackground"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x15

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    aput-object v0, v9, v10

    return-object v9
.end method

.method public loadRecentFiles()V
    .registers 11

    .prologue
    .line 366
    :try_start_0
    sget-object v7, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 367
    .local v3, "files":[Ljava/io/File;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_b
    array-length v7, v3

    if-ge v0, v7, :cond_7e

    .line 368
    aget-object v2, v3, v0

    .line 369
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_19

    .line 367
    :goto_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 372
    :cond_19
    new-instance v5, Lorg/telegram/ui/DocumentSelectActivity$ListItem;

    const/4 v7, 0x0

    invoke-direct {v5, p0, v7}, Lorg/telegram/ui/DocumentSelectActivity$ListItem;-><init>(Lorg/telegram/ui/DocumentSelectActivity;Lorg/telegram/ui/DocumentSelectActivity$1;)V

    .line 373
    .local v5, "item":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->title:Ljava/lang/String;

    .line 374
    iput-object v2, v5, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->file:Ljava/io/File;

    .line 375
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 376
    .local v4, "fname":Ljava/lang/String;
    const-string v7, "\\."

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 377
    .local v6, "sp":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x1

    if-le v7, v8, :cond_7b

    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v6, v7

    :goto_3a
    iput-object v7, v5, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->ext:Ljava/lang/String;

    .line 378
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->subtitle:Ljava/lang/String;

    .line 379
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 380
    const-string v7, ".jpg"

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6a

    const-string v7, ".png"

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6a

    const-string v7, ".gif"

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6a

    const-string v7, ".jpeg"

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_70

    .line 381
    :cond_6a
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lorg/telegram/ui/DocumentSelectActivity$ListItem;->thumb:Ljava/lang/String;

    .line 383
    :cond_70
    iget-object v7, p0, Lorg/telegram/ui/DocumentSelectActivity;->recentItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_75} :catch_76

    goto :goto_16

    .line 399
    .end local v0    # "a":I
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    .end local v4    # "fname":Ljava/lang/String;
    .end local v5    # "item":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .end local v6    # "sp":[Ljava/lang/String;
    :catch_76
    move-exception v1

    .line 400
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 402
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_7a
    return-void

    .line 377
    .restart local v0    # "a":I
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "files":[Ljava/io/File;
    .restart local v4    # "fname":Ljava/lang/String;
    .restart local v5    # "item":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .restart local v6    # "sp":[Ljava/lang/String;
    :cond_7b
    :try_start_7b
    const-string v7, "?"

    goto :goto_3a

    .line 385
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "fname":Ljava/lang/String;
    .end local v5    # "item":Lorg/telegram/ui/DocumentSelectActivity$ListItem;
    .end local v6    # "sp":[Ljava/lang/String;
    :cond_7e
    iget-object v7, p0, Lorg/telegram/ui/DocumentSelectActivity;->recentItems:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/ui/DocumentSelectActivity$7;

    invoke-direct {v8, p0}, Lorg/telegram/ui/DocumentSelectActivity$7;-><init>(Lorg/telegram/ui/DocumentSelectActivity;)V

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_88} :catch_76

    goto :goto_7a
.end method

.method public onBackPressed()Z
    .registers 5

    .prologue
    .line 442
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_37

    .line 443
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->history:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/DocumentSelectActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;

    .line 444
    .local v0, "he":Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, v0, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v1, v0, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->dir:Ljava/io/File;

    if-eqz v1, :cond_33

    .line 446
    iget-object v1, v0, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->dir:Ljava/io/File;

    invoke-direct {p0, v1}, Lorg/telegram/ui/DocumentSelectActivity;->listFiles(Ljava/io/File;)Z

    .line 450
    :goto_28
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    iget v2, v0, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->scrollItem:I

    iget v3, v0, Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;->scrollOffset:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 451
    const/4 v1, 0x0

    .line 453
    .end local v0    # "he":Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;
    :goto_32
    return v1

    .line 448
    .restart local v0    # "he":Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;
    :cond_33
    invoke-direct {p0}, Lorg/telegram/ui/DocumentSelectActivity;->listRoots()V

    goto :goto_28

    .line 453
    .end local v0    # "he":Lorg/telegram/ui/DocumentSelectActivity$HistoryEntry;
    :cond_37
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed()Z

    move-result v1

    goto :goto_32
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 415
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 416
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_15

    .line 417
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 418
    .local v0, "obs":Landroid/view/ViewTreeObserver;
    new-instance v1, Lorg/telegram/ui/DocumentSelectActivity$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/DocumentSelectActivity$8;-><init>(Lorg/telegram/ui/DocumentSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 427
    .end local v0    # "obs":Landroid/view/ViewTreeObserver;
    :cond_15
    return-void
.end method

.method public onFragmentCreate()Z
    .registers 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lorg/telegram/ui/DocumentSelectActivity;->loadRecentFiles()V

    .line 129
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .registers 4

    .prologue
    .line 135
    :try_start_0
    iget-boolean v1, p0, Lorg/telegram/ui/DocumentSelectActivity;->receiverRegistered:Z

    if-eqz v1, :cond_b

    .line 136
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/DocumentSelectActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_f

    .line 141
    :cond_b
    :goto_b
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 142
    return-void

    .line 138
    :catch_f
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 406
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 407
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->listAdapter:Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;

    if-eqz v0, :cond_c

    .line 408
    iget-object v0, p0, Lorg/telegram/ui/DocumentSelectActivity;->listAdapter:Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/DocumentSelectActivity$ListAdapter;->notifyDataSetChanged()V

    .line 410
    :cond_c
    invoke-direct {p0}, Lorg/telegram/ui/DocumentSelectActivity;->fixLayoutInternal()V

    .line 411
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;)V
    .registers 2
    .param p1, "delegate"    # Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;

    .prologue
    .line 457
    iput-object p1, p0, Lorg/telegram/ui/DocumentSelectActivity;->delegate:Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;

    .line 458
    return-void
.end method
