.class public Lorg/telegram/tgnet/TLRPC$TL_stickerSetCovered;
.super Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_stickerSetCovered"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11306
    const v0, 0x6410a5d2

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_stickerSetCovered;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11305
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 11310
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$StickerSet;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$StickerSet;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 11311
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    .line 11312
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 11315
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_stickerSetCovered;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11316
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$StickerSet;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 11317
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Document;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 11318
    return-void
.end method
