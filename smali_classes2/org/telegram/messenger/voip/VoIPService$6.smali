.class Lorg/telegram/messenger/voip/VoIPService$6;
.super Ljava/lang/Object;
.source "VoIPService.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/voip/VoIPService;->startOutgoingCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/voip/VoIPService;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/voip/VoIPService;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 460
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$6;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 15
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 463
    iget-object v7, p0, Lorg/telegram/messenger/voip/VoIPService$6;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    const/4 v8, 0x0

    # setter for: Lorg/telegram/messenger/voip/VoIPService;->callReqId:I
    invoke-static {v7, v8}, Lorg/telegram/messenger/voip/VoIPService;->access$802(Lorg/telegram/messenger/voip/VoIPService;I)I

    .line 464
    if-nez p2, :cond_d6

    move-object v5, p1

    .line 465
    check-cast v5, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;

    .line 466
    .local v5, "res":Lorg/telegram/tgnet/TLRPC$messages_DhConfig;
    instance-of v7, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_dhConfig;

    if-eqz v7, :cond_38

    .line 467
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->p:[B

    iget v8, v5, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->g:I

    invoke-static {v7, v8}, Lorg/telegram/messenger/Utilities;->isGoodPrime([BI)Z

    move-result v7

    if-nez v7, :cond_1f

    .line 468
    iget-object v7, p0, Lorg/telegram/messenger/voip/VoIPService$6;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    # invokes: Lorg/telegram/messenger/voip/VoIPService;->callFailed()V
    invoke-static {v7}, Lorg/telegram/messenger/voip/VoIPService;->access$900(Lorg/telegram/messenger/voip/VoIPService;)V

    .line 568
    .end local v5    # "res":Lorg/telegram/tgnet/TLRPC$messages_DhConfig;
    :goto_1e
    return-void

    .line 471
    .restart local v5    # "res":Lorg/telegram/tgnet/TLRPC$messages_DhConfig;
    :cond_1f
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->p:[B

    sput-object v7, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    .line 472
    iget v7, v5, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->g:I

    sput v7, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    .line 473
    iget v7, v5, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->version:I

    sput v7, Lorg/telegram/messenger/MessagesStorage;->lastSecretVersion:I

    .line 474
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/MessagesStorage;->lastSecretVersion:I

    sget v9, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    sget-object v10, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    invoke-virtual {v7, v8, v9, v10}, Lorg/telegram/messenger/MessagesStorage;->saveSecretParams(II[B)V

    .line 476
    :cond_38
    const/16 v7, 0x100

    new-array v6, v7, [B

    .line 477
    .local v6, "salt":[B
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_3d
    const/16 v7, 0x100

    if-ge v0, v7, :cond_57

    .line 478
    sget-object v7, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v7}, Ljava/security/SecureRandom;->nextDouble()D

    move-result-wide v8

    const-wide/high16 v10, 0x4070000000000000L    # 256.0

    mul-double/2addr v8, v10

    double-to-int v7, v8

    int-to-byte v7, v7

    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->random:[B

    aget-byte v8, v8, v0

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v0

    .line 477
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 481
    :cond_57
    sget v7, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    int-to-long v8, v7

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 482
    .local v3, "i_g_a":Ljava/math/BigInteger;
    new-instance v7, Ljava/math/BigInteger;

    const/4 v8, 0x1

    invoke-direct {v7, v8, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v8, Ljava/math/BigInteger;

    const/4 v9, 0x1

    sget-object v10, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    invoke-direct {v8, v9, v10}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v3, v7, v8}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 483
    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 484
    .local v2, "g_a":[B
    array-length v7, v2

    const/16 v8, 0x100

    if-le v7, v8, :cond_85

    .line 485
    const/16 v7, 0x100

    new-array v1, v7, [B

    .line 486
    .local v1, "correctedAuth":[B
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x100

    invoke-static {v2, v7, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 487
    move-object v2, v1

    .line 490
    .end local v1    # "correctedAuth":[B
    :cond_85
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_phone_requestCall;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_phone_requestCall;-><init>()V

    .line 491
    .local v4, "reqCall":Lorg/telegram/tgnet/TLRPC$TL_phone_requestCall;
    iget-object v7, p0, Lorg/telegram/messenger/voip/VoIPService$6;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    # getter for: Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v7}, Lorg/telegram/messenger/voip/VoIPService;->access$1000(Lorg/telegram/messenger/voip/VoIPService;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v7

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_phone_requestCall;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 492
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;-><init>()V

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_phone_requestCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    .line 493
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_phone_requestCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$TL_phone_requestCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->udp_reflector:Z

    iput-boolean v9, v7, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->udp_p2p:Z

    .line 494
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_phone_requestCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    const/16 v8, 0x41

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->min_layer:I

    .line 495
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_phone_requestCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    const/16 v8, 0x41

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->max_layer:I

    .line 496
    iget-object v7, p0, Lorg/telegram/messenger/voip/VoIPService$6;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    # setter for: Lorg/telegram/messenger/voip/VoIPService;->g_a:[B
    invoke-static {v7, v2}, Lorg/telegram/messenger/voip/VoIPService;->access$1102(Lorg/telegram/messenger/voip/VoIPService;[B)[B

    .line 497
    const/4 v7, 0x0

    array-length v8, v2

    invoke-static {v2, v7, v8}, Lorg/telegram/messenger/Utilities;->computeSHA256([BII)[B

    move-result-object v7

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_phone_requestCall;->g_a_hash:[B

    .line 498
    sget-object v7, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v7}, Ljava/security/SecureRandom;->nextInt()I

    move-result v7

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$TL_phone_requestCall;->random_id:I

    .line 500
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    new-instance v8, Lorg/telegram/messenger/voip/VoIPService$6$1;

    invoke-direct {v8, p0, v6}, Lorg/telegram/messenger/voip/VoIPService$6$1;-><init>(Lorg/telegram/messenger/voip/VoIPService$6;[B)V

    const/4 v9, 0x2

    invoke-virtual {v7, v4, v8, v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_1e

    .line 565
    .end local v0    # "a":I
    .end local v2    # "g_a":[B
    .end local v3    # "i_g_a":Ljava/math/BigInteger;
    .end local v4    # "reqCall":Lorg/telegram/tgnet/TLRPC$TL_phone_requestCall;
    .end local v5    # "res":Lorg/telegram/tgnet/TLRPC$messages_DhConfig;
    .end local v6    # "salt":[B
    :cond_d6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error on getDhConfig "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 566
    iget-object v7, p0, Lorg/telegram/messenger/voip/VoIPService$6;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    # invokes: Lorg/telegram/messenger/voip/VoIPService;->callFailed()V
    invoke-static {v7}, Lorg/telegram/messenger/voip/VoIPService;->access$900(Lorg/telegram/messenger/voip/VoIPService;)V

    goto/16 :goto_1e
.end method
