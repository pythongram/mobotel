.class Lorg/telegram/ui/ChatActivity$9$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$9;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$9;

.field final synthetic val$id:I

.field final synthetic val$isChat:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$9;IZ)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$9;

    .prologue
    .line 1210
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$9$1;->this$1:Lorg/telegram/ui/ChatActivity$9;

    iput p2, p0, Lorg/telegram/ui/ChatActivity$9$1;->val$id:I

    iput-boolean p3, p0, Lorg/telegram/ui/ChatActivity$9$1;->val$isChat:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const/4 v4, 0x0

    .line 1213
    iget v0, p0, Lorg/telegram/ui/ChatActivity$9$1;->val$id:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_61

    .line 1214
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$9$1;->val$isChat:Z

    if-eqz v0, :cond_51

    .line 1215
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$9$1;->this$1:Lorg/telegram/ui/ChatActivity$9;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1216
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$9$1;->this$1:Lorg/telegram/ui/ChatActivity$9;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JI)V

    .line 1223
    :goto_26
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$9$1;->this$1:Lorg/telegram/ui/ChatActivity$9;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->finishFragment()V

    .line 1227
    :goto_2d
    return-void

    .line 1218
    :cond_2e
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$9$1;->this$1:Lorg/telegram/ui/ChatActivity$9;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    neg-long v2, v2

    long-to-int v1, v2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->deleteUserFromChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    goto :goto_26

    .line 1221
    :cond_51
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$9$1;->this$1:Lorg/telegram/ui/ChatActivity$9;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JI)V

    goto :goto_26

    .line 1225
    :cond_61
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$9$1;->this$1:Lorg/telegram/ui/ChatActivity$9;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JI)V

    goto :goto_2d
.end method
