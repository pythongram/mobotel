.class Lorg/telegram/ui/LaunchActivity$10$1$1;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity$10$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/LaunchActivity$10$1;

.field final synthetic val$res:Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity$10$1;Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;)V
    .registers 3
    .param p1, "this$2"    # Lorg/telegram/ui/LaunchActivity$10$1;

    .prologue
    .line 1432
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$10$1$1;->this$2:Lorg/telegram/ui/LaunchActivity$10$1;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$10$1$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectDialog(Lorg/telegram/ui/DialogsActivity;JZ)V
    .registers 15
    .param p1, "fragment"    # Lorg/telegram/ui/DialogsActivity;
    .param p2, "dialog_id"    # J
    .param p4, "param"    # Z

    .prologue
    .line 1435
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;-><init>()V

    .line 1436
    .local v3, "inputMediaGame":Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputGameShortName;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputGameShortName;-><init>()V

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;->id:Lorg/telegram/tgnet/TLRPC$InputGame;

    .line 1437
    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;->id:Lorg/telegram/tgnet/TLRPC$InputGame;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$10$1$1;->this$2:Lorg/telegram/ui/LaunchActivity$10$1;

    iget-object v2, v2, Lorg/telegram/ui/LaunchActivity$10$1;->this$1:Lorg/telegram/ui/LaunchActivity$10;

    iget-object v2, v2, Lorg/telegram/ui/LaunchActivity$10;->val$game:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$InputGame;->short_name:Ljava/lang/String;

    .line 1438
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;->id:Lorg/telegram/tgnet/TLRPC$InputGame;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$10$1$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$InputGame;->bot_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1439
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    long-to-int v2, p2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/SendMessagesHelper;->sendGame(Lorg/telegram/tgnet/TLRPC$InputPeer;Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;JJ)V

    .line 1441
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1442
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "scrollToTopOnResume"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1443
    long-to-int v9, p2

    .line 1444
    .local v9, "lower_part":I
    const/16 v1, 0x20

    shr-long v4, p2, v1

    long-to-int v8, v4

    .line 1445
    .local v8, "high_id":I
    if-eqz v9, :cond_8d

    .line 1446
    const/4 v1, 0x1

    if-ne v8, v1, :cond_7c

    .line 1447
    const-string v1, "chat_id"

    invoke-virtual {v0, v1, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1458
    :cond_54
    :goto_54
    invoke-static {v0, p1}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 1459
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1460
    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$10$1$1;->this$2:Lorg/telegram/ui/LaunchActivity$10$1;

    iget-object v1, v1, Lorg/telegram/ui/LaunchActivity$10$1;->this$1:Lorg/telegram/ui/LaunchActivity$10;

    iget-object v1, v1, Lorg/telegram/ui/LaunchActivity$10;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v1}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v1, v2, v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 1462
    :cond_7b
    return-void

    .line 1449
    :cond_7c
    if-lez v9, :cond_84

    .line 1450
    const-string v1, "user_id"

    invoke-virtual {v0, v1, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_54

    .line 1451
    :cond_84
    if-gez v9, :cond_54

    .line 1452
    const-string v1, "chat_id"

    neg-int v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_54

    .line 1456
    :cond_8d
    const-string v1, "enc_id"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_54
.end method
