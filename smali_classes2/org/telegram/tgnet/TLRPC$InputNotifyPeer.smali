.class public Lorg/telegram/tgnet/TLRPC$InputNotifyPeer;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputNotifyPeer"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6691
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputNotifyPeer;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 6694
    const/4 v0, 0x0

    .line 6695
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$InputNotifyPeer;
    sparse-switch p1, :sswitch_data_42

    .line 6712
    :goto_4
    if-nez v0, :cond_3c

    if-eqz p2, :cond_3c

    .line 6713
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in InputNotifyPeer"

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

    .line 6697
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyChats;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputNotifyPeer;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyChats;-><init>()V

    .line 6698
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputNotifyPeer;
    goto :goto_4

    .line 6700
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyPeer;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputNotifyPeer;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyPeer;-><init>()V

    .line 6701
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputNotifyPeer;
    goto :goto_4

    .line 6703
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyUsers;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputNotifyPeer;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyUsers;-><init>()V

    .line 6704
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputNotifyPeer;
    goto :goto_4

    .line 6706
    :sswitch_30
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyGeoChatPeer;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputNotifyPeer;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyGeoChatPeer;-><init>()V

    .line 6707
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputNotifyPeer;
    goto :goto_4

    .line 6709
    :sswitch_36
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyAll;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputNotifyPeer;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyAll;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputNotifyPeer;
    goto :goto_4

    .line 6715
    :cond_3c
    if-eqz v0, :cond_41

    .line 6716
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$InputNotifyPeer;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 6718
    :cond_41
    return-object v0

    .line 6695
    :sswitch_data_42
    .sparse-switch
        -0x5bd6477a -> :sswitch_36
        -0x4743a4f4 -> :sswitch_24
        0x193b4417 -> :sswitch_2a
        0x4a95e84e -> :sswitch_1e
        0x4d8ddec8 -> :sswitch_30
    .end sparse-switch
.end method
