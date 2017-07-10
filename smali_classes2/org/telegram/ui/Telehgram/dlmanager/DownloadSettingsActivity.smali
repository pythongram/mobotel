.class public Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "DownloadSettingsActivity.java"

# interfaces
.implements Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;
    }
.end annotation


# instance fields
.field private activeDaysRow:I

.field days:[Z

.field private disableWifiRow:I

.field private enableDMRow:I

.field private enableWifiRow:I

.field private endTimeRow:I

.field private justTodayRow:I

.field private listAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private rowCount:I

.field private startTimeRow:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 39
    const/4 v0, 0x7

    new-array v0, v0, [Z

    fill-array-data v0, :array_10

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->days:[Z

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->rowCount:I

    return-void

    .line 39
    nop

    :array_10
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    .prologue
    .line 35
    iget v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->enableDMRow:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    .prologue
    .line 35
    iget v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->justTodayRow:I

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    .prologue
    .line 35
    iget v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    .prologue
    .line 35
    iget v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->activeDaysRow:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)Landroid/app/Dialog;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->visibleDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)Landroid/app/Dialog;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->visibleDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->listAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    .prologue
    .line 35
    iget v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->startTimeRow:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    .prologue
    .line 35
    iget v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->endTimeRow:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    .prologue
    .line 35
    iget v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->enableWifiRow:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;

    .prologue
    .line 35
    iget v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->disableWifiRow:I

    return v0
.end method

.method private setRepeatAlarm(IIIII)V
    .registers 14
    .param p1, "day"    # I
    .param p2, "sHour"    # I
    .param p3, "sMinute"    # I
    .param p4, "eHour"    # I
    .param p5, "eMinute"    # I

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xc

    const/16 v5, 0xb

    const/4 v4, 0x7

    const/4 v3, 0x0

    .line 496
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 497
    .local v1, "mCalendar_r":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 498
    .local v0, "mCalendarEnd_r":Ljava/util/Calendar;
    invoke-virtual {v1, v4, p1}, Ljava/util/Calendar;->set(II)V

    .line 499
    invoke-virtual {v1, v5, p2}, Ljava/util/Calendar;->set(II)V

    .line 500
    invoke-virtual {v1, v6, p3}, Ljava/util/Calendar;->set(II)V

    .line 501
    invoke-virtual {v1, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 502
    const/16 v2, 0xe

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 503
    invoke-virtual {v0, v4, p1}, Ljava/util/Calendar;->set(II)V

    .line 504
    invoke-virtual {v0, v5, p4}, Ljava/util/Calendar;->set(II)V

    .line 505
    invoke-virtual {v0, v6, p5}, Ljava/util/Calendar;->set(II)V

    .line 506
    invoke-virtual {v0, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 507
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 508
    new-instance v2, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;

    invoke-direct {v2}, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;-><init>()V

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    add-int/lit16 v4, p1, 0x12c

    invoke-virtual {v2, v3, v1, v0, v4}, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->setRepeatAlarm(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;I)V

    .line 509
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 73
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v2, 0x7f0200dd

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 74
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 75
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v2, "TabsSettings"

    const v3, 0x7f0707ea

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$1;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 85
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->fragmentView:Landroid/view/View;

    .line 86
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 87
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    const-string v1, "windowBackgroundGray"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 89
    new-instance v1, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->listAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;

    .line 91
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 92
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-direct {v2, p1, v5, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 93
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 94
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->listAdapter:Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$ListAdapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 97
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity$2;-><init>(Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 277
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->fragmentView:Landroid/view/View;

    return-object v1
.end method

.method public onFragmentCreate()Z
    .registers 3

    .prologue
    .line 53
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 55
    iget v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->enableDMRow:I

    .line 56
    iget v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->justTodayRow:I

    .line 57
    iget v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->activeDaysRow:I

    .line 58
    iget v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->startTimeRow:I

    .line 59
    iget v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->endTimeRow:I

    .line 60
    iget v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->enableWifiRow:I

    .line 61
    iget v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->disableWifiRow:I

    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .registers 1

    .prologue
    .line 68
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 69
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 282
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 283
    return-void
.end method

.method public onTimeSet(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;III)V
    .registers 5
    .param p1, "view"    # Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I
    .param p4, "second"    # I

    .prologue
    .line 295
    return-void
.end method

.method public saveReminder()V
    .registers 12

    .prologue
    .line 447
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "mainconfig"

    const/4 v10, 0x0

    invoke-virtual {v0, v1, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 448
    .local v9, "preferences":Landroid/content/SharedPreferences;
    const-string v0, "download_shour"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v10, 0xb

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 449
    .local v2, "sHour":I
    const-string v0, "download_sminute"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v10, 0xc

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 450
    .local v3, "sMinute":I
    const-string v0, "download_ehour"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v10, 0xb

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 451
    .local v4, "eHour":I
    const-string v0, "download_eminute"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v10, 0xc

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 455
    .local v5, "eMinute":I
    new-instance v0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;

    invoke-direct {v0}, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;-><init>()V

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->cancelAlarm(Landroid/content/Context;)V

    .line 457
    const-string v0, "download_just_today"

    const/4 v1, 0x1

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 458
    .local v6, "justToday":Z
    if-eqz v6, :cond_91

    .line 459
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 460
    .local v7, "mCalendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 462
    .local v8, "mCalendarEnd":Ljava/util/Calendar;
    const/16 v0, 0xb

    invoke-virtual {v7, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 463
    const/16 v0, 0xc

    invoke-virtual {v7, v0, v3}, Ljava/util/Calendar;->set(II)V

    .line 464
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 466
    const/16 v0, 0xb

    invoke-virtual {v8, v0, v4}, Ljava/util/Calendar;->set(II)V

    .line 467
    const/16 v0, 0xc

    invoke-virtual {v8, v0, v5}, Ljava/util/Calendar;->set(II)V

    .line 468
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 469
    new-instance v0, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;

    invoke-direct {v0}, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;-><init>()V

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/16 v10, 0x64

    invoke-virtual {v0, v1, v7, v8, v10}, Lorg/telegram/ui/Telehgram/dlmanager/Services/DownloadReceiver;->setAlarm(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;I)V

    .line 493
    .end local v7    # "mCalendar":Ljava/util/Calendar;
    .end local v8    # "mCalendarEnd":Ljava/util/Calendar;
    :cond_90
    :goto_90
    return-void

    .line 471
    :cond_91
    const-string v0, "dm_saturday"

    const/4 v1, 0x1

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 472
    const/4 v1, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->setRepeatAlarm(IIIII)V

    .line 474
    :cond_9f
    const-string v0, "dm_sunday"

    const/4 v1, 0x1

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 475
    const/4 v1, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->setRepeatAlarm(IIIII)V

    .line 477
    :cond_ad
    const-string v0, "dm_monday"

    const/4 v1, 0x1

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 478
    const/4 v1, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->setRepeatAlarm(IIIII)V

    .line 480
    :cond_bb
    const-string v0, "dm_tuesday"

    const/4 v1, 0x1

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 481
    const/4 v1, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->setRepeatAlarm(IIIII)V

    .line 483
    :cond_c9
    const-string v0, "dm_wednesday"

    const/4 v1, 0x1

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 484
    const/4 v1, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->setRepeatAlarm(IIIII)V

    .line 486
    :cond_d7
    const-string v0, "dm_thursday"

    const/4 v1, 0x1

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 487
    const/4 v1, 0x6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->setRepeatAlarm(IIIII)V

    .line 489
    :cond_e5
    const-string v0, "dm_friday"

    const/4 v1, 0x1

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 490
    const/4 v1, 0x7

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadSettingsActivity;->setRepeatAlarm(IIIII)V

    goto :goto_90
.end method
