.class Lorg/telegram/tgnet/ConnectionsManager$1$1;
.super Ljava/lang/Object;
.source "ConnectionsManager.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegateInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/tgnet/ConnectionsManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/tgnet/ConnectionsManager$1;


# direct methods
.method constructor <init>(Lorg/telegram/tgnet/ConnectionsManager$1;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/tgnet/ConnectionsManager$1;

    .prologue
    .line 136
    iput-object p1, p0, Lorg/telegram/tgnet/ConnectionsManager$1$1;->this$1:Lorg/telegram/tgnet/ConnectionsManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(IILjava/lang/String;I)V
    .registers 15
    .param p1, "response"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorText"    # Ljava/lang/String;
    .param p4, "networkType"    # I

    .prologue
    .line 140
    const/4 v6, 0x0

    .line 141
    .local v6, "resp":Lorg/telegram/tgnet/TLObject;
    const/4 v2, 0x0

    .line 142
    .local v2, "error":Lorg/telegram/tgnet/TLRPC$TL_error;
    if-eqz p1, :cond_4a

    .line 143
    :try_start_4
    invoke-static {p1}, Lorg/telegram/tgnet/NativeByteBuffer;->wrap(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v0

    .line 144
    .local v0, "buff":Lorg/telegram/tgnet/NativeByteBuffer;
    const/4 v7, 0x1

    iput-boolean v7, v0, Lorg/telegram/tgnet/NativeByteBuffer;->reused:Z

    .line 145
    iget-object v7, p0, Lorg/telegram/tgnet/ConnectionsManager$1$1;->this$1:Lorg/telegram/tgnet/ConnectionsManager$1;

    iget-object v7, v7, Lorg/telegram/tgnet/ConnectionsManager$1;->val$object:Lorg/telegram/tgnet/TLObject;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v7, v0, v8, v9}, Lorg/telegram/tgnet/TLObject;->deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object v6

    .line 152
    .end local v0    # "buff":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_19
    :goto_19
    if-eqz v6, :cond_1d

    .line 153
    iput p4, v6, Lorg/telegram/tgnet/TLObject;->networkType:I

    .line 155
    :cond_1d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "java received "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " error = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 156
    move-object v5, v6

    .line 157
    .local v5, "finalResponse":Lorg/telegram/tgnet/TLObject;
    move-object v4, v2

    .line 158
    .local v4, "finalError":Lorg/telegram/tgnet/TLRPC$TL_error;
    sget-object v7, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v8, Lorg/telegram/tgnet/ConnectionsManager$1$1$1;

    invoke-direct {v8, p0, v5, v4}, Lorg/telegram/tgnet/ConnectionsManager$1$1$1;-><init>(Lorg/telegram/tgnet/ConnectionsManager$1$1;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 170
    .end local v4    # "finalError":Lorg/telegram/tgnet/TLRPC$TL_error;
    .end local v5    # "finalResponse":Lorg/telegram/tgnet/TLObject;
    :goto_49
    return-void

    .line 146
    :cond_4a
    if-eqz p3, :cond_19

    .line 147
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_error;-><init>()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_51} :catch_83

    .line 148
    .end local v2    # "error":Lorg/telegram/tgnet/TLRPC$TL_error;
    .local v3, "error":Lorg/telegram/tgnet/TLRPC$TL_error;
    :try_start_51
    iput p2, v3, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    .line 149
    iput-object p3, v3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    .line 150
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/telegram/tgnet/ConnectionsManager$1$1;->this$1:Lorg/telegram/tgnet/ConnectionsManager$1;

    iget-object v8, v8, Lorg/telegram/tgnet/ConnectionsManager$1;->val$object:Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " got error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_81} :catch_88

    move-object v2, v3

    .end local v3    # "error":Lorg/telegram/tgnet/TLRPC$TL_error;
    .restart local v2    # "error":Lorg/telegram/tgnet/TLRPC$TL_error;
    goto :goto_19

    .line 167
    :catch_83
    move-exception v1

    .line 168
    .local v1, "e":Ljava/lang/Exception;
    :goto_84
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_49

    .line 167
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "error":Lorg/telegram/tgnet/TLRPC$TL_error;
    .restart local v3    # "error":Lorg/telegram/tgnet/TLRPC$TL_error;
    :catch_88
    move-exception v1

    move-object v2, v3

    .end local v3    # "error":Lorg/telegram/tgnet/TLRPC$TL_error;
    .restart local v2    # "error":Lorg/telegram/tgnet/TLRPC$TL_error;
    goto :goto_84
.end method
