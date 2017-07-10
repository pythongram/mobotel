.class Lorg/telegram/ui/ProfileActivity$9$1;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity$9;->onItemClick(Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ProfileActivity$9;

.field final synthetic val$user:Lorg/telegram/tgnet/TLRPC$ChatParticipant;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$9;Lorg/telegram/tgnet/TLRPC$ChatParticipant;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/ProfileActivity$9;

    .prologue
    .line 856
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$9$1;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$9$1;->val$user:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 859
    if-nez p2, :cond_5a

    .line 860
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$9$1;->val$user:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    .line 862
    .local v0, "channelParticipant":Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantEditor;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantEditor;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 863
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->inviter_id:I

    .line 864
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$9$1;->val$user:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    .line 865
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$9$1;->val$user:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->date:I

    .line 867
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;-><init>()V

    .line 868
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$9$1;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v2, v2, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->chat_id:I
    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 869
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$9$1;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v2, v2, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->selectedUser:I
    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$3400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputUser(I)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 870
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelRoleEditor;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelRoleEditor;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;->role:Lorg/telegram/tgnet/TLRPC$ChannelParticipantRole;

    .line 871
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ProfileActivity$9$1$1;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/ProfileActivity$9$1$1;-><init>(Lorg/telegram/ui/ProfileActivity$9$1;Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 895
    .end local v0    # "channelParticipant":Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;
    .end local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;
    :cond_59
    :goto_59
    return-void

    .line 892
    :cond_5a
    const/4 v2, 0x1

    if-ne p2, v2, :cond_59

    .line 893
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$9$1;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v2, v2, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$9$1;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v3, v3, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->selectedUser:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$3400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    # invokes: Lorg/telegram/ui/ProfileActivity;->kickUser(I)V
    invoke-static {v2, v3}, Lorg/telegram/ui/ProfileActivity;->access$3500(Lorg/telegram/ui/ProfileActivity;I)V

    goto :goto_59
.end method
