.class public Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickers;
.super Lorg/telegram/tgnet/TLRPC$messages_FeaturedStickers;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_featuredStickers"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6508
    const v0, -0x762771b

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickers;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6507
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$messages_FeaturedStickers;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 12
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const v5, 0x1cb5c415

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 6512
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickers;->hash:I

    .line 6513
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 6514
    .local v2, "magic":I
    if-eq v2, v5, :cond_27

    .line 6515
    if-eqz p2, :cond_38

    .line 6516
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "wrong Vector magic, got %x"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6520
    :cond_27
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 6521
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2c
    if-ge v0, v1, :cond_41

    .line 6522
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object v3

    .line 6523
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    if-nez v3, :cond_39

    .line 6539
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    :cond_38
    return-void

    .line 6526
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    :cond_39
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickers;->sets:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6521
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 6528
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    :cond_41
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 6529
    if-eq v2, v5, :cond_5d

    .line 6530
    if-eqz p2, :cond_38

    .line 6531
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "wrong Vector magic, got %x"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6535
    :cond_5d
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 6536
    const/4 v0, 0x0

    :goto_62
    if-ge v0, v1, :cond_38

    .line 6537
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickers;->unread:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6536
    add-int/lit8 v0, v0, 0x1

    goto :goto_62
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 6
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    const v3, 0x1cb5c415

    .line 6542
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickers;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6543
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickers;->hash:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6544
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6545
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickers;->sets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6546
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6547
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1a
    if-ge v0, v1, :cond_2a

    .line 6548
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickers;->sets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 6547
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 6550
    :cond_2a
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6551
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickers;->unread:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6552
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6553
    const/4 v0, 0x0

    :goto_37
    if-ge v0, v1, :cond_4b

    .line 6554
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickers;->unread:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 6553
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 6556
    :cond_4b
    return-void
.end method
