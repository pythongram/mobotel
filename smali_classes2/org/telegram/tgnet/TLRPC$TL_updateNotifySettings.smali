.class public Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateNotifySettings"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public peer:Lorg/telegram/tgnet/TLRPC$NotifyPeer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12498
    const v0, -0x413d9711

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12497
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 12503
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$NotifyPeer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$NotifyPeer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$NotifyPeer;

    .line 12504
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 12505
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 12508
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12509
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$NotifyPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$NotifyPeer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 12510
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 12511
    return-void
.end method
