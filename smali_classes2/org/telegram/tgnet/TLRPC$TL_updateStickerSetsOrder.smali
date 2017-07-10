.class public Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateStickerSetsOrder"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public order:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13225
    const v0, 0xbb2d201

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13224
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    .line 13227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;->order:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 11
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 13230
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v3

    iput v3, p0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;->flags:I

    .line 13231
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_30

    move v3, v4

    :goto_f
    iput-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;->masks:Z

    .line 13232
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 13233
    .local v2, "magic":I
    const v3, 0x1cb5c415

    if-eq v2, v3, :cond_32

    .line 13234
    if-eqz p2, :cond_49

    .line 13235
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v6, "wrong Vector magic, got %x"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v2    # "magic":I
    :cond_30
    move v3, v5

    .line 13231
    goto :goto_f

    .line 13239
    .restart local v2    # "magic":I
    :cond_32
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 13240
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_37
    if-ge v0, v1, :cond_49

    .line 13241
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;->order:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13240
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 13243
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_49
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 6
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 13246
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13247
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;->masks:Z

    if-eqz v2, :cond_38

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;->flags:I

    or-int/lit8 v2, v2, 0x1

    :goto_d
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;->flags:I

    .line 13248
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13249
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13250
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;->order:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 13251
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 13252
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_24
    if-ge v0, v1, :cond_3d

    .line 13253
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;->order:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 13252
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 13247
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_38
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;->flags:I

    and-int/lit8 v2, v2, -0x2

    goto :goto_d

    .line 13255
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    :cond_3d
    return-void
.end method
