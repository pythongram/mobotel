.class Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;
.super Ljava/lang/Object;
.source "MentionsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/MentionsAdapter$8;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/MentionsAdapter$8;Lorg/telegram/tgnet/TLObject;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    .prologue
    .line 434
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v5, 0x1

    const/4 v11, 0x0

    const/4 v6, 0x0

    .line 437
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;
    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$200(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1f

    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->val$query:Ljava/lang/String;

    iget-object v8, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v8, v8, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;
    invoke-static {v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$200(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_20

    .line 491
    :cond_1f
    :goto_1f
    return-void

    .line 440
    :cond_20
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;
    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1400(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    move-result-object v7

    if-eqz v7, :cond_35

    .line 441
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;
    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1400(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    move-result-object v7

    invoke-interface {v7, v6}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    .line 443
    :cond_35
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->contextQueryReqid:I
    invoke-static {v7, v6}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1502(Lorg/telegram/ui/Adapters/MentionsAdapter;I)I

    .line 444
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-boolean v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->val$cache:Z

    if-eqz v7, :cond_59

    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-nez v7, :cond_59

    .line 445
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v8, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v8, v8, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v9, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v9, v9, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->val$query:Ljava/lang/String;

    iget-object v10, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v10, v10, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->val$offset:Ljava/lang/String;

    # invokes: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBotResults(ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v6, v8, v9, v10}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$300(Lorg/telegram/ui/Adapters/MentionsAdapter;ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :cond_59
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-eqz v7, :cond_1f

    .line 448
    iget-object v3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;

    .line 449
    .local v3, "res":Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-boolean v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->val$cache:Z

    if-nez v7, :cond_76

    iget v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->cache_time:I

    if-eqz v7, :cond_76

    .line 450
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v8, v8, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->val$key:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Lorg/telegram/messenger/MessagesStorage;->saveBotCache(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    .line 452
    :cond_76
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->next_offset:Ljava/lang/String;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->nextQueryOffset:Ljava/lang/String;
    invoke-static {v7, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1602(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 453
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextById:Ljava/util/HashMap;
    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1700(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/HashMap;

    move-result-object v7

    if-nez v7, :cond_9e

    .line 454
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextById:Ljava/util/HashMap;
    invoke-static {v7, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1702(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 455
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->switch_pm:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;
    invoke-static {v7, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1802(Lorg/telegram/ui/Adapters/MentionsAdapter;Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;)Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    .line 457
    :cond_9e
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_9f
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_f0

    .line 458
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 459
    .local v4, "result":Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextById:Ljava/util/HashMap;
    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1700(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d5

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-nez v7, :cond_dc

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_photo;

    if-nez v7, :cond_dc

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    if-nez v7, :cond_dc

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaAuto;

    if-eqz v7, :cond_dc

    .line 460
    :cond_d5
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 461
    add-int/lit8 v0, v0, -0x1

    .line 463
    :cond_dc
    iget-wide v8, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->query_id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->query_id:J

    .line 464
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextById:Ljava/util/HashMap;
    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1700(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    add-int/lit8 v0, v0, 0x1

    goto :goto_9f

    .line 466
    .end local v4    # "result":Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    :cond_f0
    const/4 v1, 0x0

    .line 467
    .local v1, "added":Z
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;
    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1900(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_105

    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->val$offset:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1b3

    .line 468
    :cond_105
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;
    invoke-static {v7, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1902(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 469
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-boolean v8, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->gallery:Z

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->contextMedia:Z
    invoke-static {v7, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$2002(Lorg/telegram/ui/Adapters/MentionsAdapter;Z)Z

    .line 477
    :cond_117
    :goto_117
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultHashtags:Ljava/util/ArrayList;
    invoke-static {v7, v11}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$2102(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 478
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultUsernames:Ljava/util/ArrayList;
    invoke-static {v7, v11}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$2202(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 479
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommands:Ljava/util/ArrayList;
    invoke-static {v7, v11}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$2302(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 480
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsHelp:Ljava/util/ArrayList;
    invoke-static {v7, v11}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$2402(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 481
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultCommandsUsers:Ljava/util/ArrayList;
    invoke-static {v7, v11}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$2502(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 482
    if-eqz v1, :cond_1db

    .line 483
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;
    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1800(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    move-result-object v7

    if-eqz v7, :cond_1d4

    move v2, v5

    .line 484
    .local v2, "hasTop":Z
    :goto_147
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v8, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;
    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1900(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v9, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int v9, v7, v9

    if-eqz v2, :cond_1d7

    move v7, v5

    :goto_162
    add-int/2addr v7, v9

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v8, v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyItemChanged(I)V

    .line 485
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v8, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;
    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1900(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v9, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int v9, v7, v9

    if-eqz v2, :cond_1d9

    move v7, v5

    :goto_183
    add-int/2addr v7, v9

    iget-object v9, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v7, v9}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyItemRangeInserted(II)V

    .line 489
    .end local v2    # "hasTop":Z
    :goto_18d
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;
    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1400(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v8, v8, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;
    invoke-static {v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1900(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1ad

    iget-object v8, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v8, v8, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContextSwitch:Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;
    invoke-static {v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1800(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    move-result-object v8

    if-eqz v8, :cond_1ae

    :cond_1ad
    move v6, v5

    :cond_1ae
    invoke-interface {v7, v6}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->needChangePanelVisibility(Z)V

    goto/16 :goto_1f

    .line 471
    :cond_1b3
    const/4 v1, 0x1

    .line 472
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchResultBotContext:Ljava/util/ArrayList;
    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1900(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 473
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_117

    .line 474
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    const-string v8, ""

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->nextQueryOffset:Ljava/lang/String;
    invoke-static {v7, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1602(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_117

    :cond_1d4
    move v2, v6

    .line 483
    goto/16 :goto_147

    .restart local v2    # "hasTop":Z
    :cond_1d7
    move v7, v6

    .line 484
    goto :goto_162

    :cond_1d9
    move v7, v6

    .line 485
    goto :goto_183

    .line 487
    .end local v2    # "hasTop":Z
    :cond_1db
    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$8$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$8;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$8;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->notifyDataSetChanged()V

    goto :goto_18d
.end method
