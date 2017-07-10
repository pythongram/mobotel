.class Lorg/telegram/ui/ProfileActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2548
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 2549
    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 2550
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 2860
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->rowCount:I
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$6700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x0

    .line 2865
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->emptyRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$6800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_19

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->emptyRowChat:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$6100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_19

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1a

    .line 2884
    :cond_19
    :goto_19
    return v0

    .line 2867
    :cond_1a
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->sectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$6900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2a

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->userSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$7000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne p1, v1, :cond_2c

    .line 2868
    :cond_2a
    const/4 v0, 0x1

    goto :goto_19

    .line 2869
    :cond_2c
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->phoneRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$6200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_44

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->usernameRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$6300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_44

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->channelNameRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne p1, v1, :cond_46

    .line 2870
    :cond_44
    const/4 v0, 0x2

    goto :goto_19

    .line 2871
    :cond_46
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->leaveChannelRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_a6

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->sharedMediaRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$1300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_a6

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->settingsTimerRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$1700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_a6

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->settingsNotificationsRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$1800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_a6

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->startSecretChatRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_a6

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->settingsKeyRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$1600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_a6

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->membersRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_a6

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->managementRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_a6

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->blockedUsersRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$3000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_a6

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->convertRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$3200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_a6

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->addMemberRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_a6

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->groupsInCommonRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$1500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne p1, v1, :cond_a9

    .line 2872
    :cond_a6
    const/4 v0, 0x3

    goto/16 :goto_19

    .line 2873
    :cond_a9
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-le p1, v1, :cond_bc

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->membersEndRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ge p1, v1, :cond_bc

    .line 2874
    const/4 v0, 0x4

    goto/16 :goto_19

    .line 2875
    :cond_bc
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->membersSectionRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$7100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne p1, v1, :cond_c7

    .line 2876
    const/4 v0, 0x5

    goto/16 :goto_19

    .line 2877
    :cond_c7
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->convertHelpRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$7200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne p1, v1, :cond_d2

    .line 2878
    const/4 v0, 0x6

    goto/16 :goto_19

    .line 2879
    :cond_d2
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->loadMoreMembersRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$4300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne p1, v1, :cond_dd

    .line 2880
    const/4 v0, 0x7

    goto/16 :goto_19

    .line 2881
    :cond_dd
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->userInfoRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$6600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_ed

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->channelInfoRow:I
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$4600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne p1, v1, :cond_19

    .line 2882
    :cond_ed
    const/16 v0, 0x8

    goto/16 :goto_19
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .registers 6
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2846
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 2847
    .local v0, "i":I
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eqz v3, :cond_58

    .line 2848
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->phoneRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$6200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_56

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->settingsTimerRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$1700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_56

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->settingsKeyRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$1600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_56

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->settingsNotificationsRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$1800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_56

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 2849
    # getter for: Lorg/telegram/ui/ProfileActivity;->sharedMediaRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$1300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_56

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->startSecretChatRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_56

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->usernameRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$6300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_56

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->userInfoRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$6600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_56

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->groupsInCommonRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$1500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v0, v3, :cond_57

    :cond_56
    move v1, v2

    .line 2855
    :cond_57
    :goto_57
    return v1

    .line 2850
    :cond_58
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->chat_id:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eqz v3, :cond_57

    .line 2851
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->convertRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$3200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_c0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->settingsNotificationsRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$1800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_c0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->sharedMediaRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$1300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_c0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-le v0, v3, :cond_88

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->membersEndRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-lt v0, v3, :cond_c0

    :cond_88
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 2852
    # getter for: Lorg/telegram/ui/ProfileActivity;->addMemberRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_c0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->channelNameRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_c0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->leaveChannelRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_c0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->membersRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_c0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->managementRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_c0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 2853
    # getter for: Lorg/telegram/ui/ProfileActivity;->blockedUsersRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$3000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_c0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->channelInfoRow:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$4600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v0, v3, :cond_57

    :cond_c0
    move v1, v2

    goto :goto_57
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .registers 39
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "i"    # I

    .prologue
    .line 2623
    const/4 v9, 0x1

    .line 2624
    .local v9, "checkBackground":Z
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v28

    packed-switch v28, :pswitch_data_a04

    .line 2842
    :cond_8
    :goto_8
    :pswitch_8
    return-void

    .line 2626
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->emptyRowChat:I
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$6100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v28

    move/from16 v0, p2

    move/from16 v1, v28

    if-eq v0, v1, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v28

    move/from16 v0, p2

    move/from16 v1, v28

    if-ne v0, v1, :cond_3b

    .line 2627
    :cond_29
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v28, v0

    check-cast v28, Lorg/telegram/ui/Cells/EmptyCell;

    const/high16 v29, 0x41000000    # 8.0f

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto :goto_8

    .line 2629
    :cond_3b
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v28, v0

    check-cast v28, Lorg/telegram/ui/Cells/EmptyCell;

    const/high16 v29, 0x42100000    # 36.0f

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto :goto_8

    .line 2633
    :pswitch_4d
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v22, v0

    check-cast v22, Lorg/telegram/ui/Cells/TextDetailCell;

    .line 2634
    .local v22, "textDetailCell":Lorg/telegram/ui/Cells/TextDetailCell;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->phoneRow:I
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$6200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v28

    move/from16 v0, p2

    move/from16 v1, v28

    if-ne v0, v1, :cond_d3

    .line 2636
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v23

    .line 2637
    .local v23, "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_c9

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    if-eqz v28, :cond_c9

    .line 2638
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "+"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2642
    .local v20, "text":Ljava/lang/String;
    :goto_b0
    const-string v28, "PhoneMobile"

    const v29, 0x7f070444

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    const v29, 0x7f020235

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 2640
    .end local v20    # "text":Ljava/lang/String;
    :cond_c9
    const-string v28, "NumberUnknown"

    const v29, 0x7f0703d3

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "text":Ljava/lang/String;
    goto :goto_b0

    .line 2643
    .end local v20    # "text":Ljava/lang/String;
    .end local v23    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_d3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->usernameRow:I
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$6300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v28

    move/from16 v0, p2

    move/from16 v1, v28

    if-ne v0, v1, :cond_13f

    .line 2645
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v23

    .line 2646
    .restart local v23    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v23, :cond_13c

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_13c

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    if-eqz v28, :cond_13c

    .line 2647
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "@"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 2651
    .restart local v20    # "text":Ljava/lang/String;
    :goto_128
    const-string v28, "Username"

    const v29, 0x7f070561

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2649
    .end local v20    # "text":Ljava/lang/String;
    :cond_13c
    const-string v20, "-"

    .restart local v20    # "text":Ljava/lang/String;
    goto :goto_128

    .line 2652
    .end local v20    # "text":Ljava/lang/String;
    .end local v23    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_13f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->channelNameRow:I
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$2700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v28

    move/from16 v0, p2

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    .line 2654
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v28

    if-eqz v28, :cond_1e2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1e2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    if-eqz v28, :cond_1e2

    .line 2655
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "@"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 2659
    .restart local v20    # "text":Ljava/lang/String;
    :goto_1a6
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2657
    .end local v20    # "text":Ljava/lang/String;
    :cond_1e2
    const-string v20, "-"

    .restart local v20    # "text":Ljava/lang/String;
    goto :goto_1a6

    .line 2663
    .end local v20    # "text":Ljava/lang/String;
    .end local v22    # "textDetailCell":Lorg/telegram/ui/Cells/TextDetailCell;
    :pswitch_1e5
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v21, v0

    check-cast v21, Lorg/telegram/ui/Cells/TextCell;

    .line 2664
    .local v21, "textCell":Lorg/telegram/ui/Cells/TextCell;
    const-string v28, "windowBackgroundWhiteBlackText"

    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v28

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextColor(I)V

    .line 2665
    const-string v28, "windowBackgroundWhiteBlackText"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setTag(Ljava/lang/Object;)V

    .line 2667
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->sharedMediaRow:I
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$1300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v28

    move/from16 v0, p2

    move/from16 v1, v28

    if-ne v0, v1, :cond_2bd

    .line 2669
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->totalMediaCount:I
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$6400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v28

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_267

    .line 2670
    const-string v28, "Loading"

    const v29, 0x7f0702eb

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v27

    .line 2674
    .local v27, "value":Ljava/lang/String;
    :goto_22e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v28

    if-eqz v28, :cond_2a9

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2a9

    .line 2675
    const-string v28, "SharedMedia"

    const v29, 0x7f070509

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    const v29, 0x7f020234

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 2672
    .end local v27    # "value":Ljava/lang/String;
    :cond_267
    const-string v29, "%d"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->totalMediaCount:I
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$6400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->totalMediaCountMerge:I
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$6500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v28

    const/16 v33, -0x1

    move/from16 v0, v28

    move/from16 v1, v33

    if-eq v0, v1, :cond_2a6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->totalMediaCountMerge:I
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$6500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v28

    :goto_299
    add-int v28, v28, v32

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    .restart local v27    # "value":Ljava/lang/String;
    goto :goto_22e

    .end local v27    # "value":Ljava/lang/String;
    :cond_2a6
    const/16 v28, 0x0

    goto :goto_299

    .line 2677
    .restart local v27    # "value":Ljava/lang/String;
    :cond_2a9
    const-string v28, "SharedMedia"

    const v29, 0x7f070509

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2679
    .end local v27    # "value":Ljava/lang/String;
    :cond_2bd
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->groupsInCommonRow:I
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$1500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v28

    move/from16 v0, p2

    move/from16 v1, v28

    if-ne v0, v1, :cond_314

    .line 2680
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/messenger/MessagesController;->getUserFull(I)Lorg/telegram/tgnet/TLRPC$TL_userFull;

    move-result-object v25

    .line 2681
    .local v25, "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    const-string v28, "GroupsInCommon"

    const v29, 0x7f070279

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    const-string v30, "%d"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    if-eqz v25, :cond_311

    move-object/from16 v0, v25

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->common_chats_count:I

    move/from16 v28, v0

    :goto_2fc
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_311
    const/16 v28, 0x0

    goto :goto_2fc

    .line 2682
    .end local v25    # "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    :cond_314
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->settingsTimerRow:I
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$1700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v28

    move/from16 v0, p2

    move/from16 v1, v28

    if-ne v0, v1, :cond_36f

    .line 2683
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->dialog_id:J
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$1400(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v30

    const/16 v29, 0x20

    shr-long v30, v30, v29

    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v15

    .line 2685
    .local v15, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    move/from16 v28, v0

    if-nez v28, :cond_366

    .line 2686
    const-string v28, "ShortMessageLifetimeForever"

    const v29, 0x7f07050d

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v27

    .line 2690
    .restart local v27    # "value":Ljava/lang/String;
    :goto_352
    const-string v28, "MessageLifetime"

    const v29, 0x7f070313

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2688
    .end local v27    # "value":Ljava/lang/String;
    :cond_366
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v27

    .restart local v27    # "value":Ljava/lang/String;
    goto :goto_352

    .line 2691
    .end local v15    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v27    # "value":Ljava/lang/String;
    :cond_36f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->settingsNotificationsRow:I
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$1800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v28

    move/from16 v0, p2

    move/from16 v1, v28

    if-ne v0, v1, :cond_5c9

    .line 2692
    sget-object v28, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v29, "Notifications"

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 2695
    .local v19, "preferences":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->dialog_id:J
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$1400(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v28

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-eqz v28, :cond_464

    .line 2696
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->dialog_id:J
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$1400(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v12

    .line 2703
    .local v12, "did":J
    :goto_3a3
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "custom_"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 2704
    .local v10, "custom":Z
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "notify2_"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v16

    .line 2705
    .local v16, "hasOverride":Z
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "notify2_"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v27

    .line 2706
    .local v27, "value":I
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "notifyuntil_"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 2708
    .local v11, "delta":I
    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_543

    const v28, 0x7fffffff

    move/from16 v0, v28

    if-eq v11, v0, :cond_543

    .line 2709
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v28

    sub-int v11, v11, v28

    .line 2710
    if-gtz v11, :cond_49d

    .line 2711
    if-eqz v10, :cond_493

    .line 2712
    const-string v28, "NotificationsCustom"

    const v29, 0x7f0703bd

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .line 2749
    .local v26, "val":Ljava/lang/String;
    :goto_449
    if-eqz v26, :cond_5a7

    .line 2750
    const-string v28, "Notifications"

    const v29, 0x7f0703bb

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    const v29, 0x7f020234

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 2697
    .end local v10    # "custom":Z
    .end local v11    # "delta":I
    .end local v12    # "did":J
    .end local v16    # "hasOverride":Z
    .end local v26    # "val":Ljava/lang/String;
    .end local v27    # "value":I
    :cond_464
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v28

    if-eqz v28, :cond_47f

    .line 2698
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v28

    move/from16 v0, v28

    int-to-long v12, v0

    .restart local v12    # "did":J
    goto/16 :goto_3a3

    .line 2700
    .end local v12    # "did":J
    :cond_47f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->chat_id:I
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v28

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-long v12, v0

    .restart local v12    # "did":J
    goto/16 :goto_3a3

    .line 2714
    .restart local v10    # "custom":Z
    .restart local v11    # "delta":I
    .restart local v16    # "hasOverride":Z
    .restart local v27    # "value":I
    :cond_493
    const-string v28, "NotificationsOn"

    const v29, 0x7f0703c5

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .restart local v26    # "val":Ljava/lang/String;
    goto :goto_449

    .line 2716
    .end local v26    # "val":Ljava/lang/String;
    :cond_49d
    const/16 v28, 0xe10

    move/from16 v0, v28

    if-ge v11, v0, :cond_4c1

    .line 2717
    const-string v28, "WillUnmuteIn"

    const v29, 0x7f0705af

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const-string v32, "Minutes"

    div-int/lit8 v33, v11, 0x3c

    invoke-static/range {v32 .. v33}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v28 .. v30}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .restart local v26    # "val":Ljava/lang/String;
    goto :goto_449

    .line 2718
    .end local v26    # "val":Ljava/lang/String;
    :cond_4c1
    const v28, 0x15180

    move/from16 v0, v28

    if-ge v11, v0, :cond_4fe

    .line 2719
    const-string v28, "WillUnmuteIn"

    const v29, 0x7f0705af

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const-string v32, "Hours"

    int-to-float v0, v11

    move/from16 v33, v0

    const/high16 v34, 0x42700000    # 60.0f

    div-float v33, v33, v34

    const/high16 v34, 0x42700000    # 60.0f

    div-float v33, v33, v34

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-int v0, v0

    move/from16 v33, v0

    invoke-static/range {v32 .. v33}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v28 .. v30}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .restart local v26    # "val":Ljava/lang/String;
    goto/16 :goto_449

    .line 2720
    .end local v26    # "val":Ljava/lang/String;
    :cond_4fe
    const v28, 0x1e13380

    move/from16 v0, v28

    if-ge v11, v0, :cond_53f

    .line 2721
    const-string v28, "WillUnmuteIn"

    const v29, 0x7f0705af

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const-string v32, "Days"

    int-to-float v0, v11

    move/from16 v33, v0

    const/high16 v34, 0x42700000    # 60.0f

    div-float v33, v33, v34

    const/high16 v34, 0x42700000    # 60.0f

    div-float v33, v33, v34

    const/high16 v34, 0x41c00000    # 24.0f

    div-float v33, v33, v34

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-int v0, v0

    move/from16 v33, v0

    invoke-static/range {v32 .. v33}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v28 .. v30}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .restart local v26    # "val":Ljava/lang/String;
    goto/16 :goto_449

    .line 2723
    .end local v26    # "val":Ljava/lang/String;
    :cond_53f
    const/16 v26, 0x0

    .restart local v26    # "val":Ljava/lang/String;
    goto/16 :goto_449

    .line 2726
    .end local v26    # "val":Ljava/lang/String;
    :cond_543
    if-nez v27, :cond_57a

    .line 2727
    if-eqz v16, :cond_557

    .line 2728
    const/4 v14, 0x1

    .line 2743
    .local v14, "enabled":Z
    :goto_548
    if-eqz v14, :cond_590

    if-eqz v10, :cond_590

    .line 2744
    const-string v28, "NotificationsCustom"

    const v29, 0x7f0703bd

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .restart local v26    # "val":Ljava/lang/String;
    goto/16 :goto_449

    .line 2730
    .end local v14    # "enabled":Z
    .end local v26    # "val":Ljava/lang/String;
    :cond_557
    long-to-int v0, v12

    move/from16 v28, v0

    if-gez v28, :cond_56b

    .line 2731
    const-string v28, "EnableGroup"

    const/16 v29, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .restart local v14    # "enabled":Z
    goto :goto_548

    .line 2733
    .end local v14    # "enabled":Z
    :cond_56b
    const-string v28, "EnableAll"

    const/16 v29, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .restart local v14    # "enabled":Z
    goto :goto_548

    .line 2736
    .end local v14    # "enabled":Z
    :cond_57a
    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_584

    .line 2737
    const/4 v14, 0x1

    .restart local v14    # "enabled":Z
    goto :goto_548

    .line 2738
    .end local v14    # "enabled":Z
    :cond_584
    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_58e

    .line 2739
    const/4 v14, 0x0

    .restart local v14    # "enabled":Z
    goto :goto_548

    .line 2741
    .end local v14    # "enabled":Z
    :cond_58e
    const/4 v14, 0x0

    .restart local v14    # "enabled":Z
    goto :goto_548

    .line 2746
    :cond_590
    if-eqz v14, :cond_59d

    const-string v28, "NotificationsOn"

    const v29, 0x7f0703c5

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .restart local v26    # "val":Ljava/lang/String;
    :goto_59b
    goto/16 :goto_449

    .end local v26    # "val":Ljava/lang/String;
    :cond_59d
    const-string v28, "NotificationsOff"

    const v29, 0x7f0703c4

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    goto :goto_59b

    .line 2752
    .end local v14    # "enabled":Z
    .restart local v26    # "val":Ljava/lang/String;
    :cond_5a7
    const-string v28, "Notifications"

    const v29, 0x7f0703bb

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    const-string v29, "NotificationsOff"

    const v30, 0x7f0703c4

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    const v30, 0x7f020234

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 2754
    .end local v10    # "custom":Z
    .end local v11    # "delta":I
    .end local v12    # "did":J
    .end local v16    # "hasOverride":Z
    .end local v19    # "preferences":Landroid/content/SharedPreferences;
    .end local v26    # "val":Ljava/lang/String;
    .end local v27    # "value":I
    :cond_5c9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->startSecretChatRow:I
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$2000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v28

    move/from16 v0, p2

    move/from16 v1, v28

    if-ne v0, v1, :cond_601

    .line 2755
    const-string v28, "StartEncryptedChat"

    const v29, 0x7f07051d

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;)V

    .line 2756
    const-string v28, "windowBackgroundWhiteGreenText2"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setTag(Ljava/lang/Object;)V

    .line 2757
    const-string v28, "windowBackgroundWhiteGreenText2"

    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v28

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextColor(I)V

    goto/16 :goto_8

    .line 2758
    :cond_601
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->settingsKeyRow:I
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$1600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v28

    move/from16 v0, p2

    move/from16 v1, v28

    if-ne v0, v1, :cond_64e

    .line 2759
    new-instance v17, Lorg/telegram/ui/Components/IdenticonDrawable;

    invoke-direct/range {v17 .. v17}, Lorg/telegram/ui/Components/IdenticonDrawable;-><init>()V

    .line 2760
    .local v17, "identiconDrawable":Lorg/telegram/ui/Components/IdenticonDrawable;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->dialog_id:J
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$1400(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v30

    const/16 v29, 0x20

    shr-long v30, v30, v29

    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v15

    .line 2761
    .restart local v15    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lorg/telegram/ui/Components/IdenticonDrawable;->setEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 2762
    const-string v28, "EncryptionKey"

    const v29, 0x7f070202

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    .line 2763
    .end local v15    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v17    # "identiconDrawable":Lorg/telegram/ui/Components/IdenticonDrawable;
    :cond_64e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->leaveChannelRow:I
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$2800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v28

    move/from16 v0, p2

    move/from16 v1, v28

    if-ne v0, v1, :cond_686

    .line 2764
    const-string v28, "windowBackgroundWhiteRedText5"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setTag(Ljava/lang/Object;)V

    .line 2765
    const-string v28, "windowBackgroundWhiteRedText5"

    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v28

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextColor(I)V

    .line 2766
    const-string v28, "LeaveChannel"

    const v29, 0x7f0702d8

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2767
    :cond_686
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->convertRow:I
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$3200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v28

    move/from16 v0, p2

    move/from16 v1, v28

    if-ne v0, v1, :cond_6be

    .line 2768
    const-string v28, "UpgradeGroup"

    const v29, 0x7f07055a

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;)V

    .line 2769
    const-string v28, "windowBackgroundWhiteGreenText2"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setTag(Ljava/lang/Object;)V

    .line 2770
    const-string v28, "windowBackgroundWhiteGreenText2"

    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v28

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextColor(I)V

    goto/16 :goto_8

    .line 2771
    :cond_6be
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->membersRow:I
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$2900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v28

    move/from16 v0, p2

    move/from16 v1, v28

    if-ne v0, v1, :cond_726

    .line 2772
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v28

    if-eqz v28, :cond_714

    .line 2773
    const-string v28, "ChannelMembers"

    const v29, 0x7f070130

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    const-string v29, "%d"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v32, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static/range {v32 .. v32}, Lorg/telegram/ui/ProfileActivity;->access$900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2775
    :cond_714
    const-string v28, "ChannelMembers"

    const v29, 0x7f070130

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2777
    :cond_726
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->managementRow:I
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v28

    move/from16 v0, p2

    move/from16 v1, v28

    if-ne v0, v1, :cond_78e

    .line 2778
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v28

    if-eqz v28, :cond_77c

    .line 2779
    const-string v28, "ChannelAdministrators"

    const v29, 0x7f070115

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    const-string v29, "%d"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v32, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static/range {v32 .. v32}, Lorg/telegram/ui/ProfileActivity;->access$900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->admins_count:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2781
    :cond_77c
    const-string v28, "ChannelAdministrators"

    const v29, 0x7f070115

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2783
    :cond_78e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->blockedUsersRow:I
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$3000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v28

    move/from16 v0, p2

    move/from16 v1, v28

    if-ne v0, v1, :cond_7f6

    .line 2784
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v28

    if-eqz v28, :cond_7e4

    .line 2785
    const-string v28, "ChannelBlockedUsers"

    const v29, 0x7f07011a

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    const-string v29, "%d"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v32, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static/range {v32 .. v32}, Lorg/telegram/ui/ProfileActivity;->access$900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->kicked_count:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2787
    :cond_7e4
    const-string v28, "ChannelBlockedUsers"

    const v29, 0x7f07011a

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2789
    :cond_7f6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->addMemberRow:I
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$2500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v28

    move/from16 v0, p2

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    .line 2790
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->chat_id:I
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v28

    if-lez v28, :cond_824

    .line 2791
    const-string v28, "AddMember"

    const v29, 0x7f07006c

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2793
    :cond_824
    const-string v28, "AddRecipient"

    const v29, 0x7f07006e

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2798
    .end local v21    # "textCell":Lorg/telegram/ui/Cells/TextCell;
    :pswitch_836
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v24, v0

    check-cast v24, Lorg/telegram/ui/Cells/UserCell;

    .line 2800
    .local v24, "userCell":Lorg/telegram/ui/Cells/UserCell;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->sortedUsers:Ljava/util/ArrayList;
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$2400(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_8ef

    .line 2801
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->sortedUsers:Ljava/util/ArrayList;
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$2400(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I
    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    sub-int v30, p2, v30

    add-int/lit8 v30, v30, -0x1

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 2805
    .local v18, "part":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :goto_894
    if-eqz v18, :cond_8

    .line 2806
    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    move/from16 v28, v0

    if-eqz v28, :cond_93c

    move-object/from16 v28, v18

    .line 2807
    check-cast v28, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    move-object/from16 v0, v28

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 2808
    .local v8, "channelParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    instance-of v0, v8, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    move/from16 v28, v0

    if-eqz v28, :cond_91b

    .line 2809
    const/16 v28, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/UserCell;->setIsAdmin(I)V

    .line 2824
    .end local v8    # "channelParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :goto_8b5
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v28

    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v29

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v28

    add-int/lit8 v28, v28, 0x1

    move/from16 v0, p2

    move/from16 v1, v28

    if-ne v0, v1, :cond_97f

    const v28, 0x7f0201ca

    :goto_8e0
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Cells/UserCell;->setData(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto/16 :goto_8

    .line 2803
    .end local v18    # "part":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_8ef
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    sub-int v29, p2, v29

    add-int/lit8 v29, v29, -0x1

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .restart local v18    # "part":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    goto/16 :goto_894

    .line 2810
    .restart local v8    # "channelParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_91b
    instance-of v0, v8, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantEditor;

    move/from16 v28, v0

    if-nez v28, :cond_927

    instance-of v0, v8, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantModerator;

    move/from16 v28, v0

    if-eqz v28, :cond_931

    .line 2811
    :cond_927
    const/16 v28, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/UserCell;->setIsAdmin(I)V

    goto :goto_8b5

    .line 2813
    :cond_931
    const/16 v28, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/UserCell;->setIsAdmin(I)V

    goto/16 :goto_8b5

    .line 2816
    .end local v8    # "channelParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_93c
    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    move/from16 v28, v0

    if-eqz v28, :cond_94f

    .line 2817
    const/16 v28, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/UserCell;->setIsAdmin(I)V

    goto/16 :goto_8b5

    .line 2818
    :cond_94f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v28

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    move/from16 v28, v0

    if-eqz v28, :cond_974

    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    move/from16 v28, v0

    if-eqz v28, :cond_974

    .line 2819
    const/16 v28, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/UserCell;->setIsAdmin(I)V

    goto/16 :goto_8b5

    .line 2821
    :cond_974
    const/16 v28, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/UserCell;->setIsAdmin(I)V

    goto/16 :goto_8b5

    .line 2824
    :cond_97f
    const/16 v28, 0x0

    goto/16 :goto_8e0

    .line 2828
    .end local v18    # "part":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .end local v24    # "userCell":Lorg/telegram/ui/Cells/UserCell;
    :pswitch_983
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v7, Lorg/telegram/ui/Cells/AboutLinkCell;

    .line 2829
    .local v7, "aboutLinkCell":Lorg/telegram/ui/Cells/AboutLinkCell;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->userInfoRow:I
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$6600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v28

    move/from16 v0, p2

    move/from16 v1, v28

    if-ne v0, v1, :cond_9bd

    .line 2830
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v29, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/messenger/MessagesController;->getUserFull(I)Lorg/telegram/tgnet/TLRPC$TL_userFull;

    move-result-object v25

    .line 2831
    .restart local v25    # "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    if-eqz v25, :cond_9bb

    move-object/from16 v0, v25

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->about:Ljava/lang/String;

    .line 2832
    .local v6, "about":Ljava/lang/String;
    :goto_9b1
    const v28, 0x7f020233

    move/from16 v0, v28

    invoke-virtual {v7, v6, v0}, Lorg/telegram/ui/Cells/AboutLinkCell;->setTextAndIcon(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 2831
    .end local v6    # "about":Ljava/lang/String;
    :cond_9bb
    const/4 v6, 0x0

    goto :goto_9b1

    .line 2833
    .end local v25    # "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    :cond_9bd
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->channelInfoRow:I
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$4600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v28

    move/from16 v0, p2

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    .line 2834
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v28, v0

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/ProfileActivity;->access$900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 2835
    .restart local v20    # "text":Ljava/lang/String;
    :goto_9dd
    const-string v28, "\n\n\n"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_9f8

    .line 2836
    const-string v28, "\n\n\n"

    const-string v29, "\n\n"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    goto :goto_9dd

    .line 2838
    :cond_9f8
    const v28, 0x7f020233

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v7, v0, v1}, Lorg/telegram/ui/Cells/AboutLinkCell;->setTextAndIcon(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 2624
    :pswitch_data_a04
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_4d
        :pswitch_1e5
        :pswitch_836
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_983
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .registers 13
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const v7, 0x7f0200d6

    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 2554
    const/4 v3, 0x0

    .line 2555
    .local v3, "view":Landroid/view/View;
    packed-switch p2, :pswitch_data_da

    .line 2617
    :goto_9
    new-instance v4, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2618
    new-instance v4, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v4, v3}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v4

    .line 2557
    :pswitch_19
    new-instance v3, Lorg/telegram/ui/Cells/EmptyCell;

    .end local v3    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lorg/telegram/ui/Cells/EmptyCell;-><init>(Landroid/content/Context;)V

    .line 2558
    .restart local v3    # "view":Landroid/view/View;
    goto :goto_9

    .line 2560
    :pswitch_21
    new-instance v3, Lorg/telegram/ui/Cells/DividerCell;

    .end local v3    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lorg/telegram/ui/Cells/DividerCell;-><init>(Landroid/content/Context;)V

    .line 2561
    .restart local v3    # "view":Landroid/view/View;
    const/high16 v4, 0x42900000    # 72.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_9

    .line 2564
    :pswitch_32
    new-instance v3, Lorg/telegram/ui/Cells/TextDetailCell;

    .end local v3    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lorg/telegram/ui/Cells/TextDetailCell;-><init>(Landroid/content/Context;)V

    .line 2565
    .restart local v3    # "view":Landroid/view/View;
    goto :goto_9

    .line 2567
    :pswitch_3a
    new-instance v3, Lorg/telegram/ui/Cells/TextCell;

    .end local v3    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 2568
    .restart local v3    # "view":Landroid/view/View;
    goto :goto_9

    .line 2570
    :pswitch_42
    new-instance v3, Lorg/telegram/ui/Cells/UserCell;

    .end local v3    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/16 v5, 0x3d

    invoke-direct {v3, v4, v5, v9, v6}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZ)V

    .line 2571
    .restart local v3    # "view":Landroid/view/View;
    goto :goto_9

    .line 2573
    :pswitch_4c
    new-instance v3, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .end local v3    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 2574
    .restart local v3    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string v5, "windowBackgroundGrayShadow"

    invoke-static {v4, v7, v5}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2575
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v1, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const-string v5, "windowBackgroundGray"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v1, v4, v2}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2576
    .local v1, "combinedDrawable":Lorg/telegram/ui/Components/CombinedDrawable;
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 2577
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    .line 2581
    .end local v1    # "combinedDrawable":Lorg/telegram/ui/Components/CombinedDrawable;
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :pswitch_72
    new-instance v3, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .end local v3    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .restart local v3    # "view":Landroid/view/View;
    move-object v0, v3

    .line 2582
    check-cast v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 2583
    .local v0, "cell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string v5, "windowBackgroundGrayShadow"

    invoke-static {v4, v7, v5}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2584
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v1, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const-string v5, "windowBackgroundGray"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v1, v4, v2}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2585
    .restart local v1    # "combinedDrawable":Lorg/telegram/ui/Components/CombinedDrawable;
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 2586
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2587
    const-string v4, "ConvertGroupInfo"

    const v5, 0x7f070196

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "Members"

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget v8, v8, Lorg/telegram/messenger/MessagesController;->maxMegagroupCount:I

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 2591
    .end local v0    # "cell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    .end local v1    # "combinedDrawable":Lorg/telegram/ui/Components/CombinedDrawable;
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :pswitch_bc
    new-instance v3, Lorg/telegram/ui/Cells/LoadingCell;

    .end local v3    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lorg/telegram/ui/Cells/LoadingCell;-><init>(Landroid/content/Context;)V

    .line 2592
    .restart local v3    # "view":Landroid/view/View;
    goto/16 :goto_9

    .line 2594
    :pswitch_c5
    new-instance v3, Lorg/telegram/ui/Cells/AboutLinkCell;

    .end local v3    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lorg/telegram/ui/Cells/AboutLinkCell;-><init>(Landroid/content/Context;)V

    .restart local v3    # "view":Landroid/view/View;
    move-object v4, v3

    .line 2595
    check-cast v4, Lorg/telegram/ui/Cells/AboutLinkCell;

    new-instance v5, Lorg/telegram/ui/ProfileActivity$ListAdapter$1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ProfileActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/AboutLinkCell;->setDelegate(Lorg/telegram/ui/Cells/AboutLinkCell$AboutLinkCellDelegate;)V

    goto/16 :goto_9

    .line 2555
    nop

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_19
        :pswitch_21
        :pswitch_32
        :pswitch_3a
        :pswitch_42
        :pswitch_4c
        :pswitch_72
        :pswitch_bc
        :pswitch_c5
    .end packed-switch
.end method
