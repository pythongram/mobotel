.class Lorg/telegram/messenger/MessagesController$80;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->addUserToChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$chat_id:I

.field final synthetic val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field final synthetic val$inputUser:Lorg/telegram/tgnet/TLRPC$InputUser;

.field final synthetic val$isChannel:Z

.field final synthetic val$isMegagroup:Z

.field final synthetic val$request:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;ZLorg/telegram/tgnet/TLRPC$InputUser;ILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;Z)V
    .registers 8
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 4670
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$80;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-boolean p2, p0, Lorg/telegram/messenger/MessagesController$80;->val$isChannel:Z

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$80;->val$inputUser:Lorg/telegram/tgnet/TLRPC$InputUser;

    iput p4, p0, Lorg/telegram/messenger/MessagesController$80;->val$chat_id:I

    iput-object p5, p0, Lorg/telegram/messenger/MessagesController$80;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p6, p0, Lorg/telegram/messenger/MessagesController$80;->val$request:Lorg/telegram/tgnet/TLObject;

    iput-boolean p7, p0, Lorg/telegram/messenger/MessagesController$80;->val$isMegagroup:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 12
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 4673
    iget-boolean v4, p0, Lorg/telegram/messenger/MessagesController$80;->val$isChannel:Z

    if-eqz v4, :cond_12

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$80;->val$inputUser:Lorg/telegram/tgnet/TLRPC$InputUser;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;

    if-eqz v4, :cond_12

    .line 4674
    new-instance v4, Lorg/telegram/messenger/MessagesController$80$1;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/MessagesController$80$1;-><init>(Lorg/telegram/messenger/MessagesController$80;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4681
    :cond_12
    if-eqz p2, :cond_1d

    .line 4682
    new-instance v4, Lorg/telegram/messenger/MessagesController$80$2;

    invoke-direct {v4, p0, p2}, Lorg/telegram/messenger/MessagesController$80$2;-><init>(Lorg/telegram/messenger/MessagesController$80;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4716
    :cond_1c
    :goto_1c
    return-void

    .line 4690
    :cond_1d
    const/4 v1, 0x0

    .local v1, "hasJoinMessage":Z
    move-object v3, p1

    .line 4691
    check-cast v3, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 4692
    .local v3, "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_22
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_41

    .line 4693
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Update;

    .line 4694
    .local v2, "update":Lorg/telegram/tgnet/TLRPC$Update;
    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    if-eqz v4, :cond_78

    .line 4695
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    .end local v2    # "update":Lorg/telegram/tgnet/TLRPC$Update;
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;

    if-eqz v4, :cond_78

    .line 4696
    const/4 v1, 0x1

    .line 4701
    :cond_41
    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$80;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 4702
    iget-boolean v4, p0, Lorg/telegram/messenger/MessagesController$80;->val$isChannel:Z

    if-eqz v4, :cond_5d

    .line 4703
    if-nez v1, :cond_53

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$80;->val$inputUser:Lorg/telegram/tgnet/TLRPC$InputUser;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;

    if-eqz v4, :cond_53

    .line 4706
    :cond_53
    new-instance v4, Lorg/telegram/messenger/MessagesController$80$3;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/MessagesController$80$3;-><init>(Lorg/telegram/messenger/MessagesController$80;)V

    const-wide/16 v6, 0x3e8

    invoke-static {v4, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 4713
    :cond_5d
    iget-boolean v4, p0, Lorg/telegram/messenger/MessagesController$80;->val$isChannel:Z

    if-eqz v4, :cond_1c

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$80;->val$inputUser:Lorg/telegram/tgnet/TLRPC$InputUser;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;

    if-eqz v4, :cond_1c

    .line 4714
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget v8, p0, Lorg/telegram/messenger/MessagesController$80;->val$chat_id:I

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithDeletedMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)V

    goto :goto_1c

    .line 4692
    :cond_78
    add-int/lit8 v0, v0, 0x1

    goto :goto_22
.end method
