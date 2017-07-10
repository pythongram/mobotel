.class Lorg/telegram/messenger/ApplicationLoader$2$2$1;
.super Ljava/lang/Object;
.source "ApplicationLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ApplicationLoader$2$2;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/ApplicationLoader$2$2;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ApplicationLoader$2$2;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .registers 4
    .param p1, "this$2"    # Lorg/telegram/messenger/ApplicationLoader$2$2;

    .prologue
    .line 472
    iput-object p1, p0, Lorg/telegram/messenger/ApplicationLoader$2$2$1;->this$2:Lorg/telegram/messenger/ApplicationLoader$2$2;

    iput-object p2, p0, Lorg/telegram/messenger/ApplicationLoader$2$2$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/messenger/ApplicationLoader$2$2$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 20

    .prologue
    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ApplicationLoader$2$2$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v2, :cond_d0

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ApplicationLoader$2$2$1;->val$response:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v18, v0

    check-cast v18, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    .line 477
    .local v18, "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 478
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 479
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d0

    .line 480
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 482
    .local v9, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget v2, v9, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    if-lez v2, :cond_d1

    .line 483
    iget v2, v9, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v2, v2

    int-to-long v12, v2

    .line 487
    .local v12, "dialog_id":J
    :goto_4b
    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_d0

    instance-of v2, v9, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;

    if-nez v2, :cond_d0

    .line 488
    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 489
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v3, v9, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/MessagesController;->addUserToChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 492
    :cond_6c
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v16

    .line 493
    .local v16, "muted":Z
    if-nez v16, :cond_d0

    .line 495
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "Notifications"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 496
    .local v17, "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 497
    .local v11, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify2_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v11, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 498
    const-wide/16 v14, 0x1

    .line 499
    .local v14, "flags":J
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v12, v13, v14, v15}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    .line 500
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 501
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 502
    .local v10, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v10, :cond_c6

    .line 503
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;-><init>()V

    iput-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 504
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    const v3, 0x7fffffff

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 506
    :cond_c6
    invoke-static {v12, v13}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(J)V

    .line 507
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Lorg/telegram/messenger/NotificationsController;->removeNotificationsForDialog(J)V

    .line 513
    .end local v9    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v10    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v12    # "dialog_id":J
    .end local v14    # "flags":J
    .end local v16    # "muted":Z
    .end local v17    # "preferences":Landroid/content/SharedPreferences;
    .end local v18    # "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;
    :cond_d0
    return-void

    .line 485
    .restart local v9    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v18    # "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;
    :cond_d1
    iget v2, v9, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->makeBroadcastId(I)J

    move-result-wide v12

    .restart local v12    # "dialog_id":J
    goto/16 :goto_4b
.end method
