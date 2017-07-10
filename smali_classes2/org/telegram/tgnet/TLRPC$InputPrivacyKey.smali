.class public Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputPrivacyKey"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4669
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 4672
    const/4 v0, 0x0

    .line 4673
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;
    sparse-switch p1, :sswitch_data_36

    .line 4684
    :goto_4
    if-nez v0, :cond_30

    if-eqz p2, :cond_30

    .line 4685
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in InputPrivacyKey"

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

    .line 4675
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyChatInvite;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyChatInvite;-><init>()V

    .line 4676
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;
    goto :goto_4

    .line 4678
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyStatusTimestamp;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyStatusTimestamp;-><init>()V

    .line 4679
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;
    goto :goto_4

    .line 4681
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyPhoneCall;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyPhoneCall;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;
    goto :goto_4

    .line 4687
    :cond_30
    if-eqz v0, :cond_35

    .line 4688
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 4690
    :cond_35
    return-object v0

    .line 4673
    :sswitch_data_36
    .sparse-switch
        -0x4204fbda -> :sswitch_1e
        -0x54523a1 -> :sswitch_2a
        0x4f96cb18 -> :sswitch_24
    .end sparse-switch
.end method
