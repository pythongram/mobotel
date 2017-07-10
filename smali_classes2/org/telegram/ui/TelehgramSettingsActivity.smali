.class public Lorg/telegram/ui/TelehgramSettingsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "TelehgramSettingsActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;,
        Lorg/telegram/ui/TelehgramSettingsActivity$LinkMovementMethodMy;
    }
.end annotation


# static fields
.field private static final edit_name:I = 0x1

.field private static final logout:I = 0x2


# instance fields
.field private AnsweringMachineSectionRow:I

.field private AnsweringMachineSectionRow2:I

.field private PersianDateRow:I

.field private TypeCount:I

.field private answermachineTime:I

.field private answermachinetext:I

.field private askQuestionRow:I

.field private avatarImage:Lorg/telegram/ui/Components/BackupImageView;

.field private chatBarSectionRow:I

.field private chatBarSectionRow2:I

.field private chatCenterQuickBarBtnRow:I

.field private chatDoNotCloseQuickBarRow:I

.field private chatHideQuickBarOnScrollRow:I

.field private chatPassCodeRow:I

.field private chatShowQuickBarRow:I

.field private chatVerticalQuickBarRow:I

.field private confirmatinAudioRow:I

.field private contactsReimportRow:I

.field private contactsSectionRow:I

.field private contactsSortRow:I

.field private copySenderName:I

.field private defaultTabRow:I

.field private directForwardRow:I

.field private directShareRow:I

.field private emptyRow:I

.field private enable24HourFormat:I

.field private enableAnweringMachin:I

.field private enableRTLRow:I

.field private enableTabletMode:I

.field private extraHeight:I

.field private extraHeightView:Landroid/view/View;

.field private fontDesRow:I

.field private fontRow:I

.field private ghostModeRow:I

.field private hiddenTabsRow:I

.field private hidePhoneRow:I

.field private layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private listAdapter:Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private moveTabsToBottom:I

.field private nameTextView:Landroid/widget/TextView;

.field private onlineTextView:Landroid/widget/TextView;

.field options:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private overscrollRow:I

.field private paintingIcon:I

.field private previewStickerRow:I

.field private rowCount:I

.field private securitySectionRow:I

.field private securitySectionRow2:I

.field private sendLogsRow:I

.field private settingsSectionRow:I

.field private settingsSectionRow2:I

.field private shadowView:Landroid/view/View;

.field private showExactCountRow:I

.field private showGhostModeRow:I

.field private showMutualRow:I

.field private supportSectionRow:I

.field private supportSectionRow2:I

.field private swipeTabRow:I

.field private switchBackendButtonRow:I

.field private telegramFaqRow:I

.field private typingStatusRow:I

.field private versionRow:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 111
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 113
    const/16 v0, 0x8

    iput v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->TypeCount:I

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->options:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/TelehgramSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/TelehgramSettingsActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/TelehgramSettingsActivity;)Landroid/app/Dialog;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->visibleDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/TelehgramSettingsActivity;I)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lorg/telegram/ui/TelehgramSettingsActivity;->processSelectedOption(I)V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->defaultTabRow:I

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->fontRow:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->answermachineTime:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->answermachinetext:I

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->directForwardRow:I

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/TelehgramSettingsActivity;)Landroid/app/Dialog;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->visibleDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/TelehgramSettingsActivity;)Landroid/app/Dialog;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->visibleDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->previewStickerRow:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/TelehgramSettingsActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->confirmatinAudioRow:I

    return v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->typingStatusRow:I

    return v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->showMutualRow:I

    return v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->ghostModeRow:I

    return v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->hidePhoneRow:I

    return v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->showGhostModeRow:I

    return v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->showExactCountRow:I

    return v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->enableRTLRow:I

    return v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->copySenderName:I

    return v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->paintingIcon:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->versionRow:I

    return v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->chatPassCodeRow:I

    return v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->enableAnweringMachin:I

    return v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->moveTabsToBottom:I

    return v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->enableTabletMode:I

    return v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->chatShowQuickBarRow:I

    return v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->chatVerticalQuickBarRow:I

    return v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->chatDoNotCloseQuickBarRow:I

    return v0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->chatHideQuickBarOnScrollRow:I

    return v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->chatCenterQuickBarBtnRow:I

    return v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->enable24HourFormat:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->PersianDateRow:I

    return v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->askQuestionRow:I

    return v0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->sendLogsRow:I

    return v0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/TelehgramSettingsActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    invoke-direct {p0}, Lorg/telegram/ui/TelehgramSettingsActivity;->sendLogs()V

    return-void
.end method

.method static synthetic access$4400(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->directShareRow:I

    return v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->switchBackendButtonRow:I

    return v0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->telegramFaqRow:I

    return v0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->contactsReimportRow:I

    return v0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->contactsSortRow:I

    return v0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/TelehgramSettingsActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->swipeTabRow:I

    return v0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->extraHeight:I

    return v0
.end method

.method static synthetic access$5002(Lorg/telegram/ui/TelehgramSettingsActivity;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 111
    iput p1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->extraHeight:I

    return p1
.end method

.method static synthetic access$5100(Lorg/telegram/ui/TelehgramSettingsActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    invoke-direct {p0}, Lorg/telegram/ui/TelehgramSettingsActivity;->needLayout()V

    return-void
.end method

.method static synthetic access$5200(Lorg/telegram/ui/TelehgramSettingsActivity;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/TelehgramSettingsActivity;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->overscrollRow:I

    return v0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->settingsSectionRow2:I

    return v0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->supportSectionRow2:I

    return v0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->AnsweringMachineSectionRow2:I

    return v0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->chatBarSectionRow2:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/TelehgramSettingsActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    invoke-direct {p0}, Lorg/telegram/ui/TelehgramSettingsActivity;->reLunchApp()V

    return-void
.end method

.method static synthetic access$6000(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->securitySectionRow2:I

    return v0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->emptyRow:I

    return v0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->settingsSectionRow:I

    return v0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->supportSectionRow:I

    return v0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->contactsSectionRow:I

    return v0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->AnsweringMachineSectionRow:I

    return v0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->chatBarSectionRow:I

    return v0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->securitySectionRow:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/TelehgramSettingsActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    invoke-direct {p0}, Lorg/telegram/ui/TelehgramSettingsActivity;->restartApp()V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/TelehgramSettingsActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->hiddenTabsRow:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/TelehgramSettingsActivity;)Landroid/app/Dialog;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->visibleDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private fixLayout()V
    .registers 3

    .prologue
    .line 1477
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 1490
    :goto_4
    return-void

    .line 1480
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/TelehgramSettingsActivity$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/TelehgramSettingsActivity$8;-><init>(Lorg/telegram/ui/TelehgramSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_4
.end method

.method private needLayout()V
    .registers 14

    .prologue
    const v12, 0x3df5c28f

    const/high16 v11, -0x3e580000    # -21.0f

    const/4 v6, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v8, 0x42280000    # 42.0f

    .line 1444
    iget-object v5, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v5

    if-eqz v5, :cond_113

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_14
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v7

    add-int v3, v5, v7

    .line 1445
    .local v3, "newTop":I
    iget-object v5, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v5, :cond_37

    .line 1446
    iget-object v5, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RecyclerListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1447
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq v5, v3, :cond_37

    .line 1448
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1449
    iget-object v5, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1450
    iget-object v5, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->extraHeightView:Landroid/view/View;

    int-to-float v7, v3

    invoke-virtual {v5, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 1454
    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_37
    iget-object v5, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v5, :cond_112

    .line 1455
    iget v5, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->extraHeight:I

    int-to-float v5, v5

    const/high16 v7, 0x42b00000    # 88.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    div-float v1, v5, v7

    .line 1456
    .local v1, "diff":F
    iget-object v5, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->extraHeightView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setScaleY(F)V

    .line 1457
    iget-object v5, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->shadowView:Landroid/view/View;

    iget v7, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->extraHeight:I

    add-int/2addr v7, v3

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 1459
    const v5, 0x3e4ccccd

    cmpl-float v5, v1, v5

    if-lez v5, :cond_116

    const/4 v4, 0x1

    .line 1462
    .local v4, "setVisible":Z
    :goto_5d
    iget-object v5, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v7, 0x41900000    # 18.0f

    mul-float/2addr v7, v1

    add-float/2addr v7, v8

    div-float/2addr v7, v8

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/BackupImageView;->setScaleX(F)V

    .line 1463
    iget-object v5, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v7, 0x41900000    # 18.0f

    mul-float/2addr v7, v1

    add-float/2addr v7, v8

    div-float/2addr v7, v8

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/BackupImageView;->setScaleY(F)V

    .line 1464
    iget-object v5, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v5

    if-eqz v5, :cond_7b

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :cond_7b
    int-to-float v5, v6

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v7, v10, v1

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const/high16 v6, 0x41a80000    # 21.0f

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    const/high16 v6, 0x41d80000    # 27.0f

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float v0, v5, v6

    .line 1465
    .local v0, "avatarY":F
    iget-object v5, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v6, 0x423c0000    # 47.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/BackupImageView;->setTranslationX(F)V

    .line 1466
    iget-object v5, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/BackupImageView;->setTranslationY(F)V

    .line 1467
    iget-object v5, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->nameTextView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v6, v11

    mul-float/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 1468
    iget-object v5, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->nameTextView:Landroid/widget/TextView;

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v6, v6

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->density:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-float v7, v8

    sub-float/2addr v6, v7

    const/high16 v7, 0x40e00000    # 7.0f

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v7, v8

    mul-float/2addr v7, v1

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-float v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1469
    iget-object v5, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->onlineTextView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v6, v11

    mul-float/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 1470
    iget-object v5, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->onlineTextView:Landroid/widget/TextView;

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v6, v6

    const/high16 v7, 0x41b00000    # 22.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    const/high16 v7, 0x41300000    # 11.0f

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-float v7, v8

    mul-float/2addr v7, v1

    add-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1471
    iget-object v5, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->nameTextView:Landroid/widget/TextView;

    mul-float v6, v12, v1

    add-float/2addr v6, v10

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1472
    iget-object v5, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->nameTextView:Landroid/widget/TextView;

    mul-float v6, v12, v1

    add-float/2addr v6, v10

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setScaleY(F)V

    .line 1474
    .end local v0    # "avatarY":F
    .end local v1    # "diff":F
    .end local v4    # "setVisible":Z
    :cond_112
    return-void

    .end local v3    # "newTop":I
    :cond_113
    move v5, v6

    .line 1444
    goto/16 :goto_14

    .restart local v1    # "diff":F
    .restart local v3    # "newTop":I
    :cond_116
    move v4, v6

    .line 1459
    goto/16 :goto_5d
.end method

.method private processSelectedOption(I)V
    .registers 7
    .param p1, "option"    # I

    .prologue
    const/4 v4, 0x0

    .line 1924
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "mainconfig"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1925
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1926
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    packed-switch p1, :pswitch_data_94

    .line 1982
    :goto_10
    :pswitch_10
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1983
    return-void

    .line 1928
    :pswitch_14
    const-string v2, "defTab"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_10

    .line 1932
    :pswitch_1a
    const-string v2, "hideBots"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1933
    const-string v2, "defTab"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_10

    .line 1936
    :cond_28
    const-string v2, "defTab"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_10

    .line 1941
    :pswitch_2e
    const-string v2, "hideChannels"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1942
    const-string v2, "defTab"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_10

    .line 1945
    :cond_3c
    const-string v2, "defTab"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_10

    .line 1949
    :pswitch_42
    const-string v2, "hideGroups"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 1950
    const-string v2, "defTab"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_10

    .line 1953
    :cond_50
    const-string v2, "defTab"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_10

    .line 1957
    :pswitch_56
    const-string v2, "hideSGroups"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 1958
    const-string v2, "defTab"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_10

    .line 1961
    :cond_64
    const-string v2, "defTab"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_10

    .line 1965
    :pswitch_6a
    const-string v2, "hideUsers"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 1966
    const-string v2, "defTab"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_10

    .line 1969
    :cond_78
    const-string v2, "defTab"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_10

    .line 1973
    :pswitch_7e
    const-string v2, "hideFavs"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 1974
    const-string v2, "defTab"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_10

    .line 1977
    :cond_8c
    const-string v2, "defTab"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_10

    .line 1926
    nop

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_14
        :pswitch_10
        :pswitch_10
        :pswitch_2e
        :pswitch_42
        :pswitch_1a
        :pswitch_6a
        :pswitch_56
        :pswitch_7e
    .end packed-switch
.end method

.method private reLunchApp()V
    .registers 11

    .prologue
    const/high16 v6, 0x10000000

    .line 1911
    invoke-virtual {p0}, Lorg/telegram/ui/TelehgramSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 1912
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1913
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x4000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1914
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1915
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_2a

    .line 1916
    const v4, 0x8000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1917
    :cond_2a
    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1918
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    const-string v4, "alarm"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1919
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    invoke-virtual {v0, v4, v6, v7, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1920
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 1921
    return-void
.end method

.method private restartApp()V
    .registers 4

    .prologue
    .line 1904
    invoke-virtual {p0}, Lorg/telegram/ui/TelehgramSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/TelehgramSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1905
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1906
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1907
    invoke-virtual {p0}, Lorg/telegram/ui/TelehgramSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1908
    return-void
.end method

.method private sendLogs()V
    .registers 12

    .prologue
    const/4 v7, 0x0

    .line 1520
    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1521
    .local v6, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 1522
    .local v5, "sdCard":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/logs"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1523
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 1524
    .local v3, "files":[Ljava/io/File;
    array-length v8, v3

    :goto_2e
    if-ge v7, v8, :cond_3c

    aget-object v2, v3, v7

    .line 1525
    .local v2, "file":Ljava/io/File;
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1524
    add-int/lit8 v7, v7, 0x1

    goto :goto_2e

    .line 1528
    .end local v2    # "file":Ljava/io/File;
    :cond_3c
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_43

    .line 1540
    .end local v0    # "dir":Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    .end local v5    # "sdCard":Ljava/io/File;
    .end local v6    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :goto_42
    return-void

    .line 1531
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v3    # "files":[Ljava/io/File;
    .restart local v5    # "sdCard":Ljava/io/File;
    .restart local v6    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_43
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1532
    .local v4, "i":Landroid/content/Intent;
    const-string v7, "message/rfc822"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1533
    const-string v7, "android.intent.extra.EMAIL"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    sget-object v10, Lorg/telegram/messenger/BuildVars;->SEND_LOGS_EMAIL:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1534
    const-string v7, "android.intent.extra.SUBJECT"

    const-string v8, "last logs"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1535
    const-string v7, "android.intent.extra.STREAM"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1536
    invoke-virtual {p0}, Lorg/telegram/ui/TelehgramSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "Select email application."

    invoke-static {v4, v8}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v8

    const/16 v9, 0x1f4

    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_77} :catch_78

    goto :goto_42

    .line 1537
    .end local v0    # "dir":Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    .end local v4    # "i":Landroid/content/Intent;
    .end local v5    # "sdCard":Ljava/io/File;
    .end local v6    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :catch_78
    move-exception v1

    .line 1538
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_42
.end method

.method private updateUserData()V
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1493
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 1494
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v1, 0x0

    .line 1495
    .local v1, "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    const/4 v2, 0x0

    .line 1496
    .local v2, "photoBig":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v5, :cond_20

    .line 1497
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1498
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1500
    :cond_20
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0, v3, v6}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;Z)V

    .line 1501
    .local v0, "avatarDrawable":Lorg/telegram/ui/Components/AvatarDrawable;
    const v5, -0xa36733

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setColor(I)V

    .line 1502
    iget-object v5, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v5, :cond_84

    .line 1503
    iget-object v5, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const-string v8, "50_50"

    invoke-virtual {v5, v1, v8, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 1504
    iget-object v5, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v8

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Lorg/telegram/tgnet/TLRPC$FileLocation;)Z

    move-result v5

    if-nez v5, :cond_85

    move v5, v6

    :goto_47
    invoke-virtual {v8, v5, v7}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 1506
    iget-object v5, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->nameTextView:Landroid/widget/TextView;

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1508
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v8, "mainconfig"

    invoke-virtual {v5, v8, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1509
    .local v4, "var1":Landroid/content/SharedPreferences;
    const-string v5, "ghost_mode"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-ne v5, v6, :cond_87

    .line 1510
    iget-object v5, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->onlineTextView:Landroid/widget/TextView;

    const-string v8, "Hidden"

    const v9, 0x7f07072c

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1514
    :goto_71
    iget-object v5, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v8

    invoke-virtual {v8, v2}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Lorg/telegram/tgnet/TLRPC$FileLocation;)Z

    move-result v8

    if-nez v8, :cond_96

    :goto_81
    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 1516
    .end local v4    # "var1":Landroid/content/SharedPreferences;
    :cond_84
    return-void

    :cond_85
    move v5, v7

    .line 1504
    goto :goto_47

    .line 1512
    .restart local v4    # "var1":Landroid/content/SharedPreferences;
    :cond_87
    iget-object v5, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->onlineTextView:Landroid/widget/TextView;

    const-string v8, "Online"

    const v9, 0x7f0703d6

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_71

    :cond_96
    move v6, v7

    .line 1514
    goto :goto_81
.end method


# virtual methods
.method public allowCaption()Z
    .registers 2

    .prologue
    .line 1242
    const/4 v0, 0x0

    return v0
.end method

.method public cancelButtonPressed()Z
    .registers 2

    .prologue
    .line 1302
    const/4 v0, 0x1

    return v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0x33

    const/4 v12, -0x1

    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v4, 0x0

    .line 292
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "avatar_backgroundActionBarBlue"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 293
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "avatar_actionBarSelectorBlue"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 294
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "avatar_actionBarIconBlue"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 295
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200dd

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 296
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 297
    const/16 v0, 0x58

    iput v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->extraHeight:I

    .line 298
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 301
    :cond_43
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/TelehgramSettingsActivity$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/TelehgramSettingsActivity$1;-><init>(Lorg/telegram/ui/TelehgramSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 326
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v9

    .line 327
    .local v9, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const v0, 0x7f0200e7

    invoke-virtual {v9, v5, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v8

    .line 328
    .local v8, "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    const-string v0, "EditName"

    const v1, 0x7f0701ee

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v11, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 329
    const/4 v0, 0x2

    const-string v1, "LogOut"

    const v3, 0x7f0702f6

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 330
    new-instance v0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;-><init>(Lorg/telegram/ui/TelehgramSettingsActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->listAdapter:Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;

    .line 332
    new-instance v0, Lorg/telegram/ui/TelehgramSettingsActivity$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/TelehgramSettingsActivity$2;-><init>(Lorg/telegram/ui/TelehgramSettingsActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->fragmentView:Landroid/view/View;

    .line 360
    iget-object v7, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->fragmentView:Landroid/view/View;

    check-cast v7, Landroid/widget/FrameLayout;

    .line 362
    .local v7, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 363
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 364
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-direct {v1, p1, v11, v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 365
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string v1, "avatar_backgroundActionBarBlue"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    .line 366
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v12, v12, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->listAdapter:Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 368
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/TelehgramSettingsActivity$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/TelehgramSettingsActivity$3;-><init>(Lorg/telegram/ui/TelehgramSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 376
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/TelehgramSettingsActivity$4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/TelehgramSettingsActivity$4;-><init>(Lorg/telegram/ui/TelehgramSettingsActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1155
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1157
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->extraHeightView:Landroid/view/View;

    .line 1158
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->extraHeightView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setPivotY(F)V

    .line 1159
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->extraHeightView:Landroid/view/View;

    const/4 v1, 0x5

    invoke-static {v1}, Lorg/telegram/ui/Components/AvatarDrawable;->getProfileBackColorForId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1160
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->extraHeightView:Landroid/view/View;

    const/high16 v1, 0x42b00000    # 88.0f

    invoke-static {v12, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1162
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->shadowView:Landroid/view/View;

    .line 1163
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->shadowView:Landroid/view/View;

    const v1, 0x7f0200d9

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1164
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->shadowView:Landroid/view/View;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v12, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1166
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    .line 1167
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x41a80000    # 21.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 1168
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/BackupImageView;->setPivotX(F)V

    .line 1169
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/BackupImageView;->setPivotY(F)V

    .line 1170
    iget-object v10, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x2a

    const/high16 v1, 0x42280000    # 42.0f

    const/high16 v3, 0x42800000    # 64.0f

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v10, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1171
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v1, Lorg/telegram/ui/TelehgramSettingsActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/TelehgramSettingsActivity$5;-><init>(Lorg/telegram/ui/TelehgramSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1182
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->nameTextView:Landroid/widget/TextView;

    .line 1183
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1184
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->nameTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v11, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1185
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setLines(I)V

    .line 1186
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1187
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1188
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->nameTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1189
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->nameTextView:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1190
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->nameTextView:Landroid/widget/TextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1191
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setPivotX(F)V

    .line 1192
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setPivotY(F)V

    .line 1193
    iget-object v10, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->nameTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    const/high16 v3, 0x42ec0000    # 118.0f

    const/high16 v5, 0x42400000    # 48.0f

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v10, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1195
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->onlineTextView:Landroid/widget/TextView;

    .line 1196
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->onlineTextView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-static {v1}, Lorg/telegram/ui/Components/AvatarDrawable;->getProfileTextColorForId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1197
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->onlineTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v11, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1198
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->onlineTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setLines(I)V

    .line 1199
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->onlineTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1200
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->onlineTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1201
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->onlineTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1202
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->onlineTextView:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1203
    iget-object v10, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->onlineTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    const/high16 v3, 0x42ec0000    # 118.0f

    const/high16 v5, 0x42400000    # 48.0f

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v10, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1205
    invoke-direct {p0}, Lorg/telegram/ui/TelehgramSettingsActivity;->needLayout()V

    .line 1207
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/TelehgramSettingsActivity$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/TelehgramSettingsActivity$6;-><init>(Lorg/telegram/ui/TelehgramSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 1227
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1416
    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, v1, :cond_18

    .line 1417
    const/4 v1, 0x0

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1418
    .local v0, "mask":I
    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_15

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_18

    .line 1419
    :cond_15
    invoke-direct {p0}, Lorg/telegram/ui/TelehgramSettingsActivity;->updateUserData()V

    .line 1422
    .end local v0    # "mask":I
    :cond_18
    return-void
.end method

.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .registers 12
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 1252
    if-nez p2, :cond_4

    .line 1274
    :cond_3
    :goto_3
    return-object v1

    .line 1255
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 1256
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v3, :cond_3

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_3

    .line 1257
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1258
    .local v2, "photoBig":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget v4, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget v5, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v4, v5, :cond_3

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v6, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    iget v5, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    if-ne v4, v5, :cond_3

    .line 1259
    const/4 v4, 0x2

    new-array v0, v4, [I

    .line 1260
    .local v0, "coords":[I
    iget-object v4, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/BackupImageView;->getLocationInWindow([I)V

    .line 1261
    new-instance v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-direct {v1}, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;-><init>()V

    .line 1262
    .local v1, "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    const/4 v4, 0x0

    aget v4, v0, v4

    iput v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    .line 1263
    const/4 v4, 0x1

    aget v4, v0, v4

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v4, v5

    iput v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    .line 1264
    iget-object v4, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    iput-object v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    .line 1265
    iget-object v4, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 1266
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    iput v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->dialogId:I

    .line 1267
    iget-object v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    .line 1268
    const/4 v4, -0x1

    iput v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->size:I

    .line 1269
    iget-object v4, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()I

    move-result v4

    iput v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:I

    .line 1270
    iget-object v4, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/BackupImageView;->getScaleX()F

    move-result v4

    iput v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    goto :goto_3
.end method

.method public getSelectedCount()I
    .registers 2

    .prologue
    .line 1312
    const/4 v0, 0x0

    return v0
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .registers 12

    .prologue
    .line 1986
    const/16 v0, 0x1c

    new-array v9, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->fragmentView:Landroid/view/View;

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

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

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

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->extraHeightView:Landroid/view/View;

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

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

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

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

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

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

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

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->nameTextView:Landroid/widget/TextView;

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

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->onlineTextView:Landroid/widget/TextView;

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

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

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

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

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

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

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

    return-object v9
.end method

.method public getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 1279
    const/4 v0, 0x0

    return-object v0
.end method

.method public isPhotoChecked(I)Z
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 1293
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1402
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1438
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1439
    invoke-direct {p0}, Lorg/telegram/ui/TelehgramSettingsActivity;->fixLayout()V

    .line 1440
    return-void
.end method

.method protected onDialogDismiss(Landroid/app/Dialog;)V
    .registers 3
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 1232
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->checkAutodownloadSettings()V

    .line 1233
    return-void
.end method

.method public onFragmentCreate()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 205
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 206
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 207
    iput v4, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    .line 208
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->overscrollRow:I

    .line 209
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->emptyRow:I

    .line 210
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->settingsSectionRow:I

    .line 211
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->settingsSectionRow2:I

    .line 212
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->enableTabletMode:I

    .line 213
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->enable24HourFormat:I

    .line 214
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->PersianDateRow:I

    .line 215
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->fontRow:I

    .line 218
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->showExactCountRow:I

    .line 219
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->paintingIcon:I

    .line 221
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->enableRTLRow:I

    .line 222
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->copySenderName:I

    .line 223
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->moveTabsToBottom:I

    .line 226
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->directForwardRow:I

    .line 227
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->swipeTabRow:I

    .line 228
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->hiddenTabsRow:I

    .line 229
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->defaultTabRow:I

    .line 233
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_a6

    .line 234
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->directShareRow:I

    .line 237
    :cond_a6
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->securitySectionRow:I

    .line 238
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->securitySectionRow2:I

    .line 239
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->chatPassCodeRow:I

    .line 240
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->hidePhoneRow:I

    .line 241
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->showGhostModeRow:I

    .line 242
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->ghostModeRow:I

    .line 243
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->typingStatusRow:I

    .line 244
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->confirmatinAudioRow:I

    .line 245
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->previewStickerRow:I

    .line 247
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->chatBarSectionRow:I

    .line 248
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->chatBarSectionRow2:I

    .line 249
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->chatShowQuickBarRow:I

    .line 250
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->chatDoNotCloseQuickBarRow:I

    .line 251
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->chatHideQuickBarOnScrollRow:I

    .line 252
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->chatCenterQuickBarBtnRow:I

    .line 253
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->chatVerticalQuickBarRow:I

    .line 255
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->AnsweringMachineSectionRow:I

    .line 256
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->AnsweringMachineSectionRow2:I

    .line 257
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->enableAnweringMachin:I

    .line 258
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->answermachinetext:I

    .line 259
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->answermachineTime:I

    .line 261
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->supportSectionRow:I

    .line 262
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->supportSectionRow2:I

    .line 263
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->askQuestionRow:I

    .line 264
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->telegramFaqRow:I

    .line 265
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v1, :cond_182

    .line 266
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->sendLogsRow:I

    .line 267
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->switchBackendButtonRow:I

    .line 269
    :cond_182
    iget v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->versionRow:I

    .line 274
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->classGuid:I

    invoke-virtual {v1, v2, v3, v5}, Lorg/telegram/messenger/MessagesController;->loadFullUser(Lorg/telegram/tgnet/TLRPC$User;IZ)V

    .line 275
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "mainconfig"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 277
    .local v0, "preferences":Landroid/content/SharedPreferences;
    return v5
.end method

.method public onFragmentDestroy()V
    .registers 3

    .prologue
    .line 282
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 283
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_d

    .line 284
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 286
    :cond_d
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->cancelLoadFullUser(I)V

    .line 287
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 288
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 1426
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 1427
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->listAdapter:Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;

    if-eqz v0, :cond_c

    .line 1428
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->listAdapter:Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;

    invoke-virtual {v0}, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->notifyDataSetChanged()V

    .line 1430
    :cond_c
    invoke-direct {p0}, Lorg/telegram/ui/TelehgramSettingsActivity;->updateUserData()V

    .line 1431
    invoke-direct {p0}, Lorg/telegram/ui/TelehgramSettingsActivity;->fixLayout()V

    .line 1432
    const-string v0, "Telehgram Settings Activity"

    invoke-static {v0}, Lorg/telegram/ui/Membergram/analytics/AnalyticsEventUtil;->sendScreenName(Ljava/lang/String;)V

    .line 1434
    return-void
.end method

.method public performAskAQuestion()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 1316
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v11, "mainconfig"

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1317
    .local v4, "preferences":Landroid/content/SharedPreferences;
    const-string v10, "support_id"

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 1318
    .local v8, "uid":I
    const/4 v7, 0x0

    .line 1319
    .local v7, "supportUser":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v8, :cond_4c

    .line 1320
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    .line 1321
    if-nez v7, :cond_4c

    .line 1322
    const-string v10, "support_user"

    const/4 v11, 0x0

    invoke-interface {v4, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1323
    .local v9, "userString":Ljava/lang/String;
    if-eqz v9, :cond_4c

    .line 1325
    const/4 v10, 0x0

    :try_start_2a
    invoke-static {v9, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 1326
    .local v2, "datacentersBytes":[B
    if-eqz v2, :cond_4c

    .line 1327
    new-instance v1, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v1, v2}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 1328
    .local v1, "data":Lorg/telegram/tgnet/SerializedData;
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v1, v10, v11}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    .line 1329
    if-eqz v7, :cond_49

    iget v10, v7, Lorg/telegram/tgnet/TLRPC$User;->id:I

    const v11, 0x514c8

    if-ne v10, v11, :cond_49

    .line 1330
    const/4 v7, 0x0

    .line 1332
    :cond_49
    invoke-virtual {v1}, Lorg/telegram/tgnet/SerializedData;->cleanup()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_4c} :catch_7e

    .line 1341
    .end local v1    # "data":Lorg/telegram/tgnet/SerializedData;
    .end local v2    # "datacentersBytes":[B
    .end local v9    # "userString":Ljava/lang/String;
    :cond_4c
    :goto_4c
    if-nez v7, :cond_86

    .line 1342
    new-instance v5, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/TelehgramSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v5, v10}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1343
    .local v5, "progressDialog":Landroid/app/ProgressDialog;
    const-string v10, "Loading"

    const v11, 0x7f0702eb

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1344
    invoke-virtual {v5, v12}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1345
    invoke-virtual {v5, v12}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1346
    invoke-virtual {v5}, Landroid/app/ProgressDialog;->show()V

    .line 1347
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_help_getSupport;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_help_getSupport;-><init>()V

    .line 1348
    .local v6, "req":Lorg/telegram/tgnet/TLRPC$TL_help_getSupport;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    new-instance v11, Lorg/telegram/ui/TelehgramSettingsActivity$7;

    invoke-direct {v11, p0, v4, v5}, Lorg/telegram/ui/TelehgramSettingsActivity$7;-><init>(Lorg/telegram/ui/TelehgramSettingsActivity;Landroid/content/SharedPreferences;Landroid/app/ProgressDialog;)V

    invoke-virtual {v10, v6, v11}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 1398
    .end local v5    # "progressDialog":Landroid/app/ProgressDialog;
    .end local v6    # "req":Lorg/telegram/tgnet/TLRPC$TL_help_getSupport;
    :goto_7d
    return-void

    .line 1334
    .restart local v9    # "userString":Ljava/lang/String;
    :catch_7e
    move-exception v3

    .line 1335
    .local v3, "e":Ljava/lang/Exception;
    const-string v10, "tmessages"

    invoke-static {v10, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1336
    const/4 v7, 0x0

    goto :goto_4c

    .line 1393
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v9    # "userString":Ljava/lang/String;
    :cond_86
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v7, v11}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 1394
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1395
    .local v0, "args":Landroid/os/Bundle;
    const-string v10, "user_id"

    iget v11, v7, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1396
    new-instance v10, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v10}, Lorg/telegram/ui/TelehgramSettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_7d
.end method

.method public restoreSelfArgs(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1412
    return-void
.end method

.method public saveSelfArgs(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1407
    return-void
.end method

.method public scaleToFill()Z
    .registers 2

    .prologue
    .line 1247
    const/4 v0, 0x0

    return v0
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;)V
    .registers 3
    .param p1, "index"    # I
    .param p2, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;

    .prologue
    .line 1308
    return-void
.end method

.method public setPhotoChecked(I)V
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 1298
    return-void
.end method

.method public updatePhotoAtIndex(I)V
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 1238
    return-void
.end method

.method public willHidePhotoViewer()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1288
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 1289
    return-void
.end method

.method public willSwitchFromPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V
    .registers 4
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 1284
    return-void
.end method
