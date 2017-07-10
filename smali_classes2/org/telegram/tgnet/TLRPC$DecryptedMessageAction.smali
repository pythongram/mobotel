.class public Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecryptedMessageAction"
.end annotation


# instance fields
.field public action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

.field public end_seq_no:I

.field public exchange_id:J

.field public g_a:[B

.field public g_b:[B

.field public key_fingerprint:J

.field public layer:I

.field public random_ids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public start_seq_no:I

.field public ttl_seconds:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13519
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 13522
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->random_ids:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 13532
    const/4 v0, 0x0

    .line 13533
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    sparse-switch p1, :sswitch_data_72

    .line 13574
    :goto_4
    if-nez v0, :cond_6c

    if-eqz p2, :cond_6c

    .line 13575
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in DecryptedMessageAction"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13535
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;-><init>()V

    .line 13536
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_4

    .line 13538
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNotifyLayer;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNotifyLayer;-><init>()V

    .line 13539
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_4

    .line 13541
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionDeleteMessages;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionDeleteMessages;-><init>()V

    .line 13542
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_4

    .line 13544
    :sswitch_30
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionCommitKey;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionCommitKey;-><init>()V

    .line 13545
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_4

    .line 13547
    :sswitch_36
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAbortKey;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAbortKey;-><init>()V

    .line 13548
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_4

    .line 13550
    :sswitch_3c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionFlushHistory;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionFlushHistory;-><init>()V

    .line 13551
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_4

    .line 13553
    :sswitch_42
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionTyping;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionTyping;-><init>()V

    .line 13554
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_4

    .line 13556
    :sswitch_48
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAcceptKey;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAcceptKey;-><init>()V

    .line 13557
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_4

    .line 13559
    :sswitch_4e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionReadMessages;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionReadMessages;-><init>()V

    .line 13560
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_4

    .line 13562
    :sswitch_54
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionResend;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionResend;-><init>()V

    .line 13563
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_4

    .line 13565
    :sswitch_5a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionRequestKey;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionRequestKey;-><init>()V

    .line 13566
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_4

    .line 13568
    :sswitch_60
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;-><init>()V

    .line 13569
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_4

    .line 13571
    :sswitch_66
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNoop;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNoop;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
    goto :goto_4

    .line 13577
    :cond_6c
    if-eqz v0, :cond_71

    .line 13578
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 13580
    :cond_71
    return-object v0

    .line 13533
    :sswitch_data_72
    .sparse-switch
        -0x753e0b8b -> :sswitch_60
        -0x5e8cc514 -> :sswitch_1e
        -0x57d0229d -> :sswitch_66
        -0x334d89bf -> :sswitch_42
        -0x22fa1395 -> :sswitch_36
        -0x13d1f465 -> :sswitch_30
        -0xcfb777d -> :sswitch_24
        -0xc369ee5 -> :sswitch_5a
        0xc4f40be -> :sswitch_4e
        0x511110b0 -> :sswitch_54
        0x65614304 -> :sswitch_2a
        0x6719e45c -> :sswitch_3c
        0x6fe1735b -> :sswitch_48
    .end sparse-switch
.end method
