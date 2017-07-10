.class Lorg/telegram/messenger/SendMessagesHelper$6$1;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper$6;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$6;Lorg/telegram/tgnet/TLObject;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/messenger/SendMessagesHelper$6;

    .prologue
    .line 1083
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    .line 1086
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper;->access$900(Lorg/telegram/messenger/SendMessagesHelper;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$6;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-boolean v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$cacheFinal:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-nez v0, :cond_2e

    .line 1088
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v3, v3, Lorg/telegram/messenger/SendMessagesHelper$6;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$6;->val$button:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    iget-object v13, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v13, v13, Lorg/telegram/messenger/SendMessagesHelper$6;->val$parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v2, v3, v4, v13}, Lorg/telegram/messenger/SendMessagesHelper;->sendCallback(ZLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;Lorg/telegram/ui/ChatActivity;)V

    .line 1157
    :cond_2d
    :goto_2d
    return-void

    .line 1089
    :cond_2e
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-eqz v0, :cond_2d

    .line 1090
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$button:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonBuy;

    if-eqz v0, :cond_7a

    .line 1091
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    if-eqz v0, :cond_5f

    .line 1092
    iget-object v8, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    .line 1093
    .local v8, "form":Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, v8, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1094
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$parentFragment:Lorg/telegram/ui/ChatActivity;

    new-instance v2, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v3, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v3, v3, Lorg/telegram/messenger/SendMessagesHelper$6;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-direct {v2, v8, v3}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_2d

    .line 1095
    .end local v8    # "form":Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;
    :cond_5f
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;

    if-eqz v0, :cond_2d

    .line 1096
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$parentFragment:Lorg/telegram/ui/ChatActivity;

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;

    invoke-direct {v3, v4, v0}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_2d

    .line 1099
    :cond_7a
    iget-object v10, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;

    .line 1100
    .local v10, "res":Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-boolean v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$cacheFinal:Z

    if-nez v0, :cond_93

    iget v0, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->cache_time:I

    if-eqz v0, :cond_93

    .line 1101
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$6;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v2, v10}, Lorg/telegram/messenger/MessagesStorage;->saveBotCache(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    .line 1103
    :cond_93
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->message:Ljava/lang/String;

    if-eqz v0, :cond_131

    .line 1104
    iget-boolean v0, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->alert:Z

    if-eqz v0, :cond_dd

    .line 1105
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 1108
    new-instance v6, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1109
    .local v6, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v0, "AppName"

    const v2, 0x7f070092

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1110
    const-string v0, "OK"

    const v2, 0x7f0703d4

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1111
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->message:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1112
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_2d

    .line 1114
    .end local v6    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_dd
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 1115
    .local v5, "uid":I
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    if-eqz v0, :cond_f7

    .line 1116
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    .line 1118
    :cond_f7
    const/4 v9, 0x0

    .line 1119
    .local v9, "name":Ljava/lang/String;
    if-lez v5, :cond_11f

    .line 1120
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    .line 1121
    .local v11, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v11, :cond_110

    .line 1122
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1130
    .end local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_110
    :goto_110
    if-nez v9, :cond_114

    .line 1131
    const-string v9, "bot"

    .line 1133
    :cond_114
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$parentFragment:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->message:Ljava/lang/String;

    invoke-virtual {v0, v9, v2}, Lorg/telegram/ui/ChatActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2d

    .line 1125
    :cond_11f
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-int v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    .line 1126
    .local v7, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v7, :cond_110

    .line 1127
    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_110

    .line 1135
    .end local v5    # "uid":I
    .end local v7    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v9    # "name":Ljava/lang/String;
    :cond_131
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->url:Ljava/lang/String;

    if-eqz v0, :cond_2d

    .line 1136
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 1139
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 1140
    .restart local v5    # "uid":I
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    if-eqz v0, :cond_159

    .line 1141
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    .line 1143
    :cond_159
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    .line 1144
    .restart local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v11, :cond_1c1

    iget-boolean v0, v11, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    if-eqz v0, :cond_1c1

    const/4 v12, 0x1

    .line 1145
    .local v12, "verified":Z
    :goto_16c
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$button:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame;

    if-eqz v0, :cond_1c7

    .line 1146
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v0, :cond_1c3

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    .line 1147
    .local v1, "game":Lorg/telegram/tgnet/TLRPC$TL_game;
    :goto_18a
    if-eqz v1, :cond_2d

    .line 1150
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$parentFragment:Lorg/telegram/ui/ChatActivity;

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$6;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->url:Ljava/lang/String;

    if-nez v12, :cond_1c5

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v13, "Notifications"

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "askgame_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-interface {v4, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1c5

    const/4 v4, 0x1

    :goto_1bc
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity;->showOpenGameAlert(Lorg/telegram/tgnet/TLRPC$TL_game;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ZI)V

    goto/16 :goto_2d

    .line 1144
    .end local v1    # "game":Lorg/telegram/tgnet/TLRPC$TL_game;
    .end local v12    # "verified":Z
    :cond_1c1
    const/4 v12, 0x0

    goto :goto_16c

    .line 1146
    .restart local v12    # "verified":Z
    :cond_1c3
    const/4 v1, 0x0

    goto :goto_18a

    .line 1150
    .restart local v1    # "game":Lorg/telegram/tgnet/TLRPC$TL_game;
    :cond_1c5
    const/4 v4, 0x0

    goto :goto_1bc

    .line 1152
    .end local v1    # "game":Lorg/telegram/tgnet/TLRPC$TL_game;
    :cond_1c7
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$6$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$6;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$6;->val$parentFragment:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->url:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ChatActivity;->showOpenUrlAlert(Ljava/lang/String;Z)V

    goto/16 :goto_2d
.end method
