.class Lorg/telegram/ui/SettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/SettingsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/SettingsActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1157
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 1158
    iput-object p2, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 1159
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 1163
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->rowCount:I
    invoke-static {v0}, Lorg/telegram/ui/SettingsActivity;->access$4400(Lorg/telegram/ui/SettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x2

    .line 1361
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->emptyRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$5000(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_11

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->overscrollRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$4500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_13

    .line 1362
    :cond_11
    const/4 v0, 0x0

    .line 1377
    :cond_12
    :goto_12
    return v0

    .line 1364
    :cond_13
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->settingsSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$5100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_33

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->supportSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$5200(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_33

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->messagesSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$5300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_33

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->contactsSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$5400(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_35

    .line 1365
    :cond_33
    const/4 v0, 0x1

    goto :goto_12

    .line 1366
    :cond_35
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->enableAnimationsRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6d

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->sendByEnterRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1400(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6d

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->saveToGalleryRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6d

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->autoplayGifsRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6d

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->raiseToSpeakRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6d

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->customTabsRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6d

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->directShareRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1900(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_6f

    .line 1367
    :cond_6d
    const/4 v0, 0x3

    goto :goto_12

    .line 1368
    :cond_6f
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->notificationRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->themeRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->backgroundRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->askQuestionRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->sendLogsRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->privacyRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2000(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->clearLogsRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->switchBackendButtonRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2400(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->telegramFaqRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->contactsReimportRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->textSizeRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->languageRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2200(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->contactsSortRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->stickersRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$3100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->privacyPolicyRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->emojiRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$3200(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->dataRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_12

    .line 1370
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->versionRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$3500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_102

    .line 1371
    const/4 v0, 0x5

    goto/16 :goto_12

    .line 1372
    :cond_102
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->numberRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$3000(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_112

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->usernameRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2900(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_115

    .line 1373
    :cond_112
    const/4 v0, 0x6

    goto/16 :goto_12

    .line 1374
    :cond_115
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->settingsSectionRow2:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$4600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_135

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->messagesSectionRow2:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$4800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_135

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->supportSectionRow2:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$4700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_135

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->numberSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$4900(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_12

    .line 1375
    :cond_135
    const/4 v0, 0x4

    goto/16 :goto_12
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 4
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1290
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 1291
    .local v0, "position":I
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->textSizeRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_dc

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->enableAnimationsRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_dc

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->notificationRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_dc

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->backgroundRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_dc

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->numberRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$3000(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_dc

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    .line 1292
    # getter for: Lorg/telegram/ui/SettingsActivity;->askQuestionRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_dc

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->sendLogsRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_dc

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->sendByEnterRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1400(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_dc

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->autoplayGifsRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_dc

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->privacyRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2000(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_dc

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    .line 1293
    # getter for: Lorg/telegram/ui/SettingsActivity;->clearLogsRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_dc

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->languageRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2200(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_dc

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->usernameRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2900(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_dc

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    .line 1294
    # getter for: Lorg/telegram/ui/SettingsActivity;->switchBackendButtonRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2400(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_dc

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->telegramFaqRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_dc

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->contactsSortRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_dc

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->contactsReimportRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_dc

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->saveToGalleryRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_dc

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    .line 1295
    # getter for: Lorg/telegram/ui/SettingsActivity;->stickersRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$3100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_dc

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->raiseToSpeakRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_dc

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->privacyPolicyRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_dc

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->customTabsRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_dc

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->directShareRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1900(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_dc

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->versionRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$3500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_dc

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    .line 1296
    # getter for: Lorg/telegram/ui/SettingsActivity;->emojiRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$3200(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_dc

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->dataRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_dc

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->themeRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne v0, v1, :cond_de

    :cond_dc
    const/4 v1, 0x1

    .line 1291
    :goto_dd
    return v1

    .line 1296
    :cond_de
    const/4 v1, 0x0

    goto :goto_dd
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 16
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1168
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    packed-switch v1, :pswitch_data_3f8

    .line 1286
    :cond_9
    :goto_9
    :pswitch_9
    return-void

    .line 1170
    :pswitch_a
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->overscrollRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$4500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_20

    .line 1171
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/EmptyCell;

    const/high16 v2, 0x42b00000    # 88.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto :goto_9

    .line 1173
    :cond_20
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/EmptyCell;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto :goto_9

    .line 1178
    :pswitch_2e
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 1179
    .local v0, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->textSizeRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_6e

    .line 1180
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "mainconfig"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1181
    .local v7, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "fons_size"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_6b

    const/16 v1, 0x12

    :goto_4c
    invoke-interface {v7, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 1182
    .local v8, "size":I
    const-string v1, "TextSize"

    const v2, 0x7f070538

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%d"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_9

    .line 1181
    .end local v8    # "size":I
    :cond_6b
    const/16 v1, 0x10

    goto :goto_4c

    .line 1183
    .end local v7    # "preferences":Landroid/content/SharedPreferences;
    :cond_6e
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->languageRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2200(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_87

    .line 1184
    const-string v1, "Language"

    const v2, 0x7f0702b9

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getCurrentLanguageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_9

    .line 1185
    :cond_87
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->themeRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_a1

    .line 1186
    const-string v1, "Theme"

    const v2, 0x7f070539

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentThemeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_9

    .line 1187
    :cond_a1
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->contactsSortRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_e6

    .line 1189
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "mainconfig"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1190
    .restart local v7    # "preferences":Landroid/content/SharedPreferences;
    const-string v1, "sortContactsBy"

    invoke-interface {v7, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 1191
    .local v9, "sort":I
    if-nez v9, :cond_d0

    .line 1192
    const-string v1, "Default"

    const v2, 0x7f0701c5

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 1198
    .local v11, "value":Ljava/lang/String;
    :goto_c2
    const-string v1, "SortBy"

    const v2, 0x7f070518

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v11, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_9

    .line 1193
    .end local v11    # "value":Ljava/lang/String;
    :cond_d0
    if-ne v9, v5, :cond_dc

    .line 1194
    const-string v1, "FirstName"

    const v2, 0x7f070519

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "value":Ljava/lang/String;
    goto :goto_c2

    .line 1196
    .end local v11    # "value":Ljava/lang/String;
    :cond_dc
    const-string v1, "LastName"

    const v2, 0x7f07051a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "value":Ljava/lang/String;
    goto :goto_c2

    .line 1199
    .end local v7    # "preferences":Landroid/content/SharedPreferences;
    .end local v9    # "sort":I
    .end local v11    # "value":Ljava/lang/String;
    :cond_e6
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->notificationRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_fc

    .line 1200
    const-string v1, "NotificationsAndSounds"

    const v2, 0x7f0703bc

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_9

    .line 1201
    :cond_fc
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->backgroundRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_112

    .line 1202
    const-string v1, "ChatBackground"

    const v2, 0x7f070165

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_9

    .line 1203
    :cond_112
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->sendLogsRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_121

    .line 1204
    const-string v1, "Send Logs"

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_9

    .line 1205
    :cond_121
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->clearLogsRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_130

    .line 1206
    const-string v1, "Clear Logs"

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_9

    .line 1207
    :cond_130
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->askQuestionRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_146

    .line 1208
    const-string v1, "AskAQuestion"

    const v2, 0x7f0700b7

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_9

    .line 1209
    :cond_146
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->privacyRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2000(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_15c

    .line 1210
    const-string v1, "PrivacySettings"

    const v2, 0x7f07046f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_9

    .line 1211
    :cond_15c
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->dataRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_172

    .line 1212
    const-string v1, "DataSettings"

    const v2, 0x7f0701b4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_9

    .line 1213
    :cond_172
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->switchBackendButtonRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2400(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_181

    .line 1214
    const-string v1, "Switch Backend"

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_9

    .line 1215
    :cond_181
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->telegramFaqRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_197

    .line 1216
    const-string v1, "TelegramFAQ"

    const v2, 0x7f070531

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_9

    .line 1217
    :cond_197
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->contactsReimportRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_1ad

    .line 1218
    const-string v1, "ImportContacts"

    const v2, 0x7f07028c

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_9

    .line 1219
    :cond_1ad
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->stickersRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$3100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_1de

    .line 1220
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getUnreadStickerSets()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1221
    .local v6, "count":I
    const-string v1, "Stickers"

    const v2, 0x7f070520

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v6, :cond_1db

    const-string v1, "%d"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1d6
    invoke-virtual {v0, v2, v1, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_9

    :cond_1db
    const-string v1, ""

    goto :goto_1d6

    .line 1222
    .end local v6    # "count":I
    :cond_1de
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->privacyPolicyRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_1f4

    .line 1223
    const-string v1, "PrivacyPolicy"

    const v2, 0x7f07046d

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_9

    .line 1224
    :cond_1f4
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->emojiRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$3200(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_9

    .line 1225
    const-string v1, "Emoji"

    const v2, 0x7f0701f2

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_9

    .line 1230
    .end local v0    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :pswitch_20a
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 1231
    .local v0, "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "mainconfig"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1232
    .restart local v7    # "preferences":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->enableAnimationsRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_232

    .line 1233
    const-string v1, "EnableAnimations"

    const v2, 0x7f0701f6

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "view_animations"

    invoke-interface {v7, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_9

    .line 1234
    :cond_232
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->sendByEnterRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1400(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_24e

    .line 1235
    const-string v1, "SendByEnter"

    const v2, 0x7f0704d5

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "send_by_enter"

    invoke-interface {v7, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_9

    .line 1236
    :cond_24e
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->saveToGalleryRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_26c

    .line 1237
    const-string v1, "SaveToGallerySettings"

    const v2, 0x7f0704b3

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController;->canSaveToGallery()Z

    move-result v2

    invoke-virtual {v0, v1, v2, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_9

    .line 1238
    :cond_26c
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->autoplayGifsRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_28a

    .line 1239
    const-string v1, "AutoplayGifs"

    const v2, 0x7f0700cd

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController;->canAutoplayGifs()Z

    move-result v2

    invoke-virtual {v0, v1, v2, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_9

    .line 1240
    :cond_28a
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->raiseToSpeakRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_2a8

    .line 1241
    const-string v1, "RaiseToSpeak"

    const v2, 0x7f070473

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController;->canRaiseToSpeak()Z

    move-result v2

    invoke-virtual {v0, v1, v2, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_9

    .line 1242
    :cond_2a8
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->customTabsRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_2cf

    .line 1243
    const-string v1, "ChromeCustomTabs"

    const v2, 0x7f070176

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChromeCustomTabsInfo"

    const v3, 0x7f070177

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaController;->canCustomTabs()Z

    move-result v3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    goto/16 :goto_9

    .line 1244
    :cond_2cf
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->directShareRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1900(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_9

    .line 1245
    const-string v1, "DirectShare"

    const v2, 0x7f0701e3

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DirectShareInfo"

    const v3, 0x7f0701e4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaController;->canDirectShare()Z

    move-result v3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    goto/16 :goto_9

    .line 1250
    .end local v0    # "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    .end local v7    # "preferences":Landroid/content/SharedPreferences;
    :pswitch_2f6
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->settingsSectionRow2:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$4600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_310

    .line 1251
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/HeaderCell;

    const-string v2, "SETTINGS"

    const v3, 0x7f0704ab

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1252
    :cond_310
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->supportSectionRow2:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$4700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_32a

    .line 1253
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/HeaderCell;

    const-string v2, "Support"

    const v3, 0x7f07052d

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1254
    :cond_32a
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->messagesSectionRow2:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$4800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_344

    .line 1255
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/HeaderCell;

    const-string v2, "MessagesSettings"

    const v3, 0x7f07031b

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1256
    :cond_344
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->numberSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$4900(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_9

    .line 1257
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/HeaderCell;

    const-string v2, "Info"

    const v3, 0x7f070295

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1262
    :pswitch_35e
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .line 1264
    .local v0, "textCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->numberRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$3000(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_3b1

    .line 1265
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    .line 1267
    .local v10, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v10, :cond_3a7

    iget-object v1, v10, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v1, :cond_3a7

    iget-object v1, v10, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3a7

    .line 1268
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v10, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1272
    .restart local v11    # "value":Ljava/lang/String;
    :goto_399
    const-string v1, "Phone"

    const v2, 0x7f070441

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11, v1, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_9

    .line 1270
    .end local v11    # "value":Ljava/lang/String;
    :cond_3a7
    const-string v1, "NumberUnknown"

    const v2, 0x7f0703d3

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "value":Ljava/lang/String;
    goto :goto_399

    .line 1273
    .end local v10    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v11    # "value":Ljava/lang/String;
    :cond_3b1
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    # getter for: Lorg/telegram/ui/SettingsActivity;->usernameRow:I
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2900(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_9

    .line 1274
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    .line 1276
    .restart local v10    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v10, :cond_3ee

    iget-object v1, v10, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v1, :cond_3ee

    iget-object v1, v10, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3ee

    .line 1277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1281
    .restart local v11    # "value":Ljava/lang/String;
    :goto_3e0
    const-string v1, "Username"

    const v2, 0x7f070561

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11, v1, v4}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_9

    .line 1279
    .end local v11    # "value":Ljava/lang/String;
    :cond_3ee
    const-string v1, "UsernameEmpty"

    const v2, 0x7f070564

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "value":Ljava/lang/String;
    goto :goto_3e0

    .line 1168
    :pswitch_data_3f8
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_2e
        :pswitch_20a
        :pswitch_2f6
        :pswitch_9
        :pswitch_35e
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 19
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 1301
    const/4 v5, 0x0

    .line 1302
    .local v5, "view":Landroid/view/View;
    packed-switch p2, :pswitch_data_f2

    .line 1355
    :goto_4
    new-instance v6, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1356
    new-instance v6, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v6, v5}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v6

    .line 1304
    :pswitch_14
    new-instance v5, Lorg/telegram/ui/Cells/EmptyCell;

    .end local v5    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lorg/telegram/ui/Cells/EmptyCell;-><init>(Landroid/content/Context;)V

    .line 1305
    .restart local v5    # "view":Landroid/view/View;
    const-string v6, "windowBackgroundWhite"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 1308
    :pswitch_27
    new-instance v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .end local v5    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 1309
    .restart local v5    # "view":Landroid/view/View;
    goto :goto_4

    .line 1311
    :pswitch_31
    new-instance v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    .end local v5    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 1312
    .restart local v5    # "view":Landroid/view/View;
    const-string v6, "windowBackgroundWhite"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 1315
    :pswitch_44
    new-instance v5, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local v5    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 1316
    .restart local v5    # "view":Landroid/view/View;
    const-string v6, "windowBackgroundWhite"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 1319
    :pswitch_57
    new-instance v5, Lorg/telegram/ui/Cells/HeaderCell;

    .end local v5    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 1320
    .restart local v5    # "view":Landroid/view/View;
    const-string v6, "windowBackgroundWhite"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 1323
    :pswitch_6a
    new-instance v5, Lorg/telegram/ui/Cells/TextInfoCell;

    .end local v5    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lorg/telegram/ui/Cells/TextInfoCell;-><init>(Landroid/content/Context;)V

    .line 1324
    .restart local v5    # "view":Landroid/view/View;
    const-string v6, "windowBackgroundWhite"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1326
    :try_start_7c
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 1327
    .local v4, "pInfo":Landroid/content/pm/PackageInfo;
    iget v6, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    div-int/lit8 v2, v6, 0xa

    .line 1328
    .local v2, "code":I
    const-string v1, ""

    .line 1329
    .local v1, "abi":Ljava/lang/String;
    iget v6, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v6, v6, 0xa

    packed-switch v6, :pswitch_data_104

    .line 1345
    :goto_9a
    move-object v0, v5

    check-cast v0, Lorg/telegram/ui/Cells/TextInfoCell;

    move-object v6, v0

    const-string v7, "TelegramVersion"

    const v8, 0x7f070533

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "v%s (%d) %s"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget-object v15, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    aput-object v1, v13, v14

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Cells/TextInfoCell;->setText(Ljava/lang/String;)V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_ca} :catch_cc

    goto/16 :goto_4

    .line 1346
    .end local v1    # "abi":Ljava/lang/String;
    .end local v2    # "code":I
    .end local v4    # "pInfo":Landroid/content/pm/PackageInfo;
    :catch_cc
    move-exception v3

    .line 1347
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 1331
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "abi":Ljava/lang/String;
    .restart local v2    # "code":I
    .restart local v4    # "pInfo":Landroid/content/pm/PackageInfo;
    :pswitch_d2
    :try_start_d2
    const-string v1, "arm"

    .line 1332
    goto :goto_9a

    .line 1335
    :pswitch_d5
    const-string v1, "arm-v7a"

    .line 1336
    goto :goto_9a

    .line 1339
    :pswitch_d8
    const-string v1, "x86"

    .line 1340
    goto :goto_9a

    .line 1342
    :pswitch_db
    const-string v1, "universal"
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_dd} :catch_cc

    goto :goto_9a

    .line 1351
    .end local v1    # "abi":Ljava/lang/String;
    .end local v2    # "code":I
    .end local v4    # "pInfo":Landroid/content/pm/PackageInfo;
    :pswitch_de
    new-instance v5, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .end local v5    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    .line 1352
    .restart local v5    # "view":Landroid/view/View;
    const-string v6, "windowBackgroundWhite"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_4

    .line 1302
    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_14
        :pswitch_27
        :pswitch_31
        :pswitch_44
        :pswitch_57
        :pswitch_6a
        :pswitch_de
    .end packed-switch

    .line 1329
    :pswitch_data_104
    .packed-switch 0x0
        :pswitch_d2
        :pswitch_d5
        :pswitch_d8
        :pswitch_d5
        :pswitch_d8
        :pswitch_db
    .end packed-switch
.end method
