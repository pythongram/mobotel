.class public Lorg/telegram/tgnet/TLRPC$NotifyPeer;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotifyPeer"
.end annotation


# instance fields
.field public peer:Lorg/telegram/tgnet/TLRPC$Peer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 312
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$NotifyPeer;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$NotifyPeer;
    sparse-switch p1, :sswitch_data_3c

    .line 331
    :goto_4
    if-nez v0, :cond_36

    if-eqz p2, :cond_36

    .line 332
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in NotifyPeer"

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

    .line 319
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_notifyAll;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$NotifyPeer;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_notifyAll;-><init>()V

    .line 320
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$NotifyPeer;
    goto :goto_4

    .line 322
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_notifyChats;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$NotifyPeer;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_notifyChats;-><init>()V

    .line 323
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$NotifyPeer;
    goto :goto_4

    .line 325
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_notifyUsers;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$NotifyPeer;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_notifyUsers;-><init>()V

    .line 326
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$NotifyPeer;
    goto :goto_4

    .line 328
    :sswitch_30
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_notifyPeer;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$NotifyPeer;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_notifyPeer;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$NotifyPeer;
    goto :goto_4

    .line 334
    :cond_36
    if-eqz v0, :cond_3b

    .line 335
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$NotifyPeer;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 337
    :cond_3b
    return-object v0

    .line 317
    :sswitch_data_3c
    .sparse-switch
        -0x602bf428 -> :sswitch_30
        -0x4b37c4b4 -> :sswitch_2a
        -0x3ff8313d -> :sswitch_24
        0x74d07c60 -> :sswitch_1e
    .end sparse-switch
.end method
