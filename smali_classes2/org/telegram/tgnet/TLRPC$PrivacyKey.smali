.class public Lorg/telegram/tgnet/TLRPC$PrivacyKey;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrivacyKey"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2182
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PrivacyKey;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 2185
    const/4 v0, 0x0

    .line 2186
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$PrivacyKey;
    sparse-switch p1, :sswitch_data_36

    .line 2197
    :goto_4
    if-nez v0, :cond_30

    if-eqz p2, :cond_30

    .line 2198
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in PrivacyKey"

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

    .line 2188
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyStatusTimestamp;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PrivacyKey;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyStatusTimestamp;-><init>()V

    .line 2189
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PrivacyKey;
    goto :goto_4

    .line 2191
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyChatInvite;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PrivacyKey;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyChatInvite;-><init>()V

    .line 2192
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PrivacyKey;
    goto :goto_4

    .line 2194
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyPhoneCall;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PrivacyKey;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyPhoneCall;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PrivacyKey;
    goto :goto_4

    .line 2200
    :cond_30
    if-eqz v0, :cond_35

    .line 2201
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$PrivacyKey;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 2203
    :cond_35
    return-object v0

    .line 2186
    :sswitch_data_36
    .sparse-switch
        -0x43d154d0 -> :sswitch_1e
        0x3d662b7b -> :sswitch_2a
        0x500e6dfa -> :sswitch_24
    .end sparse-switch
.end method
