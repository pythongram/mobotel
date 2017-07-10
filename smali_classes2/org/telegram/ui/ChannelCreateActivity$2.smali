.class Lorg/telegram/ui/ChannelCreateActivity$2;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ChannelCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelCreateActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelCreateActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelCreateActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 185
    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 15
    .param p1, "id"    # I

    .prologue
    const/4 v12, -0x2

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v4, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 188
    const/4 v0, -0x1

    if-ne p1, v0, :cond_f

    .line 189
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChannelCreateActivity;->finishFragment()V

    .line 273
    :cond_e
    :goto_e
    return-void

    .line 190
    :cond_f
    if-ne p1, v10, :cond_e

    .line 191
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->currentStep:I
    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$100(Lorg/telegram/ui/ChannelCreateActivity;)I

    move-result v0

    if-nez v0, :cond_137

    .line 192
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->donePressed:Z
    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$200(Lorg/telegram/ui/ChannelCreateActivity;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 195
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$300(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_4c

    .line 196
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChannelCreateActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Vibrator;

    .line 197
    .local v9, "v":Landroid/os/Vibrator;
    if-eqz v9, :cond_42

    .line 198
    const-wide/16 v0, 0xc8

    invoke-virtual {v9, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 200
    :cond_42
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$300(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0, v2, v11}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;FI)V

    goto :goto_e

    .line 203
    .end local v9    # "v":Landroid/os/Vibrator;
    :cond_4c
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # setter for: Lorg/telegram/ui/ChannelCreateActivity;->donePressed:Z
    invoke-static {v0, v10}, Lorg/telegram/ui/ChannelCreateActivity;->access$202(Lorg/telegram/ui/ChannelCreateActivity;Z)Z

    .line 204
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;
    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$400(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Components/AvatarUpdater;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/AvatarUpdater;->uploadingAvatar:Ljava/lang/String;

    if-eqz v0, :cond_b6

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # setter for: Lorg/telegram/ui/ChannelCreateActivity;->createAfterUpload:Z
    invoke-static {v0, v10}, Lorg/telegram/ui/ChannelCreateActivity;->access$502(Lorg/telegram/ui/ChannelCreateActivity;Z)Z

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v2, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChannelCreateActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v10}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    # setter for: Lorg/telegram/ui/ChannelCreateActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelCreateActivity;->access$602(Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 207
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$600(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    const-string v1, "Loading"

    const v2, 0x7f0702eb

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$600(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 209
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$600(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCancelable(Z)V

    .line 210
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$600(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    const-string v1, "Cancel"

    const v2, 0x7f0700fe

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChannelCreateActivity$2$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelCreateActivity$2$1;-><init>(Lorg/telegram/ui/ChannelCreateActivity$2;)V

    invoke-virtual {v0, v12, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$600(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    goto/16 :goto_e

    .line 226
    :cond_b6
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;
    invoke-static {v1}, Lorg/telegram/ui/ChannelCreateActivity;->access$300(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;
    invoke-static {v3}, Lorg/telegram/ui/ChannelCreateActivity;->access$700(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController;->createChat(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ILorg/telegram/ui/ActionBar/BaseFragment;)I

    move-result v8

    .line 227
    .local v8, "reqId":I
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v2, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChannelCreateActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v10}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    # setter for: Lorg/telegram/ui/ChannelCreateActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelCreateActivity;->access$602(Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 228
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$600(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    const-string v1, "Loading"

    const v2, 0x7f0702eb

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$600(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 230
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$600(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCancelable(Z)V

    .line 231
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$600(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    const-string v1, "Cancel"

    const v2, 0x7f0700fe

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChannelCreateActivity$2$2;

    invoke-direct {v2, p0, v8}, Lorg/telegram/ui/ChannelCreateActivity$2$2;-><init>(Lorg/telegram/ui/ChannelCreateActivity$2;I)V

    invoke-virtual {v0, v12, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 243
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$600(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    goto/16 :goto_e

    .line 244
    .end local v8    # "reqId":I
    :cond_137
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->currentStep:I
    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$100(Lorg/telegram/ui/ChannelCreateActivity;)I

    move-result v0

    if-ne v0, v10, :cond_e

    .line 245
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z
    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$800(Lorg/telegram/ui/ChannelCreateActivity;)Z

    move-result v0

    if-nez v0, :cond_1c9

    .line 246
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$300(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_18e

    .line 247
    new-instance v7, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChannelCreateActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 248
    .local v7, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v0, "AppName"

    const v1, 0x7f070092

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 249
    const-string v0, "ChannelPublicEmptyUsername"

    const v1, 0x7f070151

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 250
    const-string v0, "Close"

    const v1, 0x7f07017f

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 251
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChannelCreateActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_e

    .line 254
    .end local v7    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_18e
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->lastNameAvailable:Z
    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$900(Lorg/telegram/ui/ChannelCreateActivity;)Z

    move-result v0

    if-nez v0, :cond_1b6

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChannelCreateActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Vibrator;

    .line 256
    .restart local v9    # "v":Landroid/os/Vibrator;
    if-eqz v9, :cond_1ab

    .line 257
    const-wide/16 v0, 0xc8

    invoke-virtual {v9, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 259
    :cond_1ab
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$1000(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, v2, v11}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;FI)V

    goto/16 :goto_e

    .line 262
    .end local v9    # "v":Landroid/os/Vibrator;
    :cond_1b6
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->chatId:I
    invoke-static {v1}, Lorg/telegram/ui/ChannelCreateActivity;->access$1100(Lorg/telegram/ui/ChannelCreateActivity;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->lastCheckName:Ljava/lang/String;
    invoke-static {v2}, Lorg/telegram/ui/ChannelCreateActivity;->access$1200(Lorg/telegram/ui/ChannelCreateActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->updateChannelUserName(ILjava/lang/String;)V

    .line 266
    :cond_1c9
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 267
    .local v6, "args":Landroid/os/Bundle;
    const-string v0, "step"

    invoke-virtual {v6, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 268
    const-string v0, "chatId"

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->chatId:I
    invoke-static {v1}, Lorg/telegram/ui/ChannelCreateActivity;->access$1100(Lorg/telegram/ui/ChannelCreateActivity;)I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 269
    const-string v0, "chatType"

    invoke-virtual {v6, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 270
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    new-instance v1, Lorg/telegram/ui/GroupCreateActivity;

    invoke-direct {v1, v6}, Lorg/telegram/ui/GroupCreateActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1, v10}, Lorg/telegram/ui/ChannelCreateActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_e
.end method
