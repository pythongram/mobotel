.class Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "NotificationsSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/NotificationsSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/NotificationsSettingsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/NotificationsSettingsActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 572
    iput-object p1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 573
    iput-object p2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 574
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 588
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 797
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messageSectionRow:I
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_38

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupSectionRow:I
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_38

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->inappSectionRow:I
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_38

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    .line 798
    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->eventsSectionRow:I
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_38

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->otherSectionRow:I
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_38

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->resetSectionRow:I
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_38

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    .line 799
    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->callsSectionRow:I
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3a

    .line 800
    :cond_38
    const/4 v0, 0x0

    .line 816
    :goto_39
    return v0

    .line 801
    :cond_3a
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messageAlertRow:I
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b2

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messagePreviewRow:I
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b2

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupAlertRow:I
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b2

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    .line 802
    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupPreviewRow:I
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b2

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->inappSoundRow:I
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b2

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->inappVibrateRow:I
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b2

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    .line 803
    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->inappPreviewRow:I
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b2

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->contactJoinedRow:I
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b2

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->pinnedMessageRow:I
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b2

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    .line 804
    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->notificationsServiceRow:I
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b2

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->badgeNumberRow:I
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1800(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b2

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->inappPriorityRow:I
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b2

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    .line 805
    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->inchatSoundRow:I
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b2

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->androidAutoAlertRow:I
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1700(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b2

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->notificationsServiceConnectionRow:I
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1900(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_b4

    .line 806
    :cond_b2
    const/4 v0, 0x1

    goto :goto_39

    .line 807
    :cond_b4
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messageLedRow:I
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_c4

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupLedRow:I
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_c7

    .line 808
    :cond_c4
    const/4 v0, 0x3

    goto/16 :goto_39

    .line 809
    :cond_c7
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->eventsSectionRow2:I
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3700(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_f7

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupSectionRow2:I
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3800(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_f7

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    .line 810
    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->inappSectionRow2:I
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3900(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_f7

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->otherSectionRow2:I
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_f7

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->resetSectionRow2:I
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_f7

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    .line 811
    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->callsSectionRow2:I
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_fa

    .line 812
    :cond_f7
    const/4 v0, 0x4

    goto/16 :goto_39

    .line 813
    :cond_fa
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->resetNotificationsRow:I
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$700(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_105

    .line 814
    const/4 v0, 0x2

    goto/16 :goto_39

    .line 816
    :cond_105
    const/4 v0, 0x5

    goto/16 :goto_39
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 4
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 578
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 579
    .local v0, "position":I
    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messageSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_6e

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_6e

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->inappSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_6e

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    .line 580
    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->eventsSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_6e

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->otherSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_6e

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->resetSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_6e

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    .line 581
    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->eventsSectionRow2:I
    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3700(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_6e

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupSectionRow2:I
    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3800(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_6e

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    .line 582
    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->inappSectionRow2:I
    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3900(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_6e

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->otherSectionRow2:I
    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_6e

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->resetSectionRow2:I
    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_6e

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    .line 583
    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->callsSectionRow2:I
    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_6e

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->callsSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_6e

    const/4 v1, 0x1

    .line 579
    :goto_6d
    return v1

    .line 583
    :cond_6e
    const/4 v1, 0x0

    goto :goto_6d
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 20
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 625
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    packed-switch v2, :pswitch_data_67e

    .line 793
    :cond_7
    :goto_7
    :pswitch_7
    return-void

    .line 627
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v9, Lorg/telegram/ui/Cells/HeaderCell;

    .line 628
    .local v9, "headerCell":Lorg/telegram/ui/Cells/HeaderCell;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messageSectionRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_27

    .line 629
    const-string v2, "MessageNotifications"

    const v3, 0x7f070318

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto :goto_7

    .line 630
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupSectionRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_40

    .line 631
    const-string v2, "GroupNotifications"

    const v3, 0x7f070270

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto :goto_7

    .line 632
    :cond_40
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->inappSectionRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_59

    .line 633
    const-string v2, "InAppNotifications"

    const v3, 0x7f07028d

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto :goto_7

    .line 634
    :cond_59
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->eventsSectionRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_72

    .line 635
    const-string v2, "Events"

    const v3, 0x7f070211

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto :goto_7

    .line 636
    :cond_72
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->otherSectionRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_8c

    .line 637
    const-string v2, "NotificationsOther"

    const v3, 0x7f0703c6

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 638
    :cond_8c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->resetSectionRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_a6

    .line 639
    const-string v2, "Reset"

    const v3, 0x7f07048d

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 640
    :cond_a6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->callsSectionRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_7

    .line 641
    const-string v2, "VoipNotificationSettings"

    const v3, 0x7f07058a

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 646
    .end local v9    # "headerCell":Lorg/telegram/ui/Cells/HeaderCell;
    :pswitch_c0
    move-object/from16 v0, p1

    iget-object v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 647
    .local v1, "checkCell":Lorg/telegram/ui/Cells/TextCheckCell;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "Notifications"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 648
    .local v12, "preferences":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messageAlertRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_f1

    .line 649
    const-string v2, "Alert"

    const v3, 0x7f070079

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "EnableAll"

    const/4 v4, 0x1

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    .line 650
    :cond_f1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupAlertRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_113

    .line 651
    const-string v2, "Alert"

    const v3, 0x7f070079

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "EnableGroup"

    const/4 v4, 0x1

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    .line 652
    :cond_113
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messagePreviewRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_135

    .line 653
    const-string v2, "MessagePreview"

    const v3, 0x7f070319

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "EnablePreviewAll"

    const/4 v4, 0x1

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    .line 654
    :cond_135
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupPreviewRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_157

    .line 655
    const-string v2, "MessagePreview"

    const v3, 0x7f070319

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "EnablePreviewGroup"

    const/4 v4, 0x1

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    .line 656
    :cond_157
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->inappSoundRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_179

    .line 657
    const-string v2, "InAppSounds"

    const v3, 0x7f07028f

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "EnableInAppSounds"

    const/4 v4, 0x1

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    .line 658
    :cond_179
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->inappVibrateRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_19b

    .line 659
    const-string v2, "InAppVibrate"

    const v3, 0x7f070290

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "EnableInAppVibrate"

    const/4 v4, 0x1

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    .line 660
    :cond_19b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->inappPreviewRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_1bd

    .line 661
    const-string v2, "InAppPreview"

    const v3, 0x7f07028e

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "EnableInAppPreview"

    const/4 v4, 0x1

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    .line 662
    :cond_1bd
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->inappPriorityRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_1df

    .line 663
    const-string v2, "NotificationsPriority"

    const v3, 0x7f0703c7

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "EnableInAppPriority"

    const/4 v4, 0x0

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    .line 664
    :cond_1df
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->contactJoinedRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_201

    .line 665
    const-string v2, "ContactJoined"

    const v3, 0x7f07018f

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "EnableContactJoined"

    const/4 v4, 0x1

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    .line 666
    :cond_201
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->pinnedMessageRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_223

    .line 667
    const-string v2, "PinnedMessages"

    const v3, 0x7f07045a

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PinnedMessages"

    const/4 v4, 0x1

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    .line 668
    :cond_223
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->androidAutoAlertRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1700(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_23e

    .line 669
    const-string v2, "Android Auto"

    const-string v3, "EnableAutoNotifications"

    const/4 v4, 0x0

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    .line 670
    :cond_23e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->notificationsServiceRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_26a

    .line 671
    const-string v2, "NotificationsService"

    const v3, 0x7f0703cd

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "NotificationsServiceInfo"

    const v4, 0x7f0703d0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pushService"

    const/4 v5, 0x1

    invoke-interface {v12, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    goto/16 :goto_7

    .line 672
    :cond_26a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->notificationsServiceConnectionRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1900(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_296

    .line 673
    const-string v2, "NotificationsServiceConnection"

    const v3, 0x7f0703ce

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "NotificationsServiceConnectionInfo"

    const v4, 0x7f0703cf

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pushConnection"

    const/4 v5, 0x1

    invoke-interface {v12, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    goto/16 :goto_7

    .line 674
    :cond_296
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->badgeNumberRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1800(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_2b8

    .line 675
    const-string v2, "BadgeNumber"

    const v3, 0x7f0700d0

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "badgeNumber"

    const/4 v4, 0x1

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    .line 676
    :cond_2b8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->inchatSoundRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_2da

    .line 677
    const-string v2, "InChatSound"

    const v3, 0x7f070291

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "EnableInChatSound"

    const/4 v4, 0x1

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    .line 678
    :cond_2da
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->callsVibrateRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2700(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_7

    .line 679
    const-string v2, "Vibrate"

    const v3, 0x7f070573

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "EnableCallVibrate"

    const/4 v4, 0x1

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    .line 684
    .end local v1    # "checkCell":Lorg/telegram/ui/Cells/TextCheckCell;
    .end local v12    # "preferences":Landroid/content/SharedPreferences;
    :pswitch_2fc
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v13, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .line 685
    .local v13, "settingsCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 686
    const-string v2, "ResetAllNotifications"

    const v3, 0x7f070493

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UndoAllCustom"

    const v4, 0x7f07054f

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v13, v2, v3, v4}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 690
    .end local v13    # "settingsCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    :pswitch_31e
    move-object/from16 v0, p1

    iget-object v15, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v15, Lorg/telegram/ui/Cells/TextColorCell;

    .line 691
    .local v15, "textColorCell":Lorg/telegram/ui/Cells/TextColorCell;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "Notifications"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 693
    .restart local v12    # "preferences":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messageLedRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_360

    .line 694
    const-string v2, "MessagesLed"

    const v3, -0xffff01

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 698
    .local v8, "color":I
    :goto_342
    const/4 v7, 0x0

    .local v7, "a":I
    :goto_343
    const/16 v2, 0x9

    if-ge v7, v2, :cond_351

    .line 699
    sget-object v2, Lorg/telegram/ui/Cells/TextColorCell;->colorsToSave:[I

    aget v2, v2, v7

    if-ne v2, v8, :cond_36a

    .line 700
    sget-object v2, Lorg/telegram/ui/Cells/TextColorCell;->colors:[I

    aget v8, v2, v7

    .line 704
    :cond_351
    const-string v2, "LedColor"

    const v3, 0x7f0702dc

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v15, v2, v8, v3}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_7

    .line 696
    .end local v7    # "a":I
    .end local v8    # "color":I
    :cond_360
    const-string v2, "GroupLed"

    const v3, -0xffff01

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .restart local v8    # "color":I
    goto :goto_342

    .line 698
    .restart local v7    # "a":I
    :cond_36a
    add-int/lit8 v7, v7, 0x1

    goto :goto_343

    .line 708
    .end local v7    # "a":I
    .end local v8    # "color":I
    .end local v12    # "preferences":Landroid/content/SharedPreferences;
    .end local v15    # "textColorCell":Lorg/telegram/ui/Cells/TextColorCell;
    :pswitch_36d
    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 709
    .local v14, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "Notifications"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 710
    .restart local v12    # "preferences":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messageSoundRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-eq v0, v2, :cond_3a0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupSoundRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-eq v0, v2, :cond_3a0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->callsRingtoneRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_436

    .line 711
    :cond_3a0
    const/16 v16, 0x0

    .line 712
    .local v16, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messageSoundRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_3ed

    .line 713
    const-string v2, "GlobalSound"

    const-string v3, "SoundDefault"

    const v4, 0x7f07051c

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 719
    :cond_3bd
    :goto_3bd
    const-string v2, "NoSound"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d0

    .line 720
    const-string v2, "NoSound"

    const v3, 0x7f07036f

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 722
    :cond_3d0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->callsRingtoneRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_425

    .line 723
    const-string v2, "VoipSettingsRingtone"

    const v3, 0x7f070599

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v14, v2, v0, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 714
    :cond_3ed
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupSoundRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_409

    .line 715
    const-string v2, "GroupSound"

    const-string v3, "SoundDefault"

    const v4, 0x7f07051c

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto :goto_3bd

    .line 716
    :cond_409
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->callsRingtoneRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_3bd

    .line 717
    const-string v2, "CallsRingtone"

    const-string v3, "DefaultRingtone"

    const v4, 0x7f0701c6

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto :goto_3bd

    .line 725
    :cond_425
    const-string v2, "Sound"

    const v3, 0x7f07051b

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v14, v2, v0, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 727
    .end local v16    # "value":Ljava/lang/String;
    :cond_436
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messageVibrateRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-eq v0, v2, :cond_45a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupVibrateRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-eq v0, v2, :cond_45a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->callsVibrateRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2700(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_525

    .line 728
    :cond_45a
    const/16 v16, 0x0

    .line 729
    .local v16, "value":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messageVibrateRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_489

    .line 730
    const-string v2, "vibrate_messages"

    const/4 v3, 0x0

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 736
    :cond_46f
    :goto_46f
    if-nez v16, :cond_4b1

    .line 737
    const-string v2, "Vibrate"

    const v3, 0x7f070573

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "VibrationDefault"

    const v4, 0x7f070574

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v3, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 731
    :cond_489
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupVibrateRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_49d

    .line 732
    const-string v2, "vibrate_group"

    const/4 v3, 0x0

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    goto :goto_46f

    .line 733
    :cond_49d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->callsVibrateRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2700(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_46f

    .line 734
    const-string v2, "vibrate_calls"

    const/4 v3, 0x0

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    goto :goto_46f

    .line 738
    :cond_4b1
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_4ce

    .line 739
    const-string v2, "Vibrate"

    const v3, 0x7f070573

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Short"

    const v4, 0x7f07050c

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v3, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 740
    :cond_4ce
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_4eb

    .line 741
    const-string v2, "Vibrate"

    const v3, 0x7f070573

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "VibrationDisabled"

    const v4, 0x7f070575

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v3, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 742
    :cond_4eb
    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_508

    .line 743
    const-string v2, "Vibrate"

    const v3, 0x7f070573

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Long"

    const v4, 0x7f0702f9

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v3, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 744
    :cond_508
    const/4 v2, 0x4

    move/from16 v0, v16

    if-ne v0, v2, :cond_7

    .line 745
    const-string v2, "Vibrate"

    const v3, 0x7f070573

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "OnlyIfSilent"

    const v4, 0x7f0703dd

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v3, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 747
    .end local v16    # "value":I
    :cond_525
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->repeatRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_569

    .line 748
    const-string v2, "repeat_messages"

    const/16 v3, 0x3c

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 750
    .local v10, "minutes":I
    if-nez v10, :cond_555

    .line 751
    const-string v2, "RepeatNotificationsNever"

    const v3, 0x7f07047e

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 757
    .local v16, "value":Ljava/lang/String;
    :goto_544
    const-string v2, "RepeatNotifications"

    const v3, 0x7f07047d

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v2, v0, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 752
    .end local v16    # "value":Ljava/lang/String;
    :cond_555
    const/16 v2, 0x3c

    if-ge v10, v2, :cond_560

    .line 753
    const-string v2, "Minutes"

    invoke-static {v2, v10}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "value":Ljava/lang/String;
    goto :goto_544

    .line 755
    .end local v16    # "value":Ljava/lang/String;
    :cond_560
    const-string v2, "Hours"

    div-int/lit8 v3, v10, 0x3c

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "value":Ljava/lang/String;
    goto :goto_544

    .line 758
    .end local v10    # "minutes":I
    .end local v16    # "value":Ljava/lang/String;
    :cond_569
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messagePriorityRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2800(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-eq v0, v2, :cond_581

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupPriorityRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2900(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_5fe

    .line 759
    :cond_581
    const/16 v16, 0x0

    .line 760
    .local v16, "value":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messagePriorityRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2800(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_5b0

    .line 761
    const-string v2, "priority_messages"

    const/4 v3, 0x1

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 765
    :cond_596
    :goto_596
    if-nez v16, :cond_5c4

    .line 766
    const-string v2, "NotificationsPriority"

    const v3, 0x7f0703c7

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "NotificationsPriorityDefault"

    const v4, 0x7f0703c8

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v14, v2, v3, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 762
    :cond_5b0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupPriorityRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2900(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_596

    .line 763
    const-string v2, "priority_group"

    const/4 v3, 0x1

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    goto :goto_596

    .line 767
    :cond_5c4
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_5e1

    .line 768
    const-string v2, "NotificationsPriority"

    const v3, 0x7f0703c7

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "NotificationsPriorityHigh"

    const v4, 0x7f0703c9

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v14, v2, v3, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 769
    :cond_5e1
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_7

    .line 770
    const-string v2, "NotificationsPriority"

    const v3, 0x7f0703c7

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "NotificationsPriorityMax"

    const v4, 0x7f0703cb

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v14, v2, v3, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 772
    .end local v16    # "value":I
    :cond_5fe
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messagePopupNotificationRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-eq v0, v2, :cond_616

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupPopupNotificationRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_7

    .line 773
    :cond_616
    const/4 v11, 0x0

    .line 774
    .local v11, "option":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->messagePopupNotificationRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_646

    .line 775
    const-string v2, "popupAll"

    const/4 v3, 0x0

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 780
    :cond_62a
    :goto_62a
    if-nez v11, :cond_65a

    .line 781
    const-string v2, "NoPopup"

    const v3, 0x7f070364

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 789
    .local v16, "value":Ljava/lang/String;
    :goto_635
    const-string v2, "PopupNotification"

    const v3, 0x7f070468

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v14, v2, v0, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 776
    .end local v16    # "value":Ljava/lang/String;
    :cond_646
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    # getter for: Lorg/telegram/ui/NotificationsSettingsActivity;->groupPopupNotificationRow:I
    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_62a

    .line 777
    const-string v2, "popupGroup"

    const/4 v3, 0x0

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    goto :goto_62a

    .line 782
    :cond_65a
    const/4 v2, 0x1

    if-ne v11, v2, :cond_667

    .line 783
    const-string v2, "OnlyWhenScreenOn"

    const v3, 0x7f0703df

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "value":Ljava/lang/String;
    goto :goto_635

    .line 784
    .end local v16    # "value":Ljava/lang/String;
    :cond_667
    const/4 v2, 0x2

    if-ne v11, v2, :cond_674

    .line 785
    const-string v2, "OnlyWhenScreenOff"

    const v3, 0x7f0703de

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "value":Ljava/lang/String;
    goto :goto_635

    .line 787
    .end local v16    # "value":Ljava/lang/String;
    :cond_674
    const-string v2, "AlwaysShowPopup"

    const v3, 0x7f070085

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "value":Ljava/lang/String;
    goto :goto_635

    .line 625
    :pswitch_data_67e
    .packed-switch 0x0
        :pswitch_8
        :pswitch_c0
        :pswitch_2fc
        :pswitch_31e
        :pswitch_7
        :pswitch_36d
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 594
    packed-switch p2, :pswitch_data_66

    .line 616
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 617
    .local v0, "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 620
    :goto_13
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 596
    .end local v0    # "view":Landroid/view/View;
    :pswitch_19
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 597
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_13

    .line 600
    .end local v0    # "view":Landroid/view/View;
    :pswitch_2a
    new-instance v0, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 601
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_13

    .line 604
    .end local v0    # "view":Landroid/view/View;
    :pswitch_3b
    new-instance v0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    .line 605
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_13

    .line 608
    .end local v0    # "view":Landroid/view/View;
    :pswitch_4c
    new-instance v0, Lorg/telegram/ui/Cells/TextColorCell;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextColorCell;-><init>(Landroid/content/Context;)V

    .line 609
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_13

    .line 612
    .end local v0    # "view":Landroid/view/View;
    :pswitch_5d
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 613
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_13

    .line 594
    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_19
        :pswitch_2a
        :pswitch_3b
        :pswitch_4c
        :pswitch_5d
    .end packed-switch
.end method
