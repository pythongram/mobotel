.class public Lorg/telegram/tgnet/TLRPC$InputPeer;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputPeer"
.end annotation


# instance fields
.field public access_hash:J

.field public channel_id:I

.field public chat_id:I

.field public user_id:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19645
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputPeer;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 19652
    const/4 v0, 0x0

    .line 19653
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$InputPeer;
    sparse-switch p1, :sswitch_data_42

    .line 19670
    :goto_4
    if-nez v0, :cond_3c

    if-eqz p2, :cond_3c

    .line 19671
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in InputPeer"

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

    .line 19655
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPeer;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;-><init>()V

    .line 19656
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPeer;
    goto :goto_4

    .line 19658
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPeer;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;-><init>()V

    .line 19659
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPeer;
    goto :goto_4

    .line 19661
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPeer;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    .line 19662
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPeer;
    goto :goto_4

    .line 19664
    :sswitch_30
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPeer;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;-><init>()V

    .line 19665
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPeer;
    goto :goto_4

    .line 19667
    :sswitch_36
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPeer;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPeer;
    goto :goto_4

    .line 19673
    :cond_3c
    if-eqz v0, :cond_41

    .line 19674
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$InputPeer;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 19676
    :cond_41
    return-object v0

    .line 19653
    :sswitch_data_42
    .sparse-switch
        0x179be863 -> :sswitch_24
        0x20adaef8 -> :sswitch_36
        0x7b8e7de6 -> :sswitch_1e
        0x7da07ec9 -> :sswitch_30
        0x7f3b18ea -> :sswitch_2a
    .end sparse-switch
.end method
