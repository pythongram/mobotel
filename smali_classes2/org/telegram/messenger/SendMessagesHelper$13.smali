.class final Lorg/telegram/messenger/SendMessagesHelper$13;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingAudioDocuments(Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog_id:J

.field final synthetic val$messageObjects:Ljava/util/ArrayList;

.field final synthetic val$reply_to_msg:Lorg/telegram/messenger/MessageObject;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;)V
    .registers 5

    .prologue
    .line 3850
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$13;->val$messageObjects:Ljava/util/ArrayList;

    iput-wide p2, p0, Lorg/telegram/messenger/SendMessagesHelper$13;->val$dialog_id:J

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$13;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    .line 3853
    iget-object v11, p0, Lorg/telegram/messenger/SendMessagesHelper$13;->val$messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 3854
    .local v10, "size":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_7
    if-ge v0, v10, :cond_6d

    .line 3855
    iget-object v11, p0, Lorg/telegram/messenger/SendMessagesHelper$13;->val$messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject;

    .line 3856
    .local v7, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v11, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v11, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 3857
    .local v8, "originalPath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3859
    .local v4, "f":Ljava/io/File;
    iget-wide v12, p0, Lorg/telegram/messenger/SendMessagesHelper$13;->val$dialog_id:J

    long-to-int v11, v12

    if-nez v11, :cond_6e

    const/4 v6, 0x1

    .line 3862
    .local v6, "isEncrypted":Z
    :goto_20
    if-eqz v8, :cond_3d

    .line 3863
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "audio"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3866
    :cond_3d
    const/4 v1, 0x0

    .line 3867
    .local v1, "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    if-nez v6, :cond_4d

    .line 3868
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v12

    if-nez v6, :cond_70

    const/4 v11, 0x1

    :goto_47
    invoke-virtual {v12, v8, v11}, Lorg/telegram/messenger/MessagesStorage;->getSentFile(Ljava/lang/String;I)Lorg/telegram/tgnet/TLObject;

    move-result-object v1

    .end local v1    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 3870
    .restart local v1    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    :cond_4d
    if-nez v1, :cond_57

    .line 3871
    iget-object v11, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v11, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .end local v1    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 3874
    .restart local v1    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    :cond_57
    if-eqz v6, :cond_72

    .line 3875
    iget-wide v12, p0, Lorg/telegram/messenger/SendMessagesHelper$13;->val$dialog_id:J

    const/16 v11, 0x20

    shr-long/2addr v12, v11

    long-to-int v5, v12

    .line 3876
    .local v5, "high_id":I
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v3

    .line 3877
    .local v3, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-nez v3, :cond_72

    .line 3894
    .end local v1    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v3    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "high_id":I
    .end local v6    # "isEncrypted":Z
    .end local v7    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v8    # "originalPath":Ljava/lang/String;
    :cond_6d
    return-void

    .line 3859
    .restart local v4    # "f":Ljava/io/File;
    .restart local v7    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .restart local v8    # "originalPath":Ljava/lang/String;
    :cond_6e
    const/4 v6, 0x0

    goto :goto_20

    .line 3868
    .restart local v1    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    .restart local v6    # "isEncrypted":Z
    :cond_70
    const/4 v11, 0x4

    goto :goto_47

    .line 3882
    :cond_72
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 3883
    .local v9, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v8, :cond_7e

    .line 3884
    const-string v11, "originalPath"

    invoke-virtual {v9, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3886
    :cond_7e
    move-object v2, v1

    .line 3887
    .local v2, "documentFinal":Lorg/telegram/tgnet/TLRPC$TL_document;
    new-instance v11, Lorg/telegram/messenger/SendMessagesHelper$13$1;

    invoke-direct {v11, p0, v2, v7, v9}, Lorg/telegram/messenger/SendMessagesHelper$13$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$13;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/MessageObject;Ljava/util/HashMap;)V

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3854
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7
.end method
