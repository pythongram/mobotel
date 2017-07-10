.class Lorg/telegram/ui/ContactsActivity$3;
.super Ljava/lang/Object;
.source "ContactsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ContactsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ContactsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ContactsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ContactsActivity;

    .prologue
    .line 248
    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 25
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->searching:Z
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->access$000(Lorg/telegram/ui/ContactsActivity;)Z

    move-result v18

    if-eqz v18, :cond_134

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->searchWas:Z
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->access$200(Lorg/telegram/ui/ContactsActivity;)Z

    move-result v18

    if-eqz v18, :cond_134

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->access$100(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Adapters/SearchAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/SearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v16

    check-cast v16, Lorg/telegram/tgnet/TLRPC$User;

    .line 253
    .local v16, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v16, :cond_2f

    .line 384
    .end local v16    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2e
    :goto_2e
    return-void

    .line 256
    .restart local v16    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->access$100(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Adapters/SearchAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/SearchAdapter;->isGlobalSearch(I)Z

    move-result v18

    if-eqz v18, :cond_75

    .line 257
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v17, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 260
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 262
    .end local v17    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_75
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->returnAsResult:Z
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->access$600(Lorg/telegram/ui/ContactsActivity;)Z

    move-result v18

    if-eqz v18, :cond_be

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->ignoreUsers:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->access$700(Lorg/telegram/ui/ContactsActivity;)Ljava/util/HashMap;

    move-result-object v18

    if-eqz v18, :cond_a7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->ignoreUsers:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->access$700(Lorg/telegram/ui/ContactsActivity;)Ljava/util/HashMap;

    move-result-object v18

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2e

    .line 266
    :cond_a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move/from16 v2, v19

    move-object/from16 v3, v20

    # invokes: Lorg/telegram/ui/ContactsActivity;->didSelectResult(Lorg/telegram/tgnet/TLRPC$User;ZLjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/ContactsActivity;->access$800(Lorg/telegram/ui/ContactsActivity;Lorg/telegram/tgnet/TLRPC$User;ZLjava/lang/String;)V

    goto/16 :goto_2e

    .line 268
    :cond_be
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->access$900(Lorg/telegram/ui/ContactsActivity;)Z

    move-result v18

    if-eqz v18, :cond_fe

    .line 269
    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v18, v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2e

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    # setter for: Lorg/telegram/ui/ContactsActivity;->creatingChat:Z
    invoke-static/range {v18 .. v19}, Lorg/telegram/ui/ContactsActivity;->access$1002(Lorg/telegram/ui/ContactsActivity;Z)Z

    .line 273
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/ContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/SecretChatHelper;->startSecretChat(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;)V

    goto/16 :goto_2e

    .line 275
    :cond_fe
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 276
    .local v6, "args":Landroid/os/Bundle;
    const-string v18, "user_id"

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v18

    if-eqz v18, :cond_2e

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    new-instance v19, Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lorg/telegram/ui/ContactsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_2e

    .line 283
    .end local v6    # "args":Landroid/os/Bundle;
    .end local v16    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_134
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->access$300(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getSectionForPosition(I)I

    move-result v14

    .line 284
    .local v14, "section":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->access$300(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getPositionInSectionForPosition(I)I

    move-result v13

    .line 285
    .local v13, "row":I
    if-ltz v13, :cond_2e

    if-ltz v14, :cond_2e

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->onlyUsers:Z
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->access$1100(Lorg/telegram/ui/ContactsActivity;)Z

    move-result v18

    if-eqz v18, :cond_174

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->chat_id:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->access$1200(Lorg/telegram/ui/ContactsActivity;)I

    move-result v18

    if-eqz v18, :cond_2d1

    :cond_174
    if-nez v14, :cond_2d1

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->needPhonebook:Z
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->access$1300(Lorg/telegram/ui/ContactsActivity;)Z

    move-result v18

    if-eqz v18, :cond_1cb

    .line 290
    if-nez v13, :cond_2e

    .line 292
    :try_start_184
    new-instance v10, Landroid/content/Intent;

    const-string v18, "android.intent.action.SEND"

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    .local v10, "intent":Landroid/content/Intent;
    const-string v18, "text/plain"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string v18, "android.intent.extra.TEXT"

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/messenger/ContactsController;->getInviteText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    const-string v19, "InviteFriends"

    const v20, 0x7f07029f

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v10, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v19

    const/16 v20, 0x1f4

    invoke-virtual/range {v18 .. v20}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1c3
    .catch Ljava/lang/Exception; {:try_start_184 .. :try_end_1c3} :catch_1c5

    goto/16 :goto_2e

    .line 296
    .end local v10    # "intent":Landroid/content/Intent;
    :catch_1c5
    move-exception v9

    .line 297
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 300
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1cb
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->chat_id:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->access$1200(Lorg/telegram/ui/ContactsActivity;)I

    move-result v18

    if-eqz v18, :cond_1f3

    .line 301
    if-nez v13, :cond_2e

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    new-instance v19, Lorg/telegram/ui/GroupInviteActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->chat_id:I
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/ContactsActivity;->access$1200(Lorg/telegram/ui/ContactsActivity;)I

    move-result v20

    invoke-direct/range {v19 .. v20}, Lorg/telegram/ui/GroupInviteActivity;-><init>(I)V

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/ContactsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_2e

    .line 305
    :cond_1f3
    if-nez v13, :cond_215

    .line 306
    const-string v18, "chat_create"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/MessagesController;->isFeatureEnabled(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v18

    if-eqz v18, :cond_2e

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    new-instance v19, Lorg/telegram/ui/GroupCreateActivity;

    invoke-direct/range {v19 .. v19}, Lorg/telegram/ui/GroupCreateActivity;-><init>()V

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lorg/telegram/ui/ContactsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_2e

    .line 310
    :cond_215
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_260

    .line 311
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 312
    .restart local v6    # "args":Landroid/os/Bundle;
    const-string v18, "onlyUsers"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 313
    const-string v18, "destroyAfterSelect"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 314
    const-string v18, "createSecretChat"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 315
    const-string v18, "allowBots"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    new-instance v19, Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Lorg/telegram/ui/ContactsActivity;-><init>(Landroid/os/Bundle;)V

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lorg/telegram/ui/ContactsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_2e

    .line 317
    .end local v6    # "args":Landroid/os/Bundle;
    :cond_260
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v13, v0, :cond_2e

    .line 318
    const-string v18, "broadcast_create"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/MessagesController;->isFeatureEnabled(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v18

    if-eqz v18, :cond_2e

    .line 321
    sget-object v18, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v19, "mainconfig"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 322
    .local v12, "preferences":Landroid/content/SharedPreferences;
    sget-boolean v18, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-nez v18, :cond_2b2

    const-string v18, "channel_intro"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_2b2

    .line 323
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 324
    .restart local v6    # "args":Landroid/os/Bundle;
    const-string v18, "step"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    new-instance v19, Lorg/telegram/ui/ChannelCreateActivity;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Lorg/telegram/ui/ChannelCreateActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/ContactsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_2e

    .line 327
    .end local v6    # "args":Landroid/os/Bundle;
    :cond_2b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    new-instance v19, Lorg/telegram/ui/ChannelIntroActivity;

    invoke-direct/range {v19 .. v19}, Lorg/telegram/ui/ChannelIntroActivity;-><init>()V

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/ContactsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 328
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "channel_intro"

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2e

    .line 333
    .end local v12    # "preferences":Landroid/content/SharedPreferences;
    :cond_2d1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->access$300(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v13}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object v11

    .line 335
    .local v11, "item":Ljava/lang/Object;
    instance-of v0, v11, Lorg/telegram/tgnet/TLRPC$User;

    move/from16 v18, v0

    if-eqz v18, :cond_39a

    move-object/from16 v16, v11

    .line 336
    check-cast v16, Lorg/telegram/tgnet/TLRPC$User;

    .line 337
    .restart local v16    # "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->returnAsResult:Z
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->access$600(Lorg/telegram/ui/ContactsActivity;)Z

    move-result v18

    if-eqz v18, :cond_334

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->ignoreUsers:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->access$700(Lorg/telegram/ui/ContactsActivity;)Ljava/util/HashMap;

    move-result-object v18

    if-eqz v18, :cond_31d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->ignoreUsers:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->access$700(Lorg/telegram/ui/ContactsActivity;)Ljava/util/HashMap;

    move-result-object v18

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2e

    .line 341
    :cond_31d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move/from16 v2, v19

    move-object/from16 v3, v20

    # invokes: Lorg/telegram/ui/ContactsActivity;->didSelectResult(Lorg/telegram/tgnet/TLRPC$User;ZLjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/ContactsActivity;->access$800(Lorg/telegram/ui/ContactsActivity;Lorg/telegram/tgnet/TLRPC$User;ZLjava/lang/String;)V

    goto/16 :goto_2e

    .line 343
    :cond_334
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->access$900(Lorg/telegram/ui/ContactsActivity;)Z

    move-result v18

    if-eqz v18, :cond_364

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    # setter for: Lorg/telegram/ui/ContactsActivity;->creatingChat:Z
    invoke-static/range {v18 .. v19}, Lorg/telegram/ui/ContactsActivity;->access$1002(Lorg/telegram/ui/ContactsActivity;Z)Z

    .line 345
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/ContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/SecretChatHelper;->startSecretChat(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;)V

    goto/16 :goto_2e

    .line 347
    :cond_364
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 348
    .restart local v6    # "args":Landroid/os/Bundle;
    const-string v18, "user_id"

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v18

    if-eqz v18, :cond_2e

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    new-instance v19, Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lorg/telegram/ui/ContactsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_2e

    .line 354
    .end local v6    # "args":Landroid/os/Bundle;
    .end local v16    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_39a
    instance-of v0, v11, Lorg/telegram/messenger/ContactsController$Contact;

    move/from16 v18, v0

    if-eqz v18, :cond_2e

    move-object v8, v11

    .line 355
    check-cast v8, Lorg/telegram/messenger/ContactsController$Contact;

    .line 356
    .local v8, "contact":Lorg/telegram/messenger/ContactsController$Contact;
    const/4 v15, 0x0

    .line 357
    .local v15, "usePhone":Ljava/lang/String;
    iget-object v0, v8, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_3ba

    .line 358
    iget-object v0, v8, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "usePhone":Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 360
    .restart local v15    # "usePhone":Ljava/lang/String;
    :cond_3ba
    if-eqz v15, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    if-eqz v18, :cond_2e

    .line 363
    new-instance v7, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/ContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 364
    .local v7, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v18, "InviteUser"

    const v19, 0x7f0702a5

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 365
    const-string v18, "AppName"

    const v19, 0x7f070092

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 366
    move-object v5, v15

    .line 367
    .local v5, "arg1":Ljava/lang/String;
    const-string v18, "OK"

    const v19, 0x7f0703d4

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    new-instance v19, Lorg/telegram/ui/ContactsActivity$3$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lorg/telegram/ui/ContactsActivity$3$1;-><init>(Lorg/telegram/ui/ContactsActivity$3;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 379
    const-string v18, "Cancel"

    const v19, 0x7f0700fe

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ContactsActivity$3;->this$0:Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v18, v0

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/ContactsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_2e
.end method
