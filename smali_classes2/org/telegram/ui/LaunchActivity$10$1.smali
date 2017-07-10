.class Lorg/telegram/ui/LaunchActivity$10$1;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity$10;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LaunchActivity$10;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity$10;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/ui/LaunchActivity$10;

    .prologue
    .line 1410
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$10$1;->this$1:Lorg/telegram/ui/LaunchActivity$10;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$10$1;->val$response:Lorg/telegram/tgnet/TLObject;

    iput-object p3, p0, Lorg/telegram/ui/LaunchActivity$10$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 1413
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$10$1;->this$1:Lorg/telegram/ui/LaunchActivity$10;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$10;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/LaunchActivity;->isFinishing()Z

    move-result v12

    if-nez v12, :cond_13f

    .line 1415
    :try_start_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$10$1;->this$1:Lorg/telegram/ui/LaunchActivity$10;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$10;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_15} :catch_140

    .line 1419
    :goto_15
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/LaunchActivity$10$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    .line 1420
    .local v10, "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$10$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v12, :cond_32d

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$10$1;->this$1:Lorg/telegram/ui/LaunchActivity$10;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$10;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v12}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v12

    if-eqz v12, :cond_32d

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$10$1;->this$1:Lorg/telegram/ui/LaunchActivity$10;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$10;->val$game:Ljava/lang/String;

    if-eqz v12, :cond_45

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$10$1;->this$1:Lorg/telegram/ui/LaunchActivity$10;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$10;->val$game:Ljava/lang/String;

    if-eqz v12, :cond_32d

    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_32d

    .line 1421
    :cond_45
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget-object v13, v10, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1422
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget-object v13, v10, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 1423
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v12

    iget-object v13, v10, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    iget-object v14, v10, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v12 .. v16}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 1424
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$10$1;->this$1:Lorg/telegram/ui/LaunchActivity$10;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$10;->val$game:Ljava/lang/String;

    if-eqz v12, :cond_1a9

    .line 1425
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1426
    .local v2, "args":Landroid/os/Bundle;
    const-string v12, "onlySelect"

    const/4 v13, 0x1

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1427
    const-string v12, "cantSendToChannels"

    const/4 v13, 0x1

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1428
    const-string v12, "dialogsType"

    const/4 v13, 0x1

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1429
    const-string v12, "selectAlertString"

    const-string v13, "SendGameTo"

    const v14, 0x7f0704d8

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    const-string v12, "selectAlertStringGroup"

    const-string v13, "SendGameToGroup"

    const v14, 0x7f0704d9

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    new-instance v6, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {v6, v2}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 1432
    .local v6, "fragment":Lorg/telegram/ui/DialogsActivity;
    new-instance v12, Lorg/telegram/ui/LaunchActivity$10$1$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v10}, Lorg/telegram/ui/LaunchActivity$10$1$1;-><init>(Lorg/telegram/ui/LaunchActivity$10$1;Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;)V

    invoke-virtual {v6, v12}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 1465
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v12

    if-eqz v12, :cond_148

    .line 1466
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$10$1;->this$1:Lorg/telegram/ui/LaunchActivity$10;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$10;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v12}, Lorg/telegram/ui/LaunchActivity;->access$600(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v12

    iget-object v12, v12, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_146

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$10$1;->this$1:Lorg/telegram/ui/LaunchActivity$10;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$10;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v12}, Lorg/telegram/ui/LaunchActivity;->access$600(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v12

    iget-object v12, v12, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/LaunchActivity$10$1;->this$1:Lorg/telegram/ui/LaunchActivity$10;

    iget-object v13, v13, Lorg/telegram/ui/LaunchActivity$10;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v13}, Lorg/telegram/ui/LaunchActivity;->access$600(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v13

    iget-object v13, v13, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Lorg/telegram/ui/DialogsActivity;

    if-eqz v12, :cond_146

    const/4 v9, 0x1

    .line 1470
    .local v9, "removeLast":Z
    :goto_f0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$10$1;->this$1:Lorg/telegram/ui/LaunchActivity$10;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$10;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v12}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v12, v6, v9, v13, v14}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 1471
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_186

    .line 1472
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    .line 1476
    :cond_112
    :goto_112
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$10$1;->this$1:Lorg/telegram/ui/LaunchActivity$10;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$10;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 1477
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v12

    if-eqz v12, :cond_19b

    .line 1478
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$10$1;->this$1:Lorg/telegram/ui/LaunchActivity$10;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$10;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v12}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1479
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$10$1;->this$1:Lorg/telegram/ui/LaunchActivity$10;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$10;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v12}, Lorg/telegram/ui/LaunchActivity;->access$300(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1549
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v6    # "fragment":Lorg/telegram/ui/DialogsActivity;
    .end local v9    # "removeLast":Z
    .end local v10    # "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;
    :cond_13f
    :goto_13f
    return-void

    .line 1416
    :catch_140
    move-exception v3

    .line 1417
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 1466
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "args":Landroid/os/Bundle;
    .restart local v6    # "fragment":Lorg/telegram/ui/DialogsActivity;
    .restart local v10    # "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;
    :cond_146
    const/4 v9, 0x0

    goto :goto_f0

    .line 1468
    :cond_148
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$10$1;->this$1:Lorg/telegram/ui/LaunchActivity$10;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$10;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v12}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v12

    iget-object v12, v12, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_184

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$10$1;->this$1:Lorg/telegram/ui/LaunchActivity$10;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$10;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v12}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v12

    iget-object v12, v12, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/LaunchActivity$10$1;->this$1:Lorg/telegram/ui/LaunchActivity$10;

    iget-object v13, v13, Lorg/telegram/ui/LaunchActivity$10;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v13}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v13

    iget-object v13, v13, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Lorg/telegram/ui/DialogsActivity;

    if-eqz v12, :cond_184

    const/4 v9, 0x1

    .restart local v9    # "removeLast":Z
    :goto_182
    goto/16 :goto_f0

    .end local v9    # "removeLast":Z
    :cond_184
    const/4 v9, 0x0

    goto :goto_182

    .line 1473
    .restart local v9    # "removeLast":Z
    :cond_186
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/ArticleViewer;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_112

    .line 1474
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    goto/16 :goto_112

    .line 1481
    :cond_19b
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$10$1;->this$1:Lorg/telegram/ui/LaunchActivity$10;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$10;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto :goto_13f

    .line 1483
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v6    # "fragment":Lorg/telegram/ui/DialogsActivity;
    .end local v9    # "removeLast":Z
    :cond_1a9
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$10$1;->this$1:Lorg/telegram/ui/LaunchActivity$10;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$10;->val$botChat:Ljava/lang/String;

    if-eqz v12, :cond_238

    .line 1484
    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1ec

    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$User;

    move-object v11, v12

    .line 1485
    .local v11, "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_1c3
    if-eqz v11, :cond_1cd

    iget-boolean v12, v11, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v12, :cond_1ee

    iget-boolean v12, v11, Lorg/telegram/tgnet/TLRPC$User;->bot_nochats:Z

    if-eqz v12, :cond_1ee

    .line 1487
    :cond_1cd
    :try_start_1cd
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$10$1;->this$1:Lorg/telegram/ui/LaunchActivity$10;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$10;->this$0:Lorg/telegram/ui/LaunchActivity;

    const-string v13, "BotCantJoinGroups"

    const v14, 0x7f0700da

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V
    :try_end_1e4
    .catch Ljava/lang/Exception; {:try_start_1cd .. :try_end_1e4} :catch_1e6

    goto/16 :goto_13f

    .line 1488
    :catch_1e6
    move-exception v3

    .line 1489
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_13f

    .line 1484
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1ec
    const/4 v11, 0x0

    goto :goto_1c3

    .line 1493
    .restart local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1ee
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1494
    .restart local v2    # "args":Landroid/os/Bundle;
    const-string v12, "onlySelect"

    const/4 v13, 0x1

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1495
    const-string v12, "dialogsType"

    const/4 v13, 0x2

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1496
    const-string v12, "addToGroupAlertString"

    const-string v13, "AddToTheGroupTitle"

    const v14, 0x7f070078

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v11}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "%1$s"

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    new-instance v6, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {v6, v2}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 1498
    .restart local v6    # "fragment":Lorg/telegram/ui/DialogsActivity;
    new-instance v12, Lorg/telegram/ui/LaunchActivity$10$1$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v11}, Lorg/telegram/ui/LaunchActivity$10$1$2;-><init>(Lorg/telegram/ui/LaunchActivity$10$1;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v6, v12}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 1511
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$10$1;->this$1:Lorg/telegram/ui/LaunchActivity$10;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$10;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v12, v6}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto/16 :goto_13f

    .line 1514
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v6    # "fragment":Lorg/telegram/ui/DialogsActivity;
    .end local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_238
    const/4 v7, 0x0

    .line 1515
    .local v7, "isBot":Z
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1516
    .restart local v2    # "args":Landroid/os/Bundle;
    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2ea

    .line 1517
    const-string v13, "chat_id"

    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$Chat;

    iget v12, v12, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-virtual {v2, v13, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1518
    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$Chat;

    iget v12, v12, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v12, v12

    int-to-long v4, v12

    .line 1523
    .local v4, "dialog_id":J
    :goto_263
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$10$1;->this$1:Lorg/telegram/ui/LaunchActivity$10;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$10;->val$botUser:Ljava/lang/String;

    if-eqz v12, :cond_28c

    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_28c

    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v12, v12, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v12, :cond_28c

    .line 1524
    const-string v12, "botUser"

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/LaunchActivity$10$1;->this$1:Lorg/telegram/ui/LaunchActivity$10;

    iget-object v13, v13, Lorg/telegram/ui/LaunchActivity$10;->val$botUser:Ljava/lang/String;

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    const/4 v7, 0x1

    .line 1527
    :cond_28c
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$10$1;->this$1:Lorg/telegram/ui/LaunchActivity$10;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$10;->val$messageId:Ljava/lang/Integer;

    if-eqz v12, :cond_2a3

    .line 1528
    const-string v12, "message_id"

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/LaunchActivity$10$1;->this$1:Lorg/telegram/ui/LaunchActivity$10;

    iget-object v13, v13, Lorg/telegram/ui/LaunchActivity$10;->val$messageId:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1530
    :cond_2a3
    # getter for: Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->access$900()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_308

    # getter for: Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->access$900()Ljava/util/ArrayList;

    move-result-object v12

    # getter for: Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->access$900()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object v8, v12

    .line 1531
    .local v8, "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :goto_2c2
    if-eqz v8, :cond_2ca

    invoke-static {v2, v8}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v12

    if-eqz v12, :cond_13f

    .line 1532
    :cond_2ca
    if-eqz v7, :cond_30a

    if-eqz v8, :cond_30a

    instance-of v12, v8, Lorg/telegram/ui/ChatActivity;

    if-eqz v12, :cond_30a

    move-object v12, v8

    check-cast v12, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v12

    cmp-long v12, v12, v4

    if-nez v12, :cond_30a

    .line 1533
    check-cast v8, Lorg/telegram/ui/ChatActivity;

    .end local v8    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$10$1;->this$1:Lorg/telegram/ui/LaunchActivity$10;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$10;->val$botUser:Ljava/lang/String;

    invoke-virtual {v8, v12}, Lorg/telegram/ui/ChatActivity;->setBotUser(Ljava/lang/String;)V

    goto/16 :goto_13f

    .line 1520
    .end local v4    # "dialog_id":J
    :cond_2ea
    const-string v13, "user_id"

    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$User;

    iget v12, v12, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v2, v13, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1521
    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$User;

    iget v12, v12, Lorg/telegram/tgnet/TLRPC$User;->id:I

    int-to-long v4, v12

    .restart local v4    # "dialog_id":J
    goto/16 :goto_263

    .line 1530
    :cond_308
    const/4 v8, 0x0

    goto :goto_2c2

    .line 1535
    .restart local v8    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_30a
    new-instance v6, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v6, v2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 1536
    .local v6, "fragment":Lorg/telegram/ui/ChatActivity;
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v12

    sget v13, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v12, v13, v14}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1537
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$10$1;->this$1:Lorg/telegram/ui/LaunchActivity$10;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$10;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v12}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v12, v6, v13, v14, v15}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    goto/16 :goto_13f

    .line 1543
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v4    # "dialog_id":J
    .end local v6    # "fragment":Lorg/telegram/ui/ChatActivity;
    .end local v7    # "isBot":Z
    .end local v8    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_32d
    :try_start_32d
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/LaunchActivity$10$1;->this$1:Lorg/telegram/ui/LaunchActivity$10;

    iget-object v12, v12, Lorg/telegram/ui/LaunchActivity$10;->this$0:Lorg/telegram/ui/LaunchActivity;

    const-string v13, "NoUsernameFound"

    const v14, 0x7f070371

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V
    :try_end_344
    .catch Ljava/lang/Exception; {:try_start_32d .. :try_end_344} :catch_346

    goto/16 :goto_13f

    .line 1544
    :catch_346
    move-exception v3

    .line 1545
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_13f
.end method
