.class Lorg/telegram/ui/DialogsActivity$37$1;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity$37;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/DialogsActivity$37;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity$37;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/ui/DialogsActivity$37;

    .prologue
    .line 2963
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$37$1;->this$1:Lorg/telegram/ui/DialogsActivity$37;

    iput-object p2, p0, Lorg/telegram/ui/DialogsActivity$37$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/DialogsActivity$37$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 21

    .prologue
    .line 2966
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$37$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v2, :cond_124

    .line 2967
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$37$1;->val$response:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    check-cast v19, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    .line 2968
    .local v19, "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, v19

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 2969
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    move-object/from16 v0, v19

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 2970
    move-object/from16 v0, v19

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_124

    .line 2971
    move-object/from16 v0, v19

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 2973
    .local v9, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget v2, v9, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    if-lez v2, :cond_125

    .line 2974
    iget v2, v9, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v2, v2

    int-to-long v12, v2

    .line 2978
    .local v12, "dialog_id":J
    :goto_4b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$37$1;->this$1:Lorg/telegram/ui/DialogsActivity$37;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$37;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 2979
    .local v11, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hidechannelenddate_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$37$1;->this$1:Lorg/telegram/ui/DialogsActivity$37;

    iget-wide v4, v3, Lorg/telegram/ui/DialogsActivity$37;->val$enddate:J

    invoke-interface {v11, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2980
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hidechannel_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2981
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2983
    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_be

    instance-of v2, v9, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;

    if-nez v2, :cond_be

    .line 2984
    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_be

    .line 2985
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

    .line 2988
    :cond_be
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v15

    .line 2989
    .local v15, "muted":Z
    if-nez v15, :cond_124

    .line 2991
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "Notifications"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 2992
    .local v18, "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 2993
    .local v14, "editorr":Landroid/content/SharedPreferences$Editor;
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

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2994
    const-wide/16 v16, 0x1

    .line 2995
    .local v16, "flags":J
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v12, v13, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    .line 2996
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2997
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 2998
    .local v10, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v10, :cond_11a

    .line 2999
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;-><init>()V

    iput-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 3000
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    const v3, 0x7fffffff

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 3002
    :cond_11a
    invoke-static {v12, v13}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(J)V

    .line 3003
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Lorg/telegram/messenger/NotificationsController;->removeNotificationsForDialog(J)V

    .line 3008
    .end local v9    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v10    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v12    # "dialog_id":J
    .end local v14    # "editorr":Landroid/content/SharedPreferences$Editor;
    .end local v15    # "muted":Z
    .end local v16    # "flags":J
    .end local v18    # "preferences":Landroid/content/SharedPreferences;
    .end local v19    # "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;
    :cond_124
    return-void

    .line 2976
    .restart local v9    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v19    # "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;
    :cond_125
    iget v2, v9, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->makeBroadcastId(I)J

    move-result-wide v12

    .restart local v12    # "dialog_id":J
    goto/16 :goto_4b
.end method
