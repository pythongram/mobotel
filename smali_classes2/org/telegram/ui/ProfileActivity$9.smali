.class Lorg/telegram/ui/ProfileActivity$9;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 808
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .registers 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const v12, 0x7f0702b8

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 811
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I
    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v7

    if-le p2, v7, :cond_17b

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->membersEndRow:I
    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->access$2300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v7

    if-ge p2, v7, :cond_17b

    .line 812
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v7}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    if-nez v7, :cond_1e

    .line 911
    :cond_1d
    :goto_1d
    return v9

    .line 815
    :cond_1e
    const/4 v0, 0x0

    .line 816
    .local v0, "allowKick":Z
    const/4 v1, 0x0

    .line 819
    .local v1, "allowSetAdmin":Z
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->sortedUsers:Ljava/util/ArrayList;
    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->access$2400(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e5

    .line 820
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->access$900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v10, v7, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->sortedUsers:Ljava/util/ArrayList;
    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->access$2400(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v11, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I
    invoke-static {v11}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v11

    sub-int v11, p2, v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 824
    .local v6, "user":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :goto_56
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget v10, v6, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    # setter for: Lorg/telegram/ui/ProfileActivity;->selectedUser:I
    invoke-static {v7, v10}, Lorg/telegram/ui/ProfileActivity;->access$3402(Lorg/telegram/ui/ProfileActivity;I)I

    .line 826
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->access$400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-eqz v7, :cond_11d

    move-object v7, v6

    .line 827
    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    iget-object v3, v7, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 828
    .local v3, "channelParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    iget v7, v6, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v10

    if-eq v7, v10, :cond_81

    .line 829
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->access$400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v7, :cond_101

    .line 830
    const/4 v0, 0x1

    .line 837
    :cond_81
    :goto_81
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget v10, v6, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    .line 838
    .local v5, "u":Lorg/telegram/tgnet/TLRPC$User;
    instance-of v7, v3, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant;

    if-eqz v7, :cond_11a

    iget-boolean v7, v5, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v7, :cond_11a

    move v1, v8

    .line 850
    .end local v3    # "channelParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .end local v5    # "u":Lorg/telegram/tgnet/TLRPC$User;
    :cond_98
    :goto_98
    if-eqz v0, :cond_1d

    .line 853
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v7}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 854
    .local v2, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->access$400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v7, :cond_155

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->access$400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v7, :cond_155

    if-eqz v1, :cond_155

    .line 855
    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/CharSequence;

    const-string v7, "SetAsAdmin"

    const v10, 0x7f0704f8

    invoke-static {v7, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v9

    const-string v7, "KickFromGroup"

    invoke-static {v7, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v8

    .line 856
    .local v4, "items":[Ljava/lang/CharSequence;
    new-instance v7, Lorg/telegram/ui/ProfileActivity$9$1;

    invoke-direct {v7, p0, v6}, Lorg/telegram/ui/ProfileActivity$9$1;-><init>(Lorg/telegram/ui/ProfileActivity$9;Lorg/telegram/tgnet/TLRPC$ChatParticipant;)V

    invoke-virtual {v2, v4, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 908
    :goto_d9
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/telegram/ui/ProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move v9, v8

    .line 909
    goto/16 :goto_1d

    .line 822
    .end local v2    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v4    # "items":[Ljava/lang/CharSequence;
    .end local v6    # "user":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_e5
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->access$900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    iget-object v10, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->emptyRowChat2:I
    invoke-static {v10}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v10

    sub-int v10, p2, v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .restart local v6    # "user":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    goto/16 :goto_56

    .line 831
    .restart local v3    # "channelParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_101
    instance-of v7, v3, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant;

    if-eqz v7, :cond_81

    .line 832
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->access$400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    if-nez v7, :cond_117

    iget v7, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->inviter_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v10

    if-ne v7, v10, :cond_81

    .line 833
    :cond_117
    const/4 v0, 0x1

    goto/16 :goto_81

    .restart local v5    # "u":Lorg/telegram/tgnet/TLRPC$User;
    :cond_11a
    move v1, v9

    .line 838
    goto/16 :goto_98

    .line 840
    .end local v3    # "channelParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .end local v5    # "u":Lorg/telegram/tgnet/TLRPC$User;
    :cond_11d
    iget v7, v6, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v10

    if-eq v7, v10, :cond_98

    .line 841
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->access$400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v7, :cond_132

    .line 842
    const/4 v0, 0x1

    goto/16 :goto_98

    .line 843
    :cond_132
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    if-eqz v7, :cond_98

    .line 844
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->access$400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->admin:Z

    if-eqz v7, :cond_14a

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->access$400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-nez v7, :cond_152

    :cond_14a
    iget v7, v6, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v10

    if-ne v7, v10, :cond_98

    .line 845
    :cond_152
    const/4 v0, 0x1

    goto/16 :goto_98

    .line 898
    .restart local v2    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_155
    new-array v4, v8, [Ljava/lang/CharSequence;

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->chat_id:I
    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v7

    if-lez v7, :cond_171

    const-string v7, "KickFromGroup"

    invoke-static {v7, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    :goto_165
    aput-object v7, v4, v9

    .line 899
    .restart local v4    # "items":[Ljava/lang/CharSequence;
    new-instance v7, Lorg/telegram/ui/ProfileActivity$9$2;

    invoke-direct {v7, p0}, Lorg/telegram/ui/ProfileActivity$9$2;-><init>(Lorg/telegram/ui/ProfileActivity$9;)V

    invoke-virtual {v2, v4, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_d9

    .line 898
    .end local v4    # "items":[Ljava/lang/CharSequence;
    :cond_171
    const-string v7, "KickFromBroadcast"

    const v10, 0x7f0702b7

    invoke-static {v7, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_165

    .line 911
    .end local v0    # "allowKick":Z
    .end local v1    # "allowSetAdmin":Z
    .end local v2    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v6    # "user":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_17b
    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # invokes: Lorg/telegram/ui/ProfileActivity;->processOnClickOrPress(I)Z
    invoke-static {v7, p2}, Lorg/telegram/ui/ProfileActivity;->access$3300(Lorg/telegram/ui/ProfileActivity;I)Z

    move-result v9

    goto/16 :goto_1d
.end method
