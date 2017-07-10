.class Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;
.super Ljava/lang/Object;
.source "OnlineContactsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    .prologue
    .line 235
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 28
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->searching:Z
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->access$000(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)Z

    move-result v18

    if-eqz v18, :cond_116

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->searchWas:Z
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->access$100(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)Z

    move-result v18

    if-eqz v18, :cond_116

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->access$200(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)Lorg/telegram/ui/Adapters/SearchAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/SearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v16

    check-cast v16, Lorg/telegram/tgnet/TLRPC$User;

    .line 240
    .local v16, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v16, :cond_2f

    .line 363
    .end local v16    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2e
    :goto_2e
    return-void

    .line 243
    .restart local v16    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->access$200(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)Lorg/telegram/ui/Adapters/SearchAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/SearchAdapter;->isGlobalSearch(I)Z

    move-result v18

    if-eqz v18, :cond_75

    .line 244
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v17, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 247
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

    .line 249
    .end local v17    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_75
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->returnAsResult:Z
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->access$300(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)Z

    move-result v18

    if-eqz v18, :cond_be

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->ignoreUsers:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->access$400(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)Ljava/util/HashMap;

    move-result-object v18

    if-eqz v18, :cond_a7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->ignoreUsers:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->access$400(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)Ljava/util/HashMap;

    move-result-object v18

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2e

    .line 253
    :cond_a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move/from16 v2, v19

    move-object/from16 v3, v20

    # invokes: Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->didSelectResult(Lorg/telegram/tgnet/TLRPC$User;ZLjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->access$500(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;Lorg/telegram/tgnet/TLRPC$User;ZLjava/lang/String;)V

    goto/16 :goto_2e

    .line 255
    :cond_be
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->createSecretChat:Z
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->access$600(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)Z

    move-result v18

    if-eqz v18, :cond_ee

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    # setter for: Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->creatingChat:Z
    invoke-static/range {v18 .. v19}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->access$702(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;Z)Z

    .line 257
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/SecretChatHelper;->startSecretChat(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;)V

    goto/16 :goto_2e

    .line 259
    :cond_ee
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 260
    .local v6, "args":Landroid/os/Bundle;
    const-string v18, "user_id"

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v18, v0

    new-instance v19, Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_2e

    .line 265
    .end local v6    # "args":Landroid/os/Bundle;
    .end local v16    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_116
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->access$800(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getSectionForPosition(I)I

    move-result v14

    .line 266
    .local v14, "section":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->access$800(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v13

    .line 267
    .local v13, "row":I
    if-ltz v13, :cond_2e

    if-ltz v14, :cond_2e

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->onlyUsers:Z
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->access$900(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)Z

    move-result v18

    if-eqz v18, :cond_156

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->chat_id:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->access$1000(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)I

    move-result v18

    if-eqz v18, :cond_2a8

    :cond_156
    if-nez v14, :cond_2a8

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->needPhonebook:Z
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->access$1100(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)Z

    move-result v18

    if-eqz v18, :cond_1b1

    .line 272
    if-nez v13, :cond_2e

    .line 274
    :try_start_166
    new-instance v10, Landroid/content/Intent;

    const-string v18, "android.intent.action.SEND"

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    .local v10, "intent":Landroid/content/Intent;
    const-string v18, "text/plain"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string v18, "android.intent.extra.TEXT"

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/messenger/ContactsController;->getInviteText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->getParentActivity()Landroid/app/Activity;

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
    :try_end_1a5
    .catch Ljava/lang/Exception; {:try_start_166 .. :try_end_1a5} :catch_1a7

    goto/16 :goto_2e

    .line 278
    .end local v10    # "intent":Landroid/content/Intent;
    :catch_1a7
    move-exception v9

    .line 279
    .local v9, "e":Ljava/lang/Exception;
    const-string v18, "tmessages"

    move-object/from16 v0, v18

    invoke-static {v0, v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 282
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1b1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->chat_id:I
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->access$1000(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)I

    move-result v18

    if-eqz v18, :cond_1d9

    .line 283
    if-nez v13, :cond_2e

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v18, v0

    new-instance v19, Lorg/telegram/ui/GroupInviteActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->chat_id:I
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->access$1000(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)I

    move-result v20

    invoke-direct/range {v19 .. v20}, Lorg/telegram/ui/GroupInviteActivity;-><init>(I)V

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_2e

    .line 287
    :cond_1d9
    if-nez v13, :cond_1fb

    .line 288
    const-string v18, "chat_create"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/MessagesController;->isFeatureEnabled(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v18

    if-eqz v18, :cond_2e

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v18, v0

    new-instance v19, Lorg/telegram/ui/GroupCreateActivity;

    invoke-direct/range {v19 .. v19}, Lorg/telegram/ui/GroupCreateActivity;-><init>()V

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_2e

    .line 292
    :cond_1fb
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_23b

    .line 293
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 294
    .restart local v6    # "args":Landroid/os/Bundle;
    const-string v18, "onlyUsers"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 295
    const-string v18, "destroyAfterSelect"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 296
    const-string v18, "createSecretChat"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v18, v0

    new-instance v19, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;-><init>(Landroid/os/Bundle;)V

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_2e

    .line 298
    .end local v6    # "args":Landroid/os/Bundle;
    :cond_23b
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v13, v0, :cond_2e

    .line 299
    const-string v18, "broadcast_create"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/MessagesController;->isFeatureEnabled(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v18

    if-eqz v18, :cond_2e

    .line 302
    sget-object v18, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v19, "mainconfig"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 303
    .local v12, "preferences":Landroid/content/SharedPreferences;
    const-string v18, "channel_intro"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_289

    .line 304
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 305
    .restart local v6    # "args":Landroid/os/Bundle;
    const-string v18, "step"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v18, v0

    new-instance v19, Lorg/telegram/ui/ChannelCreateActivity;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Lorg/telegram/ui/ChannelCreateActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_2e

    .line 308
    .end local v6    # "args":Landroid/os/Bundle;
    :cond_289
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v18, v0

    new-instance v19, Lorg/telegram/ui/ChannelIntroActivity;

    invoke-direct/range {v19 .. v19}, Lorg/telegram/ui/ChannelIntroActivity;-><init>()V

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 309
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "channel_intro"

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2e

    .line 314
    .end local v12    # "preferences":Landroid/content/SharedPreferences;
    :cond_2a8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->access$800(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v13}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object v11

    .line 316
    .local v11, "item":Ljava/lang/Object;
    instance-of v0, v11, Lorg/telegram/tgnet/TLRPC$User;

    move/from16 v18, v0

    if-eqz v18, :cond_363

    move-object/from16 v16, v11

    .line 317
    check-cast v16, Lorg/telegram/tgnet/TLRPC$User;

    .line 318
    .restart local v16    # "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->returnAsResult:Z
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->access$300(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)Z

    move-result v18

    if-eqz v18, :cond_30b

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->ignoreUsers:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->access$400(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)Ljava/util/HashMap;

    move-result-object v18

    if-eqz v18, :cond_2f4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->ignoreUsers:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->access$400(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)Ljava/util/HashMap;

    move-result-object v18

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2e

    .line 322
    :cond_2f4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move/from16 v2, v19

    move-object/from16 v3, v20

    # invokes: Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->didSelectResult(Lorg/telegram/tgnet/TLRPC$User;ZLjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->access$500(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;Lorg/telegram/tgnet/TLRPC$User;ZLjava/lang/String;)V

    goto/16 :goto_2e

    .line 324
    :cond_30b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->createSecretChat:Z
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->access$600(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;)Z

    move-result v18

    if-eqz v18, :cond_33b

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    # setter for: Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->creatingChat:Z
    invoke-static/range {v18 .. v19}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->access$702(Lorg/telegram/ui/Telehgram/OnlineContactsActivity;Z)Z

    .line 326
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/SecretChatHelper;->startSecretChat(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;)V

    goto/16 :goto_2e

    .line 328
    :cond_33b
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 329
    .restart local v6    # "args":Landroid/os/Bundle;
    const-string v18, "user_id"

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v18, v0

    new-instance v19, Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_2e

    .line 333
    .end local v6    # "args":Landroid/os/Bundle;
    .end local v16    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_363
    instance-of v0, v11, Lorg/telegram/messenger/ContactsController$Contact;

    move/from16 v18, v0

    if-eqz v18, :cond_2e

    move-object v8, v11

    .line 334
    check-cast v8, Lorg/telegram/messenger/ContactsController$Contact;

    .line 335
    .local v8, "contact":Lorg/telegram/messenger/ContactsController$Contact;
    const/4 v15, 0x0

    .line 336
    .local v15, "usePhone":Ljava/lang/String;
    iget-object v0, v8, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_383

    .line 337
    iget-object v0, v8, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "usePhone":Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 339
    .restart local v15    # "usePhone":Ljava/lang/String;
    :cond_383
    if-eqz v15, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    if-eqz v18, :cond_2e

    .line 342
    new-instance v7, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 343
    .local v7, "builder":Landroid/app/AlertDialog$Builder;
    const-string v18, "InviteUser"

    const v19, 0x7f0702a5

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 344
    const-string v18, "AppName"

    const v19, 0x7f070092

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 345
    move-object v5, v15

    .line 346
    .local v5, "arg1":Ljava/lang/String;
    const-string v18, "OK"

    const v19, 0x7f0703d4

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    new-instance v19, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3$1;-><init>(Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 358
    const-string v18, "Cancel"

    const v19, 0x7f0700fe

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Telehgram/OnlineContactsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    move-object/from16 v18, v0

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_2e
.end method
