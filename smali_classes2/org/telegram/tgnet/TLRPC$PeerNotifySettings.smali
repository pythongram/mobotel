.class public Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeerNotifySettings"
.end annotation


# instance fields
.field public events_mask:I

.field public flags:I

.field public mute_until:I

.field public silent:Z

.field public sound:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3675
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 3683
    const/4 v0, 0x0

    .line 3684
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
    sparse-switch p1, :sswitch_data_36

    .line 3695
    :goto_4
    if-nez v0, :cond_30

    if-eqz p2, :cond_30

    .line 3696
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in PeerNotifySettings"

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

    .line 3686
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;-><init>()V

    .line 3687
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
    goto :goto_4

    .line 3689
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings_layer47;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings_layer47;-><init>()V

    .line 3690
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
    goto :goto_4

    .line 3692
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettingsEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettingsEmpty;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
    goto :goto_4

    .line 3698
    :cond_30
    if-eqz v0, :cond_35

    .line 3699
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 3701
    :cond_35
    return-object v0

    .line 3684
    :sswitch_data_36
    .sparse-switch
        -0x72a1ee12 -> :sswitch_24
        -0x65325b40 -> :sswitch_1e
        0x70a68512 -> :sswitch_2a
    .end sparse-switch
.end method
