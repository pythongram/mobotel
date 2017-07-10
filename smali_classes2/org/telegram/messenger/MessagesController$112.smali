.class Lorg/telegram/messenger/MessagesController$112;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$channelViews:Landroid/util/SparseArray;

.field final synthetic val$chatInfoToUpdate:Ljava/util/ArrayList;

.field final synthetic val$contactsIds:Ljava/util/ArrayList;

.field final synthetic val$editingMessages:Ljava/util/HashMap;

.field final synthetic val$interfaceUpdateMaskFinal:I

.field final synthetic val$messages:Ljava/util/HashMap;

.field final synthetic val$printChangedArg:Z

.field final synthetic val$updatesOnMainThread:Ljava/util/ArrayList;

.field final synthetic val$webPages:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;ILjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/ArrayList;Ljava/util/ArrayList;Landroid/util/SparseArray;)V
    .registers 11
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 7519
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$112;->this$0:Lorg/telegram/messenger/MessagesController;

    iput p2, p0, Lorg/telegram/messenger/MessagesController$112;->val$interfaceUpdateMaskFinal:I

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$112;->val$updatesOnMainThread:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$112;->val$webPages:Ljava/util/HashMap;

    iput-object p5, p0, Lorg/telegram/messenger/MessagesController$112;->val$messages:Ljava/util/HashMap;

    iput-object p6, p0, Lorg/telegram/messenger/MessagesController$112;->val$editingMessages:Ljava/util/HashMap;

    iput-boolean p7, p0, Lorg/telegram/messenger/MessagesController$112;->val$printChangedArg:Z

    iput-object p8, p0, Lorg/telegram/messenger/MessagesController$112;->val$contactsIds:Ljava/util/ArrayList;

    iput-object p9, p0, Lorg/telegram/messenger/MessagesController$112;->val$chatInfoToUpdate:Ljava/util/ArrayList;

    iput-object p10, p0, Lorg/telegram/messenger/MessagesController$112;->val$channelViews:Landroid/util/SparseArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 58

    .prologue
    .line 7522
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesController$112;->val$interfaceUpdateMaskFinal:I

    move/from16 v52, v0

    .line 7523
    .local v52, "updateMask":I
    const/16 v28, 0x0

    .line 7525
    .local v28, "hasDraftUpdates":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$112;->val$updatesOnMainThread:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8ca

    .line 7526
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 7527
    .local v18, "dbUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 7528
    .local v19, "dbUsersStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    const/16 v21, 0x0

    .line 7529
    .local v21, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$112;->val$updatesOnMainThread:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_8a1

    .line 7530
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$112;->val$updatesOnMainThread:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lorg/telegram/tgnet/TLRPC$Update;

    .line 7531
    .local v49, "update":Lorg/telegram/tgnet/TLRPC$Update;
    new-instance v46, Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct/range {v46 .. v46}, Lorg/telegram/tgnet/TLRPC$User;-><init>()V

    .line 7532
    .local v46, "toDbUser":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, v49

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    move-object/from16 v0, v46

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    .line 7533
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$112;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, v49

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v17

    .line 7536
    .local v17, "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    new-instance v3, Lorg/telegram/ui/Telehgram/UpdateBiz;

    invoke-direct {v3}, Lorg/telegram/ui/Telehgram/UpdateBiz;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v49

    invoke-virtual {v3, v0, v1}, Lorg/telegram/ui/Telehgram/UpdateBiz;->insertUpdate(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Update;)Z

    .line 7537
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "mainconfig"

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v43

    .line 7538
    .local v43, "specificPreferences":Landroid/content/SharedPreferences;
    const-string v3, "specific_contact"

    const/4 v6, 0x0

    move-object/from16 v0, v43

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v42

    .line 7539
    .local v42, "specificContact":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "specific_c"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v49

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v43

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v32

    .line 7542
    .local v32, "isSpecific":Z
    move-object/from16 v0, v49

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updatePrivacy;

    if-eqz v3, :cond_d3

    .line 7543
    move-object/from16 v0, v49

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->key:Lorg/telegram/tgnet/TLRPC$PrivacyKey;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyStatusTimestamp;

    if-eqz v3, :cond_a9

    .line 7544
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    move-object/from16 v0, v49

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->rules:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v8}, Lorg/telegram/messenger/ContactsController;->setPrivacyRules(Ljava/util/ArrayList;I)V

    .line 7529
    .end local v49    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_a5
    :goto_a5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1f

    .line 7545
    .restart local v49    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_a9
    move-object/from16 v0, v49

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->key:Lorg/telegram/tgnet/TLRPC$PrivacyKey;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyChatInvite;

    if-eqz v3, :cond_be

    .line 7546
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    move-object/from16 v0, v49

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->rules:Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-virtual {v3, v6, v8}, Lorg/telegram/messenger/ContactsController;->setPrivacyRules(Ljava/util/ArrayList;I)V

    goto :goto_a5

    .line 7547
    :cond_be
    move-object/from16 v0, v49

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->key:Lorg/telegram/tgnet/TLRPC$PrivacyKey;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyPhoneCall;

    if-eqz v3, :cond_a5

    .line 7548
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    move-object/from16 v0, v49

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->rules:Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-virtual {v3, v6, v8}, Lorg/telegram/messenger/ContactsController;->setPrivacyRules(Ljava/util/ArrayList;I)V

    goto :goto_a5

    .line 7550
    :cond_d3
    move-object/from16 v0, v49

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserStatus;

    if-eqz v3, :cond_206

    .line 7552
    const/16 v31, 0x0

    .line 7553
    .local v31, "isInvisible":Z
    const/16 v27, 0x0

    .line 7555
    .local v27, "getOnline":Z
    move-object/from16 v0, v49

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_userStatusRecently;

    if-eqz v3, :cond_129

    .line 7556
    move-object/from16 v0, v49

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    const/16 v6, -0x64

    iput v6, v3, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 7557
    const/16 v31, 0x1

    .line 7565
    :cond_ef
    :goto_ef
    if-eqz v17, :cond_101

    .line 7566
    move-object/from16 v0, v49

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    move-object/from16 v0, v17

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    .line 7567
    move-object/from16 v0, v49

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v0, v17

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    .line 7569
    :cond_101
    move-object/from16 v0, v49

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v0, v46

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    .line 7570
    move-object/from16 v0, v19

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7571
    move-object/from16 v0, v49

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v3, v6, :cond_14f

    .line 7572
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v3

    move-object/from16 v0, v49

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/NotificationsController;->setLastOnlineFromOtherDevice(I)V

    goto/16 :goto_a5

    .line 7558
    :cond_129
    move-object/from16 v0, v49

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_userStatusLastWeek;

    if-eqz v3, :cond_13c

    .line 7559
    move-object/from16 v0, v49

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    const/16 v6, -0x65

    iput v6, v3, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 7560
    const/16 v31, 0x1

    goto :goto_ef

    .line 7561
    :cond_13c
    move-object/from16 v0, v49

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_userStatusLastMonth;

    if-eqz v3, :cond_ef

    .line 7562
    move-object/from16 v0, v49

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    const/16 v6, -0x66

    iput v6, v3, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 7563
    const/16 v31, 0x1

    goto :goto_ef

    .line 7575
    :cond_14f
    move-object/from16 v0, v49

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_15a

    .line 7576
    const/16 v31, 0x1

    .line 7578
    :cond_15a
    if-eqz v42, :cond_a5

    if-eqz v32, :cond_a5

    .line 7579
    if-eqz v17, :cond_184

    move-object/from16 v0, v17

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v3, :cond_184

    move-object/from16 v0, v17

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-gtz v3, :cond_184

    .line 7580
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v17

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_184

    .line 7581
    const/16 v27, 0x1

    .line 7584
    :cond_184
    move-object/from16 v0, v17

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v6

    if-le v3, v6, :cond_196

    .line 7585
    const/16 v27, 0x1

    .line 7587
    :cond_196
    if-nez v31, :cond_1cf

    if-eqz v27, :cond_1cf

    .line 7588
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v6, v8}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "GetOnline"

    const v8, 0x7f070713

    .line 7589
    invoke-static {v6, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    .line 7588
    invoke-static {v3, v6}, Lorg/telegram/messenger/MessagesController;->TelehNotificatin(Ljava/lang/String;I)V

    goto/16 :goto_a5

    .line 7590
    :cond_1cf
    if-nez v31, :cond_a5

    .line 7591
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v6, v8}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "GetOffline"

    const v8, 0x7f070712

    .line 7592
    invoke-static {v6, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    .line 7591
    invoke-static {v3, v6}, Lorg/telegram/messenger/MessagesController;->TelehNotificatin(Ljava/lang/String;I)V

    goto/16 :goto_a5

    .line 7597
    .end local v27    # "getOnline":Z
    .end local v31    # "isInvisible":Z
    :cond_206
    move-object/from16 v0, v49

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserName;

    if-eqz v3, :cond_2c4

    .line 7598
    if-eqz v17, :cond_26c

    .line 7599
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/UserObject;->isContact(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v3

    if-nez v3, :cond_224

    .line 7600
    move-object/from16 v0, v49

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->first_name:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 7601
    move-object/from16 v0, v49

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->last_name:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 7603
    :cond_224
    move-object/from16 v0, v17

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v3, :cond_243

    move-object/from16 v0, v17

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_243

    .line 7604
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$112;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->access$5600(Lorg/telegram/messenger/MessagesController;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    move-object/from16 v0, v17

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7606
    :cond_243
    move-object/from16 v0, v49

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->username:Ljava/lang/String;

    if-eqz v3, :cond_264

    move-object/from16 v0, v49

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->username:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_264

    .line 7607
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$112;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->access$5600(Lorg/telegram/messenger/MessagesController;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    move-object/from16 v0, v49

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->username:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v3, v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7609
    :cond_264
    move-object/from16 v0, v49

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->username:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 7611
    :cond_26c
    move-object/from16 v0, v49

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->first_name:Ljava/lang/String;

    move-object/from16 v0, v46

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 7612
    move-object/from16 v0, v49

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->last_name:Ljava/lang/String;

    move-object/from16 v0, v46

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 7613
    move-object/from16 v0, v49

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->username:Ljava/lang/String;

    move-object/from16 v0, v46

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 7614
    move-object/from16 v0, v18

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7616
    if-eqz v42, :cond_a5

    if-eqz v32, :cond_a5

    .line 7617
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v6, v8}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "changed_name"

    const v8, 0x7f070850

    .line 7618
    invoke-static {v6, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    .line 7617
    invoke-static {v3, v6}, Lorg/telegram/messenger/MessagesController;->TelehNotificatin(Ljava/lang/String;I)V

    goto/16 :goto_a5

    .line 7621
    :cond_2c4
    move-object/from16 v0, v49

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhoto;

    if-eqz v3, :cond_31c

    .line 7622
    if-eqz v17, :cond_2d4

    .line 7623
    move-object/from16 v0, v49

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v0, v17

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 7625
    :cond_2d4
    move-object/from16 v0, v49

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v0, v46

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 7626
    move-object/from16 v0, v18

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7628
    if-eqz v42, :cond_a5

    if-eqz v32, :cond_a5

    .line 7629
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v6, v8}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "changed_photo"

    const v8, 0x7f070852

    .line 7630
    invoke-static {v6, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    .line 7629
    invoke-static {v3, v6}, Lorg/telegram/messenger/MessagesController;->TelehNotificatin(Ljava/lang/String;I)V

    goto/16 :goto_a5

    .line 7633
    :cond_31c
    move-object/from16 v0, v49

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhone;

    if-eqz v3, :cond_382

    .line 7634
    if-eqz v17, :cond_33a

    .line 7635
    move-object/from16 v0, v49

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->phone:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 7636
    sget-object v3, Lorg/telegram/messenger/Utilities;->phoneBookQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v6, Lorg/telegram/messenger/MessagesController$112$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v6, v0, v1}, Lorg/telegram/messenger/MessagesController$112$1;-><init>(Lorg/telegram/messenger/MessagesController$112;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 7643
    :cond_33a
    move-object/from16 v0, v49

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->phone:Ljava/lang/String;

    move-object/from16 v0, v46

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 7644
    move-object/from16 v0, v18

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7646
    if-eqz v42, :cond_a5

    if-eqz v32, :cond_a5

    .line 7647
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v6, v8}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "changed_phone"

    const v8, 0x7f070851

    .line 7648
    invoke-static {v6, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    .line 7647
    invoke-static {v3, v6}, Lorg/telegram/messenger/MessagesController;->TelehNotificatin(Ljava/lang/String;I)V

    goto/16 :goto_a5

    .line 7651
    :cond_382
    move-object/from16 v0, v49

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;

    if-eqz v3, :cond_3d7

    move-object/from16 v50, v49

    .line 7652
    check-cast v50, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;

    .line 7654
    .local v50, "updateDialogPinned":Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;
    move-object/from16 v0, v50

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-eqz v3, :cond_3bd

    .line 7655
    move-object/from16 v0, v50

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v4, v3

    .line 7661
    .local v4, "did":J
    :goto_39b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$112;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, v50

    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;->pinned:Z

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/messenger/MessagesController;->pinDialog(JZLorg/telegram/tgnet/TLRPC$InputPeer;J)Z

    move-result v3

    if-nez v3, :cond_a5

    .line 7662
    const/4 v3, 0x0

    sput-boolean v3, Lorg/telegram/messenger/UserConfig;->pinnedDialogsLoaded:Z

    .line 7663
    const/4 v3, 0x0

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 7664
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$112;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->loadPinnedDialogs(JLjava/util/ArrayList;)V

    goto/16 :goto_a5

    .line 7656
    .end local v4    # "did":J
    :cond_3bd
    move-object/from16 v0, v50

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    if-eqz v3, :cond_3ce

    .line 7657
    move-object/from16 v0, v50

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v3, v3

    int-to-long v4, v3

    .restart local v4    # "did":J
    goto :goto_39b

    .line 7659
    .end local v4    # "did":J
    :cond_3ce
    move-object/from16 v0, v50

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v3, v3

    int-to-long v4, v3

    .restart local v4    # "did":J
    goto :goto_39b

    .line 7666
    .end local v4    # "did":J
    .end local v50    # "updateDialogPinned":Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;
    :cond_3d7
    move-object/from16 v0, v49

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;

    if-eqz v3, :cond_442

    .line 7667
    const/4 v3, 0x0

    sput-boolean v3, Lorg/telegram/messenger/UserConfig;->pinnedDialogsLoaded:Z

    .line 7668
    const/4 v3, 0x0

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 7670
    move-object/from16 v0, v49

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_433

    .line 7671
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 7672
    .local v36, "order":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    check-cast v49, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;

    .end local v49    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, v49

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;->order:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    .line 7673
    .local v39, "peers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Peer;>;"
    const/4 v13, 0x0

    .local v13, "b":I
    :goto_3fa
    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v13, v3, :cond_435

    .line 7675
    move-object/from16 v0, v39

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lorg/telegram/tgnet/TLRPC$Peer;

    .line 7676
    .local v38, "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    move-object/from16 v0, v38

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v3, :cond_41f

    .line 7677
    move-object/from16 v0, v38

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v4, v3

    .line 7683
    .restart local v4    # "did":J
    :goto_413
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7673
    add-int/lit8 v13, v13, 0x1

    goto :goto_3fa

    .line 7678
    .end local v4    # "did":J
    :cond_41f
    move-object/from16 v0, v38

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v3, :cond_42c

    .line 7679
    move-object/from16 v0, v38

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v3, v3

    int-to-long v4, v3

    .restart local v4    # "did":J
    goto :goto_413

    .line 7681
    .end local v4    # "did":J
    :cond_42c
    move-object/from16 v0, v38

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v3, v3

    int-to-long v4, v3

    .restart local v4    # "did":J
    goto :goto_413

    .line 7686
    .end local v4    # "did":J
    .end local v13    # "b":I
    .end local v36    # "order":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v38    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    .end local v39    # "peers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Peer;>;"
    .restart local v49    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_433
    const/16 v36, 0x0

    .line 7688
    .end local v49    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    .restart local v36    # "order":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_435
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$112;->this$0:Lorg/telegram/messenger/MessagesController;

    const-wide/16 v8, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v3, v8, v9, v0}, Lorg/telegram/messenger/MessagesController;->loadPinnedDialogs(JLjava/util/ArrayList;)V

    goto/16 :goto_a5

    .line 7689
    .end local v36    # "order":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v49    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_442
    move-object/from16 v0, v49

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhoto;

    if-eqz v3, :cond_463

    .line 7690
    if-eqz v17, :cond_452

    .line 7691
    move-object/from16 v0, v49

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v0, v17

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 7693
    :cond_452
    move-object/from16 v0, v49

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v0, v46

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 7694
    move-object/from16 v0, v18

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a5

    .line 7695
    :cond_463
    move-object/from16 v0, v49

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhone;

    if-eqz v3, :cond_492

    .line 7696
    if-eqz v17, :cond_481

    .line 7697
    move-object/from16 v0, v49

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->phone:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 7698
    sget-object v3, Lorg/telegram/messenger/Utilities;->phoneBookQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v6, Lorg/telegram/messenger/MessagesController$112$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v6, v0, v1}, Lorg/telegram/messenger/MessagesController$112$2;-><init>(Lorg/telegram/messenger/MessagesController$112;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 7705
    :cond_481
    move-object/from16 v0, v49

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->phone:Ljava/lang/String;

    move-object/from16 v0, v46

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 7706
    move-object/from16 v0, v18

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a5

    .line 7707
    :cond_492
    move-object/from16 v0, v49

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;

    if-eqz v3, :cond_613

    move-object/from16 v53, v49

    .line 7708
    check-cast v53, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;

    .line 7709
    .local v53, "updateNotifySettings":Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;
    move-object/from16 v0, v49

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    if-eqz v3, :cond_a5

    move-object/from16 v0, v53

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$NotifyPeer;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_notifyPeer;

    if-eqz v3, :cond_a5

    .line 7710
    if-nez v21, :cond_4bb

    .line 7711
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v40

    .line 7712
    .local v40, "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v40 .. v40}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    .line 7715
    .end local v40    # "preferences":Landroid/content/SharedPreferences;
    :cond_4bb
    move-object/from16 v0, v53

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$NotifyPeer;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$NotifyPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v3, :cond_56e

    .line 7716
    move-object/from16 v0, v53

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$NotifyPeer;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$NotifyPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v0, v3

    move-wide/from16 v22, v0

    .line 7723
    .local v22, "dialog_id":J
    :goto_4d0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$112;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 7724
    .local v20, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v20, :cond_4ea

    .line 7725
    move-object/from16 v0, v49

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    move-object/from16 v0, v20

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 7727
    :cond_4ea
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "silent_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v49

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->silent:Z

    move-object/from16 v0, v21

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 7728
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v16

    .line 7729
    .local v16, "currentTime":I
    move-object/from16 v0, v49

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    move/from16 v0, v16

    if-le v3, v0, :cond_5e3

    .line 7730
    const/16 v47, 0x0

    .line 7731
    .local v47, "until":I
    move-object/from16 v0, v49

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    const v6, 0x1e13380

    add-int v6, v6, v16

    if-le v3, v6, :cond_594

    .line 7732
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notify2_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    move-object/from16 v0, v21

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 7733
    if-eqz v20, :cond_551

    .line 7734
    move-object/from16 v0, v20

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    const v6, 0x7fffffff

    iput v6, v3, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 7744
    :cond_551
    :goto_551
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    move/from16 v0, v47

    int-to-long v8, v0

    const/16 v6, 0x20

    shl-long/2addr v8, v6

    const-wide/16 v10, 0x1

    or-long/2addr v8, v10

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    .line 7745
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Lorg/telegram/messenger/NotificationsController;->removeNotificationsForDialog(J)V

    goto/16 :goto_a5

    .line 7717
    .end local v16    # "currentTime":I
    .end local v20    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v22    # "dialog_id":J
    .end local v47    # "until":I
    :cond_56e
    move-object/from16 v0, v53

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$NotifyPeer;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$NotifyPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v3, :cond_586

    .line 7718
    move-object/from16 v0, v53

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$NotifyPeer;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$NotifyPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v3, v3

    int-to-long v0, v3

    move-wide/from16 v22, v0

    .restart local v22    # "dialog_id":J
    goto/16 :goto_4d0

    .line 7720
    .end local v22    # "dialog_id":J
    :cond_586
    move-object/from16 v0, v53

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$NotifyPeer;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$NotifyPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v3, v3

    int-to-long v0, v3

    move-wide/from16 v22, v0

    .restart local v22    # "dialog_id":J
    goto/16 :goto_4d0

    .line 7737
    .restart local v16    # "currentTime":I
    .restart local v20    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .restart local v47    # "until":I
    :cond_594
    move-object/from16 v0, v49

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget v0, v3, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    move/from16 v47, v0

    .line 7738
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notify2_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x3

    move-object/from16 v0, v21

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 7739
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyuntil_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v49

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    move-object/from16 v0, v21

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 7740
    if-eqz v20, :cond_551

    .line 7741
    move-object/from16 v0, v20

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    move/from16 v0, v47

    iput v0, v3, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    goto/16 :goto_551

    .line 7747
    .end local v47    # "until":I
    :cond_5e3
    if-eqz v20, :cond_5ec

    .line 7748
    move-object/from16 v0, v20

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    const/4 v6, 0x0

    iput v6, v3, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 7750
    :cond_5ec
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notify2_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7751
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    const-wide/16 v8, 0x0

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    goto/16 :goto_a5

    .line 7754
    .end local v16    # "currentTime":I
    .end local v20    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v22    # "dialog_id":J
    .end local v53    # "updateNotifySettings":Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;
    :cond_613
    move-object/from16 v0, v49

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannel;

    if-eqz v3, :cond_681

    .line 7755
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$112;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v49

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    int-to-long v8, v6

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 7756
    .restart local v20    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$112;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, v49

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v15

    .line 7757
    .local v15, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v15, :cond_659

    .line 7758
    if-nez v20, :cond_66e

    instance-of v3, v15, Lorg/telegram/tgnet/TLRPC$TL_channel;

    if-eqz v3, :cond_66e

    iget-boolean v3, v15, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v3, :cond_66e

    .line 7759
    sget-object v3, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v6, Lorg/telegram/messenger/MessagesController$112$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v6, v0, v1}, Lorg/telegram/messenger/MessagesController$112$3;-><init>(Lorg/telegram/messenger/MessagesController$112;Lorg/telegram/tgnet/TLRPC$Update;)V

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 7769
    :cond_659
    :goto_659
    move/from16 v0, v52

    or-int/lit16 v0, v0, 0x2000

    move/from16 v52, v0

    .line 7770
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$112;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, v49

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v3, v6, v8, v9}, Lorg/telegram/messenger/MessagesController;->loadFullChat(IIZ)V

    goto/16 :goto_a5

    .line 7765
    :cond_66e
    iget-boolean v3, v15, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-eqz v3, :cond_659

    if-eqz v20, :cond_659

    .line 7766
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$112;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, v20

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const/4 v6, 0x0

    invoke-virtual {v3, v8, v9, v6}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JI)V

    goto :goto_659

    .line 7771
    .end local v15    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v20    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_681
    move-object/from16 v0, v49

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatAdmins;

    if-eqz v3, :cond_68f

    .line 7772
    move/from16 v0, v52

    or-int/lit16 v0, v0, 0x4000

    move/from16 v52, v0

    goto/16 :goto_a5

    .line 7773
    :cond_68f
    move-object/from16 v0, v49

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSets;

    if-eqz v3, :cond_6a5

    .line 7774
    move-object/from16 v0, v49

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->masks:Z

    if-eqz v3, :cond_6a3

    const/4 v3, 0x1

    :goto_69c
    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-static {v3, v6, v8}, Lorg/telegram/messenger/query/StickersQuery;->loadStickers(IZZ)V

    goto/16 :goto_a5

    :cond_6a3
    const/4 v3, 0x0

    goto :goto_69c

    .line 7775
    :cond_6a5
    move-object/from16 v0, v49

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;

    if-eqz v3, :cond_6bf

    .line 7776
    move-object/from16 v0, v49

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->masks:Z

    if-eqz v3, :cond_6bd

    const/4 v3, 0x1

    :goto_6b2
    check-cast v49, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;

    .end local v49    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    move-object/from16 v0, v49

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;->order:Ljava/util/ArrayList;

    invoke-static {v3, v6}, Lorg/telegram/messenger/query/StickersQuery;->reorderStickers(ILjava/util/ArrayList;)V

    goto/16 :goto_a5

    .restart local v49    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_6bd
    const/4 v3, 0x0

    goto :goto_6b2

    .line 7777
    :cond_6bf
    move-object/from16 v0, v49

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewStickerSet;

    if-eqz v3, :cond_6ce

    .line 7778
    move-object/from16 v0, v49

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->stickerset:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-static {v3}, Lorg/telegram/messenger/query/StickersQuery;->addNewStickerSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    goto/16 :goto_a5

    .line 7779
    :cond_6ce
    move-object/from16 v0, v49

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateSavedGifs;

    if-eqz v3, :cond_6f0

    .line 7780
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "emoji"

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v24

    .line 7781
    .local v24, "editor2":Landroid/content/SharedPreferences$Editor;
    const-string v3, "lastGifLoadTime"

    const-wide/16 v8, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_a5

    .line 7782
    .end local v24    # "editor2":Landroid/content/SharedPreferences$Editor;
    :cond_6f0
    move-object/from16 v0, v49

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateRecentStickers;

    if-eqz v3, :cond_712

    .line 7783
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "emoji"

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v24

    .line 7784
    .restart local v24    # "editor2":Landroid/content/SharedPreferences$Editor;
    const-string v3, "lastStickersLoadTime"

    const-wide/16 v8, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_a5

    .line 7785
    .end local v24    # "editor2":Landroid/content/SharedPreferences$Editor;
    :cond_712
    move-object/from16 v0, v49

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;

    if-eqz v3, :cond_74c

    .line 7786
    const/16 v28, 0x1

    move-object/from16 v3, v49

    .line 7788
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v38, v0

    .line 7789
    .restart local v38    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    move-object/from16 v0, v38

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v3, :cond_738

    .line 7790
    move-object/from16 v0, v38

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v4, v3

    .line 7796
    .restart local v4    # "did":J
    :goto_72d
    move-object/from16 v0, v49

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->draft:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-static {v4, v5, v3, v6, v8}, Lorg/telegram/messenger/query/DraftQuery;->saveDraft(JLorg/telegram/tgnet/TLRPC$DraftMessage;Lorg/telegram/tgnet/TLRPC$Message;Z)V

    goto/16 :goto_a5

    .line 7791
    .end local v4    # "did":J
    :cond_738
    move-object/from16 v0, v38

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v3, :cond_745

    .line 7792
    move-object/from16 v0, v38

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v3, v3

    int-to-long v4, v3

    .restart local v4    # "did":J
    goto :goto_72d

    .line 7794
    .end local v4    # "did":J
    :cond_745
    move-object/from16 v0, v38

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v3, v3

    int-to-long v4, v3

    .restart local v4    # "did":J
    goto :goto_72d

    .line 7797
    .end local v4    # "did":J
    .end local v38    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    :cond_74c
    move-object/from16 v0, v49

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadFeaturedStickers;

    if-eqz v3, :cond_758

    .line 7798
    const/4 v3, 0x0

    invoke-static {v3}, Lorg/telegram/messenger/query/StickersQuery;->markFaturedStickersAsRead(Z)V

    goto/16 :goto_a5

    .line 7799
    :cond_758
    move-object/from16 v0, v49

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_updatePhoneCall;

    if-eqz v3, :cond_a5

    move-object/from16 v48, v49

    .line 7800
    check-cast v48, Lorg/telegram/tgnet/TLRPC$TL_updatePhoneCall;

    .line 7801
    .local v48, "upd":Lorg/telegram/tgnet/TLRPC$TL_updatePhoneCall;
    move-object/from16 v0, v48

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$TL_updatePhoneCall;->phone_call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    .line 7802
    .local v14, "call":Lorg/telegram/tgnet/TLRPC$PhoneCall;
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v44

    .line 7803
    .local v44, "svc":Lorg/telegram/messenger/voip/VoIPService;
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v3, :cond_79c

    .line 7804
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received call in update: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 7805
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "call id "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v8, v14, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 7807
    :cond_79c
    instance-of v3, v14, Lorg/telegram/tgnet/TLRPC$TL_phoneCallRequested;

    if-eqz v3, :cond_87f

    .line 7808
    iget v3, v14, Lorg/telegram/tgnet/TLRPC$PhoneCall;->date:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController$112;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v6, v6, Lorg/telegram/messenger/MessagesController;->callRingTimeout:I

    div-int/lit16 v6, v6, 0x3e8

    add-int/2addr v3, v6

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v6

    if-ge v3, v6, :cond_7c0

    .line 7809
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v3, :cond_a5

    .line 7810
    const-string v3, "ignoring too old call"

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto/16 :goto_a5

    .line 7813
    :cond_7c0
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/telephony/TelephonyManager;

    .line 7814
    .local v45, "tm":Landroid/telephony/TelephonyManager;
    if-nez v44, :cond_7d6

    sget-object v3, Lorg/telegram/messenger/voip/VoIPService;->callIShouldHavePutIntoIntent:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-nez v3, :cond_7d6

    invoke-virtual/range {v45 .. v45}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-eqz v3, :cond_831

    .line 7815
    :cond_7d6
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v3, :cond_7f8

    .line 7816
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Auto-declining call "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v8, v14, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " because there\'s already active one"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 7818
    :cond_7f8
    new-instance v41, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;

    invoke-direct/range {v41 .. v41}, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;-><init>()V

    .line 7819
    .local v41, "req":Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    move-object/from16 v0, v41

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 7820
    move-object/from16 v0, v41

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    iget-wide v8, v14, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    iput-wide v8, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 7821
    move-object/from16 v0, v41

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    iget-wide v8, v14, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    iput-wide v8, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 7822
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;-><init>()V

    move-object/from16 v0, v41

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    .line 7823
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v6, Lorg/telegram/messenger/MessagesController$112$4;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lorg/telegram/messenger/MessagesController$112$4;-><init>(Lorg/telegram/messenger/MessagesController$112;)V

    move-object/from16 v0, v41

    invoke-virtual {v3, v0, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_a5

    .line 7834
    .end local v41    # "req":Lorg/telegram/tgnet/TLRPC$TL_phone_discardCall;
    :cond_831
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v3, :cond_84d

    .line 7835
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting service for call "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v8, v14, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 7837
    :cond_84d
    sput-object v14, Lorg/telegram/messenger/voip/VoIPService;->callIShouldHavePutIntoIntent:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    .line 7838
    new-instance v30, Landroid/content/Intent;

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v6, Lorg/telegram/messenger/voip/VoIPService;

    move-object/from16 v0, v30

    invoke-direct {v0, v3, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7839
    .local v30, "intent":Landroid/content/Intent;
    const-string v3, "is_outgoing"

    const/4 v6, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7840
    const-string v6, "user_id"

    iget v3, v14, Lorg/telegram/tgnet/TLRPC$PhoneCall;->participant_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v8

    if-ne v3, v8, :cond_87c

    iget v3, v14, Lorg/telegram/tgnet/TLRPC$PhoneCall;->admin_id:I

    :goto_86e
    move-object/from16 v0, v30

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7841
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_a5

    .line 7840
    :cond_87c
    iget v3, v14, Lorg/telegram/tgnet/TLRPC$PhoneCall;->participant_id:I

    goto :goto_86e

    .line 7843
    .end local v30    # "intent":Landroid/content/Intent;
    .end local v45    # "tm":Landroid/telephony/TelephonyManager;
    :cond_87f
    if-eqz v44, :cond_88a

    if-eqz v14, :cond_88a

    .line 7844
    move-object/from16 v0, v44

    invoke-virtual {v0, v14}, Lorg/telegram/messenger/voip/VoIPService;->onCallUpdated(Lorg/telegram/tgnet/TLRPC$PhoneCall;)V

    goto/16 :goto_a5

    .line 7845
    :cond_88a
    sget-object v3, Lorg/telegram/messenger/voip/VoIPService;->callIShouldHavePutIntoIntent:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-eqz v3, :cond_a5

    .line 7846
    const-string v3, "Updated the call while the service is starting"

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 7847
    iget-wide v8, v14, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    sget-object v3, Lorg/telegram/messenger/voip/VoIPService;->callIShouldHavePutIntoIntent:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    iget-wide v10, v3, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    cmp-long v3, v8, v10

    if-nez v3, :cond_a5

    .line 7848
    sput-object v14, Lorg/telegram/messenger/voip/VoIPService;->callIShouldHavePutIntoIntent:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    goto/16 :goto_a5

    .line 7854
    .end local v14    # "call":Lorg/telegram/tgnet/TLRPC$PhoneCall;
    .end local v17    # "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    .end local v32    # "isSpecific":Z
    .end local v42    # "specificContact":Z
    .end local v43    # "specificPreferences":Landroid/content/SharedPreferences;
    .end local v44    # "svc":Lorg/telegram/messenger/voip/VoIPService;
    .end local v46    # "toDbUser":Lorg/telegram/tgnet/TLRPC$User;
    .end local v48    # "upd":Lorg/telegram/tgnet/TLRPC$TL_updatePhoneCall;
    .end local v49    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_8a1
    if-eqz v21, :cond_8b2

    .line 7855
    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 7856
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v6, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v3, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 7858
    :cond_8b2
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    const/4 v6, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v6, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->updateUsers(Ljava/util/ArrayList;ZZZ)V

    .line 7859
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v6, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->updateUsers(Ljava/util/ArrayList;ZZZ)V

    .line 7862
    .end local v2    # "a":I
    .end local v18    # "dbUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .end local v19    # "dbUsersStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .end local v21    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_8ca
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$112;->val$webPages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9a9

    .line 7863
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v6, Lorg/telegram/messenger/NotificationCenter;->didReceivedWebpagesInUpdates:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MessagesController$112;->val$webPages:Ljava/util/HashMap;

    aput-object v10, v8, v9

    invoke-virtual {v3, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 7864
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$112;->val$webPages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v56

    :cond_8f3
    :goto_8f3
    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9a9

    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/Map$Entry;

    .line 7865
    .local v26, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$WebPage;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$112;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->access$4200(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v3

    invoke-interface/range {v26 .. v26}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 7866
    .local v12, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-eqz v12, :cond_8f3

    .line 7867
    invoke-interface/range {v26 .. v26}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 7868
    .local v55, "webpage":Lorg/telegram/tgnet/TLRPC$WebPage;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 7869
    .local v7, "messagesArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    const-wide/16 v22, 0x0

    .line 7870
    .restart local v22    # "dialog_id":J
    move-object/from16 v0, v55

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    if-nez v3, :cond_92c

    move-object/from16 v0, v55

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_webPageEmpty;

    if-eqz v3, :cond_966

    .line 7871
    :cond_92c
    const/4 v2, 0x0

    .restart local v2    # "a":I
    :goto_92d
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_979

    .line 7872
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v55

    iput-object v0, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 7873
    if-nez v2, :cond_958

    .line 7874
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v22

    .line 7875
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v3}, Lorg/telegram/messenger/ImageLoader;->saveMessageThumbs(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 7877
    :cond_958
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7871
    add-int/lit8 v2, v2, 0x1

    goto :goto_92d

    .line 7880
    .end local v2    # "a":I
    :cond_966
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$112;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->access$4200(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v0, v55

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7882
    :cond_979
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8f3

    .line 7883
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaController;->getAutodownloadMask()I

    move-result v11

    invoke-virtual/range {v6 .. v11}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 7884
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v6, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v12, v8, v9

    invoke-virtual {v3, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_8f3

    .line 7890
    .end local v7    # "messagesArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v12    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v22    # "dialog_id":J
    .end local v26    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$WebPage;>;"
    .end local v55    # "webpage":Lorg/telegram/tgnet/TLRPC$WebPage;
    :cond_9a9
    const/16 v51, 0x0

    .line 7891
    .local v51, "updateDialogs":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$112;->val$messages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a8d

    .line 7892
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$112;->val$messages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9c1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9e7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Map$Entry;

    .line 7893
    .local v25, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/Long;

    .line 7894
    .local v33, "key":Ljava/lang/Long;
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Ljava/util/ArrayList;

    .line 7895
    .local v54, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController$112;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, v54

    invoke-virtual {v6, v8, v9, v0}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;)V

    goto :goto_9c1

    .line 7897
    .end local v25    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    .end local v33    # "key":Ljava/lang/Long;
    .end local v54    # "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_9e7
    const/16 v51, 0x1

    .line 7902
    :cond_9e9
    :goto_9e9
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$112;->val$editingMessages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a9e

    .line 7903
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$112;->val$editingMessages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9ff
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a9e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/Map$Entry;

    .line 7904
    .local v37, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    invoke-interface/range {v37 .. v37}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Long;

    .line 7905
    .local v22, "dialog_id":Ljava/lang/Long;
    invoke-interface/range {v37 .. v37}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 7906
    .restart local v12    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController$112;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lorg/telegram/messenger/MessageObject;

    .line 7907
    .local v35, "oldObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v35, :cond_a72

    .line 7908
    const/4 v2, 0x0

    .restart local v2    # "a":I
    :goto_a28
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_a72

    .line 7909
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lorg/telegram/messenger/MessageObject;

    .line 7910
    .local v34, "newMessage":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v35 .. v35}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-virtual/range {v34 .. v34}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    if-ne v6, v8, :cond_a9b

    .line 7911
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController$112;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7912
    move-object/from16 v0, v34

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v6, :cond_a70

    move-object/from16 v0, v34

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v6, :cond_a70

    .line 7913
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MessagesController$112;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual/range {v34 .. v34}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v34

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7915
    :cond_a70
    const/16 v51, 0x1

    .line 7920
    .end local v2    # "a":I
    .end local v34    # "newMessage":Lorg/telegram/messenger/MessageObject;
    :cond_a72
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v12, v8, v9}, Lorg/telegram/messenger/query/MessagesQuery;->loadReplyMessagesForMessages(Ljava/util/ArrayList;J)V

    .line 7921
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v8, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v22, v9, v10

    const/4 v10, 0x1

    aput-object v12, v9, v10

    invoke-virtual {v6, v8, v9}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_9ff

    .line 7898
    .end local v12    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v22    # "dialog_id":Ljava/lang/Long;
    .end local v35    # "oldObject":Lorg/telegram/messenger/MessageObject;
    .end local v37    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    :cond_a8d
    if-eqz v28, :cond_9e9

    .line 7899
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$112;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Ljava/util/HashMap;)V

    .line 7900
    const/16 v51, 0x1

    goto/16 :goto_9e9

    .line 7908
    .restart local v2    # "a":I
    .restart local v12    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v22    # "dialog_id":Ljava/lang/Long;
    .restart local v34    # "newMessage":Lorg/telegram/messenger/MessageObject;
    .restart local v35    # "oldObject":Lorg/telegram/messenger/MessageObject;
    .restart local v37    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    :cond_a9b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a28

    .line 7924
    .end local v2    # "a":I
    .end local v12    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v22    # "dialog_id":Ljava/lang/Long;
    .end local v34    # "newMessage":Lorg/telegram/messenger/MessageObject;
    .end local v35    # "oldObject":Lorg/telegram/messenger/MessageObject;
    .end local v37    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    :cond_a9e
    if-eqz v51, :cond_aac

    .line 7925
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v6, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v3, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 7928
    :cond_aac
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/MessagesController$112;->val$printChangedArg:Z

    if-eqz v3, :cond_ab4

    .line 7929
    or-int/lit8 v52, v52, 0x40

    .line 7931
    :cond_ab4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$112;->val$contactsIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_ac6

    .line 7932
    or-int/lit8 v52, v52, 0x1

    .line 7933
    move/from16 v0, v52

    or-int/lit16 v0, v0, 0x80

    move/from16 v52, v0

    .line 7935
    :cond_ac6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$112;->val$chatInfoToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_af1

    .line 7936
    const/4 v2, 0x0

    .restart local v2    # "a":I
    :goto_ad1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$112;->val$chatInfoToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_af1

    .line 7937
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$112;->val$chatInfoToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    .line 7938
    .local v29, "info":Lorg/telegram/tgnet/TLRPC$ChatParticipants;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/MessagesStorage;->updateChatParticipants(Lorg/telegram/tgnet/TLRPC$ChatParticipants;)V

    .line 7936
    add-int/lit8 v2, v2, 0x1

    goto :goto_ad1

    .line 7941
    .end local v2    # "a":I
    .end local v29    # "info":Lorg/telegram/tgnet/TLRPC$ChatParticipants;
    :cond_af1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$112;->val$channelViews:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eqz v3, :cond_b0e

    .line 7942
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v6, Lorg/telegram/messenger/NotificationCenter;->didUpdatedMessagesViews:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MessagesController$112;->val$channelViews:Landroid/util/SparseArray;

    aput-object v10, v8, v9

    invoke-virtual {v3, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 7944
    :cond_b0e
    if-eqz v52, :cond_b23

    .line 7945
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v6, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v3, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 7947
    :cond_b23
    return-void
.end method
