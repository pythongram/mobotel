.class Lorg/telegram/messenger/MessagesController$4$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$4;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController$4;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$4;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController$4;

    .prologue
    .line 635
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$4$1;->this$0:Lorg/telegram/messenger/MessagesController$4;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$4$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$4$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 639
    :try_start_3
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$4$1;->this$0:Lorg/telegram/messenger/MessagesController$4;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$4;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_4e

    .line 643
    :goto_a
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$4$1;->this$0:Lorg/telegram/messenger/MessagesController$4;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$4;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->setVisibleDialog(Landroid/app/Dialog;)V

    .line 644
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$4$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v2, :cond_71

    .line 645
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$4$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    .line 646
    .local v1, "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v5}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 647
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v5}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 648
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4, v5, v7}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 649
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_55

    .line 650
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$4$1;->this$0:Lorg/telegram/messenger/MessagesController$4;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$4;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v6, v2, v3, v7, v5}, Lorg/telegram/messenger/MessagesController;->openChatOrProfileWith(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    .line 663
    .end local v1    # "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;
    :cond_4d
    :goto_4d
    return-void

    .line 640
    :catch_4e
    move-exception v0

    .line 641
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 651
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;
    :cond_55
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4d

    .line 652
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$4$1;->this$0:Lorg/telegram/messenger/MessagesController$4;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$4;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$4$1;->this$0:Lorg/telegram/messenger/MessagesController$4;

    iget v4, v4, Lorg/telegram/messenger/MessagesController$4;->val$type:I

    invoke-static {v2, v6, v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->openChatOrProfileWith(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    goto :goto_4d

    .line 655
    .end local v1    # "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;
    :cond_71
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$4$1;->this$0:Lorg/telegram/messenger/MessagesController$4;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$4;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$4$1;->this$0:Lorg/telegram/messenger/MessagesController$4;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$4;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 657
    :try_start_81
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$4$1;->this$0:Lorg/telegram/messenger/MessagesController$4;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$4;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "NoUsernameFound"

    const v4, 0x7f070371

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_9a} :catch_9b

    goto :goto_4d

    .line 658
    :catch_9b
    move-exception v0

    .line 659
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4d
.end method
