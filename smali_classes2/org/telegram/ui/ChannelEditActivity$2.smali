.class Lorg/telegram/ui/ChannelEditActivity$2;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ChannelEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelEditActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 168
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 8
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 171
    const/4 v1, -0x1

    if-ne p1, v1, :cond_b

    .line 172
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChannelEditActivity;->finishFragment()V

    .line 226
    :cond_a
    :goto_a
    return-void

    .line 173
    :cond_b
    if-ne p1, v5, :cond_a

    .line 174
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->donePressed:Z
    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$200(Lorg/telegram/ui/ChannelEditActivity;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 177
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;
    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$300(Lorg/telegram/ui/ChannelEditActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-nez v1, :cond_42

    .line 178
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChannelEditActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 179
    .local v0, "v":Landroid/os/Vibrator;
    if-eqz v0, :cond_36

    .line 180
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 182
    :cond_36
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;
    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$300(Lorg/telegram/ui/ChannelEditActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2, v4}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;FI)V

    goto :goto_a

    .line 185
    .end local v0    # "v":Landroid/os/Vibrator;
    :cond_42
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # setter for: Lorg/telegram/ui/ChannelEditActivity;->donePressed:Z
    invoke-static {v1, v5}, Lorg/telegram/ui/ChannelEditActivity;->access$202(Lorg/telegram/ui/ChannelEditActivity;Z)Z

    .line 187
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;
    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$400(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/Components/AvatarUpdater;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/AvatarUpdater;->uploadingAvatar:Ljava/lang/String;

    if-eqz v1, :cond_ad

    .line 188
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # setter for: Lorg/telegram/ui/ChannelEditActivity;->createAfterUpload:Z
    invoke-static {v1, v5}, Lorg/telegram/ui/ChannelEditActivity;->access$502(Lorg/telegram/ui/ChannelEditActivity;Z)Z

    .line 189
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChannelEditActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    # setter for: Lorg/telegram/ui/ChannelEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-static {v1, v2}, Lorg/telegram/ui/ChannelEditActivity;->access$602(Lorg/telegram/ui/ChannelEditActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 190
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$600(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    const-string v2, "Loading"

    const v3, 0x7f0702eb

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$600(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 192
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$600(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCancelable(Z)V

    .line 193
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$600(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    const/4 v2, -0x2

    const-string v3, "Cancel"

    const v4, 0x7f0700fe

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ChannelEditActivity$2$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChannelEditActivity$2$1;-><init>(Lorg/telegram/ui/ChannelEditActivity$2;)V

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 206
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$600(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    goto/16 :goto_a

    .line 209
    :cond_ad
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;
    invoke-static {v2}, Lorg/telegram/ui/ChannelEditActivity;->access$300(Lorg/telegram/ui/ChannelEditActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e4

    .line 210
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->chatId:I
    invoke-static {v2}, Lorg/telegram/ui/ChannelEditActivity;->access$100(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;
    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$300(Lorg/telegram/ui/ChannelEditActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->changeChatTitle(ILjava/lang/String;)V

    .line 212
    :cond_e4
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$700(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v1

    if-eqz v1, :cond_129

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$700(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;
    invoke-static {v2}, Lorg/telegram/ui/ChannelEditActivity;->access$800(Lorg/telegram/ui/ChannelEditActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_129

    .line 213
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->chatId:I
    invoke-static {v2}, Lorg/telegram/ui/ChannelEditActivity;->access$100(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;
    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$800(Lorg/telegram/ui/ChannelEditActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static {v4}, Lorg/telegram/ui/ChannelEditActivity;->access$700(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->updateChannelAbout(ILjava/lang/String;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 215
    :cond_129
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->signMessages:Z
    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$900(Lorg/telegram/ui/ChannelEditActivity;)Z

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v2}, Lorg/telegram/ui/ChannelEditActivity;->access$000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    if-eq v1, v2, :cond_154

    .line 216
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    .line 217
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->chatId:I
    invoke-static {v2}, Lorg/telegram/ui/ChannelEditActivity;->access$100(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->signMessages:Z
    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$900(Lorg/telegram/ui/ChannelEditActivity;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->toogleChannelSignatures(IZ)V

    .line 219
    :cond_154
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->uploadedAvatar:Lorg/telegram/tgnet/TLRPC$InputFile;
    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$1000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$InputFile;

    move-result-object v1

    if-eqz v1, :cond_176

    .line 220
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->chatId:I
    invoke-static {v2}, Lorg/telegram/ui/ChannelEditActivity;->access$100(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->uploadedAvatar:Lorg/telegram/tgnet/TLRPC$InputFile;
    invoke-static {v3}, Lorg/telegram/ui/ChannelEditActivity;->access$1000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$InputFile;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->changeChatAvatar(ILorg/telegram/tgnet/TLRPC$InputFile;)V

    .line 224
    :cond_16f
    :goto_16f
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChannelEditActivity;->finishFragment()V

    goto/16 :goto_a

    .line 221
    :cond_176
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;
    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$1100(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v1

    if-nez v1, :cond_16f

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v1}, Lorg/telegram/ui/ChannelEditActivity;->access$000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatPhoto;

    if-eqz v1, :cond_16f

    .line 222
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity$2;->this$0:Lorg/telegram/ui/ChannelEditActivity;

    # getter for: Lorg/telegram/ui/ChannelEditActivity;->chatId:I
    invoke-static {v2}, Lorg/telegram/ui/ChannelEditActivity;->access$100(Lorg/telegram/ui/ChannelEditActivity;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->changeChatAvatar(ILorg/telegram/tgnet/TLRPC$InputFile;)V

    goto :goto_16f
.end method
