.class Lorg/telegram/messenger/MessagesController$13$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$13;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$13;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$13;Lorg/telegram/tgnet/TLObject;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$13;

    .prologue
    .line 1374
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$13$1;->this$1:Lorg/telegram/messenger/MessagesController$13;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$13$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1377
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$13$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_userFull;

    .line 1378
    .local v1, "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$13$1;->this$1:Lorg/telegram/messenger/MessagesController$13;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$13;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$13$1;->this$1:Lorg/telegram/messenger/MessagesController$13;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController$13;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$User;->id:I

    int-to-long v4, v4

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_userFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    invoke-static {v3, v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->access$1700(Lorg/telegram/messenger/MessagesController;JLorg/telegram/tgnet/TLRPC$PeerNotifySettings;)V

    .line 1379
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_userFull;->bot_info:Lorg/telegram/tgnet/TLRPC$BotInfo;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_botInfo;

    if-eqz v3, :cond_22

    .line 1380
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_userFull;->bot_info:Lorg/telegram/tgnet/TLRPC$BotInfo;

    invoke-static {v3}, Lorg/telegram/messenger/query/BotQuery;->putBotInfo(Lorg/telegram/tgnet/TLRPC$BotInfo;)V

    .line 1382
    :cond_22
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$13$1;->this$1:Lorg/telegram/messenger/MessagesController$13;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$13;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->access$2200(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$13$1;->this$1:Lorg/telegram/messenger/MessagesController$13;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController$13;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$13$1;->this$1:Lorg/telegram/messenger/MessagesController$13;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$13;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->access$2300(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$13$1;->this$1:Lorg/telegram/messenger/MessagesController$13;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController$13;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1384
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$13$1;->this$1:Lorg/telegram/messenger/MessagesController$13;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$13;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->access$2400(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$13$1;->this$1:Lorg/telegram/messenger/MessagesController$13;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController$13;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1385
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$13$1;->this$1:Lorg/telegram/messenger/MessagesController$13;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController$13;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$13$1;->this$1:Lorg/telegram/messenger/MessagesController$13;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController$13;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$13$1;->this$1:Lorg/telegram/messenger/MessagesController$13;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController$13;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1386
    .local v0, "names":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1387
    .local v2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_userFull;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1388
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$13$1;->this$1:Lorg/telegram/messenger/MessagesController$13;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$13;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v3, v2, v7}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1389
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v7, v8}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 1390
    if-eqz v0, :cond_db

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_userFull;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_userFull;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_userFull;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_db

    .line 1391
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1393
    :cond_db
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_userFull;->bot_info:Lorg/telegram/tgnet/TLRPC$BotInfo;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_botInfo;

    if-eqz v3, :cond_fa

    .line 1394
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->botInfoDidLoaded:I

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_userFull;->bot_info:Lorg/telegram/tgnet/TLRPC$BotInfo;

    aput-object v6, v5, v7

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$13$1;->this$1:Lorg/telegram/messenger/MessagesController$13;

    iget v6, v6, Lorg/telegram/messenger/MessagesController$13;->val$classGuid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1396
    :cond_fa
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoaded:I

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$13$1;->this$1:Lorg/telegram/messenger/MessagesController$13;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController$13;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v1, v5, v8

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1397
    return-void
.end method
