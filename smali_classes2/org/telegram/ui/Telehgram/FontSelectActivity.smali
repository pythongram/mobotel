.class public Lorg/telegram/ui/Telehgram/FontSelectActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "FontSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Telehgram/FontSelectActivity$ListAdapter;
    }
.end annotation


# instance fields
.field private fonts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listAdapter:Lorg/telegram/ui/Adapters/BaseFragmentAdapter;

.field private listView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->fonts:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Telehgram/FontSelectActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/FontSelectActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->fonts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Telehgram/FontSelectActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/FontSelectActivity;

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/FontSelectActivity;->restartApp()V

    return-void
.end method

.method private restartApp()V
    .registers 11

    .prologue
    const/high16 v6, 0x10000000

    .line 38
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/FontSelectActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 39
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 40
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x4000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 41
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 42
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_29

    .line 43
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 44
    :cond_29
    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 45
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    const-string v4, "alarm"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 46
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    invoke-virtual {v0, v4, v6, v7, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 47
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 48
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 52
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v4, 0x7f0200dd

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 53
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 54
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v4, "Fonts"

    const v5, 0x7f070706

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/Telehgram/FontSelectActivity$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Telehgram/FontSelectActivity$1;-><init>(Lorg/telegram/ui/Telehgram/FontSelectActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 63
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->fonts:Ljava/util/ArrayList;

    const-string v4, "\u062a\u0644\u06af\u0631\u0627\u0645"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->fonts:Ljava/util/ArrayList;

    const-string v4, "\u0627\u06cc\u0631\u0627\u0646 \u0633\u0627\u0646\u0633 \u0646\u0627\u0632\u06a9"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->fonts:Ljava/util/ArrayList;

    const-string v4, "\u0627\u06cc\u0631\u0627\u0646 \u0633\u0627\u0646\u0633 \u062e\u06cc\u0644\u06cc \u0646\u0627\u0632\u06a9"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->fonts:Ljava/util/ArrayList;

    const-string v4, "\u0627\u06cc\u0631\u0627\u0646 \u0633\u0627\u0646\u0633 \u0645\u0639\u0645\u0648\u0644\u06cc"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->fonts:Ljava/util/ArrayList;

    const-string v4, "\u0627\u06cc\u0631\u0627\u0646 \u0633\u0627\u0646\u0633 \u0645\u062a\u0648\u0633\u0637"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->fonts:Ljava/util/ArrayList;

    const-string v4, "\u0627\u06cc\u0631\u0627\u0646 \u0633\u0627\u0646\u0633 \u0636\u062e\u06cc\u0645"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->fonts:Ljava/util/ArrayList;

    const-string v4, "\u0627\u0641\u0633\u0627\u0646\u0647"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->fonts:Ljava/util/ArrayList;

    const-string v4, "\u062f\u0633\u062a \u0646\u0648\u06cc\u0633"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->fonts:Ljava/util/ArrayList;

    const-string v4, "\u0647\u0645\u0627"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->fonts:Ljava/util/ArrayList;

    const-string v4, "\u0645\u0631\u0648\u0627\u0631\u06cc\u062f"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->fonts:Ljava/util/ArrayList;

    const-string v4, "\u06cc\u06a9\u0627\u0646"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->fonts:Ljava/util/ArrayList;

    const-string v4, "\u062a\u0631\u0627\u0641\u06cc\u06a9"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->fonts:Ljava/util/ArrayList;

    const-string v4, "\u06a9\u0648\u062f\u06a9"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->fonts:Ljava/util/ArrayList;

    const-string v4, "\u0644\u0648\u062a\u0648\u0633"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v3, Lorg/telegram/ui/Telehgram/FontSelectActivity$ListAdapter;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Telehgram/FontSelectActivity$ListAdapter;-><init>(Lorg/telegram/ui/Telehgram/FontSelectActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->listAdapter:Lorg/telegram/ui/Adapters/BaseFragmentAdapter;

    .line 78
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->fragmentView:Landroid/view/View;

    .line 79
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 80
    .local v2, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 81
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 82
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->fragmentView:Landroid/view/View;

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 83
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 84
    .local v1, "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 85
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 86
    const/16 v3, 0x30

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 87
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    new-instance v3, Lorg/telegram/ui/Telehgram/FontSelectActivity$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Telehgram/FontSelectActivity$2;-><init>(Lorg/telegram/ui/Telehgram/FontSelectActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 95
    new-instance v3, Landroid/widget/ListView;

    invoke-direct {v3, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->listView:Landroid/widget/ListView;

    .line 96
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 97
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 98
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->listView:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 100
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->listAdapter:Lorg/telegram/ui/Adapters/BaseFragmentAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->fragmentView:Landroid/view/View;

    check-cast v3, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 102
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 103
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 104
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 105
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->listView:Landroid/widget/ListView;

    new-instance v4, Lorg/telegram/ui/Telehgram/FontSelectActivity$3;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Telehgram/FontSelectActivity$3;-><init>(Lorg/telegram/ui/Telehgram/FontSelectActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 117
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->listView:Landroid/widget/ListView;

    new-instance v4, Lorg/telegram/ui/Telehgram/FontSelectActivity$4;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Telehgram/FontSelectActivity$4;-><init>(Lorg/telegram/ui/Telehgram/FontSelectActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 129
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->fragmentView:Landroid/view/View;

    return-object v3
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 134
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 135
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->listAdapter:Lorg/telegram/ui/Adapters/BaseFragmentAdapter;

    if-eqz v0, :cond_c

    .line 136
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity;->listAdapter:Lorg/telegram/ui/Adapters/BaseFragmentAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/BaseFragmentAdapter;->notifyDataSetChanged()V

    .line 137
    :cond_c
    const-string v0, "Font Select Fragment"

    invoke-static {v0}, Lorg/telegram/ui/Membergram/analytics/AnalyticsEventUtil;->sendScreenName(Ljava/lang/String;)V

    .line 139
    return-void
.end method
