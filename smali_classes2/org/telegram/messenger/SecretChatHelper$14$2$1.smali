.class Lorg/telegram/messenger/SecretChatHelper$14$2$1;
.super Ljava/lang/Object;
.source "SecretChatHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SecretChatHelper$14$2;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/SecretChatHelper$14$2;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SecretChatHelper$14$2;Lorg/telegram/tgnet/TLObject;)V
    .registers 3
    .param p1, "this$2"    # Lorg/telegram/messenger/SecretChatHelper$14$2;

    .prologue
    .line 1807
    iput-object p1, p0, Lorg/telegram/messenger/SecretChatHelper$14$2$1;->this$2:Lorg/telegram/messenger/SecretChatHelper$14$2;

    iput-object p2, p0, Lorg/telegram/messenger/SecretChatHelper$14$2$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1810
    iget-object v3, p0, Lorg/telegram/messenger/SecretChatHelper$14$2$1;->this$2:Lorg/telegram/messenger/SecretChatHelper$14$2;

    iget-object v3, v3, Lorg/telegram/messenger/SecretChatHelper$14$2;->this$1:Lorg/telegram/messenger/SecretChatHelper$14;

    iget-object v3, v3, Lorg/telegram/messenger/SecretChatHelper$14;->this$0:Lorg/telegram/messenger/SecretChatHelper;

    # setter for: Lorg/telegram/messenger/SecretChatHelper;->startingSecretChat:Z
    invoke-static {v3, v6}, Lorg/telegram/messenger/SecretChatHelper;->access$402(Lorg/telegram/messenger/SecretChatHelper;Z)Z

    .line 1811
    iget-object v3, p0, Lorg/telegram/messenger/SecretChatHelper$14$2$1;->this$2:Lorg/telegram/messenger/SecretChatHelper$14$2;

    iget-object v3, v3, Lorg/telegram/messenger/SecretChatHelper$14$2;->this$1:Lorg/telegram/messenger/SecretChatHelper$14;

    iget-object v3, v3, Lorg/telegram/messenger/SecretChatHelper$14;->val$context:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_22

    .line 1813
    :try_start_19
    iget-object v3, p0, Lorg/telegram/messenger/SecretChatHelper$14$2$1;->this$2:Lorg/telegram/messenger/SecretChatHelper$14$2;

    iget-object v3, v3, Lorg/telegram/messenger/SecretChatHelper$14$2;->this$1:Lorg/telegram/messenger/SecretChatHelper$14;

    iget-object v3, v3, Lorg/telegram/messenger/SecretChatHelper$14;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_22} :catch_a6

    .line 1818
    :cond_22
    :goto_22
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper$14$2$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 1819
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    iget v3, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:I

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    .line 1820
    iput v6, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    .line 1821
    iput v7, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    .line 1822
    iget-object v3, p0, Lorg/telegram/messenger/SecretChatHelper$14$2$1;->this$2:Lorg/telegram/messenger/SecretChatHelper$14$2;

    iget-object v3, v3, Lorg/telegram/messenger/SecretChatHelper$14$2;->val$salt:[B

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    .line 1823
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v0, v6}, Lorg/telegram/messenger/MessagesController;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    .line 1824
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 1825
    .local v1, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget v3, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v4, v3

    const/16 v3, 0x20

    shl-long/2addr v4, v3

    iput-wide v4, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 1826
    iput v6, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    .line 1827
    iput v6, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    .line 1828
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    .line 1829
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1830
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1831
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Ljava/util/HashMap;)V

    .line 1832
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/SecretChatHelper$14$2$1;->this$2:Lorg/telegram/messenger/SecretChatHelper$14$2;

    iget-object v4, v4, Lorg/telegram/messenger/SecretChatHelper$14$2;->this$1:Lorg/telegram/messenger/SecretChatHelper$14;

    iget-object v4, v4, Lorg/telegram/messenger/SecretChatHelper$14;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v3, v0, v4, v1}, Lorg/telegram/messenger/MessagesStorage;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_dialog;)V

    .line 1833
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1834
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->encryptedChatCreated:I

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1835
    sget-object v3, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/messenger/SecretChatHelper$14$2$1$1;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/SecretChatHelper$14$2$1$1;-><init>(Lorg/telegram/messenger/SecretChatHelper$14$2$1;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1844
    return-void

    .line 1814
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v1    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :catch_a6
    move-exception v2

    .line 1815
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_22
.end method
