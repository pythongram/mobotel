.class Lorg/telegram/ui/ChatActivity$64;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->searchLinks(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$charSequence:Ljava/lang/CharSequence;

.field final synthetic val$force:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Ljava/lang/CharSequence;Z)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 4329
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$64;->val$charSequence:Ljava/lang/CharSequence;

    iput-boolean p3, p0, Lorg/telegram/ui/ChatActivity$64;->val$force:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 4332
    iget-object v9, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->linkSearchRequestId:I
    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->access$15000(Lorg/telegram/ui/ChatActivity;)I

    move-result v9

    if-eqz v9, :cond_1c

    .line 4333
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v9

    iget-object v10, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->linkSearchRequestId:I
    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$15000(Lorg/telegram/ui/ChatActivity;)I

    move-result v10

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 4334
    iget-object v9, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v10, 0x0

    # setter for: Lorg/telegram/ui/ChatActivity;->linkSearchRequestId:I
    invoke-static {v9, v10}, Lorg/telegram/ui/ChatActivity;->access$15002(Lorg/telegram/ui/ChatActivity;I)I

    .line 4336
    :cond_1c
    const/4 v7, 0x0

    .line 4339
    .local v7, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :try_start_1d
    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->WEB_URL:Ljava/util/regex/Pattern;

    iget-object v10, p0, Lorg/telegram/ui/ChatActivity$64;->val$charSequence:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_24} :catch_ce

    move-result-object v3

    .local v3, "m":Ljava/util/regex/Matcher;
    move-object v8, v7

    .line 4340
    .end local v7    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .local v8, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_26
    :goto_26
    :try_start_26
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_5c

    .line 4341
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    if-lez v9, :cond_42

    .line 4342
    iget-object v9, p0, Lorg/telegram/ui/ChatActivity$64;->val$charSequence:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x40

    if-eq v9, v10, :cond_26

    .line 4346
    :cond_42
    if-nez v8, :cond_140

    .line 4347
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_49} :catch_13d

    .line 4349
    .end local v8    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v7    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :goto_49
    :try_start_49
    iget-object v9, p0, Lorg/telegram/ui/ChatActivity$64;->val$charSequence:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v10

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v11

    invoke-interface {v9, v10, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5a} :catch_ce

    move-object v8, v7

    .end local v7    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v8    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    goto :goto_26

    .line 4351
    :cond_5c
    if-eqz v8, :cond_9e

    :try_start_5e
    iget-object v9, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->foundUrls:Ljava/util/ArrayList;
    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->access$15100(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_9e

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->foundUrls:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$15100(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v9, v10, :cond_9e

    .line 4352
    const/4 v1, 0x1

    .line 4353
    .local v1, "clear":Z
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_78
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_9a

    .line 4354
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    iget-object v10, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->foundUrls:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$15100(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_97

    .line 4355
    const/4 v1, 0x0

    .line 4353
    :cond_97
    add-int/lit8 v0, v0, 0x1

    goto :goto_78

    .line 4358
    :cond_9a
    if-eqz v1, :cond_9e

    move-object v7, v8

    .line 4462
    .end local v0    # "a":I
    .end local v1    # "clear":Z
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v8    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v7    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :goto_9d
    return-void

    .line 4362
    .end local v7    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v3    # "m":Ljava/util/regex/Matcher;
    .restart local v8    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_9e
    iget-object v9, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    # setter for: Lorg/telegram/ui/ChatActivity;->foundUrls:Ljava/util/ArrayList;
    invoke-static {v9, v8}, Lorg/telegram/ui/ChatActivity;->access$15102(Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 4363
    if-nez v8, :cond_af

    .line 4364
    new-instance v9, Lorg/telegram/ui/ChatActivity$64$1;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ChatActivity$64$1;-><init>(Lorg/telegram/ui/ChatActivity$64;)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    move-object v7, v8

    .line 4373
    .end local v8    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v7    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    goto :goto_9d

    .line 4375
    .end local v7    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v8    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_af
    const-string v9, " "

    invoke-static {v9, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_b4} :catch_13d

    move-result-object v6

    .local v6, "textToCheck":Ljava/lang/CharSequence;
    move-object v7, v8

    .line 4394
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v8    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v7    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :goto_b6
    iget-object v9, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v9, :cond_102

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget v9, v9, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_102

    .line 4395
    new-instance v9, Lorg/telegram/ui/ChatActivity$64$3;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ChatActivity$64$3;-><init>(Lorg/telegram/ui/ChatActivity$64;)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_9d

    .line 4376
    .end local v6    # "textToCheck":Ljava/lang/CharSequence;
    :catch_ce
    move-exception v2

    .line 4377
    .local v2, "e":Ljava/lang/Exception;
    :goto_cf
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4378
    iget-object v9, p0, Lorg/telegram/ui/ChatActivity$64;->val$charSequence:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 4379
    .local v5, "text":Ljava/lang/String;
    iget-object v9, p0, Lorg/telegram/ui/ChatActivity$64;->val$charSequence:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/16 v10, 0xd

    if-lt v9, v10, :cond_f6

    const-string v9, "http://"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_ff

    const-string v9, "https://"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_ff

    .line 4380
    :cond_f6
    new-instance v9, Lorg/telegram/ui/ChatActivity$64$2;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ChatActivity$64$2;-><init>(Lorg/telegram/ui/ChatActivity$64;)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_9d

    .line 4391
    :cond_ff
    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$64;->val$charSequence:Ljava/lang/CharSequence;

    .restart local v6    # "textToCheck":Ljava/lang/CharSequence;
    goto :goto_b6

    .line 4420
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "text":Ljava/lang/String;
    :cond_102
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;-><init>()V

    .line 4421
    .local v4, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;
    instance-of v9, v6, Ljava/lang/String;

    if-eqz v9, :cond_136

    .line 4422
    check-cast v6, Ljava/lang/String;

    .end local v6    # "textToCheck":Ljava/lang/CharSequence;
    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;->message:Ljava/lang/String;

    .line 4426
    :goto_10f
    iget-object v9, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    new-instance v11, Lorg/telegram/ui/ChatActivity$64$4;

    invoke-direct {v11, p0, v4}, Lorg/telegram/ui/ChatActivity$64$4;-><init>(Lorg/telegram/ui/ChatActivity$64;Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;)V

    invoke-virtual {v10, v4, v11}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v10

    # setter for: Lorg/telegram/ui/ChatActivity;->linkSearchRequestId:I
    invoke-static {v9, v10}, Lorg/telegram/ui/ChatActivity;->access$15002(Lorg/telegram/ui/ChatActivity;I)I

    .line 4461
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v9

    iget-object v10, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->linkSearchRequestId:I
    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$15000(Lorg/telegram/ui/ChatActivity;)I

    move-result v10

    iget-object v11, p0, Lorg/telegram/ui/ChatActivity$64;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->classGuid:I
    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$15300(Lorg/telegram/ui/ChatActivity;)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto/16 :goto_9d

    .line 4424
    .restart local v6    # "textToCheck":Ljava/lang/CharSequence;
    :cond_136
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;->message:Ljava/lang/String;

    goto :goto_10f

    .line 4376
    .end local v4    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;
    .end local v6    # "textToCheck":Ljava/lang/CharSequence;
    .end local v7    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v3    # "m":Ljava/util/regex/Matcher;
    .restart local v8    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :catch_13d
    move-exception v2

    move-object v7, v8

    .end local v8    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v7    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    goto :goto_cf

    .end local v7    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v8    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_140
    move-object v7, v8

    .end local v8    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v7    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    goto/16 :goto_49
.end method
