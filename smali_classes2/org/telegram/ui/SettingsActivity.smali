.class public Lorg/telegram/ui/SettingsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SettingsActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/SettingsActivity$ListAdapter;,
        Lorg/telegram/ui/SettingsActivity$LinkMovementMethodMy;
    }
.end annotation


# static fields
.field private static final edit_name:I = 0x1

.field private static final logout:I = 0x2


# instance fields
.field private askQuestionRow:I

.field private autoplayGifsRow:I

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImage:Lorg/telegram/ui/Components/BackupImageView;

.field private avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

.field private backgroundRow:I

.field private clearLogsRow:I

.field private contactsReimportRow:I

.field private contactsSectionRow:I

.field private contactsSortRow:I

.field private customTabsRow:I

.field private dataRow:I

.field private directShareRow:I

.field private emojiRow:I

.field private emptyRow:I

.field private enableAnimationsRow:I

.field private extraHeight:I

.field private extraHeightView:Landroid/view/View;

.field private languageRow:I

.field private layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private listAdapter:Lorg/telegram/ui/SettingsActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private messagesSectionRow:I

.field private messagesSectionRow2:I

.field private nameTextView:Landroid/widget/TextView;

.field private notificationRow:I

.field private numberRow:I

.field private numberSectionRow:I

.field private onlineTextView:Landroid/widget/TextView;

.field private overscrollRow:I

.field private privacyPolicyRow:I

.field private privacyRow:I

.field private raiseToSpeakRow:I

.field private rowCount:I

.field private saveToGalleryRow:I

.field private sendByEnterRow:I

.field private sendLogsRow:I

.field private settingsSectionRow:I

.field private settingsSectionRow2:I

.field private shadowView:Landroid/view/View;

.field private stickersRow:I

.field private supportSectionRow:I

.field private supportSectionRow2:I

.field private switchBackendButtonRow:I

.field private telegramFaqRow:I

.field private textSizeRow:I

.field private themeRow:I

.field private usernameRow:I

.field private versionRow:I

.field private writeButton:Landroid/widget/ImageView;

.field private writeButtonAnimation:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 111
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 121
    new-instance v0, Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarUpdater;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SettingsActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/SettingsActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    invoke-direct {p0}, Lorg/telegram/ui/SettingsActivity;->performAskAQuestion()V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->sendLogsRow:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/SettingsActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    invoke-direct {p0}, Lorg/telegram/ui/SettingsActivity;->sendLogs()V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->clearLogsRow:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->sendByEnterRow:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->raiseToSpeakRow:I

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->autoplayGifsRow:I

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->saveToGalleryRow:I

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->customTabsRow:I

    return v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->directShareRow:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->privacyRow:I

    return v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->dataRow:I

    return v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->languageRow:I

    return v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->themeRow:I

    return v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->switchBackendButtonRow:I

    return v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->telegramFaqRow:I

    return v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->privacyPolicyRow:I

    return v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->contactsReimportRow:I

    return v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->contactsSortRow:I

    return v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->usernameRow:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->textSizeRow:I

    return v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->numberRow:I

    return v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->stickersRow:I

    return v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->emojiRow:I

    return v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/SettingsActivity;)Landroid/app/Dialog;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->visibleDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/SettingsActivity;)Landroid/app/Dialog;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->visibleDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->versionRow:I

    return v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/Components/AvatarUpdater;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    return-object v0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->extraHeight:I

    return v0
.end method

.method static synthetic access$3802(Lorg/telegram/ui/SettingsActivity;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 111
    iput p1, p0, Lorg/telegram/ui/SettingsActivity;->extraHeight:I

    return p1
.end method

.method static synthetic access$3900(Lorg/telegram/ui/SettingsActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    invoke-direct {p0}, Lorg/telegram/ui/SettingsActivity;->needLayout()V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/SettingsActivity$ListAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->listAdapter:Lorg/telegram/ui/SettingsActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/SettingsActivity;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$4002(Lorg/telegram/ui/SettingsActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 111
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$4100(Lorg/telegram/ui/SettingsActivity;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/SettingsActivity;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/SettingsActivity;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->overscrollRow:I

    return v0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->settingsSectionRow2:I

    return v0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->supportSectionRow2:I

    return v0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->messagesSectionRow2:I

    return v0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->numberSectionRow:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->enableAnimationsRow:I

    return v0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->emptyRow:I

    return v0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->settingsSectionRow:I

    return v0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->supportSectionRow:I

    return v0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->messagesSectionRow:I

    return v0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->contactsSectionRow:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->notificationRow:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->backgroundRow:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/SettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->askQuestionRow:I

    return v0
.end method

.method private fixLayout()V
    .registers 3

    .prologue
    .line 1092
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 1105
    :goto_4
    return-void

    .line 1095
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/SettingsActivity$12;

    invoke-direct {v1, p0}, Lorg/telegram/ui/SettingsActivity$12;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_4
.end method

.method private needLayout()V
    .registers 16

    .prologue
    .line 1016
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v7

    if-eqz v7, :cond_1cc

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_a
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v8

    add-int v4, v7, v8

    .line 1017
    .local v4, "newTop":I
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v7, :cond_2d

    .line 1018
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/RecyclerListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1019
    .local v3, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq v7, v4, :cond_2d

    .line 1020
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1021
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1022
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->extraHeightView:Landroid/view/View;

    int-to-float v8, v4

    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 1026
    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2d
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v7, :cond_1cb

    .line 1027
    iget v7, p0, Lorg/telegram/ui/SettingsActivity;->extraHeight:I

    int-to-float v7, v7

    const/high16 v8, 0x42b00000    # 88.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    div-float v2, v7, v8

    .line 1028
    .local v2, "diff":F
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->extraHeightView:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->setScaleY(F)V

    .line 1029
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->shadowView:Landroid/view/View;

    iget v8, p0, Lorg/telegram/ui/SettingsActivity;->extraHeight:I

    add-int/2addr v8, v4

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 1032
    iget-object v8, p0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v7

    if-eqz v7, :cond_1cf

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_57
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v9

    add-int/2addr v7, v9

    iget v9, p0, Lorg/telegram/ui/SettingsActivity;->extraHeight:I

    add-int/2addr v7, v9

    const/high16 v9, 0x41ec0000    # 29.5f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v7, v9

    int-to-float v7, v7

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1034
    const v7, 0x3e4ccccd

    cmpl-float v7, v2, v7

    if-lez v7, :cond_1d2

    const/4 v6, 0x1

    .line 1035
    .local v6, "setVisible":Z
    :goto_72
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1d5

    const/4 v1, 0x1

    .line 1036
    .local v1, "currentVisible":Z
    :goto_7b
    if-eq v6, v1, :cond_101

    .line 1037
    if-eqz v6, :cond_1d8

    .line 1038
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1039
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1043
    :goto_8b
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    if-eqz v7, :cond_97

    .line 1044
    iget-object v5, p0, Lorg/telegram/ui/SettingsActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    .line 1045
    .local v5, "old":Landroid/animation/AnimatorSet;
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/telegram/ui/SettingsActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    .line 1046
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1048
    .end local v5    # "old":Landroid/animation/AnimatorSet;
    :cond_97
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lorg/telegram/ui/SettingsActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    .line 1049
    if-eqz v6, :cond_1e4

    .line 1050
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1051
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    const-string v11, "scaleX"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    aput v14, v12, v13

    .line 1052
    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    const-string v11, "scaleY"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    aput v14, v12, v13

    .line 1053
    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    const-string v11, "alpha"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    aput v14, v12, v13

    .line 1054
    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1051
    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1064
    :goto_eb
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v8, 0x96

    invoke-virtual {v7, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1065
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    new-instance v8, Lorg/telegram/ui/SettingsActivity$11;

    invoke-direct {v8, p0, v6}, Lorg/telegram/ui/SettingsActivity$11;-><init>(Lorg/telegram/ui/SettingsActivity;Z)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1074
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 1077
    :cond_101
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v8, 0x42280000    # 42.0f

    const/high16 v9, 0x41900000    # 18.0f

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    const/high16 v9, 0x42280000    # 42.0f

    div-float/2addr v8, v9

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/BackupImageView;->setScaleX(F)V

    .line 1078
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v8, 0x42280000    # 42.0f

    const/high16 v9, 0x41900000    # 18.0f

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    const/high16 v9, 0x42280000    # 42.0f

    div-float/2addr v8, v9

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/BackupImageView;->setScaleY(F)V

    .line 1079
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v7

    if-eqz v7, :cond_232

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_127
    int-to-float v7, v7

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v9, v2

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/high16 v8, 0x41a80000    # 21.0f

    sget v9, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    const/high16 v8, 0x41d80000    # 27.0f

    sget v9, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v8, v9

    mul-float/2addr v8, v2

    add-float v0, v7, v8

    .line 1080
    .local v0, "avatarY":F
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v8, 0x423c0000    # 47.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    mul-float/2addr v8, v2

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/BackupImageView;->setTranslationX(F)V

    .line 1081
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/BackupImageView;->setTranslationY(F)V

    .line 1082
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->nameTextView:Landroid/widget/TextView;

    const/high16 v8, -0x3e580000    # -21.0f

    sget v9, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v8, v9

    mul-float/2addr v8, v2

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 1083
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->nameTextView:Landroid/widget/TextView;

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-float v8, v8

    sget v9, Lorg/telegram/messenger/AndroidUtilities;->density:F

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-float v9, v10

    sub-float/2addr v8, v9

    const/high16 v9, 0x40e00000    # 7.0f

    sget v10, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v9, v10

    mul-float/2addr v9, v2

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-float v9, v10

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1084
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->onlineTextView:Landroid/widget/TextView;

    const/high16 v8, -0x3e580000    # -21.0f

    sget v9, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v8, v9

    mul-float/2addr v8, v2

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 1085
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->onlineTextView:Landroid/widget/TextView;

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-float v8, v8

    const/high16 v9, 0x41b00000    # 22.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    const/high16 v9, 0x41300000    # 11.0f

    sget v10, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v9, v10

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-float v9, v10

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1086
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->nameTextView:Landroid/widget/TextView;

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3df5c28f

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1087
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->nameTextView:Landroid/widget/TextView;

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3df5c28f

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setScaleY(F)V

    .line 1089
    .end local v0    # "avatarY":F
    .end local v1    # "currentVisible":Z
    .end local v2    # "diff":F
    .end local v6    # "setVisible":Z
    :cond_1cb
    return-void

    .line 1016
    .end local v4    # "newTop":I
    :cond_1cc
    const/4 v7, 0x0

    goto/16 :goto_a

    .line 1032
    .restart local v2    # "diff":F
    .restart local v4    # "newTop":I
    :cond_1cf
    const/4 v7, 0x0

    goto/16 :goto_57

    .line 1034
    :cond_1d2
    const/4 v6, 0x0

    goto/16 :goto_72

    .line 1035
    .restart local v6    # "setVisible":Z
    :cond_1d5
    const/4 v1, 0x0

    goto/16 :goto_7b

    .line 1041
    .restart local v1    # "currentVisible":Z
    :cond_1d8
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_8b

    .line 1057
    :cond_1e4
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    new-instance v8, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1058
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    const-string v11, "scaleX"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const v14, 0x3e4ccccd

    aput v14, v12, v13

    .line 1059
    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    const-string v11, "scaleY"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const v14, 0x3e4ccccd

    aput v14, v12, v13

    .line 1060
    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    const-string v11, "alpha"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v12, v13

    .line 1061
    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1058
    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_eb

    .line 1079
    :cond_232
    const/4 v7, 0x0

    goto/16 :goto_127
.end method

.method private performAskAQuestion()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 881
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v11, "mainconfig"

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 882
    .local v4, "preferences":Landroid/content/SharedPreferences;
    const-string v10, "support_id"

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 883
    .local v8, "uid":I
    const/4 v7, 0x0

    .line 884
    .local v7, "supportUser":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v8, :cond_4d

    .line 885
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    .line 886
    if-nez v7, :cond_4d

    .line 887
    const-string v10, "support_user"

    const/4 v11, 0x0

    invoke-interface {v4, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 888
    .local v9, "userString":Ljava/lang/String;
    if-eqz v9, :cond_4d

    .line 890
    const/4 v10, 0x0

    :try_start_2b
    invoke-static {v9, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 891
    .local v2, "datacentersBytes":[B
    if-eqz v2, :cond_4d

    .line 892
    new-instance v1, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v1, v2}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 893
    .local v1, "data":Lorg/telegram/tgnet/SerializedData;
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v1, v10, v11}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    .line 894
    if-eqz v7, :cond_4a

    iget v10, v7, Lorg/telegram/tgnet/TLRPC$User;->id:I

    const v11, 0x514c8

    if-ne v10, v11, :cond_4a

    .line 895
    const/4 v7, 0x0

    .line 897
    :cond_4a
    invoke-virtual {v1}, Lorg/telegram/tgnet/SerializedData;->cleanup()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_4d} :catch_7f

    .line 906
    .end local v1    # "data":Lorg/telegram/tgnet/SerializedData;
    .end local v2    # "datacentersBytes":[B
    .end local v9    # "userString":Ljava/lang/String;
    :cond_4d
    :goto_4d
    if-nez v7, :cond_85

    .line 907
    new-instance v5, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v5, v10, v13}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 908
    .local v5, "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    const-string v10, "Loading"

    const v11, 0x7f0702eb

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 909
    invoke-virtual {v5, v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 910
    invoke-virtual {v5, v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCancelable(Z)V

    .line 911
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 912
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_help_getSupport;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_help_getSupport;-><init>()V

    .line 913
    .local v6, "req":Lorg/telegram/tgnet/TLRPC$TL_help_getSupport;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    new-instance v11, Lorg/telegram/ui/SettingsActivity$10;

    invoke-direct {v11, p0, v4, v5}, Lorg/telegram/ui/SettingsActivity$10;-><init>(Lorg/telegram/ui/SettingsActivity;Landroid/content/SharedPreferences;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v10, v6, v11}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 963
    .end local v5    # "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    .end local v6    # "req":Lorg/telegram/tgnet/TLRPC$TL_help_getSupport;
    :goto_7e
    return-void

    .line 899
    .restart local v9    # "userString":Ljava/lang/String;
    :catch_7f
    move-exception v3

    .line 900
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 901
    const/4 v7, 0x0

    goto :goto_4d

    .line 958
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v9    # "userString":Ljava/lang/String;
    :cond_85
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-virtual {v10, v7, v13}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 959
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 960
    .local v0, "args":Landroid/os/Bundle;
    const-string v10, "user_id"

    iget v11, v7, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 961
    new-instance v10, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v10}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_7e
.end method

.method private sendLogs()V
    .registers 11

    .prologue
    .line 1131
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1132
    .local v6, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 1133
    .local v5, "sdCard":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/logs"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1134
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 1135
    .local v3, "files":[Ljava/io/File;
    array-length v8, v3

    const/4 v7, 0x0

    :goto_2e
    if-ge v7, v8, :cond_3c

    aget-object v2, v3, v7

    .line 1136
    .local v2, "file":Ljava/io/File;
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1135
    add-int/lit8 v7, v7, 0x1

    goto :goto_2e

    .line 1139
    .end local v2    # "file":Ljava/io/File;
    :cond_3c
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_43

    .line 1151
    .end local v0    # "dir":Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    .end local v5    # "sdCard":Ljava/io/File;
    .end local v6    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :goto_42
    return-void

    .line 1142
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v3    # "files":[Ljava/io/File;
    .restart local v5    # "sdCard":Ljava/io/File;
    .restart local v6    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_43
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1143
    .local v4, "i":Landroid/content/Intent;
    const-string v7, "message/rfc822"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1144
    const-string v7, "android.intent.extra.EMAIL"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1145
    const-string v7, "android.intent.extra.SUBJECT"

    const-string v8, "last logs"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1146
    const-string v7, "android.intent.extra.STREAM"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1147
    invoke-virtual {p0}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "Select email application."

    invoke-static {v4, v8}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v8

    const/16 v9, 0x1f4

    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_71} :catch_72

    goto :goto_42

    .line 1148
    .end local v0    # "dir":Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    .end local v4    # "i":Landroid/content/Intent;
    .end local v5    # "sdCard":Ljava/io/File;
    .end local v6    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :catch_72
    move-exception v1

    .line 1149
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_42
.end method

.method private updateUserData()V
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1108
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 1109
    .local v2, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v0, 0x0

    .line 1110
    .local v0, "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    const/4 v1, 0x0

    .line 1111
    .local v1, "photoBig":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v3, :cond_20

    .line 1112
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1113
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1115
    :cond_20
    new-instance v3, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v3, v2, v4}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;Z)V

    iput-object v3, p0, Lorg/telegram/ui/SettingsActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 1117
    iget-object v3, p0, Lorg/telegram/ui/SettingsActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const-string v6, "avatar_backgroundInProfileBlue"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setColor(I)V

    .line 1118
    iget-object v3, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v3, :cond_7d

    .line 1119
    iget-object v3, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const-string v6, "50_50"

    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v0, v6, v7}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 1120
    iget-object v3, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v6

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Lorg/telegram/tgnet/TLRPC$FileLocation;)Z

    move-result v3

    if-nez v3, :cond_7e

    move v3, v4

    :goto_50
    invoke-virtual {v6, v3, v5}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 1122
    iget-object v3, p0, Lorg/telegram/ui/SettingsActivity;->nameTextView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1123
    iget-object v3, p0, Lorg/telegram/ui/SettingsActivity;->onlineTextView:Landroid/widget/TextView;

    const-string v6, "Online"

    const v7, 0x7f0703d6

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1125
    iget-object v3, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Lorg/telegram/tgnet/TLRPC$FileLocation;)Z

    move-result v6

    if-nez v6, :cond_80

    :goto_7a
    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 1127
    :cond_7d
    return-void

    :cond_7e
    move v3, v5

    .line 1120
    goto :goto_50

    :cond_80
    move v4, v5

    .line 1125
    goto :goto_7a
.end method


# virtual methods
.method public allowCaption()Z
    .registers 2

    .prologue
    .line 808
    const/4 v0, 0x1

    return v0
.end method

.method public cancelButtonPressed()Z
    .registers 2

    .prologue
    .line 868
    const/4 v0, 0x1

    return v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 19
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "avatar_backgroundActionBarBlue"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "avatar_actionBarSelectorBlue"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "avatar_actionBarIconBlue"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v3, 0x7f0200dd

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 307
    const/16 v2, 0x58

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/SettingsActivity;->extraHeight:I

    .line 308
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 311
    :cond_4f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/SettingsActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/SettingsActivity$2;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v14

    .line 337
    .local v14, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/4 v2, 0x0

    const v3, 0x7f0200e7

    invoke-virtual {v14, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v13

    .line 338
    .local v13, "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    const/4 v2, 0x1

    const-string v3, "EditName"

    const v4, 0x7f0701ee

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 339
    const/4 v2, 0x2

    const-string v3, "LogOut"

    const v4, 0x7f0702f6

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 341
    new-instance v2, Lorg/telegram/ui/SettingsActivity$ListAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/SettingsActivity$ListAdapter;-><init>(Lorg/telegram/ui/SettingsActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/SettingsActivity;->listAdapter:Lorg/telegram/ui/SettingsActivity$ListAdapter;

    .line 343
    new-instance v2, Lorg/telegram/ui/SettingsActivity$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/SettingsActivity$3;-><init>(Lorg/telegram/ui/SettingsActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/SettingsActivity;->fragmentView:Landroid/view/View;

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->fragmentView:Landroid/view/View;

    const-string v3, "windowBackgroundGray"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 372
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/SettingsActivity;->fragmentView:Landroid/view/View;

    check-cast v12, Landroid/widget/FrameLayout;

    .line 374
    .local v12, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4, v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/SettingsActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string v3, "avatar_backgroundActionBarBlue"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x33

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/SettingsActivity;->listAdapter:Lorg/telegram/ui/SettingsActivity$ListAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/SettingsActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/SettingsActivity$4;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 618
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/SettingsActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/SettingsActivity$5;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v12, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 659
    new-instance v2, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/SettingsActivity;->extraHeightView:Landroid/view/View;

    .line 660
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->extraHeightView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    .line 661
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->extraHeightView:Landroid/view/View;

    const-string v3, "avatar_backgroundActionBarBlue"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 662
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->extraHeightView:Landroid/view/View;

    const/4 v3, -0x1

    const/high16 v4, 0x42b00000    # 88.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 664
    new-instance v2, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/SettingsActivity;->shadowView:Landroid/view/View;

    .line 665
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->shadowView:Landroid/view/View;

    const v3, 0x7f0200d9

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 666
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->shadowView:Landroid/view/View;

    const/4 v3, -0x1

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 668
    new-instance v2, Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    .line 669
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v3, 0x41a80000    # 21.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 670
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setPivotX(F)V

    .line 671
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setPivotY(F)V

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v16, v0

    const/16 v2, 0x2a

    const/high16 v3, 0x42280000    # 42.0f

    const/16 v4, 0x33

    const/high16 v5, 0x42800000    # 64.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v12, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v3, Lorg/telegram/ui/SettingsActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/SettingsActivity$6;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 684
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/SettingsActivity;->nameTextView:Landroid/widget/TextView;

    .line 685
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->nameTextView:Landroid/widget/TextView;

    const-string v3, "profile_title"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 686
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 687
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 688
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 689
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 690
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->nameTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 691
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 692
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->nameTextView:Landroid/widget/TextView;

    const-string v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 693
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPivotX(F)V

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPivotY(F)V

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity;->nameTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x33

    const/high16 v5, 0x42ec0000    # 118.0f

    const/4 v6, 0x0

    const/high16 v7, 0x42400000    # 48.0f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v12, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 697
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/SettingsActivity;->onlineTextView:Landroid/widget/TextView;

    .line 698
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->onlineTextView:Landroid/widget/TextView;

    const-string v3, "avatar_subtitleInProfileBlue"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 699
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->onlineTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 700
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->onlineTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 701
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->onlineTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 702
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->onlineTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 703
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->onlineTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 704
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->onlineTextView:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity;->onlineTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x33

    const/high16 v5, 0x42ec0000    # 118.0f

    const/4 v6, 0x0

    const/high16 v7, 0x42400000    # 48.0f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v12, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 707
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    .line 708
    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const-string v3, "profile_actionBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "profile_actionPressedBackground"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 709
    .local v11, "drawable":Landroid/graphics/drawable/Drawable;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_306

    .line 710
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 711
    .local v15, "shadowDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v3, -0x1000000

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v15, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 712
    new-instance v10, Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v10, v15, v11, v2, v3}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 713
    .local v10, "combinedDrawable":Lorg/telegram/ui/Components/CombinedDrawable;
    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v10, v2, v3}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    .line 714
    move-object v11, v10

    .line 716
    .end local v10    # "combinedDrawable":Lorg/telegram/ui/Components/CombinedDrawable;
    .end local v15    # "shadowDrawable":Landroid/graphics/drawable/Drawable;
    :cond_306
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 717
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    const v3, 0x7f0200cc

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 718
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string v4, "profile_actionIcon"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 719
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 720
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_3b4

    .line 721
    new-instance v9, Landroid/animation/StateListAnimator;

    invoke-direct {v9}, Landroid/animation/StateListAnimator;-><init>()V

    .line 722
    .local v9, "animator":Landroid/animation/StateListAnimator;
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x10100a7

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    const-string v4, "translationZ"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 723
    const/4 v2, 0x0

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    const-string v4, "translationZ"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 724
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 725
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/SettingsActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/SettingsActivity$7;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 733
    .end local v9    # "animator":Landroid/animation/StateListAnimator;
    :cond_3b4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_3fe

    const/16 v2, 0x38

    :goto_3c2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_401

    const/high16 v3, 0x42600000    # 56.0f

    :goto_3ca
    const/16 v4, 0x35

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x41800000    # 16.0f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v12, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 734
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/SettingsActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/SettingsActivity$8;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 776
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/SettingsActivity;->needLayout()V

    .line 778
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/SettingsActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/SettingsActivity$9;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 798
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->fragmentView:Landroid/view/View;

    return-object v2

    .line 733
    :cond_3fe
    const/16 v2, 0x3c

    goto :goto_3c2

    :cond_401
    const/high16 v3, 0x42700000    # 60.0f

    goto :goto_3ca
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 986
    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, v1, :cond_19

    .line 987
    const/4 v1, 0x0

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 988
    .local v0, "mask":I
    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_15

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_18

    .line 989
    :cond_15
    invoke-direct {p0}, Lorg/telegram/ui/SettingsActivity;->updateUserData()V

    .line 996
    .end local v0    # "mask":I
    :cond_18
    :goto_18
    return-void

    .line 991
    :cond_19
    sget v1, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoaded:I

    if-ne p1, v1, :cond_18

    .line 992
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->listAdapter:Lorg/telegram/ui/SettingsActivity$ListAdapter;

    if-eqz v1, :cond_18

    .line 993
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->listAdapter:Lorg/telegram/ui/SettingsActivity$ListAdapter;

    iget v2, p0, Lorg/telegram/ui/SettingsActivity;->stickersRow:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/SettingsActivity$ListAdapter;->notifyItemChanged(I)V

    goto :goto_18
.end method

.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .registers 14
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 818
    if-nez p2, :cond_5

    .line 840
    :cond_4
    :goto_4
    return-object v1

    .line 821
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 822
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v3, :cond_4

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v5, :cond_4

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v5, :cond_4

    .line 823
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 824
    .local v2, "photoBig":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget v5, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget v6, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v5, v6, :cond_4

    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v8, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_4

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    iget v6, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    if-ne v5, v6, :cond_4

    .line 825
    const/4 v5, 0x2

    new-array v0, v5, [I

    .line 826
    .local v0, "coords":[I
    iget-object v5, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Components/BackupImageView;->getLocationInWindow([I)V

    .line 827
    new-instance v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-direct {v1}, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;-><init>()V

    .line 828
    .local v1, "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    aget v5, v0, v4

    iput v5, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    .line 829
    const/4 v5, 0x1

    aget v5, v0, v5

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_8a

    :goto_53
    sub-int v4, v5, v4

    iput v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    .line 830
    iget-object v4, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    iput-object v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    .line 831
    iget-object v4, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 832
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    iput v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->dialogId:I

    .line 833
    iget-object v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    .line 834
    const/4 v4, -0x1

    iput v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->size:I

    .line 835
    iget-object v4, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()I

    move-result v4

    iput v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:I

    .line 836
    iget-object v4, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/BackupImageView;->getScaleX()F

    move-result v4

    iput v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    goto/16 :goto_4

    .line 829
    :cond_8a
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_53
.end method

.method public getSelectedCount()I
    .registers 2

    .prologue
    .line 877
    const/4 v0, 0x0

    return v0
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .registers 12

    .prologue
    .line 1384
    const/16 v0, 0x20

    new-array v9, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/EmptyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-class v5, Lorg/telegram/ui/Cells/TextInfoCell;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-class v5, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundGray"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_backgroundActionBarBlue"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_backgroundActionBarBlue"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->extraHeightView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_backgroundActionBarBlue"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_actionBarIconBlue"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_actionBarSelectorBlue"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->nameTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "profile_title"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->onlineTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "avatar_subtitleInProfileBlue"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultSubmenuBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultSubmenuItem"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0xd

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    aput-object v0, v9, v8

    const/16 v8, 0xe

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v10, 0xf

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

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

    aput-object v0, v9, v10

    const/16 v10, 0x10

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "valueTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteValueText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x11

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

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

    aput-object v0, v9, v10

    const/16 v10, 0x12

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "valueTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText2"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x13

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "switchThumb"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x14

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "switchTrack"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x15

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "switchThumbChecked"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x16

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "switchTrackChecked"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x17

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlueHeader"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x18

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

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

    aput-object v0, v9, v10

    const/16 v10, 0x19

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "valueTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText2"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x1a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText5"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v8, 0x1b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v2, 0x0

    const/4 v3, 0x0

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

    aput-object v0, v9, v8

    const/16 v8, 0x1c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string v7, "avatar_backgroundInProfileBlue"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x1d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "profile_actionIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x1e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "profile_actionBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x1f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "profile_actionPressedBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    return-object v9
.end method

.method public getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 845
    const/4 v0, 0x0

    return-object v0
.end method

.method public isPhotoChecked(I)Z
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 859
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 967
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/AvatarUpdater;->onActivityResult(IILandroid/content/Intent;)V

    .line 968
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1010
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1011
    invoke-direct {p0}, Lorg/telegram/ui/SettingsActivity;->fixLayout()V

    .line 1012
    return-void
.end method

.method public onFragmentCreate()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 184
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iput-object p0, v0, Lorg/telegram/ui/Components/AvatarUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 186
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    new-instance v1, Lorg/telegram/ui/SettingsActivity$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/SettingsActivity$1;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AvatarUpdater;->delegate:Lorg/telegram/ui/Components/AvatarUpdater$AvatarUpdaterDelegate;

    .line 236
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 237
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 239
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    .line 240
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->overscrollRow:I

    .line 241
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->emptyRow:I

    .line 242
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->numberSectionRow:I

    .line 243
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->numberRow:I

    .line 244
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->usernameRow:I

    .line 245
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->settingsSectionRow:I

    .line 246
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->settingsSectionRow2:I

    .line 247
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->notificationRow:I

    .line 248
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->privacyRow:I

    .line 249
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->dataRow:I

    .line 250
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->backgroundRow:I

    .line 251
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->themeRow:I

    .line 252
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->languageRow:I

    .line 253
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->enableAnimationsRow:I

    .line 254
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->messagesSectionRow:I

    .line 255
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->messagesSectionRow2:I

    .line 256
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->customTabsRow:I

    .line 257
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_bc

    .line 258
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->directShareRow:I

    .line 260
    :cond_bc
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->stickersRow:I

    .line 262
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->textSizeRow:I

    .line 263
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->raiseToSpeakRow:I

    .line 264
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->sendByEnterRow:I

    .line 265
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->autoplayGifsRow:I

    .line 266
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->saveToGalleryRow:I

    .line 267
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->supportSectionRow:I

    .line 268
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->supportSectionRow2:I

    .line 269
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->askQuestionRow:I

    .line 270
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->telegramFaqRow:I

    .line 271
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->privacyPolicyRow:I

    .line 272
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_130

    .line 273
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->sendLogsRow:I

    .line 274
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->clearLogsRow:I

    .line 275
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->switchBackendButtonRow:I

    .line 277
    :cond_130
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->versionRow:I

    .line 282
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->checkFeaturedStickers()V

    .line 283
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/SettingsActivity;->classGuid:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->loadFullUser(Lorg/telegram/tgnet/TLRPC$User;IZ)V

    .line 285
    return v3
.end method

.method public onFragmentDestroy()V
    .registers 3

    .prologue
    .line 290
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 291
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_d

    .line 292
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 294
    :cond_d
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->cancelLoadFullUser(I)V

    .line 295
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 296
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 297
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarUpdater;->clear()V

    .line 298
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 1000
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 1001
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->listAdapter:Lorg/telegram/ui/SettingsActivity$ListAdapter;

    if-eqz v0, :cond_c

    .line 1002
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->listAdapter:Lorg/telegram/ui/SettingsActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/SettingsActivity$ListAdapter;->notifyDataSetChanged()V

    .line 1004
    :cond_c
    invoke-direct {p0}, Lorg/telegram/ui/SettingsActivity;->updateUserData()V

    .line 1005
    invoke-direct {p0}, Lorg/telegram/ui/SettingsActivity;->fixLayout()V

    .line 1006
    return-void
.end method

.method public restoreSelfArgs(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 979
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    if-eqz v0, :cond_e

    .line 980
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    const-string v1, "path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    .line 982
    :cond_e
    return-void
.end method

.method public saveSelfArgs(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 972
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iget-object v0, v0, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 973
    const-string v0, "path"

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iget-object v1, v1, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    :cond_13
    return-void
.end method

.method public scaleToFill()Z
    .registers 2

    .prologue
    .line 813
    const/4 v0, 0x0

    return v0
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;)V
    .registers 3
    .param p1, "index"    # I
    .param p2, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;

    .prologue
    .line 873
    return-void
.end method

.method public setPhotoChecked(I)V
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 864
    return-void
.end method

.method public updatePhotoAtIndex(I)V
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 804
    return-void
.end method

.method public willHidePhotoViewer()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 854
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 855
    return-void
.end method

.method public willSwitchFromPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V
    .registers 4
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 850
    return-void
.end method
