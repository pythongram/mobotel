.class Lorg/telegram/messenger/MessagesController$60;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->checkLastDialogMessage(Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$InputPeer;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

.field final synthetic val$lower_id:I

.field final synthetic val$newTaskId:J


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_dialog;JI)V
    .registers 7
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 3828
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$60;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$60;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iput-wide p3, p0, Lorg/telegram/messenger/MessagesController$60;->val$newTaskId:J

    iput p5, p0, Lorg/telegram/messenger/MessagesController$60;->val$lower_id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 14
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 3831
    if-eqz p1, :cond_11c

    move-object v10, p1

    .line 3832
    check-cast v10, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 3833
    .local v10, "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_136

    .line 3834
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;-><init>()V

    .line 3835
    .local v7, "dialogs":Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Message;

    .line 3836
    .local v9, "newMessage":Lorg/telegram/tgnet/TLRPC$Message;
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 3837
    .local v8, "newDialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$60;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->flags:I

    iput v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->flags:I

    .line 3838
    iget v0, v9, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    .line 3839
    iget v0, v9, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    .line 3840
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$60;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iput-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 3841
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$60;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pts:I

    iput v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pts:I

    .line 3842
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$60;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    iput v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    .line 3843
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$60;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    iput v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    .line 3844
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$60;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    iput v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    .line 3845
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$60;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    iput-boolean v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    .line 3846
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$60;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    iput v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    .line 3847
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$60;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    iput-wide v0, v8, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    iput-wide v0, v9, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 3848
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;->users:Ljava/util/ArrayList;

    iget-object v1, v10, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3849
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;->chats:Ljava/util/ArrayList;

    iget-object v1, v10, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3850
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$60;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$60;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->access$4700(Lorg/telegram/messenger/MessagesController;Ljava/lang/Long;)Z

    move-result v0

    if-nez v0, :cond_b0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$60;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$60;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$60;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    const-string v1, "chat_unlocked"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_f2

    :cond_b0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$60;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$60;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 3851
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->access$4700(Lorg/telegram/messenger/MessagesController;Ljava/lang/Long;)Z

    move-result v0

    if-nez v0, :cond_f7

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$60;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$60;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f7

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$60;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->mainPreferences:Landroid/content/SharedPreferences;

    const-string v1, "chat_unlocked"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 3852
    :cond_f2
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3854
    :cond_f7
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;->messages:Ljava/util/ArrayList;

    iget-object v1, v10, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3855
    const/4 v0, 0x1

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;->count:I

    .line 3856
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$60;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Lorg/telegram/messenger/MessagesController;->processDialogsUpdate(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Ljava/util/ArrayList;)V

    .line 3857
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, v10, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MediaController;->getAutodownloadMask()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZIZ)V

    .line 3870
    .end local v7    # "dialogs":Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;
    .end local v8    # "newDialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v9    # "newMessage":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v10    # "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    :cond_11c
    :goto_11c
    iget-wide v0, p0, Lorg/telegram/messenger/MessagesController$60;->val$newTaskId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12d

    .line 3871
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController$60;->val$newTaskId:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->removePendingTask(J)V

    .line 3873
    :cond_12d
    new-instance v0, Lorg/telegram/messenger/MessagesController$60$2;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MessagesController$60$2;-><init>(Lorg/telegram/messenger/MessagesController$60;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3879
    return-void

    .line 3859
    .restart local v10    # "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    :cond_136
    new-instance v0, Lorg/telegram/messenger/MessagesController$60$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MessagesController$60$1;-><init>(Lorg/telegram/messenger/MessagesController$60;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_11c
.end method
