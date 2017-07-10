.class Lorg/telegram/ui/ChatActivity$51;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 3422
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$51;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 16
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3425
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$51;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_9

    .line 3498
    :cond_8
    :goto_8
    return-void

    .line 3428
    :cond_9
    const/4 v11, 0x0

    .line 3429
    .local v11, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$51;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_b0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$51;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->userBlocked:Z
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14100(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 3430
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$51;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v0, :cond_87

    .line 3431
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$51;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->botUser:Ljava/lang/String;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14200(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object v10

    .line 3432
    .local v10, "botUserLast":Ljava/lang/String;
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$51;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/ChatActivity;->botUser:Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$14202(Lorg/telegram/ui/ChatActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 3433
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$51;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->unblockUser(I)V

    .line 3434
    if-eqz v10, :cond_71

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_71

    .line 3435
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$51;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, v1, v10}, Lorg/telegram/messenger/MessagesController;->sendBotStart(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)V

    .line 3493
    .end local v10    # "botUserLast":Ljava/lang/String;
    :goto_4c
    if-eqz v11, :cond_8

    .line 3494
    const-string v0, "AppName"

    const v1, 0x7f070092

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3495
    const-string v0, "Cancel"

    const v1, 0x7f0700fe

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3496
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$51;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_8

    .line 3437
    .restart local v10    # "botUserLast":Ljava/lang/String;
    :cond_71
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    const-string v1, "/start"

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$51;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto :goto_4c

    .line 3440
    .end local v10    # "botUserLast":Ljava/lang/String;
    :cond_87
    new-instance v11, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .end local v11    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$51;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v11, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3441
    .restart local v11    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v0, "AreYouSureUnblockContact"

    const v1, 0x7f0700b4

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3442
    const-string v0, "OK"

    const v1, 0x7f0703d4

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ChatActivity$51$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChatActivity$51$1;-><init>(Lorg/telegram/ui/ChatActivity$51;)V

    invoke-virtual {v11, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_4c

    .line 3449
    :cond_b0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$51;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_106

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$51;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v0, :cond_106

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$51;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->botUser:Ljava/lang/String;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14200(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_106

    .line 3450
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$51;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->botUser:Ljava/lang/String;
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14200(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_f0

    .line 3451
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$51;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$51;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->botUser:Ljava/lang/String;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$14200(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->sendBotStart(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)V

    .line 3455
    :goto_e3
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$51;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/ChatActivity;->botUser:Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$14202(Lorg/telegram/ui/ChatActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 3456
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$51;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->updateBottomOverlay()V
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2400(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_4c

    .line 3453
    :cond_f0
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    const-string v1, "/start"

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$51;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto :goto_e3

    .line 3458
    :cond_106
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$51;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_141

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$51;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;

    if-nez v0, :cond_141

    .line 3459
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$51;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_139

    .line 3460
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$51;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MessagesController;->addUserToChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto/16 :goto_4c

    .line 3462
    :cond_139
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$51;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    # invokes: Lorg/telegram/ui/ChatActivity;->toggleMute(Z)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;Z)V

    goto/16 :goto_4c

    .line 3466
    :cond_141
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "mainconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 3467
    .local v12, "preferences":Landroid/content/SharedPreferences;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "return_dlg_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$51;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 3468
    .local v13, "returningDialog":Z
    if-eqz v13, :cond_198

    .line 3469
    new-instance v11, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .end local v11    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$51;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v11, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3470
    .restart local v11    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v0, "AreYouSureYouWantToReturn"

    const v1, 0x7f070655

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3471
    const-string v0, "OK"

    const v1, 0x7f0703d4

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ChatActivity$51$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChatActivity$51$2;-><init>(Lorg/telegram/ui/ChatActivity$51;)V

    invoke-virtual {v11, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_4c

    .line 3480
    :cond_198
    new-instance v11, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .end local v11    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$51;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v11, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3481
    .restart local v11    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v0, "AreYouSureDeleteThisChat"

    const v1, 0x7f0700ab

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3482
    const-string v0, "OK"

    const v1, 0x7f0703d4

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ChatActivity$51$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChatActivity$51$3;-><init>(Lorg/telegram/ui/ChatActivity$51;)V

    invoke-virtual {v11, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_4c
.end method
