.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_getAttachedStickers"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public media:Lorg/telegram/tgnet/TLRPC$InputStickeredMedia;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23390
    const v0, -0x33a49834    # -5.7515824E7f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23389
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .registers 9
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "constructor"    # I
    .param p3, "exception"    # Z

    .prologue
    .line 23395
    new-instance v3, Lorg/telegram/tgnet/TLRPC$Vector;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$Vector;-><init>()V

    .line 23396
    .local v3, "vector":Lorg/telegram/tgnet/TLRPC$Vector;
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 23397
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_a
    if-ge v0, v2, :cond_16

    .line 23398
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p3}, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object v1

    .line 23399
    .local v1, "object":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    if-nez v1, :cond_17

    .line 23404
    .end local v1    # "object":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    :cond_16
    return-object v3

    .line 23402
    .restart local v1    # "object":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    :cond_17
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23397
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 23408
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23409
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;->media:Lorg/telegram/tgnet/TLRPC$InputStickeredMedia;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$InputStickeredMedia;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 23410
    return-void
.end method
