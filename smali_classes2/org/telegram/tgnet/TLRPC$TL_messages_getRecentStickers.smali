.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentStickers;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_getRecentStickers"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public attached:Z

.field public flags:I

.field public hash:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23209
    const v0, 0x5ea192c9

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentStickers;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23208
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .registers 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "constructor"    # I
    .param p3, "exception"    # Z

    .prologue
    .line 23216
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$messages_RecentStickers;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_RecentStickers;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 23220
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentStickers;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23221
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentStickers;->attached:Z

    if-eqz v0, :cond_1a

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentStickers;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_d
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentStickers;->flags:I

    .line 23222
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentStickers;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23223
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentStickers;->hash:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23224
    return-void

    .line 23221
    :cond_1a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentStickers;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_d
.end method
