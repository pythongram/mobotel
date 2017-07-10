.class public Lorg/telegram/tgnet/TLRPC$EncryptedChat;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncryptedChat"
.end annotation


# instance fields
.field public a_or_b:[B

.field public access_hash:J

.field public admin_id:I

.field public auth_key:[B

.field public date:I

.field public exchange_id:J

.field public future_auth_key:[B

.field public future_key_fingerprint:J

.field public g_a:[B

.field public g_a_or_b:[B

.field public id:I

.field public in_seq_no:I

.field public key_create_date:I

.field public key_fingerprint:J

.field public key_hash:[B

.field public key_use_count_in:S

.field public key_use_count_out:S

.field public layer:I

.field public nonce:[B

.field public participant_id:I

.field public seq_in:I

.field public seq_out:I

.field public ttl:I

.field public user_id:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24612
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 24639
    const/4 v0, 0x0

    .line 24640
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    sparse-switch p1, :sswitch_data_4e

    .line 24663
    :goto_4
    if-nez v0, :cond_48

    if-eqz p2, :cond_48

    .line 24664
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in EncryptedChat"

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

    .line 24642
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested_old;-><init>()V

    .line 24643
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    goto :goto_4

    .line 24645
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested;-><init>()V

    .line 24646
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    goto :goto_4

    .line 24648
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;-><init>()V

    .line 24649
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    goto :goto_4

    .line 24651
    :sswitch_30
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat_old;-><init>()V

    .line 24652
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    goto :goto_4

    .line 24654
    :sswitch_36
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatEmpty;-><init>()V

    .line 24655
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    goto :goto_4

    .line 24657
    :sswitch_3c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;-><init>()V

    .line 24658
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    goto :goto_4

    .line 24660
    :sswitch_42
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    goto :goto_4

    .line 24666
    :cond_48
    if-eqz v0, :cond_4d

    .line 24667
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 24669
    :cond_4d
    return-object v0

    .line 24640
    :sswitch_data_4e
    .sparse-switch
        -0x54813f60 -> :sswitch_36
        -0x3787ad82 -> :sswitch_24
        -0x5a931ca -> :sswitch_2a
        -0x2565849 -> :sswitch_1e
        0x13d6dd27 -> :sswitch_42
        0x3bf703dc -> :sswitch_3c
        0x6601d14f -> :sswitch_30
    .end sparse-switch
.end method
