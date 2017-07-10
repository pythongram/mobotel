.class Lorg/telegram/messenger/MessagesController$55$2;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$55;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$55;

.field final synthetic val$messagesToReload:Ljava/util/ArrayList;

.field final synthetic val$objects:Ljava/util/ArrayList;

.field final synthetic val$webpagesToReload:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$55;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .registers 5
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$55;

    .prologue
    .line 3138
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$55$2;->this$1:Lorg/telegram/messenger/MessagesController$55;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$55$2;->val$objects:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$55$2;->val$messagesToReload:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$55$2;->val$webpagesToReload:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x2

    .line 3141
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$55$2;->this$1:Lorg/telegram/messenger/MessagesController$55;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$55;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$55$2;->this$1:Lorg/telegram/messenger/MessagesController$55;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController$55;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$55$2;->this$1:Lorg/telegram/messenger/MessagesController$55;

    iget-boolean v5, v5, Lorg/telegram/messenger/MessagesController$55;->val$isCache:Z

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 3142
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$55$2;->this$1:Lorg/telegram/messenger/MessagesController$55;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$55;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$55$2;->this$1:Lorg/telegram/messenger/MessagesController$55;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController$55;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$55$2;->this$1:Lorg/telegram/messenger/MessagesController$55;

    iget-boolean v5, v5, Lorg/telegram/messenger/MessagesController$55;->val$isCache:Z

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 3143
    const v1, 0x7fffffff

    .line 3144
    .local v1, "first_unread_final":I
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$55$2;->this$1:Lorg/telegram/messenger/MessagesController$55;

    iget-boolean v3, v3, Lorg/telegram/messenger/MessagesController$55;->val$queryFromServer:Z

    if-eqz v3, :cond_60

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$55$2;->this$1:Lorg/telegram/messenger/MessagesController$55;

    iget v3, v3, Lorg/telegram/messenger/MessagesController$55;->val$load_type:I

    if-ne v3, v10, :cond_60

    .line 3145
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_33
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$55$2;->this$1:Lorg/telegram/messenger/MessagesController$55;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$55;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_60

    .line 3146
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$55$2;->this$1:Lorg/telegram/messenger/MessagesController$55;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$55;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    .line 3147
    .local v2, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-nez v3, :cond_5d

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$55$2;->this$1:Lorg/telegram/messenger/MessagesController$55;

    iget v4, v4, Lorg/telegram/messenger/MessagesController$55;->val$first_unread:I

    if-le v3, v4, :cond_5d

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v3, v1, :cond_5d

    .line 3148
    iget v1, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 3145
    :cond_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 3152
    .end local v0    # "a":I
    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_60
    const v3, 0x7fffffff

    if-ne v1, v3, :cond_69

    .line 3153
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$55$2;->this$1:Lorg/telegram/messenger/MessagesController$55;

    iget v1, v3, Lorg/telegram/messenger/MessagesController$55;->val$first_unread:I

    .line 3155
    :cond_69
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->messagesDidLoaded:I

    const/16 v5, 0xd

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$55$2;->this$1:Lorg/telegram/messenger/MessagesController$55;

    iget-wide v8, v7, Lorg/telegram/messenger/MessagesController$55;->val$dialog_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$55$2;->this$1:Lorg/telegram/messenger/MessagesController$55;

    iget v7, v7, Lorg/telegram/messenger/MessagesController$55;->val$count:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$55$2;->val$objects:Ljava/util/ArrayList;

    aput-object v6, v5, v10

    const/4 v6, 0x3

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$55$2;->this$1:Lorg/telegram/messenger/MessagesController$55;

    iget-boolean v7, v7, Lorg/telegram/messenger/MessagesController$55;->val$isCache:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$55$2;->this$1:Lorg/telegram/messenger/MessagesController$55;

    iget v7, v7, Lorg/telegram/messenger/MessagesController$55;->val$last_message_id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$55$2;->this$1:Lorg/telegram/messenger/MessagesController$55;

    iget v7, v7, Lorg/telegram/messenger/MessagesController$55;->val$unread_count:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x7

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$55$2;->this$1:Lorg/telegram/messenger/MessagesController$55;

    iget v7, v7, Lorg/telegram/messenger/MessagesController$55;->val$last_date:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x8

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$55$2;->this$1:Lorg/telegram/messenger/MessagesController$55;

    iget v7, v7, Lorg/telegram/messenger/MessagesController$55;->val$load_type:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x9

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$55$2;->this$1:Lorg/telegram/messenger/MessagesController$55;

    iget-boolean v7, v7, Lorg/telegram/messenger/MessagesController$55;->val$isEnd:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xa

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$55$2;->this$1:Lorg/telegram/messenger/MessagesController$55;

    iget v7, v7, Lorg/telegram/messenger/MessagesController$55;->val$classGuid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xb

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$55$2;->this$1:Lorg/telegram/messenger/MessagesController$55;

    iget v7, v7, Lorg/telegram/messenger/MessagesController$55;->val$loadIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xc

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$55$2;->this$1:Lorg/telegram/messenger/MessagesController$55;

    iget v7, v7, Lorg/telegram/messenger/MessagesController$55;->val$max_id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3156
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$55$2;->val$messagesToReload:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_114

    .line 3157
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$55$2;->this$1:Lorg/telegram/messenger/MessagesController$55;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$55;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$55$2;->val$messagesToReload:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$55$2;->this$1:Lorg/telegram/messenger/MessagesController$55;

    iget-wide v6, v5, Lorg/telegram/messenger/MessagesController$55;->val$dialog_id:J

    invoke-static {v3, v4, v6, v7}, Lorg/telegram/messenger/MessagesController;->access$4400(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;J)V

    .line 3159
    :cond_114
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$55$2;->val$webpagesToReload:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_129

    .line 3160
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$55$2;->this$1:Lorg/telegram/messenger/MessagesController$55;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$55;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$55$2;->this$1:Lorg/telegram/messenger/MessagesController$55;

    iget-wide v4, v4, Lorg/telegram/messenger/MessagesController$55;->val$dialog_id:J

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$55$2;->val$webpagesToReload:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->reloadWebPages(JLjava/util/HashMap;)V

    .line 3162
    :cond_129
    return-void
.end method
