.class Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "TelehgramSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/TelehgramSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter2"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/TelehgramSettingsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/TelehgramSettingsActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1546
    iput-object p1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 1547
    iput-object p2, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->mContext:Landroid/content/Context;

    .line 1548
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 1552
    iget-object v0, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->rowCount:I
    invoke-static {v0}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$5400(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x2

    .line 1882
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->emptyRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$6100(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_11

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->overscrollRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$5500(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_13

    .line 1883
    :cond_11
    const/4 v0, 0x0

    .line 1898
    :cond_12
    :goto_12
    return v0

    .line 1885
    :cond_13
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->settingsSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$6200(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_43

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->supportSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$6300(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_43

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->contactsSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$6400(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_43

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->AnsweringMachineSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$6500(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_43

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->chatBarSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$6600(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_43

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->securitySectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$6700(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_45

    .line 1886
    :cond_43
    const/4 v0, 0x1

    goto :goto_12

    .line 1887
    :cond_45
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->enable24HourFormat:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3900(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_f5

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->chatShowQuickBarRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3400(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_f5

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->chatDoNotCloseQuickBarRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3600(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_f5

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->chatHideQuickBarOnScrollRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3700(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_f5

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->chatCenterQuickBarBtnRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3800(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_f5

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->chatVerticalQuickBarRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3500(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_f5

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->enableTabletMode:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3300(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_f5

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->enableRTLRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2700(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_f5

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->moveTabsToBottom:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3200(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_f5

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->enableAnweringMachin:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3100(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_f5

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->showMutualRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2200(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_f5

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->showExactCountRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2600(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_f5

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->paintingIcon:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2900(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_f5

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->hidePhoneRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2400(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_f5

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->typingStatusRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2100(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_f5

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->confirmatinAudioRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2000(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_f5

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->previewStickerRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$1900(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_f5

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->PersianDateRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$400(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_f5

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->copySenderName:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2800(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_f5

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->swipeTabRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$500(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_f5

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->showGhostModeRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2500(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_f5

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->ghostModeRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2300(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_f8

    .line 1888
    :cond_f5
    const/4 v0, 0x3

    goto/16 :goto_12

    .line 1889
    :cond_f8
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->askQuestionRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$4000(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->chatPassCodeRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3000(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->defaultTabRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$1200(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->fontRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$1300(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->answermachineTime:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$1400(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->answermachinetext:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$1500(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->sendLogsRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$4200(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->switchBackendButtonRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$4500(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->telegramFaqRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$4600(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->contactsReimportRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$4700(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->contactsSortRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$4800(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_12

    .line 1891
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->versionRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$300(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_15b

    .line 1892
    const/4 v0, 0x5

    goto/16 :goto_12

    .line 1893
    :cond_15b
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->hiddenTabsRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$800(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_16b

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->directForwardRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$1600(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_16e

    .line 1894
    :cond_16b
    const/4 v0, 0x6

    goto/16 :goto_12

    .line 1895
    :cond_16e
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->settingsSectionRow2:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$5600(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_196

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->supportSectionRow2:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$5700(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_196

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->AnsweringMachineSectionRow2:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$5800(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_196

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->chatBarSectionRow2:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$5900(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_196

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->securitySectionRow2:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$6000(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_12

    .line 1896
    :cond_196
    const/4 v0, 0x4

    goto/16 :goto_12
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 4
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1812
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 1813
    .local v0, "i":I
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->fontRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$1300(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_12c

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->enableTabletMode:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3300(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_12c

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->copySenderName:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2800(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_12c

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->answermachinetext:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$1500(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_12c

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->answermachineTime:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$1400(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_12c

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->enable24HourFormat:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3900(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_12c

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->PersianDateRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$400(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_12c

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->showMutualRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2200(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_12c

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    .line 1814
    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->chatShowQuickBarRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3400(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_12c

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->showGhostModeRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2500(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_12c

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->chatPassCodeRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3000(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_12c

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->ghostModeRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2300(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_12c

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->showExactCountRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2600(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_12c

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->paintingIcon:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2900(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_12c

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->enableRTLRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2700(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_12c

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->moveTabsToBottom:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3200(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_12c

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->enableAnweringMachin:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3100(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_12c

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->hidePhoneRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2400(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_12c

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->swipeTabRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$500(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_12c

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->defaultTabRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$1200(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_12c

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->hiddenTabsRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$800(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_12c

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->confirmatinAudioRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2000(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_12c

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    .line 1815
    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->directForwardRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$1600(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_12c

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->askQuestionRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$4000(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_12c

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->sendLogsRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$4200(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_12c

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->typingStatusRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2100(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_12c

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->previewStickerRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$1900(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_12c

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    .line 1816
    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->switchBackendButtonRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$4500(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_12c

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->telegramFaqRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$4600(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_12c

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->contactsSortRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$4800(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_12c

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->contactsReimportRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$4700(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_12c

    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    .line 1817
    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->chatVerticalQuickBarRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3500(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne v0, v1, :cond_108

    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->plusShowQuickBar:Z

    if-nez v1, :cond_12c

    :cond_108
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->chatDoNotCloseQuickBarRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3600(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne v0, v1, :cond_114

    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->plusShowQuickBar:Z

    if-nez v1, :cond_12c

    :cond_114
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->chatHideQuickBarOnScrollRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3700(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne v0, v1, :cond_120

    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->plusShowQuickBar:Z

    if-nez v1, :cond_12c

    :cond_120
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->chatCenterQuickBarBtnRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3800(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne v0, v1, :cond_12e

    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->plusShowQuickBar:Z

    if-eqz v1, :cond_12e

    :cond_12c
    const/4 v1, 0x1

    .line 1813
    :goto_12d
    return v1

    .line 1817
    :cond_12e
    const/4 v1, 0x0

    goto :goto_12d
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 15
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 1557
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    packed-switch v1, :pswitch_data_886

    .line 1808
    :cond_7
    :goto_7
    :pswitch_7
    return-void

    .line 1559
    :pswitch_8
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->overscrollRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$5500(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_1e

    .line 1560
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/EmptyCell;

    const/high16 v2, 0x42b00000    # 88.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto :goto_7

    .line 1562
    :cond_1e
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/EmptyCell;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto :goto_7

    .line 1566
    :pswitch_2c
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 1567
    .local v0, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->defaultTabRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$1200(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_61

    .line 1568
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "mainconfig"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "defTab"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_898

    .line 1585
    :goto_4b
    :pswitch_4b
    const-string v1, "DefaultTab"

    const v2, 0x7f0706a4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AllTab"

    const v3, 0x7f070643

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1588
    :cond_61
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->contactsSortRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$4800(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_148

    .line 1590
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "mainconfig"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 1591
    .local v8, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "sortContactsBy"

    const/4 v2, 0x0

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 1592
    .local v9, "sort":I
    if-nez v9, :cond_12f

    .line 1593
    const-string v1, "Default"

    const v2, 0x7f0701c5

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 1599
    .local v11, "value":Ljava/lang/String;
    :goto_84
    const-string v1, "SortBy"

    const v2, 0x7f070518

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v11, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 1570
    .end local v8    # "preferences":Landroid/content/SharedPreferences;
    .end local v9    # "sort":I
    .end local v11    # "value":Ljava/lang/String;
    :pswitch_93
    const-string v1, "RobotTab"

    const v2, 0x7f07079a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RobotTab"

    const v3, 0x7f07079a

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1572
    :pswitch_a9
    const-string v1, "DefaultTab"

    const v2, 0x7f0706a4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChannelTab"

    const v3, 0x7f070674

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1574
    :pswitch_bf
    const-string v1, "DefaultTab"

    const v2, 0x7f0706a4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GroupsTab"

    const v3, 0x7f07071f

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1576
    :pswitch_d5
    const-string v1, "DefaultTab"

    const v2, 0x7f0706a4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SGroupsTab"

    const v3, 0x7f0707a5

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1578
    :pswitch_eb
    const-string v1, "DefaultTab"

    const v2, 0x7f0706a4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContactTab"

    const v3, 0x7f070692

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1580
    :pswitch_101
    const-string v1, "DefaultTab"

    const v2, 0x7f0706a4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FavoriteTab"

    const v3, 0x7f0706f9

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1582
    :pswitch_117
    const-string v1, "DefaultTab"

    const v2, 0x7f0706a4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AllTab"

    const v3, 0x7f070643

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_4b

    .line 1594
    .restart local v8    # "preferences":Landroid/content/SharedPreferences;
    .restart local v9    # "sort":I
    :cond_12f
    const/4 v1, 0x1

    if-ne v9, v1, :cond_13d

    .line 1595
    const-string v1, "FirstName"

    const v2, 0x7f070519

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "value":Ljava/lang/String;
    goto/16 :goto_84

    .line 1597
    .end local v11    # "value":Ljava/lang/String;
    :cond_13d
    const-string v1, "LastName"

    const v2, 0x7f07051a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "value":Ljava/lang/String;
    goto/16 :goto_84

    .line 1600
    .end local v8    # "preferences":Landroid/content/SharedPreferences;
    .end local v9    # "sort":I
    .end local v11    # "value":Ljava/lang/String;
    :cond_148
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->sendLogsRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$4200(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_158

    .line 1601
    const-string v1, "Send Logs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 1602
    :cond_158
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->askQuestionRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$4000(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_16f

    .line 1603
    const-string v1, "AskAQuestion"

    const v2, 0x7f0700b7

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 1604
    :cond_16f
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->switchBackendButtonRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$4500(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_17f

    .line 1605
    const-string v1, "Switch Backend"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 1606
    :cond_17f
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->chatPassCodeRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3000(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_196

    .line 1607
    const-string v1, "ChatLock"

    const v2, 0x7f070677

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 1608
    :cond_196
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->telegramFaqRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$4600(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_1ad

    .line 1609
    const-string v1, "TelegramFAQ"

    const v2, 0x7f070531

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 1610
    :cond_1ad
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->contactsReimportRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$4700(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_1c4

    .line 1611
    const-string v1, "ImportContacts"

    const v2, 0x7f07028c

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 1612
    :cond_1c4
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->answermachinetext:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$1500(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_1f3

    .line 1613
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "mainconfig"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 1614
    .restart local v8    # "preferences":Landroid/content/SharedPreferences;
    const-string v1, "AnsweringMachineTitle"

    const v2, 0x7f070646

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "answeringmachineanswer"

    const-string v3, "AnsweringmachineDefaulttext"

    const v4, 0x7f070647

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 1615
    .end local v8    # "preferences":Landroid/content/SharedPreferences;
    :cond_1f3
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->answermachineTime:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$1400(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_22d

    .line 1616
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "mainconfig"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 1617
    .restart local v8    # "preferences":Landroid/content/SharedPreferences;
    const-string v1, "AnsweringMachineTimeTitle"

    const v2, 0x7f070645

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "answeringmachinetime"

    const/4 v4, 0x5

    invoke-interface {v8, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 1618
    .end local v8    # "preferences":Landroid/content/SharedPreferences;
    :cond_22d
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->fontRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$1300(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_7

    .line 1619
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "mainconfig"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 1620
    .restart local v8    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_257

    .line 1621
    const-string v1, "FontType"

    const v2, 0x7f070705

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "font_type"

    const-string v3, "\u0627\u06cc\u0631\u0627\u0646 \u0633\u0627\u0646\u0633 \u0646\u0627\u0632\u06a9"

    invoke-interface {v8, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1623
    :cond_257
    const-string v1, "font_type"

    const-string v2, "\u0627\u06cc\u0631\u0627\u0646 \u0633\u0627\u0646\u0633 \u0646\u0627\u0632\u06a9"

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1625
    .local v7, "fnt":Ljava/lang/String;
    const/4 v1, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_8ae

    :cond_267
    :goto_267
    packed-switch v1, :pswitch_data_8e8

    .line 1672
    :goto_26a
    const-string v1, "FontType"

    const v2, 0x7f070705

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v7, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 1625
    :sswitch_279
    const-string v2, "\u0647\u0645\u0627"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_267

    const/4 v1, 0x0

    goto :goto_267

    :sswitch_283
    const-string v2, "\u0627\u0641\u0633\u0627\u0646\u0647"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_267

    const/4 v1, 0x1

    goto :goto_267

    :sswitch_28d
    const-string v2, "\u0627\u06cc\u0631\u0627\u0646 \u0633\u0627\u0646\u0633 \u0636\u062e\u06cc\u0645"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_267

    const/4 v1, 0x2

    goto :goto_267

    :sswitch_297
    const-string v2, "\u062a\u0644\u06af\u0631\u0627\u0645"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_267

    const/4 v1, 0x3

    goto :goto_267

    :sswitch_2a1
    const-string v2, "\u062f\u0633\u062a \u0646\u0648\u06cc\u0633"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_267

    const/4 v1, 0x4

    goto :goto_267

    :sswitch_2ab
    const-string v2, "\u0627\u06cc\u0631\u0627\u0646 \u0633\u0627\u0646\u0633 \u0645\u0639\u0645\u0648\u0644\u06cc"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_267

    const/4 v1, 0x5

    goto :goto_267

    :sswitch_2b5
    const-string v2, "\u0645\u0631\u0648\u0627\u0631\u06cc\u062f"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_267

    const/4 v1, 0x6

    goto :goto_267

    :sswitch_2bf
    const-string v2, "\u0627\u06cc\u0631\u0627\u0646 \u0633\u0627\u0646\u0633 \u0646\u0627\u0632\u06a9"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_267

    const/4 v1, 0x7

    goto :goto_267

    :sswitch_2c9
    const-string v2, "\u0627\u06cc\u0631\u0627\u0646 \u0633\u0627\u0646\u0633 \u062e\u06cc\u0644\u06cc \u0646\u0627\u0632\u06a9"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_267

    const/16 v1, 0x8

    goto :goto_267

    :sswitch_2d4
    const-string v2, "\u0627\u06cc\u0631\u0627\u0646 \u0633\u0627\u0646\u0633 \u0645\u062a\u0648\u0633\u0637"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_267

    const/16 v1, 0x9

    goto :goto_267

    :sswitch_2df
    const-string v2, "\u06cc\u06a9\u0627\u0646"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_267

    const/16 v1, 0xa

    goto/16 :goto_267

    :sswitch_2eb
    const-string v2, "\u062a\u0631\u0627\u0641\u06cc\u06a9"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_267

    const/16 v1, 0xb

    goto/16 :goto_267

    :sswitch_2f7
    const-string v2, "\u06a9\u0648\u062f\u06a9"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_267

    const/16 v1, 0xc

    goto/16 :goto_267

    :sswitch_303
    const-string v2, "\u0644\u0648\u062a\u0648\u0633"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_267

    const/16 v1, 0xd

    goto/16 :goto_267

    .line 1627
    :pswitch_30f
    const-string v7, "Hama"

    .line 1628
    goto/16 :goto_26a

    .line 1630
    :pswitch_313
    const-string v7, "Afsaneh"

    .line 1631
    goto/16 :goto_26a

    .line 1633
    :pswitch_317
    const-string v7, "IransansBold"

    .line 1634
    goto/16 :goto_26a

    .line 1636
    :pswitch_31b
    const-string v7, "Telegram"

    .line 1637
    goto/16 :goto_26a

    .line 1639
    :pswitch_31f
    const-string v7, "Dastnevis"

    .line 1640
    goto/16 :goto_26a

    .line 1642
    :pswitch_323
    const-string v7, "Iransans"

    .line 1643
    goto/16 :goto_26a

    .line 1645
    :pswitch_327
    const-string v7, "Morvarid"

    .line 1646
    goto/16 :goto_26a

    .line 1648
    :pswitch_32b
    const-string v7, "IransansLight"

    .line 1649
    goto/16 :goto_26a

    .line 1651
    :pswitch_32f
    const-string v7, "IransansUltraLight"

    .line 1652
    goto/16 :goto_26a

    .line 1654
    :pswitch_333
    const-string v7, "IransansMedium"

    .line 1655
    goto/16 :goto_26a

    .line 1657
    :pswitch_337
    const-string v7, "Yekan"

    .line 1658
    goto/16 :goto_26a

    .line 1660
    :pswitch_33b
    const-string v7, "traffic"

    .line 1661
    goto/16 :goto_26a

    .line 1663
    :pswitch_33f
    const-string v7, "koodak"

    .line 1664
    goto/16 :goto_26a

    .line 1666
    :pswitch_343
    const-string v7, "lotus"

    .line 1667
    goto/16 :goto_26a

    .line 1676
    .end local v0    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    .end local v7    # "fnt":Ljava/lang/String;
    .end local v8    # "preferences":Landroid/content/SharedPreferences;
    :pswitch_347
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 1677
    .local v0, "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "mainconfig"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 1679
    .restart local v8    # "preferences":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->enableTabletMode:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3300(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_370

    .line 1680
    const-string v1, "TabletMode"

    const v2, 0x7f0707e8

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tablet_mode"

    const/4 v3, 0x1

    .line 1681
    invoke-interface {v8, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x0

    .line 1680
    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 1683
    :cond_370
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->previewStickerRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$1900(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_38c

    .line 1684
    const-string v1, "PreviewSticker"

    const v2, 0x7f070788

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "preview_sticker"

    const/4 v3, 0x0

    .line 1685
    invoke-interface {v8, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x0

    .line 1684
    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 1687
    :cond_38c
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->enable24HourFormat:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3900(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_3a8

    .line 1688
    const-string v1, "Enable24HourFormat"

    const v2, 0x7f0706d3

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "enable24HourFormat"

    const/4 v3, 0x1

    .line 1689
    invoke-interface {v8, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x0

    .line 1688
    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 1692
    :cond_3a8
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->confirmatinAudioRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2000(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_3c6

    .line 1693
    const-string v1, "ConfirmatinAudio"

    const v2, 0x7f070690

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "confirmatin_audio"

    const/4 v3, 0x1

    invoke-interface {v8, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    .line 1694
    :cond_3c6
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->showMutualRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2200(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_3ee

    .line 1695
    const-string v1, "ShowMutualContacts"

    const v2, 0x7f0707c8

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShowMutualContactsDes"

    const v3, 0x7f0707c9

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mutual_contact"

    const/4 v4, 0x1

    invoke-interface {v8, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    goto/16 :goto_7

    .line 1696
    :cond_3ee
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->typingStatusRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2100(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_40c

    .line 1697
    const-string v1, "HideTypingStatus"

    const v2, 0x7f07073f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hide_typing"

    const/4 v3, 0x0

    invoke-interface {v8, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    .line 1698
    :cond_40c
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->PersianDateRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$400(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_42a

    .line 1699
    const-string v1, "UsePersianDate"

    const v2, 0x7f070822

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "persian_date"

    const/4 v3, 0x0

    .line 1700
    invoke-interface {v8, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x0

    .line 1699
    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    .line 1701
    :cond_42a
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->copySenderName:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2800(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_452

    .line 1702
    const-string v1, "CopySender"

    const v2, 0x7f070699

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CopySenderDes"

    const v3, 0x7f07069a

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "copySender"

    const/4 v4, 0x1

    invoke-interface {v8, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    goto/16 :goto_7

    .line 1703
    :cond_452
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->paintingIcon:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2900(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_470

    .line 1704
    const-string v1, "PaintingIcon"

    const v2, 0x7f070782

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "painting_icon"

    const/4 v3, 0x1

    invoke-interface {v8, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    .line 1705
    :cond_470
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->hidePhoneRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2400(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_498

    .line 1707
    const-string v1, "HidePhone"

    const v2, 0x7f070738

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HidePhoneDesRow"

    const v3, 0x7f070739

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hide_phone"

    const/4 v4, 0x0

    invoke-interface {v8, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    goto/16 :goto_7

    .line 1708
    :cond_498
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->showGhostModeRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2500(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_4c0

    .line 1710
    const-string v1, "ShowGhostMode"

    const v2, 0x7f0707c6

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShowGhostModeDesRow"

    const v3, 0x7f0707c7

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "show_ghost_state_icon"

    const/4 v4, 0x1

    invoke-interface {v8, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    goto/16 :goto_7

    .line 1711
    :cond_4c0
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->ghostModeRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2300(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_4de

    .line 1712
    const-string v1, "GhostMode"

    const v2, 0x7f070714

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ghost_mode"

    const/4 v3, 0x0

    invoke-interface {v8, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    .line 1713
    :cond_4de
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->showExactCountRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2600(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_4fc

    .line 1714
    const-string v1, "ShowExactCount"

    const v2, 0x7f0707c4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "exact_count"

    const/4 v3, 0x1

    invoke-interface {v8, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    .line 1715
    :cond_4fc
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->moveTabsToBottom:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3200(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_51a

    .line 1716
    const-string v1, "MoveTabsToBottom"

    const v2, 0x7f070762

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tabsToBottom"

    const/4 v3, 0x0

    invoke-interface {v8, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    .line 1717
    :cond_51a
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->enableAnweringMachin:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3100(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_538

    .line 1718
    const-string v1, "EnableAnseringMachin"

    const v2, 0x7f0706d4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "answeringmachine"

    const/4 v3, 0x0

    invoke-interface {v8, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    .line 1719
    :cond_538
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->chatShowQuickBarRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3400(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_551

    .line 1720
    const-string v1, "ShowQuickBar"

    const v2, 0x7f0707cf

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->plusShowQuickBar:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    .line 1721
    :cond_551
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->chatDoNotCloseQuickBarRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3600(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_56a

    .line 1722
    const-string v1, "DoNotCloseQuickBar"

    const v2, 0x7f0706ba

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotCloseQuickBar:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    .line 1723
    :cond_56a
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->chatHideQuickBarOnScrollRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3700(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_583

    .line 1724
    const-string v1, "HideQuickBarOnScroll"

    const v2, 0x7f07073a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->plusHideQuickBarOnScroll:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    .line 1725
    :cond_583
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->chatCenterQuickBarBtnRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3800(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_59c

    .line 1726
    const-string v1, "CenterQuickBarButton"

    const v2, 0x7f07066d

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->plusCenterQuickBarBtn:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    .line 1727
    :cond_59c
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->chatVerticalQuickBarRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3500(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_5b5

    .line 1728
    const-string v1, "VerticalQuickBar"

    const v2, 0x7f07082a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->plusVerticalQuickBar:Z

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    .line 1729
    :cond_5b5
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->enableRTLRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2700(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_5d3

    .line 1730
    const-string v1, "EnableRTLMode"

    const v2, 0x7f0706d8

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "is_rtl"

    const/4 v3, 0x0

    invoke-interface {v8, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    .line 1731
    :cond_5d3
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->swipeTabRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$500(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_7

    .line 1732
    const-string v1, "SwipeTabs"

    const v2, 0x7f0707e6

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "swipe_tabs"

    const/4 v3, 0x1

    invoke-interface {v8, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    .line 1737
    .end local v0    # "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    .end local v8    # "preferences":Landroid/content/SharedPreferences;
    :pswitch_5f1
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->settingsSectionRow2:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$5600(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_60b

    .line 1738
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/HeaderCell;

    const-string v2, "SETTINGS"

    const v3, 0x7f0704ab

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1739
    :cond_60b
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->supportSectionRow2:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$5700(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_625

    .line 1740
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/HeaderCell;

    const-string v2, "Support"

    const v3, 0x7f07052d

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1741
    :cond_625
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->AnsweringMachineSectionRow2:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$5800(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_63f

    .line 1742
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/HeaderCell;

    const-string v2, "AnsweringMachineSectionRow"

    const v3, 0x7f070644

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1743
    :cond_63f
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->chatBarSectionRow2:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$5900(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_659

    .line 1744
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/HeaderCell;

    const-string v2, "chatBarSectionRow"

    const v3, 0x7f070853

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1745
    :cond_659
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->securitySectionRow2:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$6000(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_7

    .line 1746
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/HeaderCell;

    const-string v2, "securitySectionRow"

    const v3, 0x7f0708a6

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1751
    :pswitch_673
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .line 1753
    .local v0, "textCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "mainconfig"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 1755
    .restart local v8    # "preferences":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->hiddenTabsRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$800(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_7af

    .line 1756
    const-string v10, ""

    .line 1757
    .local v10, "text":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_68b
    const/4 v1, 0x6

    if-ge v6, v1, :cond_7a0

    .line 1758
    if-nez v6, :cond_6bc

    .line 1759
    const-string v1, "hideFavs"

    const/4 v2, 0x0

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6b9

    .line 1760
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "FavoriteTab"

    const v3, 0x7f0706f9

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1757
    :cond_6b9
    :goto_6b9
    add-int/lit8 v6, v6, 0x1

    goto :goto_68b

    .line 1762
    :cond_6bc
    const/4 v1, 0x1

    if-ne v6, v1, :cond_6e9

    .line 1763
    const-string v1, "hideUsers"

    const/4 v2, 0x0

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6b9

    .line 1764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ContactTab"

    const v3, 0x7f070692

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_6b9

    .line 1766
    :cond_6e9
    const/4 v1, 0x2

    if-ne v6, v1, :cond_716

    .line 1767
    const-string v1, "hideGroups"

    const/4 v2, 0x0

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6b9

    .line 1768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "GroupsTab"

    const v3, 0x7f07071f

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_6b9

    .line 1770
    :cond_716
    const/4 v1, 0x3

    if-ne v6, v1, :cond_744

    .line 1771
    const-string v1, "hideSGroups"

    const/4 v2, 0x0

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6b9

    .line 1772
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SGroupsTab"

    const v3, 0x7f0707a5

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_6b9

    .line 1774
    :cond_744
    const/4 v1, 0x4

    if-ne v6, v1, :cond_772

    .line 1775
    const-string v1, "hideChannels"

    const/4 v2, 0x0

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6b9

    .line 1776
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ChannelTab"

    const v3, 0x7f070674

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_6b9

    .line 1778
    :cond_772
    const/4 v1, 0x5

    if-ne v6, v1, :cond_6b9

    const-string v1, "hideBots"

    const/4 v2, 0x0

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6b9

    .line 1779
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "RobotTab"

    const v3, 0x7f07079a

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_6b9

    .line 1782
    :cond_7a0
    const-string v1, "HiddenTabs"

    const v2, 0x7f070731

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v10, v2}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 1783
    .end local v6    # "a":I
    .end local v10    # "text":Ljava/lang/String;
    :cond_7af
    iget-object v1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->directForwardRow:I
    invoke-static {v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$1600(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_7

    .line 1784
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "mainconfig"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 1785
    const-string v10, ""

    .line 1786
    .restart local v10    # "text":Ljava/lang/String;
    const/4 v6, 0x0

    .restart local v6    # "a":I
    :goto_7c3
    const/4 v1, 0x4

    if-ge v6, v1, :cond_876

    .line 1787
    if-nez v6, :cond_7ee

    .line 1788
    const-string v1, "direct_contact"

    const/4 v2, 0x0

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7eb

    .line 1789
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ContactTab"

    const v3, 0x7f070692

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1786
    :cond_7eb
    :goto_7eb
    add-int/lit8 v6, v6, 0x1

    goto :goto_7c3

    .line 1791
    :cond_7ee
    const/4 v1, 0x1

    if-ne v6, v1, :cond_81b

    .line 1792
    const-string v1, "direct_group"

    const/4 v2, 0x0

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7eb

    .line 1793
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "GroupsTab"

    const v3, 0x7f07071f

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_7eb

    .line 1795
    :cond_81b
    const/4 v1, 0x2

    if-ne v6, v1, :cond_848

    .line 1796
    const-string v1, "direct_channel"

    const/4 v2, 0x1

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7eb

    .line 1797
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ChannelTab"

    const v3, 0x7f070674

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_7eb

    .line 1799
    :cond_848
    const/4 v1, 0x3

    if-ne v6, v1, :cond_7eb

    const-string v1, "direct_bot"

    const/4 v2, 0x1

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7eb

    .line 1800
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "RobotTab"

    const v3, 0x7f07079a

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_7eb

    .line 1803
    :cond_876
    const-string v1, "DirectForward"

    const v2, 0x7f0706b5

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v10, v2}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 1557
    nop

    :pswitch_data_886
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_2c
        :pswitch_347
        :pswitch_5f1
        :pswitch_7
        :pswitch_673
    .end packed-switch

    .line 1568
    :pswitch_data_898
    .packed-switch 0x0
        :pswitch_117
        :pswitch_4b
        :pswitch_4b
        :pswitch_a9
        :pswitch_bf
        :pswitch_93
        :pswitch_eb
        :pswitch_d5
        :pswitch_101
    .end packed-switch

    .line 1625
    :sswitch_data_8ae
    .sparse-switch
        -0x6c75a377 -> :sswitch_2b5
        -0x2de587bd -> :sswitch_2a1
        -0x2554fdf1 -> :sswitch_283
        -0x211cee62 -> :sswitch_2eb
        -0x1fd3adc6 -> :sswitch_297
        0x185909 -> :sswitch_279
        0x31f6759 -> :sswitch_2f7
        0x320791d -> :sswitch_2d4
        0x330bb1c -> :sswitch_2df
        0x5b3e2591 -> :sswitch_303
        0x61c10529 -> :sswitch_2ab
        0x632be5db -> :sswitch_28d
        0x6332ff42 -> :sswitch_2bf
        0x66ca6128 -> :sswitch_2c9
    .end sparse-switch

    :pswitch_data_8e8
    .packed-switch 0x0
        :pswitch_30f
        :pswitch_313
        :pswitch_317
        :pswitch_31b
        :pswitch_31f
        :pswitch_323
        :pswitch_327
        :pswitch_32b
        :pswitch_32f
        :pswitch_333
        :pswitch_337
        :pswitch_33b
        :pswitch_33f
        :pswitch_343
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 15
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 1822
    const/4 v5, 0x0

    .line 1823
    .local v5, "view":Landroid/view/View;
    packed-switch p2, :pswitch_data_d6

    .line 1876
    :goto_4
    new-instance v6, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1877
    new-instance v6, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v6, v5}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v6

    .line 1825
    :pswitch_14
    new-instance v5, Lorg/telegram/ui/Cells/EmptyCell;

    .end local v5    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lorg/telegram/ui/Cells/EmptyCell;-><init>(Landroid/content/Context;)V

    .line 1826
    .restart local v5    # "view":Landroid/view/View;
    const-string v6, "windowBackgroundWhite"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 1829
    :pswitch_25
    new-instance v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .end local v5    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 1830
    .restart local v5    # "view":Landroid/view/View;
    goto :goto_4

    .line 1832
    :pswitch_2d
    new-instance v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    .end local v5    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 1833
    .restart local v5    # "view":Landroid/view/View;
    const-string v6, "windowBackgroundWhite"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 1836
    :pswitch_3e
    new-instance v5, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local v5    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 1837
    .restart local v5    # "view":Landroid/view/View;
    const-string v6, "windowBackgroundWhite"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 1840
    :pswitch_4f
    new-instance v5, Lorg/telegram/ui/Cells/HeaderCell;

    .end local v5    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 1841
    .restart local v5    # "view":Landroid/view/View;
    const-string v6, "windowBackgroundWhite"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 1844
    :pswitch_60
    new-instance v5, Lorg/telegram/ui/Cells/TextInfoCell;

    .end local v5    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lorg/telegram/ui/Cells/TextInfoCell;-><init>(Landroid/content/Context;)V

    .line 1845
    .restart local v5    # "view":Landroid/view/View;
    const-string v6, "windowBackgroundWhite"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1847
    :try_start_70
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 1848
    .local v4, "pInfo":Landroid/content/pm/PackageInfo;
    iget v6, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    div-int/lit8 v2, v6, 0xa

    .line 1849
    .local v2, "code":I
    const-string v1, ""

    .line 1850
    .local v1, "abi":Ljava/lang/String;
    iget v6, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v6, v6, 0xa

    packed-switch v6, :pswitch_data_e8

    .line 1866
    :goto_8e
    move-object v0, v5

    check-cast v0, Lorg/telegram/ui/Cells/TextInfoCell;

    move-object v6, v0

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "Tellgram for Android v%s (%d) %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object v1, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Cells/TextInfoCell;->setText(Ljava/lang/String;)V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_af} :catch_b1

    goto/16 :goto_4

    .line 1867
    .end local v1    # "abi":Ljava/lang/String;
    .end local v2    # "code":I
    .end local v4    # "pInfo":Landroid/content/pm/PackageInfo;
    :catch_b1
    move-exception v3

    .line 1868
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 1852
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "abi":Ljava/lang/String;
    .restart local v2    # "code":I
    .restart local v4    # "pInfo":Landroid/content/pm/PackageInfo;
    :pswitch_b7
    :try_start_b7
    const-string v1, "arm"

    .line 1853
    goto :goto_8e

    .line 1856
    :pswitch_ba
    const-string v1, "arm-v7a"

    .line 1857
    goto :goto_8e

    .line 1860
    :pswitch_bd
    const-string v1, "x86"

    .line 1861
    goto :goto_8e

    .line 1863
    :pswitch_c0
    const-string v1, "universal"
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_c2} :catch_b1

    goto :goto_8e

    .line 1872
    .end local v1    # "abi":Ljava/lang/String;
    .end local v2    # "code":I
    .end local v4    # "pInfo":Landroid/content/pm/PackageInfo;
    :pswitch_c3
    new-instance v5, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .end local v5    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/TelehgramSettingsActivity$ListAdapter2;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    .line 1873
    .restart local v5    # "view":Landroid/view/View;
    const-string v6, "windowBackgroundWhite"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_4

    .line 1823
    nop

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_14
        :pswitch_25
        :pswitch_2d
        :pswitch_3e
        :pswitch_4f
        :pswitch_60
        :pswitch_c3
    .end packed-switch

    .line 1850
    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_b7
        :pswitch_ba
        :pswitch_bd
        :pswitch_ba
        :pswitch_bd
        :pswitch_c0
    .end packed-switch
.end method
