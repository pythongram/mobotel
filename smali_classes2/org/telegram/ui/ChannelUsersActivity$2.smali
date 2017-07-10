.class Lorg/telegram/ui/ChannelUsersActivity$2;
.super Ljava/lang/Object;
.source "ChannelUsersActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelUsersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelUsersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelUsersActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 150
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 153
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_b5

    .line 154
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isAdmin:Z
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$100(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v9

    if-eqz v9, :cond_50

    .line 155
    if-nez p2, :cond_99

    .line 156
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 157
    .local v1, "args":Landroid/os/Bundle;
    const-string v9, "onlyUsers"

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 158
    const-string v9, "destroyAfterSelect"

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 159
    const-string v9, "returnAsResult"

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    const-string v9, "needForwardCount"

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 161
    const-string v9, "selectAlertString"

    const-string v10, "ChannelAddTo"

    const v11, 0x7f070110

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v6, Lorg/telegram/ui/ContactsActivity;

    invoke-direct {v6, v1}, Lorg/telegram/ui/ContactsActivity;-><init>(Landroid/os/Bundle;)V

    .line 163
    .local v6, "fragment":Lorg/telegram/ui/ContactsActivity;
    new-instance v9, Lorg/telegram/ui/ChannelUsersActivity$2$1;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ChannelUsersActivity$2$1;-><init>(Lorg/telegram/ui/ChannelUsersActivity$2;)V

    invoke-virtual {v6, v9}, Lorg/telegram/ui/ContactsActivity;->setDelegate(Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;)V

    .line 169
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-virtual {v9, v6}, Lorg/telegram/ui/ChannelUsersActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 226
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v6    # "fragment":Lorg/telegram/ui/ContactsActivity;
    :cond_50
    :goto_50
    const/4 v8, 0x0

    .line 227
    .local v8, "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v9

    if-lt p2, v9, :cond_80

    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I
    invoke-static {v10}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v10

    add-int/2addr v9, v10

    if-ge p2, v9, :cond_80

    .line 228
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v9

    iget-object v10, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I
    invoke-static {v10}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v10

    sub-int v10, p2, v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    check-cast v8, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 230
    .restart local v8    # "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_80
    if-eqz v8, :cond_98

    .line 231
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 232
    .restart local v1    # "args":Landroid/os/Bundle;
    const-string v9, "user_id"

    iget v10, v8, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 233
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    new-instance v10, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v10, v1}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v9, v10}, Lorg/telegram/ui/ChannelUsersActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 235
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v8    # "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_98
    :goto_98
    return-void

    .line 170
    :cond_99
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isPublic:Z
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$300(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v9

    if-nez v9, :cond_50

    const/4 v9, 0x1

    if-ne p2, v9, :cond_50

    .line 171
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    new-instance v10, Lorg/telegram/ui/GroupInviteActivity;

    iget-object v11, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->chatId:I
    invoke-static {v11}, Lorg/telegram/ui/ChannelUsersActivity;->access$200(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v11

    invoke-direct {v10, v11}, Lorg/telegram/ui/GroupInviteActivity;-><init>(I)V

    invoke-virtual {v9, v10}, Lorg/telegram/ui/ChannelUsersActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_50

    .line 175
    :cond_b5
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_50

    .line 176
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isAdmin:Z
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$100(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v9

    if-eqz v9, :cond_50

    .line 177
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isMegagroup:Z
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$400(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v9

    if-eqz v9, :cond_14f

    const/4 v9, 0x1

    if-eq p2, v9, :cond_d4

    const/4 v9, 0x2

    if-ne p2, v9, :cond_14f

    .line 178
    :cond_d4
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-object v10, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->chatId:I
    invoke-static {v10}, Lorg/telegram/ui/ChannelUsersActivity;->access$200(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 179
    .local v3, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v3, :cond_98

    .line 182
    const/4 v2, 0x0

    .line 183
    .local v2, "changed":Z
    const/4 v9, 0x1

    if-ne p2, v9, :cond_141

    iget-boolean v9, v3, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    if-nez v9, :cond_141

    .line 184
    const/4 v9, 0x1

    iput-boolean v9, v3, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    .line 185
    const/4 v2, 0x1

    .line 190
    :cond_f4
    :goto_f4
    if-eqz v2, :cond_98

    .line 191
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-object v10, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->chatId:I
    invoke-static {v10}, Lorg/telegram/ui/ChannelUsersActivity;->access$200(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v10

    iget-boolean v11, v3, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    invoke-virtual {v9, v10, v11}, Lorg/telegram/messenger/MessagesController;->toogleChannelInvites(IZ)V

    .line 192
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$500(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v5

    .line 193
    .local v5, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_110
    if-ge v0, v5, :cond_98

    .line 194
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$500(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 195
    .local v4, "child":Landroid/view/View;
    instance-of v9, v4, Lorg/telegram/ui/Cells/RadioCell;

    if-eqz v9, :cond_13e

    .line 196
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 197
    .local v7, "num":I
    check-cast v4, Lorg/telegram/ui/Cells/RadioCell;

    .end local v4    # "child":Landroid/view/View;
    if-nez v7, :cond_132

    iget-boolean v9, v3, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    if-nez v9, :cond_139

    :cond_132
    const/4 v9, 0x1

    if-ne v7, v9, :cond_14d

    iget-boolean v9, v3, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    if-nez v9, :cond_14d

    :cond_139
    const/4 v9, 0x1

    :goto_13a
    const/4 v10, 0x1

    invoke-virtual {v4, v9, v10}, Lorg/telegram/ui/Cells/RadioCell;->setChecked(ZZ)V

    .line 193
    .end local v7    # "num":I
    :cond_13e
    add-int/lit8 v0, v0, 0x1

    goto :goto_110

    .line 186
    .end local v0    # "a":I
    .end local v5    # "count":I
    :cond_141
    const/4 v9, 0x2

    if-ne p2, v9, :cond_f4

    iget-boolean v9, v3, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    if-eqz v9, :cond_f4

    .line 187
    const/4 v9, 0x0

    iput-boolean v9, v3, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    .line 188
    const/4 v2, 0x1

    goto :goto_f4

    .line 197
    .restart local v0    # "a":I
    .restart local v5    # "count":I
    .restart local v7    # "num":I
    :cond_14d
    const/4 v9, 0x0

    goto :goto_13a

    .line 203
    .end local v0    # "a":I
    .end local v2    # "changed":Z
    .end local v3    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v5    # "count":I
    .end local v7    # "num":I
    :cond_14f
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/2addr v9, v10

    if-ne p2, v9, :cond_50

    .line 204
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 205
    .restart local v1    # "args":Landroid/os/Bundle;
    const-string v9, "onlyUsers"

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 206
    const-string v9, "destroyAfterSelect"

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 207
    const-string v9, "returnAsResult"

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 208
    const-string v9, "needForwardCount"

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 209
    const-string v10, "addingToChannel"

    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isMegagroup:Z
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$400(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v9

    if-nez v9, :cond_1af

    const/4 v9, 0x1

    :goto_18a
    invoke-virtual {v1, v10, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 213
    const-string v9, "selectAlertString"

    const-string v10, "ChannelAddUserAdminAlert"

    const v11, 0x7f070111

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    new-instance v6, Lorg/telegram/ui/ContactsActivity;

    invoke-direct {v6, v1}, Lorg/telegram/ui/ContactsActivity;-><init>(Landroid/os/Bundle;)V

    .line 215
    .restart local v6    # "fragment":Lorg/telegram/ui/ContactsActivity;
    new-instance v9, Lorg/telegram/ui/ChannelUsersActivity$2$2;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ChannelUsersActivity$2$2;-><init>(Lorg/telegram/ui/ChannelUsersActivity$2;)V

    invoke-virtual {v6, v9}, Lorg/telegram/ui/ContactsActivity;->setDelegate(Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;)V

    .line 221
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-virtual {v9, v6}, Lorg/telegram/ui/ChannelUsersActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_98

    .line 209
    .end local v6    # "fragment":Lorg/telegram/ui/ContactsActivity;
    :cond_1af
    const/4 v9, 0x0

    goto :goto_18a
.end method
