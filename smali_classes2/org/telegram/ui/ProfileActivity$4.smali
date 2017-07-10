.class Lorg/telegram/ui/ProfileActivity$4;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 385
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 23
    .param p1, "id"    # I

    .prologue
    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_b

    .line 559
    :cond_a
    :goto_a
    return-void

    .line 391
    :cond_b
    const/4 v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_18

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ProfileActivity;->finishFragment()V

    goto :goto_a

    .line 393
    :cond_18
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_ed

    .line 394
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v19

    .line 395
    .local v19, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v19, :cond_a

    .line 398
    move-object/from16 v0, v19

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v2, :cond_a2

    .line 399
    new-instance v13, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v13, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 400
    .local v13, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->userBlocked:Z
    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v2

    if-nez v2, :cond_95

    .line 401
    const-string v2, "AreYouSureBlockContact"

    const v3, 0x7f0700a3

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 405
    :goto_5c
    const-string v2, "AppName"

    const v3, 0x7f070092

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 406
    const-string v2, "OK"

    const v3, 0x7f0703d4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ProfileActivity$4$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ProfileActivity$4$1;-><init>(Lorg/telegram/ui/ProfileActivity$4;)V

    invoke-virtual {v13, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 416
    const-string v2, "Cancel"

    const v3, 0x7f0700fe

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_a

    .line 403
    :cond_95
    const-string v2, "AreYouSureUnblockContact"

    const v3, 0x7f0700b4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_5c

    .line 419
    .end local v13    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_a2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->userBlocked:Z
    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v2

    if-nez v2, :cond_bd

    .line 420
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->blockUser(I)V

    goto/16 :goto_a

    .line 422
    :cond_bd
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->unblockUser(I)V

    .line 423
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    const-string v3, "/start"

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ProfileActivity;->finishFragment()V

    goto/16 :goto_a

    .line 427
    .end local v19    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_ed
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_128

    .line 428
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v19

    .line 429
    .restart local v19    # "user":Lorg/telegram/tgnet/TLRPC$User;
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 430
    .local v12, "args":Landroid/os/Bundle;
    const-string v2, "user_id"

    move-object/from16 v0, v19

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 431
    const-string v2, "addContact"

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v3, Lorg/telegram/ui/ContactAddActivity;

    invoke-direct {v3, v12}, Lorg/telegram/ui/ContactAddActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ProfileActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_a

    .line 433
    .end local v12    # "args":Landroid/os/Bundle;
    .end local v19    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_128
    const/4 v2, 0x3

    move/from16 v0, p1

    if-ne v0, v2, :cond_175

    .line 434
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 435
    .restart local v12    # "args":Landroid/os/Bundle;
    const-string v2, "onlySelect"

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 436
    const-string v2, "dialogsType"

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 437
    const-string v2, "selectAlertString"

    const-string v3, "SendContactTo"

    const v4, 0x7f0704d6

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v2, "selectAlertStringGroup"

    const-string v3, "SendContactToGroup"

    const v4, 0x7f0704d7

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    new-instance v17, Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 440
    .local v17, "fragment":Lorg/telegram/ui/DialogsActivity;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ProfileActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_a

    .line 442
    .end local v12    # "args":Landroid/os/Bundle;
    .end local v17    # "fragment":Lorg/telegram/ui/DialogsActivity;
    :cond_175
    const/4 v2, 0x4

    move/from16 v0, p1

    if-ne v0, v2, :cond_19a

    .line 443
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 444
    .restart local v12    # "args":Landroid/os/Bundle;
    const-string v2, "user_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v3, Lorg/telegram/ui/ContactAddActivity;

    invoke-direct {v3, v12}, Lorg/telegram/ui/ContactAddActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ProfileActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_a

    .line 446
    .end local v12    # "args":Landroid/os/Bundle;
    :cond_19a
    const/4 v2, 0x5

    move/from16 v0, p1

    if-ne v0, v2, :cond_213

    .line 447
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v19

    .line 448
    .restart local v19    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 451
    new-instance v13, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v13, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 452
    .restart local v13    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v2, "AreYouSureDeleteContact"

    const v3, 0x7f0700a8

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 453
    const-string v2, "AppName"

    const v3, 0x7f070092

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 454
    const-string v2, "OK"

    const v3, 0x7f0703d4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ProfileActivity$4$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/ProfileActivity$4$2;-><init>(Lorg/telegram/ui/ProfileActivity$4;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v13, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 462
    const-string v2, "Cancel"

    const v3, 0x7f0700fe

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 463
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_a

    .line 464
    .end local v13    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v19    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_213
    const/4 v2, 0x7

    move/from16 v0, p1

    if-ne v0, v2, :cond_221

    .line 465
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    # invokes: Lorg/telegram/ui/ProfileActivity;->leaveChatPressed()V
    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$800(Lorg/telegram/ui/ProfileActivity;)V

    goto/16 :goto_a

    .line 466
    :cond_221
    const/16 v2, 0x8

    move/from16 v0, p1

    if-ne v0, v2, :cond_247

    .line 467
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 468
    .restart local v12    # "args":Landroid/os/Bundle;
    const-string v2, "chat_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->chat_id:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 469
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v3, Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-direct {v3, v12}, Lorg/telegram/ui/ChangeChatNameActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ProfileActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_a

    .line 470
    .end local v12    # "args":Landroid/os/Bundle;
    :cond_247
    const/16 v2, 0xc

    move/from16 v0, p1

    if-ne v0, v2, :cond_27e

    .line 471
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 472
    .restart local v12    # "args":Landroid/os/Bundle;
    const-string v2, "chat_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->chat_id:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 473
    new-instance v17, Lorg/telegram/ui/ChannelEditActivity;

    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Lorg/telegram/ui/ChannelEditActivity;-><init>(Landroid/os/Bundle;)V

    .line 474
    .local v17, "fragment":Lorg/telegram/ui/ChannelEditActivity;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ChannelEditActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ProfileActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_a

    .line 476
    .end local v12    # "args":Landroid/os/Bundle;
    .end local v17    # "fragment":Lorg/telegram/ui/ChannelEditActivity;
    :cond_27e
    const/16 v2, 0x9

    move/from16 v0, p1

    if-ne v0, v2, :cond_2e8

    .line 477
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v19

    .line 478
    .restart local v19    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v19, :cond_a

    .line 481
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 482
    .restart local v12    # "args":Landroid/os/Bundle;
    const-string v2, "onlySelect"

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 483
    const-string v2, "dialogsType"

    const/4 v3, 0x2

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 484
    const-string v2, "addToGroupAlertString"

    const-string v3, "AddToTheGroupTitle"

    const v4, 0x7f070078

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "%1$s"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    new-instance v17, Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 486
    .local v17, "fragment":Lorg/telegram/ui/DialogsActivity;
    new-instance v2, Lorg/telegram/ui/ProfileActivity$4$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/ProfileActivity$4$3;-><init>(Lorg/telegram/ui/ProfileActivity$4;Lorg/telegram/tgnet/TLRPC$User;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 503
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ProfileActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_a

    .line 504
    .end local v12    # "args":Landroid/os/Bundle;
    .end local v17    # "fragment":Lorg/telegram/ui/DialogsActivity;
    .end local v19    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2e8
    const/16 v2, 0xa

    move/from16 v0, p1

    if-ne v0, v2, :cond_3cc

    .line 506
    :try_start_2ee
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v19

    .line 507
    .restart local v19    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v19, :cond_a

    .line 510
    new-instance v18, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 511
    .local v18, "intent":Landroid/content/Intent;
    const-string v2, "text/plain"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->botInfo:Lorg/telegram/tgnet/TLRPC$BotInfo;
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$BotInfo;

    move-result-object v3

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$BotInfo;->user_id:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUserFull(I)Lorg/telegram/tgnet/TLRPC$TL_userFull;

    move-result-object v20

    .line 513
    .local v20, "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->botInfo:Lorg/telegram/tgnet/TLRPC$BotInfo;
    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$BotInfo;

    move-result-object v2

    if-eqz v2, :cond_397

    if-eqz v20, :cond_397

    move-object/from16 v0, v20

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->about:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_397

    .line 514
    const-string v2, "android.intent.extra.TEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%s https://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/%s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, v20

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->about:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, v19

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    :goto_377
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    const-string v3, "BotShare"

    const v4, 0x7f0700e1

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    const/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_38f
    .catch Ljava/lang/Exception; {:try_start_2ee .. :try_end_38f} :catch_391

    goto/16 :goto_a

    .line 519
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v19    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v20    # "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    :catch_391
    move-exception v16

    .line 520
    .local v16, "e":Ljava/lang/Exception;
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 516
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v18    # "intent":Landroid/content/Intent;
    .restart local v19    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v20    # "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    :cond_397
    :try_start_397
    const-string v2, "android.intent.extra.TEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/%s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, v19

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3cb
    .catch Ljava/lang/Exception; {:try_start_397 .. :try_end_3cb} :catch_391

    goto :goto_377

    .line 522
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v19    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v20    # "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    :cond_3cc
    const/16 v2, 0xb

    move/from16 v0, p1

    if-ne v0, v2, :cond_403

    .line 523
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 524
    .restart local v12    # "args":Landroid/os/Bundle;
    const-string v2, "chat_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->chat_id:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 525
    new-instance v17, Lorg/telegram/ui/SetAdminsActivity;

    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Lorg/telegram/ui/SetAdminsActivity;-><init>(Landroid/os/Bundle;)V

    .line 526
    .local v17, "fragment":Lorg/telegram/ui/SetAdminsActivity;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/telegram/ui/SetAdminsActivity;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 527
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ProfileActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_a

    .line 528
    .end local v12    # "args":Landroid/os/Bundle;
    .end local v17    # "fragment":Lorg/telegram/ui/SetAdminsActivity;
    :cond_403
    const/16 v2, 0xd

    move/from16 v0, p1

    if-ne v0, v2, :cond_429

    .line 529
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 530
    .restart local v12    # "args":Landroid/os/Bundle;
    const-string v2, "chat_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->chat_id:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 531
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v3, Lorg/telegram/ui/ConvertGroupActivity;

    invoke-direct {v3, v12}, Lorg/telegram/ui/ConvertGroupActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ProfileActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_a

    .line 532
    .end local v12    # "args":Landroid/os/Bundle;
    :cond_429
    const/16 v2, 0xe

    move/from16 v0, p1

    if-ne v0, v2, :cond_47c

    .line 535
    :try_start_42f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$1100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v2

    if-eqz v2, :cond_453

    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$1100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v2

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long v14, v2, v4

    .line 544
    .local v14, "did":J
    :goto_448
    invoke-static {v14, v15}, Lorg/telegram/messenger/AndroidUtilities;->installShortcut(J)V
    :try_end_44b
    .catch Ljava/lang/Exception; {:try_start_42f .. :try_end_44b} :catch_44d

    goto/16 :goto_a

    .line 550
    .end local v14    # "did":J
    :catch_44d
    move-exception v16

    .line 551
    .restart local v16    # "e":Ljava/lang/Exception;
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 537
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_453
    :try_start_453
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-eqz v2, :cond_467

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    int-to-long v14, v2

    .restart local v14    # "did":J
    goto :goto_448

    .line 539
    .end local v14    # "did":J
    :cond_467
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->chat_id:I
    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-eqz v2, :cond_a

    .line 540
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->chat_id:I
    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)I
    :try_end_478
    .catch Ljava/lang/Exception; {:try_start_453 .. :try_end_478} :catch_44d

    move-result v2

    neg-int v2, v2

    int-to-long v14, v2

    .restart local v14    # "did":J
    goto :goto_448

    .line 553
    .end local v14    # "did":J
    :cond_47c
    const/16 v2, 0xf

    move/from16 v0, p1

    if-ne v0, v2, :cond_a

    .line 554
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->user_id:I
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v19

    .line 555
    .restart local v19    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v19, :cond_a

    .line 556
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    move-object/from16 v0, v19

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUserFull(I)Lorg/telegram/tgnet/TLRPC$TL_userFull;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/Components/voip/VoIPHelper;->startCall(Lorg/telegram/tgnet/TLRPC$User;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$TL_userFull;)V

    goto/16 :goto_a
.end method
