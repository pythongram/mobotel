.class public Lorg/telegram/ui/Telehgram/ChatSettingsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ChatSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;
    }
.end annotation


# instance fields
.field private dialog_id:J

.field private downloadDesRow:I

.field private isUser:Z

.field private listAdapter:Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private mobileDownloadRow:I

.field private resetDesRow:I

.field private resetRow:I

.field private rowCount:I

.field private sendReadStateDesRow:I

.field private sendReadStateRow:I

.field private sendTypingDesRow:I

.field private sendTypingRow:I

.field private wifiDownloadRow:I


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->dialog_id:J

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->isUser:Z

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->rowCount:I

    .line 57
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    .prologue
    .line 36
    iget-boolean v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->isUser:Z

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    .prologue
    .line 36
    iget v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->sendTypingRow:I

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)Landroid/app/Dialog;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->visibleDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)Landroid/app/Dialog;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->visibleDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    .prologue
    .line 36
    iget v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->downloadDesRow:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    .prologue
    .line 36
    iget v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->sendTypingDesRow:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    .prologue
    .line 36
    iget v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->sendReadStateDesRow:I

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    .prologue
    .line 36
    iget v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->resetDesRow:I

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    .prologue
    .line 36
    iget v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)J
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    .prologue
    .line 36
    iget-wide v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->dialog_id:J

    return-wide v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    .prologue
    .line 36
    iget v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->sendReadStateRow:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    .prologue
    .line 36
    iget v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->mobileDownloadRow:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    .prologue
    .line 36
    iget v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->wifiDownloadRow:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)Landroid/app/Dialog;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->visibleDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)Landroid/app/Dialog;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->visibleDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->listAdapter:Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    .prologue
    .line 36
    iget v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->resetRow:I

    return v0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 83
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v2, 0x7f0200dd

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 84
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 85
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v2, "mainconfig"

    const v3, 0x7f070804

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$1;-><init>(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 95
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->fragmentView:Landroid/view/View;

    .line 96
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 97
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    const-string v1, "windowBackgroundGray"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 99
    new-instance v1, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;-><init>(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->listAdapter:Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;

    .line 101
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 102
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-direct {v2, p1, v5, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 103
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 104
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->listAdapter:Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 107
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;-><init>(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 393
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->fragmentView:Landroid/view/View;

    return-object v1
.end method

.method public onFragmentCreate()Z
    .registers 5

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->arguments:Landroid/os/Bundle;

    const-string v1, "dialog_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->dialog_id:J

    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->arguments:Landroid/os/Bundle;

    const-string v1, "is_user"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->isUser:Z

    .line 66
    :cond_1d
    iget v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->mobileDownloadRow:I

    .line 67
    iget v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->wifiDownloadRow:I

    .line 68
    iget v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->downloadDesRow:I

    .line 69
    iget-boolean v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->isUser:Z

    if-eqz v0, :cond_59

    .line 70
    iget v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->sendTypingRow:I

    .line 71
    iget v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->sendTypingDesRow:I

    .line 72
    iget v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->sendReadStateRow:I

    .line 73
    iget v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->sendReadStateDesRow:I

    .line 75
    :cond_59
    iget v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->resetRow:I

    .line 76
    iget v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->resetDesRow:I

    .line 78
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 398
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 399
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->listAdapter:Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;

    if-eqz v0, :cond_c

    .line 400
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->listAdapter:Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->notifyDataSetChanged()V

    .line 402
    :cond_c
    return-void
.end method
