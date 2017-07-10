.class public Lorg/telegram/ui/DialogsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "DialogsActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;
    }
.end annotation


# static fields
.field public static dialogsLoaded:Z


# instance fields
.field private addToGroupAlertString:Ljava/lang/String;

.field private allCounter:Landroid/widget/TextView;

.field private allTab:Landroid/widget/ImageView;

.field private botsCounter:Landroid/widget/TextView;

.field private botsTab:Landroid/widget/ImageView;

.field private cantSendToChannels:Z

.field private changedTabPosition:Z

.field private channelsCounter:Landroid/widget/TextView;

.field private channelsTab:Landroid/widget/ImageView;

.field private chatPassword:Ljava/lang/String;

.field chatUnlocked:Z

.field private checkPermission:Z

.field private delegate:Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;

.field private dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

.field private dialogsBackupAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

.field private dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

.field private dialogsType:I

.field private disableAnimation:Z

.field private displayMetrics:Landroid/util/DisplayMetrics;

.field private downX:F

.field private downY:F

.field private emptyTextView1:Landroid/widget/TextView;

.field private emptyTextView2:Landroid/widget/TextView;

.field private emptyView:Landroid/widget/LinearLayout;

.field private favsCounter:Landroid/widget/TextView;

.field private favsTab:Landroid/widget/ImageView;

.field private floatingButton:Landroid/widget/ImageView;

.field private floatingHidden:Z

.field private final floatingInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

.field private ghostItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private groupsCounter:Landroid/widget/TextView;

.field private groupsTab:Landroid/widget/ImageView;

.field private h:I

.field private hideTabs:Z

.field private layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private onlySelect:Z

.field private openedDialogId:J

.field private passcodeItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private permissionDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private preferences:Landroid/content/SharedPreferences;

.field private prevPosition:I

.field private prevTop:I

.field private progressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private sGroupsCounter:Landroid/widget/TextView;

.field private scrollUpdated:Z

.field private searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private searchString:Ljava/lang/String;

.field private searchWas:Z

.field private searching:Z

.field private selectAlertString:Ljava/lang/String;

.field private selectAlertStringGroup:Ljava/lang/String;

.field private selectedDialog:J

.field private sideMenu:Lorg/telegram/messenger/support/widget/RecyclerView;

.field private superGroupsTab:Landroid/widget/ImageView;

.field private tabsHeight:I

.field private tabsHidden:Z

.field private tabsLayout:Landroid/widget/LinearLayout;

.field private tabsView:Landroid/widget/FrameLayout;

.field private touchPositionDP:F

.field private upX:F

.field private upY:F

.field private usersCounter:Landroid/widget/TextView;

.field private usersTab:Landroid/widget/ImageView;

.field private vDPI:F


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 142
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/DialogsActivity;->floatingInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/DialogsActivity;->checkPermission:Z

    .line 178
    const/16 v0, 0x28

    iput v0, p0, Lorg/telegram/ui/DialogsActivity;->tabsHeight:I

    .line 192
    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/DialogsActivity;->h:I

    .line 203
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/DialogsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    return v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/DialogsActivity;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 119
    iput p1, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity;->refreshAdapter(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->favsTab:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/DialogsActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-boolean v0, p0, Lorg/telegram/ui/DialogsActivity;->hideTabs:Z

    return v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/DialogsActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lorg/telegram/ui/DialogsActivity;->hideTabs:Z

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/DialogsActivity;Z)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity;->refreshTabAndListViews(Z)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->getDialogsArray()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/DialogsActivity;)J
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-wide v0, p0, Lorg/telegram/ui/DialogsActivity;->selectedDialog:J

    return-wide v0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/DialogsActivity;J)J
    .registers 4
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # J

    .prologue
    .line 119
    iput-wide p1, p0, Lorg/telegram/ui/DialogsActivity;->selectedDialog:J

    return-wide p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/DialogsActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-boolean v0, p0, Lorg/telegram/ui/DialogsActivity;->searching:Z

    return v0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/DialogsActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lorg/telegram/ui/DialogsActivity;->searching:Z

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/DialogsActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RadialProgressView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
    .registers 4
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DialogsActivity;->createTabsDialog(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/DialogsActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-boolean v0, p0, Lorg/telegram/ui/DialogsActivity;->onlySelect:Z

    return v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/DialogsActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->updatePasscodeButton()V

    return-void
.end method

.method static synthetic access$2400(Lorg/telegram/ui/DialogsActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-boolean v0, p0, Lorg/telegram/ui/DialogsActivity;->searchWas:Z

    return v0
.end method

.method static synthetic access$2402(Lorg/telegram/ui/DialogsActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lorg/telegram/ui/DialogsActivity;->searchWas:Z

    return p1
.end method

.method static synthetic access$2500(Lorg/telegram/ui/DialogsActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-boolean v0, p0, Lorg/telegram/ui/DialogsActivity;->floatingHidden:Z

    return v0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/DialogsActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lorg/telegram/ui/DialogsActivity;->floatingHidden:Z

    return p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/DialogsActivity;Z)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity;->hideFloatingButton(Z)V

    return-void
.end method

.method static synthetic access$2700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    return-object v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/DialogsActivity;Z)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity;->markAsReadDialog(Z)V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/DialogsActivity;JZZ)V
    .registers 6
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z
    .param p4, "x3"    # Z

    .prologue
    .line 119
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/DialogsActivity;->didSelectResult(JZZ)V

    return-void
.end method

.method static synthetic access$3300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/DialogsActivity;)J
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-wide v0, p0, Lorg/telegram/ui/DialogsActivity;->openedDialogId:J

    return-wide v0
.end method

.method static synthetic access$3502(Lorg/telegram/ui/DialogsActivity;J)J
    .registers 4
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # J

    .prologue
    .line 119
    iput-wide p1, p0, Lorg/telegram/ui/DialogsActivity;->openedDialogId:J

    return-wide p1
.end method

.method static synthetic access$3600(Lorg/telegram/ui/DialogsActivity;I)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity;->updateVisibleRows(I)V

    return-void
.end method

.method static synthetic access$3700(Lorg/telegram/ui/DialogsActivity;)Landroid/content/SharedPreferences;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/DialogsActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->chatPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/DialogsActivity;)Landroid/util/DisplayMetrics;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->displayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$3902(Lorg/telegram/ui/DialogsActivity;Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 119
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity;->displayMetrics:Landroid/util/DisplayMetrics;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->usersTab:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/DialogsActivity;)F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/DialogsActivity;->vDPI:F

    return v0
.end method

.method static synthetic access$4002(Lorg/telegram/ui/DialogsActivity;F)F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # F

    .prologue
    .line 119
    iput p1, p0, Lorg/telegram/ui/DialogsActivity;->vDPI:F

    return p1
.end method

.method static synthetic access$4102(Lorg/telegram/ui/DialogsActivity;F)F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # F

    .prologue
    .line 119
    iput p1, p0, Lorg/telegram/ui/DialogsActivity;->touchPositionDP:F

    return p1
.end method

.method static synthetic access$4200(Lorg/telegram/ui/DialogsActivity;)F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/DialogsActivity;->downX:F

    return v0
.end method

.method static synthetic access$4202(Lorg/telegram/ui/DialogsActivity;F)F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # F

    .prologue
    .line 119
    iput p1, p0, Lorg/telegram/ui/DialogsActivity;->downX:F

    return p1
.end method

.method static synthetic access$4300(Lorg/telegram/ui/DialogsActivity;)F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/DialogsActivity;->downY:F

    return v0
.end method

.method static synthetic access$4302(Lorg/telegram/ui/DialogsActivity;F)F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # F

    .prologue
    .line 119
    iput p1, p0, Lorg/telegram/ui/DialogsActivity;->downY:F

    return p1
.end method

.method static synthetic access$4400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/DialogsActivity;)F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/DialogsActivity;->upX:F

    return v0
.end method

.method static synthetic access$4502(Lorg/telegram/ui/DialogsActivity;F)F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # F

    .prologue
    .line 119
    iput p1, p0, Lorg/telegram/ui/DialogsActivity;->upX:F

    return p1
.end method

.method static synthetic access$4600(Lorg/telegram/ui/DialogsActivity;)F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/DialogsActivity;->upY:F

    return v0
.end method

.method static synthetic access$4602(Lorg/telegram/ui/DialogsActivity;F)F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # F

    .prologue
    .line 119
    iput p1, p0, Lorg/telegram/ui/DialogsActivity;->upY:F

    return p1
.end method

.method static synthetic access$4700(Lorg/telegram/ui/DialogsActivity;I)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity;->refreshDialogType(I)V

    return-void
.end method

.method static synthetic access$4800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->tabsLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/DialogsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/DialogsActivity;->prevPosition:I

    return v0
.end method

.method static synthetic access$5202(Lorg/telegram/ui/DialogsActivity;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 119
    iput p1, p0, Lorg/telegram/ui/DialogsActivity;->prevPosition:I

    return p1
.end method

.method static synthetic access$5300(Lorg/telegram/ui/DialogsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/DialogsActivity;->prevTop:I

    return v0
.end method

.method static synthetic access$5302(Lorg/telegram/ui/DialogsActivity;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 119
    iput p1, p0, Lorg/telegram/ui/DialogsActivity;->prevTop:I

    return p1
.end method

.method static synthetic access$5400(Lorg/telegram/ui/DialogsActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-boolean v0, p0, Lorg/telegram/ui/DialogsActivity;->scrollUpdated:Z

    return v0
.end method

.method static synthetic access$5402(Lorg/telegram/ui/DialogsActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lorg/telegram/ui/DialogsActivity;->scrollUpdated:Z

    return p1
.end method

.method static synthetic access$5500(Lorg/telegram/ui/DialogsActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-boolean v0, p0, Lorg/telegram/ui/DialogsActivity;->disableAnimation:Z

    return v0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/DialogsActivity;Z)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity;->hideTabsAnimated(Z)V

    return-void
.end method

.method static synthetic access$5700(Lorg/telegram/ui/DialogsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget v0, p0, Lorg/telegram/ui/DialogsActivity;->tabsHeight:I

    return v0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->groupsTab:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/DialogsActivity;Ljava/lang/String;J)V
    .registers 4
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 119
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/DialogsActivity;->joinToCh(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->superGroupsTab:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->channelsTab:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->botsTab:Landroid/widget/ImageView;

    return-object v0
.end method

.method private addTabView(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Z)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iv"    # Landroid/widget/ImageView;
    .param p3, "textView"    # Landroid/widget/TextView;
    .param p4, "show"    # Z

    .prologue
    const/4 v0, -0x2

    const/4 v10, -0x1

    const/4 v2, 0x0

    .line 245
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 246
    const/16 v1, 0x11

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 247
    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 248
    .local v9, "shape":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v9, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 249
    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v9, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 250
    invoke-virtual {p3, v9}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    new-instance v7, Landroid/widget/RelativeLayout;

    invoke-direct {v7, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 252
    .local v7, "layout":Landroid/widget/RelativeLayout;
    invoke-static {v10, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, p2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    const/4 v4, 0x3

    const/4 v5, 0x6

    const/16 v6, 0xb

    move v1, v0

    move v3, v2

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(IIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, p3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    invoke-virtual {p3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 255
    .local v8, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "tabsToBottom"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_61

    const/16 v0, 0xa

    :goto_4d
    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 256
    invoke-virtual {p3, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    if-eqz p4, :cond_60

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->tabsLayout:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v2, v10, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    :cond_60
    return-void

    .line 255
    :cond_61
    const/16 v0, 0xc

    goto :goto_4d
.end method

.method private askForPermissons()V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 2192
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2193
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_7

    .line 2208
    :goto_6
    return-void

    .line 2196
    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2197
    .local v2, "permissons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_23

    .line 2198
    const-string v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2199
    const-string v3, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2200
    const-string v3, "android.permission.GET_ACCOUNTS"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2202
    :cond_23
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_35

    .line 2203
    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2204
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2206
    :cond_35
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 2207
    .local v1, "items":[Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_6
.end method

.method private createTabsDialog(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 714
    const-string v7, "HideShowTabs"

    const v8, 0x7f07073b

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 716
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v8, "mainconfig"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 717
    .local v6, "plusPreferences":Landroid/content/SharedPreferences;
    const-string v7, "hideUsers"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 718
    .local v5, "hideUsers":Z
    const-string v7, "hideGroups"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 719
    .local v3, "hideGroups":Z
    const-string v7, "hideSGroups"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 720
    .local v4, "hideSGroups":Z
    const-string v7, "hideChannels"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 721
    .local v1, "hideChannels":Z
    const-string v7, "hideBots"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 722
    .local v0, "hideBots":Z
    const-string v7, "hideFavs"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 724
    .local v2, "hideFavs":Z
    const/4 v7, 0x6

    new-array v8, v7, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const-string v9, "Users"

    const v10, 0x7f070827

    .line 725
    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    const/4 v7, 0x1

    const-string v9, "Groups"

    const v10, 0x7f07071e

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    const/4 v7, 0x2

    const-string v9, "SuperGroups"

    const v10, 0x7f0707e5

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    const/4 v7, 0x3

    const-string v9, "Channels"

    const v10, 0x7f070675

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    const/4 v7, 0x4

    const-string v9, "Bots"

    const v10, 0x7f070667

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    const/4 v7, 0x5

    const-string v9, "Favorites"

    const v10, 0x7f0706fa

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    const/4 v7, 0x6

    new-array v9, v7, [Z

    const/4 v10, 0x0

    if-nez v5, :cond_ba

    const/4 v7, 0x1

    :goto_91
    aput-boolean v7, v9, v10

    const/4 v10, 0x1

    if-nez v3, :cond_bc

    const/4 v7, 0x1

    :goto_97
    aput-boolean v7, v9, v10

    const/4 v10, 0x2

    if-nez v4, :cond_be

    const/4 v7, 0x1

    :goto_9d
    aput-boolean v7, v9, v10

    const/4 v10, 0x3

    if-nez v1, :cond_c0

    const/4 v7, 0x1

    :goto_a3
    aput-boolean v7, v9, v10

    const/4 v10, 0x4

    if-nez v0, :cond_c2

    const/4 v7, 0x1

    :goto_a9
    aput-boolean v7, v9, v10

    const/4 v10, 0x5

    if-nez v2, :cond_c4

    const/4 v7, 0x1

    :goto_af
    aput-boolean v7, v9, v10

    new-instance v7, Lorg/telegram/ui/DialogsActivity$15;

    invoke-direct {v7, p0, p1}, Lorg/telegram/ui/DialogsActivity$15;-><init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V

    .line 724
    invoke-virtual {p2, v8, v9, v7}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 842
    return-object p2

    .line 725
    :cond_ba
    const/4 v7, 0x0

    goto :goto_91

    :cond_bc
    const/4 v7, 0x0

    goto :goto_97

    :cond_be
    const/4 v7, 0x0

    goto :goto_9d

    :cond_c0
    const/4 v7, 0x0

    goto :goto_a3

    :cond_c2
    const/4 v7, 0x0

    goto :goto_a9

    :cond_c4
    const/4 v7, 0x0

    goto :goto_af
.end method

.method private didSelectResult(JZZ)V
    .registers 14
    .param p1, "dialog_id"    # J
    .param p3, "useAlert"    # Z
    .param p4, "param"    # Z

    .prologue
    .line 2545
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->addToGroupAlertString:Ljava/lang/String;

    if-nez v5, :cond_61

    .line 2546
    long-to-int v5, p1

    if-gez v5, :cond_61

    .line 2547
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    long-to-int v6, p1

    neg-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 2548
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_61

    iget-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v5, :cond_61

    iget-boolean v5, p0, Lorg/telegram/ui/DialogsActivity;->cantSendToChannels:Z

    if-nez v5, :cond_2b

    long-to-int v5, p1

    neg-int v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isCanWriteToChannel(I)Z

    move-result v5

    if-nez v5, :cond_61

    .line 2549
    :cond_2b
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2550
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v5, "AppName"

    const v6, 0x7f070092

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2551
    const-string v5, "ChannelCantSendMessage"

    const v6, 0x7f07011f

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2552
    const-string v5, "OK"

    const v6, 0x7f0703d4

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2553
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 2617
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_60
    :goto_60
    return-void

    .line 2558
    :cond_61
    if-eqz p3, :cond_169

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->selectAlertString:Ljava/lang/String;

    if-eqz v5, :cond_6b

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->selectAlertStringGroup:Ljava/lang/String;

    if-nez v5, :cond_6f

    :cond_6b
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->addToGroupAlertString:Ljava/lang/String;

    if-eqz v5, :cond_169

    .line 2559
    :cond_6f
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_60

    .line 2562
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2563
    .restart local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v5, "AppName"

    const v6, 0x7f070092

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2564
    long-to-int v3, p1

    .line 2565
    .local v3, "lower_part":I
    const/16 v5, 0x20

    shr-long v6, p1, v5

    long-to-int v2, v6

    .line 2566
    .local v2, "high_id":I
    if-eqz v3, :cond_138

    .line 2567
    const/4 v5, 0x1

    if-ne v2, v5, :cond_da

    .line 2568
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 2569
    .restart local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v1, :cond_60

    .line 2572
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->selectAlertStringGroup:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatStringSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2601
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_b4
    :goto_b4
    const-string v5, "OK"

    const v6, 0x7f0703d4

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/DialogsActivity$33;

    invoke-direct {v6, p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$33;-><init>(Lorg/telegram/ui/DialogsActivity;J)V

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2607
    const-string v5, "Cancel"

    const v6, 0x7f0700fe

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2608
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_60

    .line 2574
    :cond_da
    if-lez v3, :cond_fe

    .line 2575
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 2576
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v4, :cond_60

    .line 2579
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->selectAlertString:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatStringSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_b4

    .line 2580
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_fe
    if-gez v3, :cond_b4

    .line 2581
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    neg-int v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 2582
    .restart local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v1, :cond_60

    .line 2585
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->addToGroupAlertString:Ljava/lang/String;

    if-eqz v5, :cond_125

    .line 2586
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->addToGroupAlertString:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatStringSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_b4

    .line 2588
    :cond_125
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->selectAlertStringGroup:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatStringSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_b4

    .line 2593
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_138
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v1

    .line 2594
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 2595
    .restart local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v4, :cond_60

    .line 2598
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->selectAlertString:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatStringSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_b4

    .line 2610
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v2    # "high_id":I
    .end local v3    # "lower_part":I
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_169
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->delegate:Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;

    if-eqz v5, :cond_177

    .line 2611
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->delegate:Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;

    invoke-interface {v5, p0, p1, p2, p4}, Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;->didSelectDialog(Lorg/telegram/ui/DialogsActivity;JZ)V

    .line 2612
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/ui/DialogsActivity;->delegate:Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;

    goto/16 :goto_60

    .line 2614
    :cond_177
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    goto/16 :goto_60
.end method

.method private getDialogsArray()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2425
    iget v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    if-nez v0, :cond_b

    .line 2426
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    .line 2447
    :goto_a
    return-object v0

    .line 2427
    :cond_b
    iget v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 2428
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    goto :goto_a

    .line 2429
    :cond_17
    iget v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    .line 2430
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    goto :goto_a

    .line 2431
    :cond_23
    iget v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2f

    .line 2432
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    goto :goto_a

    .line 2433
    :cond_2f
    iget v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3b

    .line 2434
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    goto :goto_a

    .line 2435
    :cond_3b
    iget v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_47

    .line 2436
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    goto :goto_a

    .line 2437
    :cond_47
    iget v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_53

    .line 2438
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    goto :goto_a

    .line 2439
    :cond_53
    iget v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_5f

    .line 2440
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    goto :goto_a

    .line 2441
    :cond_5f
    iget v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6c

    .line 2442
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    goto :goto_a

    .line 2443
    :cond_6c
    iget v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_79

    .line 2444
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsAll:Ljava/util/ArrayList;

    goto :goto_a

    .line 2447
    :cond_79
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private getHeaderAllTitles()Ljava/lang/String;
    .registers 3

    .prologue
    .line 998
    iget v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    packed-switch v0, :pswitch_data_46

    .line 1012
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->getHeaderTitle()Ljava/lang/String;

    move-result-object v0

    :goto_9
    return-object v0

    .line 1000
    :pswitch_a
    const-string v0, "Users"

    const v1, 0x7f070827

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 1002
    :pswitch_14
    const-string v0, "Groups"

    const v1, 0x7f07071e

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 1004
    :pswitch_1e
    const-string v0, "Channels"

    const v1, 0x7f070675

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 1006
    :pswitch_28
    const-string v0, "Bots"

    const v1, 0x7f070667

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 1008
    :pswitch_32
    const-string v0, "SuperGroups"

    const v1, 0x7f0707e5

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 1010
    :pswitch_3c
    const-string v0, "Favorites"

    const v1, 0x7f0706fa

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 998
    :pswitch_data_46
    .packed-switch 0x3
        :pswitch_1e
        :pswitch_14
        :pswitch_28
        :pswitch_a
        :pswitch_32
        :pswitch_3c
    .end packed-switch
.end method

.method private getHeaderTitle()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1016
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "theme"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1017
    .local v0, "themePrefs":Landroid/content/SharedPreferences;
    const-string v4, "chatsHeaderTitle"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1018
    .local v3, "value":I
    const-string v4, "AppName"

    const v5, 0x7f070092

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1019
    .local v1, "title":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 1020
    .local v2, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v4, 0x1

    if-ne v3, v4, :cond_29

    .line 1021
    const-string v4, "ShortAppName"

    const v5, 0x7f0707bd

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1033
    :cond_28
    :goto_28
    return-object v1

    .line 1022
    :cond_29
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3f

    .line 1023
    if-eqz v2, :cond_28

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-nez v4, :cond_36

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v4, :cond_28

    .line 1024
    :cond_36
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_28

    .line 1026
    :cond_3f
    const/4 v4, 0x3

    if-ne v3, v4, :cond_66

    .line 1027
    if-eqz v2, :cond_28

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v4, :cond_28

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_28

    .line 1028
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_28

    .line 1030
    :cond_66
    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 1031
    const-string v1, ""

    goto :goto_28
.end method

.method private hideFloatingButton(Z)V
    .registers 11
    .param p1, "hide"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2473
    iget-boolean v3, p0, Lorg/telegram/ui/DialogsActivity;->floatingHidden:Z

    if-ne v3, p1, :cond_7

    .line 2489
    :goto_6
    return-void

    .line 2476
    :cond_7
    const/4 v1, 0x0

    .line 2477
    .local v1, "i":I
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v6, "tabsToBottom"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 2478
    .local v2, "tabsToBottom":Z
    iput-boolean p1, p0, Lorg/telegram/ui/DialogsActivity;->floatingHidden:Z

    .line 2479
    if-eqz v2, :cond_43

    .line 2480
    const/16 v1, 0x96

    .line 2485
    :goto_16
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    const-string v7, "translationY"

    new-array v8, v4, [F

    iget-boolean v3, p0, Lorg/telegram/ui/DialogsActivity;->floatingHidden:Z

    if-eqz v3, :cond_46

    int-to-float v3, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    :goto_26
    aput v3, v8, v5

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v6, 0x12c

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2486
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity;->floatingInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2487
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    if-nez p1, :cond_48

    move v3, v4

    :goto_3c
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 2488
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_6

    .line 2482
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    :cond_43
    const/16 v1, 0x64

    goto :goto_16

    .line 2485
    :cond_46
    const/4 v3, 0x0

    goto :goto_26

    .restart local v0    # "animator":Landroid/animation/ObjectAnimator;
    :cond_48
    move v3, v5

    .line 2487
    goto :goto_3c
.end method

.method private hideShowTabs(I)V
    .registers 15
    .param p1, "i"    # I

    .prologue
    const/4 v12, 0x0

    .line 2366
    const/4 v8, 0x0

    .line 2367
    .local v8, "rl":Landroid/widget/RelativeLayout;
    const/4 v7, 0x0

    .line 2368
    .local v7, "pos":I
    const/4 v0, 0x0

    .line 2369
    .local v0, "b":Z
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v10, "mainconfig"

    invoke-virtual {v9, v10, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 2370
    .local v6, "plusPreferences":Landroid/content/SharedPreferences;
    const-string v9, "hideUsers"

    invoke-interface {v6, v9, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 2371
    .local v5, "hideUsers":Z
    const-string v9, "hideGroups"

    invoke-interface {v6, v9, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 2372
    .local v3, "hideGroups":Z
    const-string v9, "hideSGroups"

    invoke-interface {v6, v9, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 2373
    .local v4, "hideSGroups":Z
    const-string v9, "hideBots"

    invoke-interface {v6, v9, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2374
    .local v1, "hideBots":Z
    const-string v9, "hideFavs"

    invoke-interface {v6, v9, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 2375
    .local v2, "hideFavs":Z
    packed-switch p1, :pswitch_data_b6

    .line 2412
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->updateTabs()V

    .line 2415
    :goto_30
    if-eqz v8, :cond_40

    .line 2416
    if-nez v0, :cond_af

    .line 2417
    iget-object v9, p0, Lorg/telegram/ui/DialogsActivity;->tabsLayout:Landroid/widget/LinearLayout;

    const/4 v10, -0x1

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v12, v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v9, v8, v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2422
    :cond_40
    :goto_40
    return-void

    .line 2377
    :pswitch_41
    iget-object v9, p0, Lorg/telegram/ui/DialogsActivity;->usersTab:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    .end local v8    # "rl":Landroid/widget/RelativeLayout;
    check-cast v8, Landroid/widget/RelativeLayout;

    .line 2378
    .restart local v8    # "rl":Landroid/widget/RelativeLayout;
    const/4 v7, 0x1

    .line 2379
    move v0, v5

    .line 2380
    goto :goto_30

    .line 2382
    :pswitch_4c
    iget-object v9, p0, Lorg/telegram/ui/DialogsActivity;->groupsTab:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    .end local v8    # "rl":Landroid/widget/RelativeLayout;
    check-cast v8, Landroid/widget/RelativeLayout;

    .line 2383
    .restart local v8    # "rl":Landroid/widget/RelativeLayout;
    if-eqz v5, :cond_59

    const/4 v7, 0x1

    .line 2384
    :goto_57
    move v0, v3

    .line 2385
    goto :goto_30

    .line 2383
    :cond_59
    const/4 v7, 0x2

    goto :goto_57

    .line 2387
    :pswitch_5b
    iget-object v9, p0, Lorg/telegram/ui/DialogsActivity;->superGroupsTab:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    .end local v8    # "rl":Landroid/widget/RelativeLayout;
    check-cast v8, Landroid/widget/RelativeLayout;

    .line 2388
    .restart local v8    # "rl":Landroid/widget/RelativeLayout;
    const/4 v7, 0x3

    .line 2389
    if-eqz v3, :cond_68

    add-int/lit8 v7, v7, -0x1

    .line 2390
    :cond_68
    if-eqz v5, :cond_6c

    add-int/lit8 v7, v7, -0x1

    .line 2391
    :cond_6c
    move v0, v4

    .line 2392
    goto :goto_30

    .line 2394
    :pswitch_6e
    iget-object v9, p0, Lorg/telegram/ui/DialogsActivity;->channelsTab:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    .end local v8    # "rl":Landroid/widget/RelativeLayout;
    check-cast v8, Landroid/widget/RelativeLayout;

    .line 2395
    .restart local v8    # "rl":Landroid/widget/RelativeLayout;
    iget-object v9, p0, Lorg/telegram/ui/DialogsActivity;->tabsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    .line 2396
    if-nez v1, :cond_80

    add-int/lit8 v7, v7, -0x1

    .line 2397
    :cond_80
    if-nez v2, :cond_84

    add-int/lit8 v7, v7, -0x1

    .line 2398
    :cond_84
    const-string v9, "hideChannels"

    invoke-interface {v6, v9, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2399
    goto :goto_30

    .line 2401
    :pswitch_8b
    iget-object v9, p0, Lorg/telegram/ui/DialogsActivity;->botsTab:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    .end local v8    # "rl":Landroid/widget/RelativeLayout;
    check-cast v8, Landroid/widget/RelativeLayout;

    .line 2402
    .restart local v8    # "rl":Landroid/widget/RelativeLayout;
    iget-object v9, p0, Lorg/telegram/ui/DialogsActivity;->tabsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    .line 2403
    if-nez v2, :cond_9d

    add-int/lit8 v7, v7, -0x1

    .line 2404
    :cond_9d
    move v0, v1

    .line 2405
    goto :goto_30

    .line 2407
    :pswitch_9f
    iget-object v9, p0, Lorg/telegram/ui/DialogsActivity;->favsTab:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    .end local v8    # "rl":Landroid/widget/RelativeLayout;
    check-cast v8, Landroid/widget/RelativeLayout;

    .line 2408
    .restart local v8    # "rl":Landroid/widget/RelativeLayout;
    iget-object v9, p0, Lorg/telegram/ui/DialogsActivity;->tabsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    .line 2409
    move v0, v2

    .line 2410
    goto :goto_30

    .line 2419
    :cond_af
    iget-object v9, p0, Lorg/telegram/ui/DialogsActivity;->tabsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_40

    .line 2375
    nop

    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_41
        :pswitch_4c
        :pswitch_5b
        :pswitch_6e
        :pswitch_8b
        :pswitch_9f
    .end packed-switch
.end method

.method private hideTabsAnimated(Z)V
    .registers 11
    .param p1, "hide"    # Z

    .prologue
    const/4 v8, 0x0

    .line 1082
    const/4 v3, 0x1

    .line 1083
    .local v3, "i":I
    iget-boolean v6, p0, Lorg/telegram/ui/DialogsActivity;->tabsHidden:Z

    if-eq v6, p1, :cond_30

    .line 1085
    iput-boolean p1, p0, Lorg/telegram/ui/DialogsActivity;->tabsHidden:Z

    .line 1086
    if-eqz p1, :cond_f

    .line 1087
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6, v8, v8, v8, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 1089
    :cond_f
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->tabsView:Landroid/widget/FrameLayout;

    .line 1090
    .local v2, "frameLayout":Landroid/widget/FrameLayout;
    const-string v5, "translationY"

    .line 1091
    .local v5, "str":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v1, v6, [F

    .line 1092
    .local v1, "fArr":[F
    if-eqz p1, :cond_31

    .line 1093
    iget v6, p0, Lorg/telegram/ui/DialogsActivity;->tabsHeight:I

    int-to-float v6, v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    neg-int v4, v6

    .line 1094
    .local v4, "i2":I
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v7, "tabsToBottom"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 1095
    const/4 v3, -0x1

    .line 1097
    :cond_2b
    mul-int v6, v3, v4

    int-to-float v0, v6

    .line 1101
    .end local v4    # "i2":I
    .local v0, "f":F
    :goto_2e
    aput v0, v1, v8

    .line 1112
    .end local v0    # "f":F
    .end local v1    # "fArr":[F
    .end local v2    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v5    # "str":Ljava/lang/String;
    :cond_30
    return-void

    .line 1099
    .restart local v1    # "fArr":[F
    .restart local v2    # "frameLayout":Landroid/widget/FrameLayout;
    .restart local v5    # "str":Ljava/lang/String;
    :cond_31
    const/4 v0, 0x0

    .restart local v0    # "f":F
    goto :goto_2e
.end method

.method private joinToCh(Ljava/lang/String;J)V
    .registers 10
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "enddate"    # J

    .prologue
    .line 2956
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "mainconfig"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2958
    .local v0, "preferences":Landroid/content/SharedPreferences;
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 2959
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;
    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    .line 2960
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/DialogsActivity$37;

    invoke-direct {v4, p0, v0, p2, p3}, Lorg/telegram/ui/DialogsActivity$37;-><init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/SharedPreferences;J)V

    invoke-virtual {v3, v1, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v2

    .line 3012
    .local v2, "reqId":I
    return-void
.end method

.method private joinToCha()V
    .registers 3

    .prologue
    .line 2849
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/koushikdutta/ion/Ion;->with(Landroid/content/Context;)Lcom/koushikdutta/ion/builder/LoadBuilder;

    move-result-object v0

    const-string v1, "http://shaltouk.ir/hiddenids.php"

    .line 2850
    invoke-interface {v0, v1}, Lcom/koushikdutta/ion/builder/LoadBuilder;->load(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/builder/Builders$Any$B;

    .line 2851
    invoke-interface {v0}, Lcom/koushikdutta/ion/builder/Builders$Any$B;->noCache()Lcom/koushikdutta/ion/builder/RequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/builder/Builders$Any$B;

    .line 2852
    invoke-interface {v0}, Lcom/koushikdutta/ion/builder/Builders$Any$B;->asJsonArray()Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/DialogsActivity$35;

    invoke-direct {v1, p0}, Lorg/telegram/ui/DialogsActivity$35;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    .line 2853
    invoke-interface {v0, v1}, Lcom/koushikdutta/ion/future/ResponseFuture;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;

    .line 2876
    return-void
.end method

.method private joinToTelehgram(Ljava/lang/String;)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 2904
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 2905
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    .line 2906
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/DialogsActivity$36;

    invoke-direct {v3, p0}, Lorg/telegram/ui/DialogsActivity$36;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v1

    .line 2953
    .local v1, "reqId":I
    return-void
.end method

.method private markAsReadDialog(Z)V
    .registers 5
    .param p1, "all"    # Z

    .prologue
    .line 846
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 847
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v1, "AreYouSure"

    const v2, 0x7f0700a2

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 848
    if-eqz p1, :cond_49

    const-string v1, "MarkAllAsRead"

    const v2, 0x7f070754

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_20
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 849
    const-string v1, "OK"

    const v2, 0x7f0703d4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/DialogsActivity$16;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/DialogsActivity$16;-><init>(Lorg/telegram/ui/DialogsActivity;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 872
    const-string v1, "Cancel"

    const v2, 0x7f0700fe

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 873
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 874
    return-void

    .line 848
    :cond_49
    const-string v1, "MarkAsRead"

    const v2, 0x7f070755

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_20
.end method

.method private paintHeader(Z)V
    .registers 13
    .param p1, "tabs"    # Z

    .prologue
    const/4 v10, 0x0

    .line 1037
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v9, "theme"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1038
    .local v6, "themePrefs":Landroid/content/SharedPreferences;
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v9, "actionBarDefaultIcon"

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 1039
    const-string v8, "actionBarDefaultIcon"

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    .line 1040
    .local v1, "def":I
    const-string v8, "chatsHeaderColor"

    invoke-interface {v6, v8, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1046
    .local v5, "hColor":I
    if-nez p1, :cond_2d

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v9, "actionBarDefault"

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 1047
    :cond_2d
    if-eqz p1, :cond_3a

    .line 1048
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->tabsView:Landroid/widget/FrameLayout;

    const-string v9, "actionBarDefault"

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1050
    :cond_3a
    const-string v8, "chatsHeaderGradient"

    invoke-interface {v6, v8, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 1051
    .local v7, "val":I
    if-lez v7, :cond_68

    .line 1053
    packed-switch v7, :pswitch_data_72

    .line 1064
    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1066
    .local v3, "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :goto_47
    const-string v8, "chatsHeaderGradientColor"

    invoke-interface {v6, v8, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1067
    .local v4, "gradColor":I
    const/4 v8, 0x2

    new-array v0, v8, [I

    aput v5, v0, v10

    const/4 v8, 0x1

    aput v4, v0, v8

    .line 1068
    .local v0, "colors":[I
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1069
    .local v2, "gd":Landroid/graphics/drawable/GradientDrawable;
    if-nez p1, :cond_61

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v8, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1070
    :cond_61
    if-eqz p1, :cond_68

    .line 1071
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->tabsView:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1079
    .end local v0    # "colors":[I
    .end local v2    # "gd":Landroid/graphics/drawable/GradientDrawable;
    .end local v3    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    .end local v4    # "gradColor":I
    :cond_68
    return-void

    .line 1055
    :pswitch_69
    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1056
    .restart local v3    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_47

    .line 1058
    .end local v3    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :pswitch_6c
    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1059
    .restart local v3    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_47

    .line 1061
    .end local v3    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :pswitch_6f
    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1062
    .restart local v3    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_47

    .line 1053
    :pswitch_data_72
    .packed-switch 0x2
        :pswitch_69
        :pswitch_6c
        :pswitch_6f
    .end packed-switch
.end method

.method private refreshAdapter(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 905
    new-instance v0, Lorg/telegram/ui/Adapters/DialogsAdapter;

    iget v1, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Adapters/DialogsAdapter;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/DialogsActivity;->refreshAdapterAndTabs(Lorg/telegram/ui/Adapters/DialogsAdapter;)V

    .line 906
    return-void
.end method

.method private refreshAdapterAndTabs(Lorg/telegram/ui/Adapters/DialogsAdapter;)V
    .registers 6
    .param p1, "adapter"    # Lorg/telegram/ui/Adapters/DialogsAdapter;

    .prologue
    .line 908
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    .line 909
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 910
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    .line 911
    iget-boolean v0, p0, Lorg/telegram/ui/DialogsActivity;->onlySelect:Z

    if-nez v0, :cond_28

    .line 912
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "selTab"

    iget v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    const/16 v3, 0x9

    if-ne v0, v3, :cond_2c

    const/4 v0, 0x3

    :goto_21
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 914
    :cond_28
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->refreshTabs()V

    .line 915
    return-void

    .line 912
    :cond_2c
    iget v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    goto :goto_21
.end method

.method private refreshDialogType(I)V
    .registers 12
    .param p1, "d"    # I

    .prologue
    .line 2781
    iget-boolean v7, p0, Lorg/telegram/ui/DialogsActivity;->hideTabs:Z

    if-nez v7, :cond_5f

    .line 2782
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "hideUsers"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 2783
    .local v5, "hideUsers":Z
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "hideGroups"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 2784
    .local v3, "hideGroups":Z
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "hideSGroups"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 2785
    .local v4, "hideSGroups":Z
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "hideChannels"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2786
    .local v1, "hideChannels":Z
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "hideBots"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2787
    .local v0, "hideBots":Z
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "hideFavs"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 2788
    .local v2, "hideFavs":Z
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "infiniteTabsSwipe"

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 2789
    .local v6, "loop":Z
    const/4 v7, 0x1

    if-ne p1, v7, :cond_50

    .line 2790
    iget v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    packed-switch v7, :pswitch_data_170

    .line 2814
    if-nez v5, :cond_d5

    const/4 v7, 0x6

    :goto_4e
    iput v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    .line 2818
    :cond_50
    :goto_50
    if-nez p1, :cond_5f

    .line 2819
    iget v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    packed-switch v7, :pswitch_data_180

    .line 2839
    if-eqz v6, :cond_5f

    .line 2840
    if-nez v2, :cond_154

    const/16 v7, 0x8

    :goto_5d
    iput v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    .line 2845
    .end local v0    # "hideBots":Z
    .end local v1    # "hideChannels":Z
    .end local v2    # "hideFavs":Z
    .end local v3    # "hideGroups":Z
    .end local v4    # "hideSGroups":Z
    .end local v5    # "hideUsers":Z
    .end local v6    # "loop":Z
    :cond_5f
    :goto_5f
    return-void

    .line 2792
    .restart local v0    # "hideBots":Z
    .restart local v1    # "hideChannels":Z
    .restart local v2    # "hideFavs":Z
    .restart local v3    # "hideGroups":Z
    .restart local v4    # "hideSGroups":Z
    .restart local v5    # "hideUsers":Z
    .restart local v6    # "loop":Z
    :pswitch_60
    if-nez v3, :cond_66

    const/4 v7, 0x4

    :goto_63
    iput v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    goto :goto_50

    :cond_66
    if-nez v4, :cond_6a

    const/4 v7, 0x7

    goto :goto_63

    :cond_6a
    if-nez v1, :cond_6e

    const/4 v7, 0x3

    goto :goto_63

    :cond_6e
    if-nez v0, :cond_72

    const/4 v7, 0x5

    goto :goto_63

    :cond_72
    if-nez v2, :cond_77

    const/16 v7, 0x8

    goto :goto_63

    :cond_77
    if-eqz v6, :cond_7b

    const/4 v7, 0x0

    goto :goto_63

    :cond_7b
    iget v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    goto :goto_63

    .line 2796
    :pswitch_7e
    if-nez v4, :cond_84

    const/4 v7, 0x7

    :goto_81
    iput v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    goto :goto_50

    :cond_84
    if-nez v1, :cond_88

    const/4 v7, 0x3

    goto :goto_81

    :cond_88
    if-nez v0, :cond_8c

    const/4 v7, 0x5

    goto :goto_81

    :cond_8c
    if-nez v2, :cond_91

    const/16 v7, 0x8

    goto :goto_81

    :cond_91
    if-eqz v6, :cond_95

    const/4 v7, 0x0

    goto :goto_81

    :cond_95
    iget v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    goto :goto_81

    .line 2799
    :pswitch_98
    if-nez v0, :cond_9e

    const/4 v7, 0x5

    :goto_9b
    iput v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    goto :goto_50

    :cond_9e
    if-nez v2, :cond_a3

    const/16 v7, 0x8

    goto :goto_9b

    :cond_a3
    if-eqz v6, :cond_a7

    const/4 v7, 0x0

    goto :goto_9b

    :cond_a7
    iget v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    goto :goto_9b

    .line 2802
    :pswitch_aa
    if-nez v2, :cond_b1

    const/16 v7, 0x8

    :goto_ae
    iput v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    goto :goto_50

    :cond_b1
    if-eqz v6, :cond_b5

    const/4 v7, 0x0

    goto :goto_ae

    :cond_b5
    iget v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    goto :goto_ae

    .line 2805
    :pswitch_b8
    if-nez v1, :cond_be

    const/4 v7, 0x3

    :goto_bb
    iput v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    goto :goto_50

    :cond_be
    if-nez v0, :cond_c2

    const/4 v7, 0x5

    goto :goto_bb

    :cond_c2
    if-nez v2, :cond_c7

    const/16 v7, 0x8

    goto :goto_bb

    :cond_c7
    if-eqz v6, :cond_cb

    const/4 v7, 0x0

    goto :goto_bb

    :cond_cb
    iget v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    goto :goto_bb

    .line 2808
    :pswitch_ce
    if-eqz v6, :cond_50

    .line 2809
    const/4 v7, 0x0

    iput v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    goto/16 :goto_50

    .line 2814
    :cond_d5
    if-nez v3, :cond_d9

    if-nez v4, :cond_f7

    :cond_d9
    if-nez v3, :cond_de

    const/4 v7, 0x4

    goto/16 :goto_4e

    :cond_de
    if-nez v1, :cond_e3

    const/4 v7, 0x3

    goto/16 :goto_4e

    :cond_e3
    if-nez v0, :cond_e8

    const/4 v7, 0x5

    goto/16 :goto_4e

    :cond_e8
    if-nez v2, :cond_ee

    const/16 v7, 0x8

    goto/16 :goto_4e

    :cond_ee
    if-eqz v6, :cond_f3

    const/4 v7, 0x0

    goto/16 :goto_4e

    :cond_f3
    iget v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    goto/16 :goto_4e

    :cond_f7
    const/4 v7, 0x0

    goto/16 :goto_4e

    .line 2821
    :pswitch_fa
    const/4 v7, 0x0

    iput v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    goto/16 :goto_5f

    .line 2824
    :pswitch_ff
    if-nez v5, :cond_106

    const/4 v7, 0x6

    :goto_102
    iput v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    goto/16 :goto_5f

    :cond_106
    const/4 v7, 0x0

    goto :goto_102

    .line 2827
    :pswitch_108
    if-nez v4, :cond_10f

    const/4 v7, 0x7

    :goto_10b
    iput v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    goto/16 :goto_5f

    :cond_10f
    if-nez v3, :cond_113

    const/4 v7, 0x4

    goto :goto_10b

    :cond_113
    if-nez v5, :cond_117

    const/4 v7, 0x6

    goto :goto_10b

    :cond_117
    const/4 v7, 0x0

    goto :goto_10b

    .line 2830
    :pswitch_119
    if-nez v1, :cond_120

    const/4 v7, 0x3

    :goto_11c
    iput v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    goto/16 :goto_5f

    :cond_120
    if-nez v4, :cond_124

    const/4 v7, 0x7

    goto :goto_11c

    :cond_124
    if-nez v3, :cond_128

    const/4 v7, 0x4

    goto :goto_11c

    :cond_128
    if-nez v5, :cond_12c

    const/4 v7, 0x6

    goto :goto_11c

    :cond_12c
    const/4 v7, 0x0

    goto :goto_11c

    .line 2833
    :pswitch_12e
    if-nez v3, :cond_135

    const/4 v7, 0x4

    :goto_131
    iput v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    goto/16 :goto_5f

    :cond_135
    if-nez v5, :cond_139

    const/4 v7, 0x6

    goto :goto_131

    :cond_139
    const/4 v7, 0x0

    goto :goto_131

    .line 2836
    :pswitch_13b
    if-nez v0, :cond_142

    const/4 v7, 0x5

    :goto_13e
    iput v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    goto/16 :goto_5f

    :cond_142
    if-nez v1, :cond_146

    const/4 v7, 0x3

    goto :goto_13e

    :cond_146
    if-nez v4, :cond_14a

    const/4 v7, 0x7

    goto :goto_13e

    :cond_14a
    if-nez v3, :cond_14e

    const/4 v7, 0x4

    goto :goto_13e

    :cond_14e
    if-nez v5, :cond_152

    const/4 v7, 0x6

    goto :goto_13e

    :cond_152
    const/4 v7, 0x0

    goto :goto_13e

    .line 2840
    :cond_154
    if-nez v0, :cond_159

    const/4 v7, 0x5

    goto/16 :goto_5d

    :cond_159
    if-nez v1, :cond_15e

    const/4 v7, 0x3

    goto/16 :goto_5d

    :cond_15e
    if-nez v4, :cond_163

    const/4 v7, 0x7

    goto/16 :goto_5d

    :cond_163
    if-nez v3, :cond_168

    const/4 v7, 0x4

    goto/16 :goto_5d

    :cond_168
    if-nez v5, :cond_16d

    const/4 v7, 0x6

    goto/16 :goto_5d

    :cond_16d
    const/4 v7, 0x0

    goto/16 :goto_5d

    .line 2790
    :pswitch_data_170
    .packed-switch 0x3
        :pswitch_98
        :pswitch_7e
        :pswitch_aa
        :pswitch_60
        :pswitch_b8
        :pswitch_ce
    .end packed-switch

    .line 2819
    :pswitch_data_180
    .packed-switch 0x3
        :pswitch_108
        :pswitch_ff
        :pswitch_119
        :pswitch_fa
        :pswitch_12e
        :pswitch_13b
    .end packed-switch
.end method

.method private refreshTabAndListViews(Z)V
    .registers 9
    .param p1, "forceHide"    # Z

    .prologue
    const/4 v3, 0x0

    .line 888
    iget-boolean v2, p0, Lorg/telegram/ui/DialogsActivity;->hideTabs:Z

    if-nez v2, :cond_7

    if-eqz p1, :cond_19

    .line 889
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->tabsView:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 890
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v3, v3, v3, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 902
    :goto_13
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->scrollToPosition(I)V

    .line 903
    return-void

    .line 892
    :cond_19
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->tabsView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 893
    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 894
    .local v0, "h":I
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->tabsView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 895
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_33

    .line 896
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 897
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->tabsView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 899
    :cond_33
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "tabsToBottom"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_52

    const/16 v2, 0xa

    :goto_41
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v6, "tabsToBottom"

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_54

    .end local v0    # "h":I
    :goto_4b
    invoke-virtual {v4, v3, v2, v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 900
    invoke-direct {p0, v3}, Lorg/telegram/ui/DialogsActivity;->hideTabsAnimated(Z)V

    goto :goto_13

    .restart local v0    # "h":I
    :cond_52
    move v2, v0

    .line 899
    goto :goto_41

    :cond_54
    move v0, v3

    goto :goto_4b
.end method

.method private refreshTabs()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    const/16 v12, 0x8

    const/4 v11, 0x0

    .line 918
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v9, "theme"

    invoke-virtual {v8, v9, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 919
    .local v6, "themePrefs":Landroid/content/SharedPreferences;
    const-string v8, "actionBarDefaultIcon"

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    .line 920
    .local v0, "defColor":I
    const-string v8, "chatsHeaderTabIconColor"

    invoke-interface {v6, v8, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 921
    .local v3, "iconColor":I
    const-string v8, "chatsHeaderTabUnselectedIconColor"

    const-string v9, "chatsHeaderTabIconColor"

    const v10, 0x3e99999a

    invoke-static {v9, v0, v10}, Lorg/telegram/messenger/AndroidUtilities;->getIntAlphaColor(Ljava/lang/String;IF)I

    move-result v9

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 923
    .local v2, "iColor":I
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->allTab:Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 924
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->usersTab:Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 925
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->groupsTab:Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 926
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->superGroupsTab:Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 927
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->channelsTab:Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 928
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->botsTab:Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 929
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->favsTab:Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 931
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->allTab:Landroid/widget/ImageView;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v2, v9}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 932
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->usersTab:Landroid/widget/ImageView;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v2, v9}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 933
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->groupsTab:Landroid/widget/ImageView;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v2, v9}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 934
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->superGroupsTab:Landroid/widget/ImageView;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v2, v9}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 935
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->channelsTab:Landroid/widget/ImageView;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v2, v9}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 936
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->botsTab:Landroid/widget/ImageView;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v2, v9}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 937
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->favsTab:Landroid/widget/ImageView;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v2, v9}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 938
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02026c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 939
    .local v4, "selected":Landroid/graphics/drawable/Drawable;
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v3, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 940
    iget v8, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    const/16 v9, 0x9

    if-ne v8, v9, :cond_12d

    .line 941
    const/4 v1, 0x0

    .line 945
    .local v1, "i":I
    :goto_96
    packed-switch v1, :pswitch_data_194

    .line 971
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->allTab:Landroid/widget/ImageView;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v3, v9}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 972
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->allTab:Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 975
    :goto_a5
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->getHeaderAllTitles()Ljava/lang/String;

    move-result-object v5

    .line 976
    .local v5, "t":Ljava/lang/String;
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v8, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 977
    invoke-direct {p0, v13}, Lorg/telegram/ui/DialogsActivity;->paintHeader(Z)V

    .line 978
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->getDialogsArray()Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_12c

    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->getDialogsArray()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_12c

    .line 979
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v8, v12}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setVisibility(I)V

    .line 980
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v8, v12}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 981
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    if-lez v8, :cond_114

    .line 982
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 983
    .local v7, "tv":Landroid/widget/TextView;
    const-string v8, "fonts/rmedium.ttf"

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 984
    if-eqz v7, :cond_103

    .line 985
    iget v8, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    const/4 v9, 0x3

    if-ge v8, v9, :cond_185

    const-string v8, "NoChats"

    const v9, 0x7f070354

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .end local v5    # "t":Ljava/lang/String;
    :cond_f4
    :goto_f4
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 986
    const-string v8, "chatsNameColor"

    const v9, -0xdededf

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 988
    :cond_103
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_114

    .line 989
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    .line 991
    .end local v7    # "tv":Landroid/widget/TextView;
    :cond_114
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 992
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    const-string v9, "chatsRowColor"

    const/4 v10, -0x1

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 993
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v9, p0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 995
    :cond_12c
    return-void

    .line 943
    .end local v1    # "i":I
    :cond_12d
    iget v1, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    .restart local v1    # "i":I
    goto/16 :goto_96

    .line 947
    :pswitch_131
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->usersTab:Landroid/widget/ImageView;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v3, v9}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 948
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->usersTab:Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a5

    .line 951
    :pswitch_13f
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->groupsTab:Landroid/widget/ImageView;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v3, v9}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 952
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->groupsTab:Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a5

    .line 955
    :pswitch_14d
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->channelsTab:Landroid/widget/ImageView;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v3, v9}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 956
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->channelsTab:Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a5

    .line 959
    :pswitch_15b
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->botsTab:Landroid/widget/ImageView;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v3, v9}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 960
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->botsTab:Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a5

    .line 963
    :pswitch_169
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->superGroupsTab:Landroid/widget/ImageView;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v3, v9}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 964
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->superGroupsTab:Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a5

    .line 967
    :pswitch_177
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->favsTab:Landroid/widget/ImageView;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v3, v9}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 968
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->favsTab:Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a5

    .line 985
    .restart local v5    # "t":Ljava/lang/String;
    .restart local v7    # "tv":Landroid/widget/TextView;
    :cond_185
    iget v8, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    if-ne v8, v12, :cond_f4

    const-string v8, "NoFavoritesHelp"

    const v9, 0x7f07076f

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_f4

    .line 945
    :pswitch_data_194
    .packed-switch 0x3
        :pswitch_14d
        :pswitch_13f
        :pswitch_15b
        :pswitch_131
        :pswitch_169
        :pswitch_177
    .end packed-switch
.end method

.method private unreadCount()V
    .registers 3

    .prologue
    .line 263
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->allCounter:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/DialogsActivity;->unreadCount(Ljava/util/ArrayList;Landroid/widget/TextView;)V

    .line 264
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->usersCounter:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/DialogsActivity;->unreadCount(Ljava/util/ArrayList;Landroid/widget/TextView;)V

    .line 265
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->botsCounter:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/DialogsActivity;->unreadCount(Ljava/util/ArrayList;Landroid/widget/TextView;)V

    .line 266
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->channelsCounter:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/DialogsActivity;->unreadCount(Ljava/util/ArrayList;Landroid/widget/TextView;)V

    .line 267
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->favsCounter:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/DialogsActivity;->unreadCount(Ljava/util/ArrayList;Landroid/widget/TextView;)V

    .line 268
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->unreadCountGroups()V

    .line 269
    return-void
.end method

.method private unreadCount(Ljava/util/ArrayList;Landroid/widget/TextView;)V
    .registers 25
    .param p2, "tv"    # Landroid/widget/TextView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;",
            "Landroid/widget/TextView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 282
    .local p1, "dialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "hideTabs"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-nez v18, :cond_29

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "hideTabsCounters"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_2a

    .line 284
    const/16 v18, 0x8

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 340
    :cond_29
    :goto_29
    return-void

    .line 287
    :cond_2a
    const/4 v7, 0x1

    .line 288
    .local v7, "allMuted":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "tabsCountersCountChats"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 289
    .local v9, "countDialogs":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "tabsCountersCountNotMuted"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 290
    .local v10, "countNotMuted":Z
    const/16 v17, 0x0

    .line 291
    .local v17, "unreadCount":I
    if-eqz p1, :cond_b9

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_b9

    .line 292
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_52
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_b9

    .line 293
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 294
    .local v11, "dialg":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v18

    iget-wide v0, v11, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v13

    .line 295
    .local v13, "isMuted":Z
    if-eqz v13, :cond_76

    if-nez v10, :cond_b1

    .line 296
    :cond_76
    iget v12, v11, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    .line 297
    .local v12, "i":I
    if-nez v12, :cond_a6

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "unread_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v11, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a6

    .line 299
    const/4 v12, 0x1

    .line 302
    :cond_a6
    if-lez v12, :cond_b1

    .line 303
    if-nez v9, :cond_b4

    .line 304
    add-int v17, v17, v12

    .line 308
    :cond_ac
    :goto_ac
    if-lez v12, :cond_b1

    if-nez v13, :cond_b1

    .line 309
    const/4 v7, 0x0

    .line 292
    .end local v12    # "i":I
    :cond_b1
    add-int/lit8 v6, v6, 0x1

    goto :goto_52

    .line 305
    .restart local v12    # "i":I
    :cond_b4
    if-lez v12, :cond_ac

    .line 306
    add-int/lit8 v17, v17, 0x1

    goto :goto_ac

    .line 315
    .end local v6    # "a":I
    .end local v11    # "dialg":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v12    # "i":I
    .end local v13    # "isMuted":Z
    :cond_b9
    if-nez v17, :cond_113

    .line 316
    const/16 v18, 0x8

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    :goto_c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "tabsToBottom"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_29

    .line 334
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 335
    .local v14, "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "tabsToBottom"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_1e7

    const/16 v18, 0xc

    :goto_ec
    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "tabsToBottom"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_1eb

    const/16 v18, 0xa

    :goto_107
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 337
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_29

    .line 318
    .end local v14    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_113
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    sget-object v18, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v19, "theme"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 321
    .local v16, "themePrefs":Landroid/content/SharedPreferences;
    const-string v18, "chatsHeaderTabCounterSize"

    const/16 v19, 0xb

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 322
    .local v15, "size":I
    const/16 v18, 0x1

    int-to-float v0, v15

    move/from16 v19, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 323
    const/16 v18, 0xa

    move/from16 v0, v18

    if-le v15, v0, :cond_1c2

    add-int/lit8 v18, v15, -0x7

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    :goto_16d
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v19

    const/16 v20, 0x0

    const/16 v18, 0xa

    move/from16 v0, v18

    if-le v15, v0, :cond_1c5

    add-int/lit8 v18, v15, -0x7

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    :goto_180
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v18

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 324
    const-string v18, "chatsHeaderTabCounterColor"

    const/16 v19, -0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 325
    .local v8, "cColor":I
    if-eqz v7, :cond_1c8

    .line 326
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    const-string v19, "chatsHeaderTabCounterSilentBGColor"

    const v20, -0x464647

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    sget-object v20, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 327
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_c4

    .line 323
    .end local v8    # "cColor":I
    :cond_1c2
    const/high16 v18, 0x40800000    # 4.0f

    goto :goto_16d

    :cond_1c5
    const/high16 v18, 0x40800000    # 4.0f

    goto :goto_180

    .line 329
    .restart local v8    # "cColor":I
    :cond_1c8
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    const-string v19, "chatsHeaderTabCounterBGColor"

    const v20, -0x2cd0d1

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    sget-object v20, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 330
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_c4

    .line 335
    .end local v8    # "cColor":I
    .end local v15    # "size":I
    .end local v16    # "themePrefs":Landroid/content/SharedPreferences;
    .restart local v14    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1e7
    const/16 v18, 0xa

    goto/16 :goto_ec

    .line 336
    :cond_1eb
    const/16 v18, 0xc

    goto/16 :goto_107
.end method

.method private unreadCountGroups()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 272
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "hideSGroups"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 273
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsAll:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->groupsCounter:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/DialogsActivity;->unreadCount(Ljava/util/ArrayList;Landroid/widget/TextView;)V

    .line 278
    :goto_16
    iput-boolean v2, p0, Lorg/telegram/ui/DialogsActivity;->changedTabPosition:Z

    .line 279
    return-void

    .line 275
    :cond_19
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->groupsCounter:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/DialogsActivity;->unreadCount(Ljava/util/ArrayList;Landroid/widget/TextView;)V

    .line 276
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->sGroupsCounter:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/DialogsActivity;->unreadCount(Ljava/util/ArrayList;Landroid/widget/TextView;)V

    goto :goto_16
.end method

.method private updatePasscodeButton()V
    .registers 3

    .prologue
    .line 2457
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->passcodeItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-nez v0, :cond_5

    .line 2470
    :goto_4
    return-void

    .line 2460
    :cond_5
    sget-object v0, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2d

    iget-boolean v0, p0, Lorg/telegram/ui/DialogsActivity;->searching:Z

    if-nez v0, :cond_2d

    .line 2461
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->passcodeItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 2462
    sget-boolean v0, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    if-eqz v0, :cond_24

    .line 2463
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->passcodeItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const v1, 0x7f0201b1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    goto :goto_4

    .line 2465
    :cond_24
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->passcodeItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const v1, 0x7f0201b2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    goto :goto_4

    .line 2468
    :cond_2d
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->passcodeItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    goto :goto_4
.end method

.method private updateTabs()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 877
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "hideTabs"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/DialogsActivity;->hideTabs:Z

    .line 878
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "disableTabsAnimation"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/DialogsActivity;->disableAnimation:Z

    .line 879
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "tabsHeight"

    const/16 v2, 0x28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/DialogsActivity;->tabsHeight:I

    .line 880
    invoke-direct {p0, v3}, Lorg/telegram/ui/DialogsActivity;->refreshTabAndListViews(Z)V

    .line 881
    iget-boolean v0, p0, Lorg/telegram/ui/DialogsActivity;->hideTabs:Z

    if-eqz v0, :cond_34

    iget v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_34

    .line 882
    iput v3, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    .line 883
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsBackupAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-direct {p0, v0}, Lorg/telegram/ui/DialogsActivity;->refreshAdapterAndTabs(Lorg/telegram/ui/Adapters/DialogsAdapter;)V

    .line 886
    :cond_34
    return-void
.end method

.method private updateVisibleRows(I)V
    .registers 14
    .param p1, "mask"    # I

    .prologue
    .line 2492
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v8, :cond_5

    .line 2530
    :goto_4
    return-void

    .line 2495
    :cond_5
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v5

    .line 2496
    .local v5, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_c
    if-ge v0, v5, :cond_9e

    .line 2497
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2498
    .local v3, "child":Landroid/view/View;
    instance-of v8, v3, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v8, :cond_6c

    .line 2499
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    if-eq v8, v9, :cond_44

    move-object v2, v3

    .line 2500
    check-cast v2, Lorg/telegram/ui/Cells/DialogCell;

    .line 2501
    .local v2, "cell":Lorg/telegram/ui/Cells/DialogCell;
    and-int/lit16 v8, p1, 0x800

    if-eqz v8, :cond_49

    .line 2502
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/DialogCell;->checkCurrentDialogIndex()V

    .line 2503
    iget v8, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    if-nez v8, :cond_44

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_44

    .line 2504
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v8

    iget-wide v10, p0, Lorg/telegram/ui/DialogsActivity;->openedDialogId:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_47

    const/4 v8, 0x1

    :goto_41
    invoke-virtual {v2, v8}, Lorg/telegram/ui/Cells/DialogCell;->setDialogSelected(Z)V

    .line 2496
    .end local v2    # "cell":Lorg/telegram/ui/Cells/DialogCell;
    .end local v3    # "child":Landroid/view/View;
    :cond_44
    :goto_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 2504
    .restart local v2    # "cell":Lorg/telegram/ui/Cells/DialogCell;
    .restart local v3    # "child":Landroid/view/View;
    :cond_47
    const/4 v8, 0x0

    goto :goto_41

    .line 2506
    :cond_49
    and-int/lit16 v8, p1, 0x200

    if-eqz v8, :cond_68

    .line 2507
    iget v8, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    if-nez v8, :cond_44

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_44

    .line 2508
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v8

    iget-wide v10, p0, Lorg/telegram/ui/DialogsActivity;->openedDialogId:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_66

    const/4 v8, 0x1

    :goto_62
    invoke-virtual {v2, v8}, Lorg/telegram/ui/Cells/DialogCell;->setDialogSelected(Z)V

    goto :goto_44

    :cond_66
    const/4 v8, 0x0

    goto :goto_62

    .line 2511
    :cond_68
    invoke-virtual {v2, p1}, Lorg/telegram/ui/Cells/DialogCell;->update(I)V

    goto :goto_44

    .line 2514
    .end local v2    # "cell":Lorg/telegram/ui/Cells/DialogCell;
    :cond_6c
    instance-of v8, v3, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v8, :cond_76

    .line 2515
    check-cast v3, Lorg/telegram/ui/Cells/UserCell;

    .end local v3    # "child":Landroid/view/View;
    invoke-virtual {v3, p1}, Lorg/telegram/ui/Cells/UserCell;->update(I)V

    goto :goto_44

    .line 2516
    .restart local v3    # "child":Landroid/view/View;
    :cond_76
    instance-of v8, v3, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz v8, :cond_80

    .line 2517
    check-cast v3, Lorg/telegram/ui/Cells/ProfileSearchCell;

    .end local v3    # "child":Landroid/view/View;
    invoke-virtual {v3, p1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->update(I)V

    goto :goto_44

    .line 2518
    .restart local v3    # "child":Landroid/view/View;
    :cond_80
    instance-of v8, v3, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v8, :cond_44

    move-object v7, v3

    .line 2519
    check-cast v7, Lorg/telegram/ui/Components/RecyclerListView;

    .line 2520
    .local v7, "innerListView":Lorg/telegram/ui/Components/RecyclerListView;
    invoke-virtual {v7}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v6

    .line 2521
    .local v6, "count2":I
    const/4 v1, 0x0

    .local v1, "b":I
    :goto_8c
    if-ge v1, v6, :cond_44

    .line 2522
    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2523
    .local v4, "child2":Landroid/view/View;
    instance-of v8, v4, Lorg/telegram/ui/Cells/HintDialogCell;

    if-eqz v8, :cond_9b

    .line 2524
    check-cast v4, Lorg/telegram/ui/Cells/HintDialogCell;

    .end local v4    # "child2":Landroid/view/View;
    invoke-virtual {v4, p1}, Lorg/telegram/ui/Cells/HintDialogCell;->checkUnreadCounter(I)V

    .line 2521
    :cond_9b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8c

    .line 2529
    .end local v1    # "b":I
    .end local v3    # "child":Landroid/view/View;
    .end local v6    # "count2":I
    .end local v7    # "innerListView":Lorg/telegram/ui/Components/RecyclerListView;
    :cond_9e
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->unreadCount()V

    goto/16 :goto_4
.end method


# virtual methods
.method public changeGhostModeState()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 206
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v8, "theme"

    invoke-virtual {v7, v8, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 207
    .local v6, "themePrefs":Landroid/content/SharedPreferences;
    const-string v7, "chatsHeaderIconsColor"

    const/4 v8, -0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 209
    .local v5, "iconColor":I
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 211
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "ghost_mode"

    invoke-interface {v7, v8, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_7c

    .line 212
    const/4 v2, 0x1

    .line 213
    .local v2, "ghostMode":Z
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v8, "GhostModeActivated"

    const v9, 0x7f070715

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 218
    :goto_34
    const-string v7, "ghost_mode"

    invoke-interface {v1, v7, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 219
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 221
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/ActionBar;->changeGhostModeVisibility()V

    .line 222
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MessagesController;->reRunUpdateTimerProc()V

    .line 224
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "show_ghost_state_icon"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-ne v7, v10, :cond_aa

    .line 225
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->ghostItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v7, :cond_7b

    .line 226
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->ghostItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 227
    .local v0, "actionBarMenuItem":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "ghost_mode"

    invoke-interface {v7, v8, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-ne v7, v10, :cond_90

    .line 228
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020123

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 229
    .local v3, "ic_ghost":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_78

    .line 230
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v5, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 231
    :cond_78
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 242
    .end local v0    # "actionBarMenuItem":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .end local v3    # "ic_ghost":Landroid/graphics/drawable/Drawable;
    :cond_7b
    :goto_7b
    return-void

    .line 215
    .end local v2    # "ghostMode":Z
    :cond_7c
    const/4 v2, 0x0

    .line 216
    .restart local v2    # "ghostMode":Z
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v8, "GhostModeDeactivated"

    const v9, 0x7f070716

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_34

    .line 233
    .restart local v0    # "actionBarMenuItem":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    :cond_90
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020124

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 234
    .local v4, "ic_ghost_disable":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_a6

    .line 235
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 236
    :cond_a6
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7b

    .line 240
    .end local v0    # "actionBarMenuItem":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .end local v4    # "ic_ghost_disable":Landroid/graphics/drawable/Drawable;
    :cond_aa
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->ghostItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    goto :goto_7b
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 32
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1181
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/ui/DialogsActivity;->searching:Z

    .line 1182
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/ui/DialogsActivity;->searchWas:Z

    .line 1184
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "mainconfig"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    .line 1187
    const-string v4, "Akhbarefotball"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/telegram/ui/DialogsActivity;->joinToTelehgram(Ljava/lang/String;)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "first"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_91

    .line 1190
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->lockDatabaseHandler:Lorg/telegram/SQLite/LockDatabaseHandler;

    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->lockDatabaseHandler:Lorg/telegram/SQLite/LockDatabaseHandler;

    invoke-virtual {v5}, Lorg/telegram/SQLite/LockDatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/SQLite/LockDatabaseHandler;->onDrop(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1191
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1192
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->didSetPasscodeChat:I

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1193
    new-instance v12, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v12, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1194
    .local v12, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v4, "AppName"

    const v5, 0x7f070092

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1195
    const-string v4, "\u062a\u0646\u0638\u06cc\u0645\u0627\u062a \u0642\u0641\u0644 \u0686\u062a \u067e\u0627\u06a9 \u0634\u062f\u0647 \u0627\u0633\u062a. \u0644\u0637\u0641\u0627 \u0627\u06af\u0631 \u0686\u062a\u06cc \u0631\u0627 \u0642\u0641\u0644 \u06a9\u0631\u062f\u0647 \u0627\u06cc\u062f\u060c \u062a\u0646\u0638\u06cc\u0645\u0627\u062a \u0631\u0627 \u062f\u0648\u0628\u0627\u0631\u0647 \u0627\u0646\u062c\u0627\u0645 \u062f\u0647\u06cc\u062f"

    invoke-virtual {v12, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1196
    const-string v4, "OK"

    const v5, 0x7f0703d4

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/DialogsActivity$17;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/DialogsActivity$17;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v12, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1201
    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1202
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 1203
    .local v15, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "first"

    const/4 v5, 0x0

    invoke-interface {v15, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1204
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1206
    .end local v12    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v15    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_91
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "chat_unlocked"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/ui/DialogsActivity;->chatUnlocked:Z

    .line 1207
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "chat_password"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->chatPassword:Ljava/lang/String;

    .line 1209
    new-instance v4, Lorg/telegram/ui/DialogsActivity$18;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/DialogsActivity$18;-><init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1216
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v23

    .line 1217
    .local v23, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/DialogsActivity;->onlySelect:Z

    if-nez v4, :cond_e1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;

    if-nez v4, :cond_e1

    .line 1218
    const/4 v4, 0x1

    const v5, 0x7f0201b1

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->passcodeItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1219
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/DialogsActivity;->updatePasscodeButton()V

    .line 1221
    :cond_e1
    const/4 v4, 0x0

    const v5, 0x7f0200ea

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/DialogsActivity$19;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/DialogsActivity$19;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v22

    .line 1298
    .local v22, "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    new-instance v4, Lorg/telegram/ui/DialogsActivity$20;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/DialogsActivity$20;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1328
    invoke-virtual/range {v22 .. v22}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Landroid/widget/EditText;

    move-result-object v4

    const-string v5, "Search"

    const v6, 0x7f0704b8

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1329
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/DialogsActivity;->onlySelect:Z

    if-eqz v4, :cond_686

    .line 1330
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v5, 0x7f0200dd

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 1331
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v5, "SelectChat"

    const v6, 0x7f0704d0

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1364
    :cond_137
    :goto_137
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 1366
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/DialogsActivity$21;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/DialogsActivity$21;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 1386
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->sideMenu:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v4, :cond_178

    .line 1387
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->sideMenu:Lorg/telegram/messenger/support/widget/RecyclerView;

    const-string v5, "chats_menuBackground"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/support/widget/RecyclerView;->setBackgroundColor(I)V

    .line 1388
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->sideMenu:Lorg/telegram/messenger/support/widget/RecyclerView;

    const-string v5, "chats_menuBackground"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/support/widget/RecyclerView;->setGlowColor(I)V

    .line 1389
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->sideMenu:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/RecyclerView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1392
    :cond_178
    new-instance v16, Landroid/widget/FrameLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1393
    .local v16, "frameLayout":Landroid/widget/FrameLayout;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/DialogsActivity;->fragmentView:Landroid/view/View;

    .line 1395
    new-instance v4, Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 1396
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 1397
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;)V

    .line 1398
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setInstantClick(Z)V

    .line 1399
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 1400
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "tabsToBottom"

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_754

    const/16 v4, 0xa

    :goto_1c6
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v9, "tabsToBottom"

    const/4 v10, 0x0

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_75a

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/DialogsActivity;->h:I

    :goto_1d8
    invoke-virtual {v6, v7, v4, v8, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 1401
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setTag(Ljava/lang/Object;)V

    .line 1402
    new-instance v4, Lorg/telegram/ui/DialogsActivity$22;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/DialogsActivity$22;-><init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    .line 1408
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setOrientation(I)V

    .line 1409
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 1410
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_75d

    const/4 v4, 0x1

    :goto_210
    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollbarPosition(I)V

    .line 1411
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1412
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/DialogsActivity$23;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/DialogsActivity$23;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1529
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/DialogsActivity$24;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/DialogsActivity$24;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 1790
    new-instance v4, Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    .line 1791
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setVisibility(I)V

    .line 1792
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setShowAtCenter(Z)V

    .line 1793
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string v5, "NoResult"

    const v6, 0x7f070368

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 1794
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/4 v5, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1796
    new-instance v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    .line 1797
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1798
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1799
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1800
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    const/4 v5, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1801
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    new-instance v5, Lorg/telegram/ui/DialogsActivity$25;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/DialogsActivity$25;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1808
    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyTextView1:Landroid/widget/TextView;

    .line 1809
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyTextView1:Landroid/widget/TextView;

    const-string v5, "NoChats"

    const v6, 0x7f070354

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1810
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyTextView1:Landroid/widget/TextView;

    const-string v5, "emptyListPlaceholder"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1811
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyTextView1:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1812
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyTextView1:Landroid/widget/TextView;

    const/4 v5, 0x1

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1813
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->emptyTextView1:Landroid/widget/TextView;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1815
    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyTextView2:Landroid/widget/TextView;

    .line 1816
    const-string v4, "NoChatsHelp"

    const v5, 0x7f070355

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 1817
    .local v17, "help":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_334

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v4

    if-nez v4, :cond_334

    .line 1818
    const/16 v4, 0xa

    const/16 v5, 0x20

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v17

    .line 1820
    :cond_334
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyTextView2:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1821
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyTextView2:Landroid/widget/TextView;

    const-string v5, "emptyListPlaceholder"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1822
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyTextView2:Landroid/widget/TextView;

    const/4 v5, 0x1

    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1823
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyTextView2:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1824
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyTextView2:Landroid/widget/TextView;

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1825
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyTextView2:Landroid/widget/TextView;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1826
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->emptyTextView2:Landroid/widget/TextView;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1828
    new-instance v4, Lorg/telegram/ui/Components/RadialProgressView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    .line 1829
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 1830
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x11

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1832
    new-instance v4, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    .line 1833
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/DialogsActivity;->onlySelect:Z

    if-eqz v4, :cond_760

    const/16 v4, 0x8

    :goto_3d4
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1834
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1836
    const/high16 v4, 0x42600000    # 56.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const-string v5, "chats_actionBackground"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    const-string v6, "chats_actionPressedBackground"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 1837
    .local v14, "drawable":Landroid/graphics/drawable/Drawable;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_432

    .line 1838
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200cf

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    .line 1839
    .local v25, "shadowDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v5, -0x1000000

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1840
    new-instance v13, Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-direct {v13, v0, v14, v4, v5}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 1841
    .local v13, "combinedDrawable":Lorg/telegram/ui/Components/CombinedDrawable;
    const/high16 v4, 0x42600000    # 56.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x42600000    # 56.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v13, v4, v5}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    .line 1842
    move-object v14, v13

    .line 1844
    .end local v13    # "combinedDrawable":Lorg/telegram/ui/Components/CombinedDrawable;
    .end local v25    # "shadowDrawable":Landroid/graphics/drawable/Drawable;
    :cond_432
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1845
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    const-string v6, "chats_actionIcon"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1846
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    const v5, 0x7f0200ce

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1847
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_4d7

    .line 1848
    new-instance v11, Landroid/animation/StateListAnimator;

    invoke-direct {v11}, Landroid/animation/StateListAnimator;-><init>()V

    .line 1849
    .local v11, "animator":Landroid/animation/StateListAnimator;
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const v6, 0x10100a7

    aput v6, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    const-string v6, "translationZ"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    aput v9, v7, v8

    const/4 v8, 0x1

    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 1850
    const/4 v4, 0x0

    new-array v4, v4, [I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    const-string v6, "translationZ"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    aput v9, v7, v8

    const/4 v8, 0x1

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 1851
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 1852
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/DialogsActivity$26;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/DialogsActivity$26;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1860
    .end local v11    # "animator":Landroid/animation/StateListAnimator;
    :cond_4d7
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "tabsToBottom"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    .line 1862
    .local v27, "tabsToBottom":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_763

    const/16 v4, 0x38

    :goto_4f0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_767

    const/high16 v5, 0x42600000    # 56.0f

    :goto_4f8
    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_76b

    const/4 v6, 0x3

    :goto_4fd
    or-int/lit8 v6, v6, 0x50

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_76e

    const/high16 v7, 0x41600000    # 14.0f

    :goto_505
    const/4 v8, 0x0

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_771

    const/4 v9, 0x0

    :goto_50b
    const/high16 v10, 0x41600000    # 14.0f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1863
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/DialogsActivity$27;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/DialogsActivity$27;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1871
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "tabs"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 1872
    .local v21, "isTabsEnabled":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "move_tabs"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    .line 1873
    .local v24, "moveTabs":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "swipe_tabs"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 1874
    .local v26, "swipeTabs":Z
    if-eqz v26, :cond_775

    .line 1875
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/DialogsActivity$28;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/DialogsActivity$28;-><init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1914
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    new-instance v5, Lorg/telegram/ui/DialogsActivity$29;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/DialogsActivity$29;-><init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1958
    :goto_569
    if-eqz v21, :cond_598

    .line 1959
    new-instance v4, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->tabsView:Landroid/widget/FrameLayout;

    .line 1960
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/ui/DialogsActivity;->initTabs(Landroid/content/Context;)V

    .line 1961
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->tabsView:Landroid/widget/FrameLayout;

    move-object/from16 v29, v0

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/DialogsActivity;->tabsHeight:I

    int-to-float v5, v5

    if-eqz v27, :cond_77e

    const/16 v6, 0x50

    :goto_589
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1964
    :cond_598
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/DialogsActivity;->joinToCha()V

    .line 1966
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/DialogsActivity$30;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/DialogsActivity$30;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 2047
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;

    if-nez v4, :cond_5e4

    .line 2048
    new-instance v4, Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v5}, Lorg/telegram/ui/Adapters/DialogsAdapter;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    .line 2049
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_5d9

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/DialogsActivity;->openedDialogId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5d9

    .line 2050
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/ui/DialogsActivity;->openedDialogId:J

    invoke-virtual {v4, v6, v7}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setOpenedDialogId(J)V

    .line 2052
    :cond_5d9
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 2054
    :cond_5e4
    const/16 v28, 0x0

    .line 2055
    .local v28, "type":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;

    if-eqz v4, :cond_782

    .line 2056
    const/16 v28, 0x2

    .line 2060
    :cond_5ee
    :goto_5ee
    new-instance v4, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-direct {v4, v0, v1, v5}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;-><init>(Landroid/content/Context;II)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .line 2061
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    new-instance v5, Lorg/telegram/ui/DialogsActivity$31;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/DialogsActivity$31;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->setDelegate(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;)V

    .line 2129
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/messenger/MessagesController;->loadingDialogs:Z

    if-eqz v4, :cond_78c

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_78c

    .line 2130
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setVisibility(I)V

    .line 2131
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2132
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 2138
    :goto_63e
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;

    if-eqz v4, :cond_64f

    .line 2139
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->openSearchField(Ljava/lang/String;)V

    .line 2142
    :cond_64f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/DialogsActivity;->onlySelect:Z

    if-nez v4, :cond_681

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    if-nez v4, :cond_681

    .line 2143
    new-instance v29, Lorg/telegram/ui/Components/FragmentContextView;

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/FragmentContextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/DialogsActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    const/4 v4, -0x1

    const/high16 v5, 0x421c0000    # 39.0f

    const/16 v6, 0x33

    const/4 v7, 0x0

    const/high16 v8, -0x3df00000    # -36.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2146
    :cond_681
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->fragmentView:Landroid/view/View;

    return-object v4

    .line 1333
    .end local v14    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v16    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v17    # "help":Ljava/lang/String;
    .end local v21    # "isTabsEnabled":Z
    .end local v24    # "moveTabs":Z
    .end local v26    # "swipeTabs":Z
    .end local v27    # "tabsToBottom":Z
    .end local v28    # "type":I
    :cond_686
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;

    if-eqz v4, :cond_708

    .line 1334
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v5, 0x7f0200dd

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 1338
    :goto_696
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_715

    .line 1339
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v5, "AppNameBeta"

    const v6, 0x7f070093

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1343
    :goto_6aa
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "show_ghost_state_icon"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_745

    .line 1344
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "ghost_mode"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_726

    .line 1345
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020123

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 1346
    .local v18, "ic_ghost":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x3

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(ILandroid/graphics/drawable/Drawable;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->ghostItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1358
    .end local v18    # "ic_ghost":Landroid/graphics/drawable/Drawable;
    :cond_6e0
    :goto_6e0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "show_last_seen_icon"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_137

    .line 1359
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020189

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 1360
    .local v20, "ic_teleh_seen":Landroid/graphics/drawable/Drawable;
    if-eqz v20, :cond_137

    .line 1361
    const/4 v4, 0x2

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(ILandroid/graphics/drawable/Drawable;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    goto/16 :goto_137

    .line 1336
    .end local v20    # "ic_teleh_seen":Landroid/graphics/drawable/Drawable;
    :cond_708
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-direct {v5}, Lorg/telegram/ui/ActionBar/MenuDrawable;-><init>()V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_696

    .line 1341
    :cond_715
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v5, "AppName"

    const v6, 0x7f070092

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_6aa

    .line 1349
    :cond_726
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020124

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 1350
    .local v19, "ic_ghost_disable":Landroid/graphics/drawable/Drawable;
    if-eqz v19, :cond_6e0

    .line 1351
    const/4 v4, 0x3

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(ILandroid/graphics/drawable/Drawable;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->ghostItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    goto :goto_6e0

    .line 1355
    .end local v19    # "ic_ghost_disable":Landroid/graphics/drawable/Drawable;
    :cond_745
    const/4 v4, 0x3

    const v5, 0x7f0d00a7

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->ghostItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    goto :goto_6e0

    .line 1400
    .restart local v16    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_754
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/DialogsActivity;->h:I

    goto/16 :goto_1c6

    :cond_75a
    const/4 v5, 0x0

    goto/16 :goto_1d8

    .line 1410
    :cond_75d
    const/4 v4, 0x2

    goto/16 :goto_210

    .line 1833
    .restart local v17    # "help":Ljava/lang/String;
    :cond_760
    const/4 v4, 0x0

    goto/16 :goto_3d4

    .line 1862
    .restart local v14    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v27    # "tabsToBottom":Z
    :cond_763
    const/16 v4, 0x3c

    goto/16 :goto_4f0

    :cond_767
    const/high16 v5, 0x42700000    # 60.0f

    goto/16 :goto_4f8

    :cond_76b
    const/4 v6, 0x5

    goto/16 :goto_4fd

    :cond_76e
    const/4 v7, 0x0

    goto/16 :goto_505

    :cond_771
    const/high16 v9, 0x41600000    # 14.0f

    goto/16 :goto_50b

    .line 1956
    .restart local v21    # "isTabsEnabled":Z
    .restart local v24    # "moveTabs":Z
    .restart local v26    # "swipeTabs":Z
    :cond_775
    const-string v4, "swip"

    const-string v5, "disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_569

    .line 1961
    :cond_77e
    const/16 v6, 0x30

    goto/16 :goto_589

    .line 2057
    .restart local v28    # "type":I
    :cond_782
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/DialogsActivity;->onlySelect:Z

    if-nez v4, :cond_5ee

    .line 2058
    const/16 v28, 0x1

    goto/16 :goto_5ee

    .line 2134
    :cond_78c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setVisibility(I)V

    .line 2135
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 2136
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    goto/16 :goto_63e
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 16
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/16 v12, 0xe

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2269
    sget v7, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    if-ne p1, v7, :cond_88

    .line 2270
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    if-eqz v7, :cond_19

    .line 2271
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-virtual {v7}, Lorg/telegram/ui/Adapters/DialogsAdapter;->isDataSetChanged()Z

    move-result v7

    if-eqz v7, :cond_50

    .line 2272
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-virtual {v7}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    .line 2277
    :cond_19
    :goto_19
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    if-eqz v7, :cond_22

    .line 2278
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v7}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->notifyDataSetChanged()V

    .line 2280
    :cond_22
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v7, :cond_4f

    .line 2282
    :try_start_26
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/messenger/MessagesController;->loadingDialogs:Z

    if-eqz v7, :cond_56

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_56

    .line 2283
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setVisibility(I)V

    .line 2284
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2285
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_4f} :catch_74

    .line 2364
    :cond_4f
    :goto_4f
    return-void

    .line 2274
    :cond_50
    const/16 v7, 0x800

    invoke-direct {p0, v7}, Lorg/telegram/ui/DialogsActivity;->updateVisibleRows(I)V

    goto :goto_19

    .line 2287
    :cond_56
    :try_start_56
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 2288
    iget-boolean v7, p0, Lorg/telegram/ui/DialogsActivity;->searching:Z

    if-eqz v7, :cond_79

    iget-boolean v7, p0, Lorg/telegram/ui/DialogsActivity;->searchWas:Z

    if-eqz v7, :cond_79

    .line 2289
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2290
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_73} :catch_74

    goto :goto_4f

    .line 2296
    :catch_74
    move-exception v1

    .line 2297
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4f

    .line 2292
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_79
    :try_start_79
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setVisibility(I)V

    .line 2293
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_87} :catch_74

    goto :goto_4f

    .line 2300
    :cond_88
    sget v7, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    if-ne p1, v7, :cond_90

    .line 2301
    invoke-direct {p0, v10}, Lorg/telegram/ui/DialogsActivity;->updateVisibleRows(I)V

    goto :goto_4f

    .line 2302
    :cond_90
    sget v7, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, v7, :cond_a0

    .line 2303
    aget-object v7, p2, v10

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Lorg/telegram/ui/DialogsActivity;->updateVisibleRows(I)V

    goto :goto_4f

    .line 2304
    :cond_a0
    sget v7, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    if-ne p1, v7, :cond_a7

    .line 2305
    sput-boolean v10, Lorg/telegram/ui/DialogsActivity;->dialogsLoaded:Z

    goto :goto_4f

    .line 2306
    :cond_a7
    sget v7, Lorg/telegram/messenger/NotificationCenter;->encryptedChatUpdated:I

    if-ne p1, v7, :cond_af

    .line 2307
    invoke-direct {p0, v10}, Lorg/telegram/ui/DialogsActivity;->updateVisibleRows(I)V

    goto :goto_4f

    .line 2308
    :cond_af
    sget v7, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    if-ne p1, v7, :cond_b7

    .line 2309
    invoke-direct {p0, v10}, Lorg/telegram/ui/DialogsActivity;->updateVisibleRows(I)V

    goto :goto_4f

    .line 2310
    :cond_b7
    sget v7, Lorg/telegram/messenger/NotificationCenter;->openedChatChanged:I

    if-ne p1, v7, :cond_f6

    .line 2311
    iget v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    if-nez v7, :cond_4f

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 2312
    aget-object v7, p2, v11

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2313
    .local v0, "close":Z
    aget-object v7, p2, v10

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2314
    .local v2, "dialog_id":J
    if-eqz v0, :cond_f3

    .line 2315
    iget-wide v8, p0, Lorg/telegram/ui/DialogsActivity;->openedDialogId:J

    cmp-long v7, v2, v8

    if-nez v7, :cond_e1

    .line 2316
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/telegram/ui/DialogsActivity;->openedDialogId:J

    .line 2321
    :cond_e1
    :goto_e1
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    if-eqz v7, :cond_ec

    .line 2322
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    iget-wide v8, p0, Lorg/telegram/ui/DialogsActivity;->openedDialogId:J

    invoke-virtual {v7, v8, v9}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setOpenedDialogId(J)V

    .line 2324
    :cond_ec
    const/16 v7, 0x200

    invoke-direct {p0, v7}, Lorg/telegram/ui/DialogsActivity;->updateVisibleRows(I)V

    goto/16 :goto_4f

    .line 2319
    :cond_f3
    iput-wide v2, p0, Lorg/telegram/ui/DialogsActivity;->openedDialogId:J

    goto :goto_e1

    .line 2326
    .end local v0    # "close":Z
    .end local v2    # "dialog_id":J
    :cond_f6
    sget v7, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    if-ne p1, v7, :cond_ff

    .line 2327
    invoke-direct {p0, v10}, Lorg/telegram/ui/DialogsActivity;->updateVisibleRows(I)V

    goto/16 :goto_4f

    .line 2328
    :cond_ff
    sget v7, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByAck:I

    if-eq p1, v7, :cond_10b

    sget v7, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    if-eq p1, v7, :cond_10b

    sget v7, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    if-ne p1, v7, :cond_112

    .line 2329
    :cond_10b
    const/16 v7, 0x1000

    invoke-direct {p0, v7}, Lorg/telegram/ui/DialogsActivity;->updateVisibleRows(I)V

    goto/16 :goto_4f

    .line 2330
    :cond_112
    sget v7, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    if-ne p1, v7, :cond_11b

    .line 2331
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->updatePasscodeButton()V

    goto/16 :goto_4f

    .line 2332
    :cond_11b
    sget v7, Lorg/telegram/messenger/NotificationCenter;->needReloadRecentDialogsSearch:I

    if-ne p1, v7, :cond_12a

    .line 2333
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    if-eqz v7, :cond_4f

    .line 2334
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v7}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->loadRecentSearch()V

    goto/16 :goto_4f

    .line 2336
    :cond_12a
    sget v7, Lorg/telegram/messenger/NotificationCenter;->refreshTabs:I

    if-ne p1, v7, :cond_1a7

    .line 2337
    aget-object v7, p2, v10

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2338
    .local v4, "i":I
    if-eq v4, v12, :cond_13c

    const/16 v7, 0xc

    if-ne v4, v7, :cond_191

    .line 2339
    :cond_13c
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "tabsHeight"

    const/16 v9, 0x28

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lorg/telegram/ui/DialogsActivity;->tabsHeight:I

    .line 2340
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->tabsView:Landroid/widget/FrameLayout;

    if-eqz v7, :cond_167

    .line 2341
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->tabsView:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 2342
    .local v6, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "tabsToBottom"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1a1

    const/16 v7, 0x50

    :goto_160
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2343
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->tabsView:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2345
    .end local v6    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_167
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    if-eqz v7, :cond_18d

    .line 2346
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 2347
    .local v5, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "tabsToBottom"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1a4

    iget v7, p0, Lorg/telegram/ui/DialogsActivity;->tabsHeight:I

    add-int/lit8 v7, v7, 0xe

    int-to-float v7, v7

    :goto_182
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 2348
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2350
    .end local v5    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_18d
    if-ne v4, v12, :cond_191

    .line 2351
    iput-boolean v11, p0, Lorg/telegram/ui/DialogsActivity;->changedTabPosition:Z

    .line 2354
    :cond_191
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->updateTabs()V

    .line 2355
    aget-object v7, p2, v10

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Lorg/telegram/ui/DialogsActivity;->hideShowTabs(I)V

    goto/16 :goto_4f

    .line 2342
    .restart local v6    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1a1
    const/16 v7, 0x30

    goto :goto_160

    .line 2347
    .end local v6    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v5    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1a4
    const/high16 v7, 0x41600000    # 14.0f

    goto :goto_182

    .line 2357
    .end local v4    # "i":I
    .end local v5    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1a7
    sget v7, Lorg/telegram/messenger/NotificationCenter;->didLoadedReplyMessages:I

    if-ne p1, v7, :cond_1b0

    .line 2358
    invoke-direct {p0, v10}, Lorg/telegram/ui/DialogsActivity;->updateVisibleRows(I)V

    goto/16 :goto_4f

    .line 2359
    :cond_1b0
    sget v7, Lorg/telegram/messenger/NotificationCenter;->reloadHints:I

    if-ne p1, v7, :cond_4f

    .line 2360
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    if-eqz v7, :cond_4f

    .line 2361
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v7}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->notifyDataSetChanged()V

    goto/16 :goto_4f
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .registers 13

    .prologue
    .line 2621
    new-instance v9, Lorg/telegram/ui/DialogsActivity$34;

    invoke-direct {v9, p0}, Lorg/telegram/ui/DialogsActivity$34;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    .line 2645
    .local v9, "\u0441ellDelegate":Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;
    const/16 v0, 0x6f

    new-array v10, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->fragmentView:Landroid/view/View;

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

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultSearch"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultSearchPlaceholder"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "divider"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "emptyListPlaceholder"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "progressCircle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->emptyTextView1:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "emptyListPlaceholder"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xd

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->emptyTextView2:Landroid/widget/TextView;

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

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "chats_actionIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xf

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "chats_actionBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x10

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "chats_actionPressedBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x11

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_photoDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string v7, "avatar_text"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x12

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "avatar_backgroundRed"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x13

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "avatar_backgroundOrange"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x14

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "avatar_backgroundViolet"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x15

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "avatar_backgroundGreen"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x16

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "avatar_backgroundCyan"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x17

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "avatar_backgroundBlue"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x18

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "avatar_backgroundPink"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x19

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "chats_unreadCounter"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countGrayPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "chats_unreadCounterMuted"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "chats_unreadCounterText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "chats_name"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_nameEncryptedPaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "chats_secretName"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string v7, "chats_secretIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_botDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string v7, "chats_nameIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x20

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string v7, "chats_pinnedIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x21

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "chats_message"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x22

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "chats_nameMessage"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x23

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "chats_draft"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x24

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "chats_attachMessage"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x25

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "chats_actionMessage"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x26

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_timePaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "chats_date"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x27

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "chats_pinnedOverlay"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x28

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_tabletSeletedPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "chats_tabletSelectedOverlay"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x29

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string v7, "chats_sentCheck"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x2a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string v7, "chats_sentClock"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x2b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "chats_sentError"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x2c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string v7, "chats_sentErrorIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x2d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string v7, "chats_verifiedCheck"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x2e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string v7, "chats_verifiedBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x2f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string v7, "chats_muteIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x30

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->sideMenu:Lorg/telegram/messenger/support/widget/RecyclerView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "chats_menuBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x31

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->sideMenu:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DrawerProfileCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "chats_menuName"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x32

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->sideMenu:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DrawerProfileCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "chats_menuPhone"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x33

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->sideMenu:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DrawerProfileCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "chats_menuPhoneCats"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x34

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->sideMenu:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DrawerProfileCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "chats_menuCloudBackgroundCats"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x35

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->sideMenu:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DrawerProfileCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "cloudDrawable"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "chats_menuCloud"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x36

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->sideMenu:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DrawerProfileCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "chat_serviceBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x37

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->sideMenu:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DrawerProfileCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "chats_menuTopShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x38

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->sideMenu:Lorg/telegram/messenger/support/widget/RecyclerView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DrawerActionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "chats_menuItemIcon"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x39

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->sideMenu:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DrawerActionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "chats_menuItemText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x3a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->sideMenu:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DividerCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "divider"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x3b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v8, 0x3c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_offlinePaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhiteGrayText3"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x3d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlinePaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhiteBlueText3"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x3e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v8, 0x3f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v8, 0x40

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/HashtagSearchCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x41

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "progressCircle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x42

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .line 2728
    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getInnerListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/HintDialogCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "chats_unreadCounter"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x43

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .line 2729
    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getInnerListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/HintDialogCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countGrayPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "chats_unreadCounterMuted"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x44

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .line 2730
    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getInnerListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/HintDialogCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "chats_unreadCounterText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x45

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .line 2731
    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getInnerListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/HintDialogCell;

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

    const/16 v11, 0x46

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

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

    const/16 v11, 0x47

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

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

    const/16 v11, 0x48

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

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

    const/16 v11, 0x49

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

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

    const/16 v11, 0x4a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

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

    const/16 v11, 0x4b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

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

    const-string v8, "returnToCallBackground"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x4c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    const/4 v2, 0x0

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

    const-string v8, "returnToCallText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x4d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "dialogBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x4e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "dialogTextBlack"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x4f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "dialogTextLink"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x50

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "dialogLinkSelection"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x51

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "dialogTextBlue"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x52

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "dialogTextBlue2"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x53

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "dialogTextBlue3"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x54

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "dialogTextBlue4"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x55

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "dialogTextRed"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x56

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "dialogTextGray"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x57

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "dialogTextGray2"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x58

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "dialogTextGray3"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x59

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "dialogTextGray4"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x5a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "dialogIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x5b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "dialogTextHint"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x5c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "dialogInputField"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x5d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "dialogInputFieldActivated"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x5e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "dialogCheckboxSquareBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x5f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "dialogCheckboxSquareCheck"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x60

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "dialogCheckboxSquareUnchecked"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x61

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "dialogCheckboxSquareDisabled"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x62

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "dialogRadioBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x63

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "dialogRadioBackgroundChecked"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x64

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "dialogProgressCircle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x65

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "dialogButton"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x66

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "dialogButtonSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x67

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "dialogScrollGlow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x68

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "dialogRoundCheckBox"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x69

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "dialogRoundCheckBoxCheck"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x6a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "dialogBadgeBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x6b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "dialogBadgeText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x6c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "dialogLineProgress"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x6d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "dialogLineProgressBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x6e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "dialogGrayLine"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    .line 2645
    return-object v10
.end method

.method public initTabs(Landroid/content/Context;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 343
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 344
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v11, "hideUsers"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 345
    .local v6, "hideUsers":Z
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v11, "hideGroups"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 346
    .local v4, "hideGroups":Z
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v11, "hideSGroups"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 347
    .local v5, "hideSGroups":Z
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v11, "hideChannels"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 348
    .local v2, "hideChannels":Z
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v11, "hideBots"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 349
    .local v1, "hideBots":Z
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v11, "hideFavs"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 350
    .local v3, "hideFavs":Z
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v11, "hideTabs"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lorg/telegram/ui/DialogsActivity;->hideTabs:Z

    .line 351
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v11, "disableTabsAnimation"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lorg/telegram/ui/DialogsActivity;->disableAnimation:Z

    .line 352
    if-eqz v6, :cond_294

    if-eqz v4, :cond_294

    if-eqz v5, :cond_294

    if-eqz v2, :cond_294

    if-eqz v1, :cond_294

    if-eqz v3, :cond_294

    iget-boolean v10, p0, Lorg/telegram/ui/DialogsActivity;->hideTabs:Z

    if-nez v10, :cond_294

    .line 353
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/telegram/ui/DialogsActivity;->hideTabs:Z

    .line 354
    const-string v10, "hideTabs"

    const/4 v11, 0x1

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 359
    :cond_6f
    :goto_6f
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v11, "tabsHeight"

    const/16 v12, 0x28

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lorg/telegram/ui/DialogsActivity;->tabsHeight:I

    .line 360
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lorg/telegram/ui/DialogsActivity;->refreshTabAndListViews(Z)V

    .line 361
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v11, "defTab"

    const/4 v12, -0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 362
    .local v9, "selectedTab":I
    const/4 v10, -0x1

    if-ne v9, v10, :cond_94

    .line 363
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v11, "selTab"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 365
    :cond_94
    iget-boolean v10, p0, Lorg/telegram/ui/DialogsActivity;->hideTabs:Z

    if-nez v10, :cond_ba

    iget v10, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    if-eq v10, v9, :cond_ba

    .line 366
    const/4 v10, 0x3

    if-ne v9, v10, :cond_2af

    if-eqz v5, :cond_2af

    const/16 v7, 0x9

    .line 367
    .local v7, "i":I
    :goto_a3
    iput v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    .line 368
    new-instance v10, Lorg/telegram/ui/Adapters/DialogsAdapter;

    iget v11, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    invoke-direct {v10, p1, v11}, Lorg/telegram/ui/Adapters/DialogsAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v10, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    .line 369
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v11, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 370
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-virtual {v10}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    .line 372
    .end local v7    # "i":I
    :cond_ba
    new-instance v10, Lorg/telegram/ui/Adapters/DialogsAdapter;

    const/4 v11, 0x0

    invoke-direct {v10, p1, v11}, Lorg/telegram/ui/Adapters/DialogsAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v10, p0, Lorg/telegram/ui/DialogsActivity;->dialogsBackupAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    .line 373
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lorg/telegram/ui/DialogsActivity;->tabsLayout:Landroid/widget/LinearLayout;

    .line 374
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->tabsLayout:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 375
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->tabsLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 376
    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lorg/telegram/ui/DialogsActivity;->allTab:Landroid/widget/ImageView;

    .line 377
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->allTab:Landroid/widget/ImageView;

    const v11, 0x7f020267

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 378
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lorg/telegram/ui/DialogsActivity;->allCounter:Landroid/widget/TextView;

    .line 379
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->allCounter:Landroid/widget/TextView;

    const-string v11, "ALL"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 380
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->allTab:Landroid/widget/ImageView;

    iget-object v11, p0, Lorg/telegram/ui/DialogsActivity;->allCounter:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-direct {p0, p1, v10, v11, v12}, Lorg/telegram/ui/DialogsActivity;->addTabView(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Z)V

    .line 381
    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lorg/telegram/ui/DialogsActivity;->usersTab:Landroid/widget/ImageView;

    .line 382
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->usersTab:Landroid/widget/ImageView;

    const v11, 0x7f02026e

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 383
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lorg/telegram/ui/DialogsActivity;->usersCounter:Landroid/widget/TextView;

    .line 384
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->usersCounter:Landroid/widget/TextView;

    const-string v11, "USERS"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 385
    iget-object v11, p0, Lorg/telegram/ui/DialogsActivity;->usersTab:Landroid/widget/ImageView;

    iget-object v12, p0, Lorg/telegram/ui/DialogsActivity;->usersCounter:Landroid/widget/TextView;

    if-nez v6, :cond_2b2

    const/4 v10, 0x1

    :goto_11f
    invoke-direct {p0, p1, v11, v12, v10}, Lorg/telegram/ui/DialogsActivity;->addTabView(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Z)V

    .line 386
    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lorg/telegram/ui/DialogsActivity;->groupsTab:Landroid/widget/ImageView;

    .line 387
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->groupsTab:Landroid/widget/ImageView;

    const v11, 0x7f02026b

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 388
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lorg/telegram/ui/DialogsActivity;->groupsCounter:Landroid/widget/TextView;

    .line 389
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->groupsCounter:Landroid/widget/TextView;

    const-string v11, "GROUPS"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 390
    iget-object v11, p0, Lorg/telegram/ui/DialogsActivity;->groupsTab:Landroid/widget/ImageView;

    iget-object v12, p0, Lorg/telegram/ui/DialogsActivity;->groupsCounter:Landroid/widget/TextView;

    if-nez v4, :cond_2b5

    const/4 v10, 0x1

    :goto_146
    invoke-direct {p0, p1, v11, v12, v10}, Lorg/telegram/ui/DialogsActivity;->addTabView(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Z)V

    .line 391
    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lorg/telegram/ui/DialogsActivity;->superGroupsTab:Landroid/widget/ImageView;

    .line 392
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->superGroupsTab:Landroid/widget/ImageView;

    const v11, 0x7f02026d

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 393
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lorg/telegram/ui/DialogsActivity;->sGroupsCounter:Landroid/widget/TextView;

    .line 394
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->sGroupsCounter:Landroid/widget/TextView;

    const-string v11, "SGROUP"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 395
    iget-object v11, p0, Lorg/telegram/ui/DialogsActivity;->superGroupsTab:Landroid/widget/ImageView;

    iget-object v12, p0, Lorg/telegram/ui/DialogsActivity;->sGroupsCounter:Landroid/widget/TextView;

    if-nez v5, :cond_2b8

    const/4 v10, 0x1

    :goto_16d
    invoke-direct {p0, p1, v11, v12, v10}, Lorg/telegram/ui/DialogsActivity;->addTabView(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Z)V

    .line 396
    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lorg/telegram/ui/DialogsActivity;->channelsTab:Landroid/widget/ImageView;

    .line 397
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->channelsTab:Landroid/widget/ImageView;

    const v11, 0x7f020269

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 398
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lorg/telegram/ui/DialogsActivity;->channelsCounter:Landroid/widget/TextView;

    .line 399
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->channelsCounter:Landroid/widget/TextView;

    const-string v11, "CHANNELS"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 400
    iget-object v11, p0, Lorg/telegram/ui/DialogsActivity;->channelsTab:Landroid/widget/ImageView;

    iget-object v12, p0, Lorg/telegram/ui/DialogsActivity;->channelsCounter:Landroid/widget/TextView;

    if-nez v2, :cond_2bb

    const/4 v10, 0x1

    :goto_194
    invoke-direct {p0, p1, v11, v12, v10}, Lorg/telegram/ui/DialogsActivity;->addTabView(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Z)V

    .line 401
    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lorg/telegram/ui/DialogsActivity;->botsTab:Landroid/widget/ImageView;

    .line 402
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->botsTab:Landroid/widget/ImageView;

    const v11, 0x7f020268

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 403
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lorg/telegram/ui/DialogsActivity;->botsCounter:Landroid/widget/TextView;

    .line 404
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->botsCounter:Landroid/widget/TextView;

    const-string v11, "BOTS"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 405
    iget-object v11, p0, Lorg/telegram/ui/DialogsActivity;->botsTab:Landroid/widget/ImageView;

    iget-object v12, p0, Lorg/telegram/ui/DialogsActivity;->botsCounter:Landroid/widget/TextView;

    if-nez v1, :cond_2be

    const/4 v10, 0x1

    :goto_1bb
    invoke-direct {p0, p1, v11, v12, v10}, Lorg/telegram/ui/DialogsActivity;->addTabView(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Z)V

    .line 406
    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lorg/telegram/ui/DialogsActivity;->favsTab:Landroid/widget/ImageView;

    .line 407
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->favsTab:Landroid/widget/ImageView;

    const v11, 0x7f02026a

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 408
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lorg/telegram/ui/DialogsActivity;->favsCounter:Landroid/widget/TextView;

    .line 409
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->favsCounter:Landroid/widget/TextView;

    const-string v11, "FAVS"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 410
    iget-object v11, p0, Lorg/telegram/ui/DialogsActivity;->favsTab:Landroid/widget/ImageView;

    iget-object v12, p0, Lorg/telegram/ui/DialogsActivity;->favsCounter:Landroid/widget/TextView;

    if-nez v3, :cond_2c1

    const/4 v10, 0x1

    :goto_1e2
    invoke-direct {p0, p1, v11, v12, v10}, Lorg/telegram/ui/DialogsActivity;->addTabView(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Z)V

    .line 411
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->tabsView:Landroid/widget/FrameLayout;

    iget-object v11, p0, Lorg/telegram/ui/DialogsActivity;->tabsLayout:Landroid/widget/LinearLayout;

    const/4 v12, -0x1

    const/high16 v13, -0x40800000    # -1.0f

    invoke-static {v12, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->groupsTab:Landroid/widget/ImageView;

    new-instance v11, Lorg/telegram/ui/DialogsActivity$1;

    invoke-direct {v11, p0}, Lorg/telegram/ui/DialogsActivity$1;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->usersTab:Landroid/widget/ImageView;

    new-instance v11, Lorg/telegram/ui/DialogsActivity$2;

    invoke-direct {v11, p0}, Lorg/telegram/ui/DialogsActivity$2;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->superGroupsTab:Landroid/widget/ImageView;

    new-instance v11, Lorg/telegram/ui/DialogsActivity$3;

    invoke-direct {v11, p0}, Lorg/telegram/ui/DialogsActivity$3;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->botsTab:Landroid/widget/ImageView;

    new-instance v11, Lorg/telegram/ui/DialogsActivity$4;

    invoke-direct {v11, p0}, Lorg/telegram/ui/DialogsActivity$4;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->channelsTab:Landroid/widget/ImageView;

    new-instance v11, Lorg/telegram/ui/DialogsActivity$5;

    invoke-direct {v11, p0}, Lorg/telegram/ui/DialogsActivity$5;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->allTab:Landroid/widget/ImageView;

    new-instance v11, Lorg/telegram/ui/DialogsActivity$6;

    invoke-direct {v11, p0}, Lorg/telegram/ui/DialogsActivity$6;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->favsTab:Landroid/widget/ImageView;

    new-instance v11, Lorg/telegram/ui/DialogsActivity$7;

    invoke-direct {v11, p0}, Lorg/telegram/ui/DialogsActivity$7;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->allTab:Landroid/widget/ImageView;

    new-instance v11, Lorg/telegram/ui/DialogsActivity$8;

    invoke-direct {v11, p0}, Lorg/telegram/ui/DialogsActivity$8;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 515
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->groupsTab:Landroid/widget/ImageView;

    new-instance v11, Lorg/telegram/ui/DialogsActivity$9;

    invoke-direct {v11, p0}, Lorg/telegram/ui/DialogsActivity$9;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 554
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->usersTab:Landroid/widget/ImageView;

    new-instance v11, Lorg/telegram/ui/DialogsActivity$10;

    invoke-direct {v11, p0}, Lorg/telegram/ui/DialogsActivity$10;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 587
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->superGroupsTab:Landroid/widget/ImageView;

    new-instance v11, Lorg/telegram/ui/DialogsActivity$11;

    invoke-direct {v11, p0}, Lorg/telegram/ui/DialogsActivity$11;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 618
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->botsTab:Landroid/widget/ImageView;

    new-instance v11, Lorg/telegram/ui/DialogsActivity$12;

    invoke-direct {v11, p0}, Lorg/telegram/ui/DialogsActivity$12;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 646
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->channelsTab:Landroid/widget/ImageView;

    new-instance v11, Lorg/telegram/ui/DialogsActivity$13;

    invoke-direct {v11, p0}, Lorg/telegram/ui/DialogsActivity$13;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 676
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->favsTab:Landroid/widget/ImageView;

    new-instance v11, Lorg/telegram/ui/DialogsActivity$14;

    invoke-direct {v11, p0}, Lorg/telegram/ui/DialogsActivity$14;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 705
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->tabsView:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 706
    .local v8, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v8, :cond_293

    .line 707
    iget v10, p0, Lorg/telegram/ui/DialogsActivity;->h:I

    iput v10, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 708
    const/4 v10, -0x1

    iput v10, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 709
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->tabsView:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v8}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 712
    :cond_293
    return-void

    .line 355
    .end local v8    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v9    # "selectedTab":I
    :cond_294
    if-eqz v6, :cond_2a0

    if-eqz v4, :cond_2a0

    if-eqz v5, :cond_2a0

    if-eqz v2, :cond_2a0

    if-eqz v1, :cond_2a0

    if-nez v3, :cond_6f

    .line 356
    :cond_2a0
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/telegram/ui/DialogsActivity;->hideTabs:Z

    .line 357
    const-string v10, "hideTabs"

    const/4 v11, 0x0

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_6f

    .restart local v9    # "selectedTab":I
    :cond_2af
    move v7, v9

    .line 366
    goto/16 :goto_a3

    .line 385
    :cond_2b2
    const/4 v10, 0x0

    goto/16 :goto_11f

    .line 390
    :cond_2b5
    const/4 v10, 0x0

    goto/16 :goto_146

    .line 395
    :cond_2b8
    const/4 v10, 0x0

    goto/16 :goto_16d

    .line 400
    :cond_2bb
    const/4 v10, 0x0

    goto/16 :goto_194

    .line 405
    :cond_2be
    const/4 v10, 0x0

    goto/16 :goto_1bb

    .line 410
    :cond_2c1
    const/4 v10, 0x0

    goto/16 :goto_1e2
.end method

.method public isMainDialogList()Z
    .registers 2

    .prologue
    .line 2541
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->delegate:Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2220
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2221
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "tabsToBottom"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2222
    .local v0, "tabsToBottom":Z
    iget-boolean v1, p0, Lorg/telegram/ui/DialogsActivity;->onlySelect:Z

    if-nez v1, :cond_22

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_22

    .line 2224
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/DialogsActivity$32;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/DialogsActivity$32;-><init>(Lorg/telegram/ui/DialogsActivity;Z)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2245
    :cond_22
    return-void
.end method

.method protected onDialogDismiss(Landroid/app/Dialog;)V
    .registers 3
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 2212
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onDialogDismiss(Landroid/app/Dialog;)V

    .line 2213
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->permissionDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->permissionDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-ne p1, v0, :cond_14

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2214
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->askForPermissons()V

    .line 2216
    :cond_14
    return-void
.end method

.method public onFragmentCreate()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1115
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 1116
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "mainconfig"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    .line 1118
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 1119
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->arguments:Landroid/os/Bundle;

    const-string v1, "onlySelect"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/DialogsActivity;->onlySelect:Z

    .line 1120
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->arguments:Landroid/os/Bundle;

    const-string v1, "cantSendToChannels"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/DialogsActivity;->cantSendToChannels:Z

    .line 1121
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->arguments:Landroid/os/Bundle;

    const-string v1, "dialogsType"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    .line 1122
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->arguments:Landroid/os/Bundle;

    const-string v1, "selectAlertString"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/DialogsActivity;->selectAlertString:Ljava/lang/String;

    .line 1123
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->arguments:Landroid/os/Bundle;

    const-string v1, "selectAlertStringGroup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/DialogsActivity;->selectAlertStringGroup:Ljava/lang/String;

    .line 1124
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->arguments:Landroid/os/Bundle;

    const-string v1, "addToGroupAlertString"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/DialogsActivity;->addToGroupAlertString:Ljava/lang/String;

    .line 1127
    :cond_51
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;

    if-nez v0, :cond_dc

    .line 1128
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1129
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1130
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1131
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->encryptedChatUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1132
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1133
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1134
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->openedChatChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1135
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1136
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByAck:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1137
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1138
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1139
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1140
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needReloadRecentDialogsSearch:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1141
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didLoadedReplyMessages:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1142
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadHints:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1146
    :cond_dc
    sget-boolean v0, Lorg/telegram/ui/DialogsActivity;->dialogsLoaded:Z

    if-nez v0, :cond_ff

    .line 1147
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v2, v1, v4}, Lorg/telegram/messenger/MessagesController;->loadDialogs(IIZ)V

    .line 1148
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->checkInviteText()V

    .line 1149
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lorg/telegram/messenger/MessagesController;->loadPinnedDialogs(JLjava/util/ArrayList;)V

    .line 1150
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->checkFeaturedStickers()V

    .line 1151
    sput-boolean v4, Lorg/telegram/ui/DialogsActivity;->dialogsLoaded:Z

    .line 1153
    :cond_ff
    return v4
.end method

.method public onFragmentDestroy()V
    .registers 3

    .prologue
    .line 1158
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 1159
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;

    if-nez v0, :cond_8e

    .line 1160
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1161
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1162
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1163
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->encryptedChatUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1164
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1165
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1166
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->openedChatChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1167
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1168
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByAck:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1169
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1170
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1171
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1172
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needReloadRecentDialogsSearch:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1173
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didLoadedReplyMessages:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1174
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadHints:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1176
    :cond_8e
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/DialogsActivity;->delegate:Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;

    .line 1177
    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .registers 9
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v2, 0x1

    .line 2249
    if-ne p1, v2, :cond_43

    .line 2250
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_4
    array-length v1, p2

    if-ge v0, v1, :cond_43

    .line 2251
    array-length v1, p3

    if-le v1, v0, :cond_e

    aget v1, p3, v0

    if-eqz v1, :cond_11

    .line 2250
    :cond_e
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2254
    :cond_11
    aget-object v3, p2, v0

    const/4 v1, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_44

    :cond_1b
    :goto_1b
    packed-switch v1, :pswitch_data_4e

    goto :goto_e

    .line 2256
    :pswitch_1f
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ContactsController;->readContacts()V

    goto :goto_e

    .line 2254
    :sswitch_27
    const-string v4, "android.permission.READ_CONTACTS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v1, 0x0

    goto :goto_1b

    :sswitch_31
    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    move v1, v2

    goto :goto_1b

    .line 2259
    :pswitch_3b
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageLoader;->checkMediaPaths()V

    goto :goto_e

    .line 2264
    .end local v0    # "a":I
    :cond_43
    return-void

    .line 2254
    :sswitch_data_44
    .sparse-switch
        0x516a29a7 -> :sswitch_31
        0x75dd2d9c -> :sswitch_27
    .end sparse-switch

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_3b
    .end packed-switch
.end method

.method public onResume()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0703d4

    const v5, 0x7f070092

    const/4 v4, 0x0

    .line 2151
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 2152
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "mainconfig"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/DialogsActivity;->preferences:Landroid/content/SharedPreferences;

    .line 2154
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    if-eqz v2, :cond_1e

    .line 2155
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    .line 2157
    :cond_1e
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    if-eqz v2, :cond_27

    .line 2158
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->notifyDataSetChanged()V

    .line 2160
    :cond_27
    iget-boolean v2, p0, Lorg/telegram/ui/DialogsActivity;->checkPermission:Z

    if-eqz v2, :cond_81

    iget-boolean v2, p0, Lorg/telegram/ui/DialogsActivity;->onlySelect:Z

    if-nez v2, :cond_81

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_81

    .line 2161
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2162
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_81

    .line 2163
    iput-boolean v4, p0, Lorg/telegram/ui/DialogsActivity;->checkPermission:Z

    .line 2164
    const-string v2, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4d

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_81

    .line 2165
    :cond_4d
    const-string v2, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 2166
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2167
    .local v1, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v2, "AppName"

    invoke-static {v2, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2168
    const-string v2, "PermissionContacts"

    const v3, 0x7f070438

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2169
    const-string v2, "OK"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2170
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/DialogsActivity;->permissionDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 2183
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_81
    :goto_81
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->refreshTabs()V

    .line 2184
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lorg/telegram/ui/DialogsActivity;->paintHeader(Z)V

    .line 2185
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->unreadCount()V

    .line 2186
    const-string v2, "Dialogs Activity"

    invoke-static {v2}, Lorg/telegram/ui/Membergram/analytics/AnalyticsEventUtil;->sendScreenName(Ljava/lang/String;)V

    .line 2188
    return-void

    .line 2171
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_91
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 2172
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2173
    .restart local v1    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v2, "AppName"

    invoke-static {v2, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2174
    const-string v2, "PermissionStorage"

    const v3, 0x7f070440

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2175
    const-string v2, "OK"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2176
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/DialogsActivity;->permissionDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_81

    .line 2178
    .end local v1    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_c6
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->askForPermissons()V

    goto :goto_81
.end method

.method public setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V
    .registers 2
    .param p1, "dialogsActivityDelegate"    # Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;

    .prologue
    .line 2533
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity;->delegate:Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;

    .line 2534
    return-void
.end method

.method public setSearchString(Ljava/lang/String;)V
    .registers 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 2537
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;

    .line 2538
    return-void
.end method

.method public setSideMenu(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .registers 4
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    .line 2451
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity;->sideMenu:Lorg/telegram/messenger/support/widget/RecyclerView;

    .line 2452
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->sideMenu:Lorg/telegram/messenger/support/widget/RecyclerView;

    const-string v1, "chats_menuBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->setBackgroundColor(I)V

    .line 2453
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->sideMenu:Lorg/telegram/messenger/support/widget/RecyclerView;

    const-string v1, "chats_menuBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->setGlowColor(I)V

    .line 2454
    return-void
.end method
