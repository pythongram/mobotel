.class public Lorg/telegram/tgnet/TLRPC$TL_notifyAll;
.super Lorg/telegram/tgnet/TLRPC$NotifyPeer;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_notifyAll"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 342
    const v0, 0x74d07c60

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_notifyAll;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 341
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$NotifyPeer;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 346
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_notifyAll;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 347
    return-void
.end method
