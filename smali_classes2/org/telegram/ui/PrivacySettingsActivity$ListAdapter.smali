.class Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "PrivacySettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PrivacySettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/PrivacySettingsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PrivacySettingsActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 310
    iput-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 311
    iput-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 312
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I
    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 446
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->lastSeenRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_39

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->blockedRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_39

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_39

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->sessionsRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_39

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->passwordRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$700(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_39

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->passcodeRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$800(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_39

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->groupsRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$600(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_3a

    .line 455
    :cond_39
    :goto_39
    return v0

    .line 448
    :cond_3a
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountDetailRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5a

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->groupsDetailRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5a

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->sessionsDetailRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1500(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5a

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->secretDetailRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1600(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_5c

    .line 449
    :cond_5a
    const/4 v0, 0x1

    goto :goto_39

    .line 450
    :cond_5c
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->securitySectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1800(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_7c

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1900(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_7c

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->privacySectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1700(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_7c

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->secretSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1300(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_7e

    .line 451
    :cond_7c
    const/4 v0, 0x2

    goto :goto_39

    .line 452
    :cond_7e
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->secretWebpageRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$900(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_39

    .line 453
    const/4 v0, 0x3

    goto :goto_39
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 4
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 316
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 317
    .local v0, "position":I
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->passcodeRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$800(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_74

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->passwordRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$700(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_74

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->blockedRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_74

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->sessionsRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_74

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->secretWebpageRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$900(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_74

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    .line 318
    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->groupsRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$600(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-ne v0, v1, :cond_3e

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ContactsController;->getLoadingGroupInfo()Z

    move-result v1

    if-eqz v1, :cond_74

    :cond_3e
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    .line 319
    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->lastSeenRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-ne v0, v1, :cond_50

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ContactsController;->getLoadingLastSeenInfo()Z

    move-result v1

    if-eqz v1, :cond_74

    :cond_50
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    .line 320
    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->callsRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$500(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-ne v0, v1, :cond_62

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ContactsController;->getLoadingCallsInfo()Z

    move-result v1

    if-eqz v1, :cond_74

    :cond_62
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    .line 321
    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountRow:I
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-ne v0, v1, :cond_76

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ContactsController;->getLoadingDeleteInfo()Z

    move-result v1

    if-nez v1, :cond_76

    :cond_74
    const/4 v1, 0x1

    .line 317
    :goto_75
    return v1

    .line 321
    :cond_76
    const/4 v1, 0x0

    goto :goto_75
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 15
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const v6, 0x7f0200d7

    const v7, 0x7f0200d6

    const v11, 0x7f0702eb

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 355
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v10

    packed-switch v10, :pswitch_data_24e

    .line 442
    :cond_12
    :goto_12
    return-void

    .line 357
    :pswitch_13
    iget-object v2, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 358
    .local v2, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v6, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->blockedRow:I
    invoke-static {v6}, Lorg/telegram/ui/PrivacySettingsActivity;->access$000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_2c

    .line 359
    const-string v6, "BlockedUsers"

    const v7, 0x7f0700d3

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto :goto_12

    .line 360
    :cond_2c
    iget-object v6, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->sessionsRow:I
    invoke-static {v6}, Lorg/telegram/ui/PrivacySettingsActivity;->access$100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_41

    .line 361
    const-string v6, "SessionsTitle"

    const v7, 0x7f0704ef

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto :goto_12

    .line 362
    :cond_41
    iget-object v6, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->passwordRow:I
    invoke-static {v6}, Lorg/telegram/ui/PrivacySettingsActivity;->access$700(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_56

    .line 363
    const-string v6, "TwoStepVerification"

    const v7, 0x7f07054a

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto :goto_12

    .line 364
    :cond_56
    iget-object v6, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->passcodeRow:I
    invoke-static {v6}, Lorg/telegram/ui/PrivacySettingsActivity;->access$800(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_6b

    .line 365
    const-string v6, "Passcode"

    const v7, 0x7f0703fc

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto :goto_12

    .line 366
    :cond_6b
    iget-object v6, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->lastSeenRow:I
    invoke-static {v6}, Lorg/telegram/ui/PrivacySettingsActivity;->access$400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_97

    .line 368
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/ContactsController;->getLoadingLastSeenInfo()Z

    move-result v6

    if-eqz v6, :cond_90

    .line 369
    const-string v6, "Loading"

    invoke-static {v6, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 373
    .local v5, "value":Ljava/lang/String;
    :goto_83
    const-string v6, "PrivacyLastSeen"

    const v7, 0x7f07046c

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v5, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_12

    .line 371
    .end local v5    # "value":Ljava/lang/String;
    :cond_90
    iget-object v6, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # invokes: Lorg/telegram/ui/PrivacySettingsActivity;->formatRulesString(I)Ljava/lang/String;
    invoke-static {v6, v9}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1100(Lorg/telegram/ui/PrivacySettingsActivity;I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "value":Ljava/lang/String;
    goto :goto_83

    .line 374
    .end local v5    # "value":Ljava/lang/String;
    :cond_97
    iget-object v6, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->callsRow:I
    invoke-static {v6}, Lorg/telegram/ui/PrivacySettingsActivity;->access$500(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_c5

    .line 376
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/ContactsController;->getLoadingCallsInfo()Z

    move-result v6

    if-eqz v6, :cond_bd

    .line 377
    const-string v6, "Loading"

    invoke-static {v6, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 381
    .restart local v5    # "value":Ljava/lang/String;
    :goto_af
    const-string v6, "Calls"

    const v7, 0x7f0700fb

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v5, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_12

    .line 379
    .end local v5    # "value":Ljava/lang/String;
    :cond_bd
    iget-object v6, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    const/4 v7, 0x2

    # invokes: Lorg/telegram/ui/PrivacySettingsActivity;->formatRulesString(I)Ljava/lang/String;
    invoke-static {v6, v7}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1100(Lorg/telegram/ui/PrivacySettingsActivity;I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "value":Ljava/lang/String;
    goto :goto_af

    .line 382
    .end local v5    # "value":Ljava/lang/String;
    :cond_c5
    iget-object v6, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->groupsRow:I
    invoke-static {v6}, Lorg/telegram/ui/PrivacySettingsActivity;->access$600(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_f2

    .line 384
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/ContactsController;->getLoadingGroupInfo()Z

    move-result v6

    if-eqz v6, :cond_eb

    .line 385
    const-string v6, "Loading"

    invoke-static {v6, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 389
    .restart local v5    # "value":Ljava/lang/String;
    :goto_dd
    const-string v6, "GroupsAndChannels"

    const v7, 0x7f070277

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v5, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_12

    .line 387
    .end local v5    # "value":Ljava/lang/String;
    :cond_eb
    iget-object v6, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # invokes: Lorg/telegram/ui/PrivacySettingsActivity;->formatRulesString(I)Ljava/lang/String;
    invoke-static {v6, v8}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1100(Lorg/telegram/ui/PrivacySettingsActivity;I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "value":Ljava/lang/String;
    goto :goto_dd

    .line 390
    .end local v5    # "value":Ljava/lang/String;
    :cond_f2
    iget-object v6, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountRow:I
    invoke-static {v6}, Lorg/telegram/ui/PrivacySettingsActivity;->access$200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_12

    .line 392
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/ContactsController;->getLoadingDeleteInfo()Z

    move-result v6

    if-eqz v6, :cond_118

    .line 393
    const-string v6, "Loading"

    invoke-static {v6, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 404
    .restart local v5    # "value":Ljava/lang/String;
    :goto_10a
    const-string v6, "DeleteAccountIfAwayFor"

    const v7, 0x7f0701c9

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v5, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_12

    .line 395
    .end local v5    # "value":Ljava/lang/String;
    :cond_118
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/ContactsController;->getDeleteAccountTTL()I

    move-result v4

    .line 396
    .local v4, "ttl":I
    const/16 v6, 0xb6

    if-gt v4, v6, :cond_12d

    .line 397
    const-string v6, "Months"

    div-int/lit8 v7, v4, 0x1e

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "value":Ljava/lang/String;
    goto :goto_10a

    .line 398
    .end local v5    # "value":Ljava/lang/String;
    :cond_12d
    const/16 v6, 0x16d

    if-ne v4, v6, :cond_13a

    .line 399
    const-string v6, "Years"

    div-int/lit16 v7, v4, 0x16d

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "value":Ljava/lang/String;
    goto :goto_10a

    .line 401
    .end local v5    # "value":Ljava/lang/String;
    :cond_13a
    const-string v6, "Days"

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "value":Ljava/lang/String;
    goto :goto_10a

    .line 408
    .end local v2    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    .end local v4    # "ttl":I
    .end local v5    # "value":Ljava/lang/String;
    :pswitch_141
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 409
    .local v1, "privacyCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountDetailRow:I
    invoke-static {v8}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v8

    if-ne p2, v8, :cond_171

    .line 410
    const-string v8, "DeleteAccountHelp"

    const v9, 0x7f0701c8

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->secretSectionRow:I
    invoke-static {v9}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1300(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_16f

    :goto_164
    const-string v7, "windowBackgroundGrayShadow"

    invoke-static {v8, v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_12

    :cond_16f
    move v6, v7

    goto :goto_164

    .line 412
    :cond_171
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->groupsDetailRow:I
    invoke-static {v8}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v8

    if-ne p2, v8, :cond_192

    .line 413
    const-string v6, "GroupsAndChannelsHelp"

    const v8, 0x7f070278

    invoke-static {v6, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iget-object v6, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string v8, "windowBackgroundGrayShadow"

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_12

    .line 415
    :cond_192
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->sessionsDetailRow:I
    invoke-static {v8}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1500(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v8

    if-ne p2, v8, :cond_1b3

    .line 416
    const-string v6, "SessionsInfo"

    const v8, 0x7f0704ee

    invoke-static {v6, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v6, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string v8, "windowBackgroundGrayShadow"

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_12

    .line 418
    :cond_1b3
    iget-object v7, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->secretDetailRow:I
    invoke-static {v7}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1600(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v7

    if-ne p2, v7, :cond_12

    .line 419
    const-string v7, ""

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v7, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string v8, "windowBackgroundGrayShadow"

    invoke-static {v7, v6, v8}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_12

    .line 424
    .end local v1    # "privacyCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    :pswitch_1cd
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/HeaderCell;

    .line 425
    .local v0, "headerCell":Lorg/telegram/ui/Cells/HeaderCell;
    iget-object v6, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->privacySectionRow:I
    invoke-static {v6}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1700(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_1e7

    .line 426
    const-string v6, "PrivacyTitle"

    const v7, 0x7f070470

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 427
    :cond_1e7
    iget-object v6, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->securitySectionRow:I
    invoke-static {v6}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1800(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_1fd

    .line 428
    const-string v6, "SecurityTitle"

    const v7, 0x7f0704cf

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 429
    :cond_1fd
    iget-object v6, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountSectionRow:I
    invoke-static {v6}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1900(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_213

    .line 430
    const-string v6, "DeleteAccountTitle"

    const v7, 0x7f0701cb

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 431
    :cond_213
    iget-object v6, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->secretSectionRow:I
    invoke-static {v6}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1300(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_12

    .line 432
    const-string v6, "SecretChat"

    const v7, 0x7f0704cb

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 436
    .end local v0    # "headerCell":Lorg/telegram/ui/Cells/HeaderCell;
    :pswitch_229
    iget-object v3, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 437
    .local v3, "textCheckCell":Lorg/telegram/ui/Cells/TextCheckCell;
    iget-object v6, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->secretWebpageRow:I
    invoke-static {v6}, Lorg/telegram/ui/PrivacySettingsActivity;->access$900(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_12

    .line 438
    const-string v6, "SecretWebPage"

    const v7, 0x7f0704ce

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v6, v6, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    if-ne v6, v8, :cond_24c

    move v6, v8

    :goto_247
    invoke-virtual {v3, v7, v6, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_12

    :cond_24c
    move v6, v9

    goto :goto_247

    .line 355
    :pswitch_data_24e
    .packed-switch 0x0
        :pswitch_13
        :pswitch_141
        :pswitch_1cd
        :pswitch_229
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 332
    packed-switch p2, :pswitch_data_44

    .line 346
    new-instance v0, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 347
    .local v0, "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 350
    :goto_13
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 334
    .end local v0    # "view":Landroid/view/View;
    :pswitch_19
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 335
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_13

    .line 338
    .end local v0    # "view":Landroid/view/View;
    :pswitch_2a
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 339
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_13

    .line 341
    .end local v0    # "view":Landroid/view/View;
    :pswitch_32
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 342
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_13

    .line 332
    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_19
        :pswitch_2a
        :pswitch_32
    .end packed-switch
.end method
