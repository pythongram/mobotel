.class public Lorg/telegram/tgnet/TLRPC$TL_peerNotifyEventsEmpty;
.super Lorg/telegram/tgnet/TLRPC$PeerNotifyEvents;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_peerNotifyEventsEmpty"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8601
    const v0, -0x522ac34d

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifyEventsEmpty;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8600
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PeerNotifyEvents;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 8605
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifyEventsEmpty;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8606
    return-void
.end method
