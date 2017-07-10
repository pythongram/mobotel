.class public Lorg/telegram/tgnet/TLRPC$Peer;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Peer"
.end annotation


# instance fields
.field public channel_id:I

.field public chat_id:I

.field public user_id:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1630
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 1636
    const/4 v0, 0x0

    .line 1637
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$Peer;
    sparse-switch p1, :sswitch_data_36

    .line 1648
    :goto_4
    if-nez v0, :cond_30

    if-eqz p2, :cond_30

    .line 1649
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in Peer"

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

    .line 1639
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    .line 1640
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Peer;
    goto :goto_4

    .line 1642
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    .line 1643
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Peer;
    goto :goto_4

    .line 1645
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Peer;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Peer;
    goto :goto_4

    .line 1651
    :cond_30
    if-eqz v0, :cond_35

    .line 1652
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 1654
    :cond_35
    return-object v0

    .line 1637
    :sswitch_data_36
    .sparse-switch
        -0x624e4393 -> :sswitch_24
        -0x452f1a45 -> :sswitch_2a
        -0x42221ace -> :sswitch_1e
    .end sparse-switch
.end method
