.class public Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_reorderStickerSets"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public flags:I

.field public masks:Z

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
    .line 23571
    const v0, 0x78337739

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23570
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 23575
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;->order:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .registers 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "constructor"    # I
    .param p3, "exception"    # Z

    .prologue
    .line 23578
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Bool;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Bool;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 6
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 23582
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23583
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;->masks:Z

    if-eqz v2, :cond_38

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;->flags:I

    or-int/lit8 v2, v2, 0x1

    :goto_d
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;->flags:I

    .line 23584
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23585
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23586
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;->order:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 23587
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23588
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_24
    if-ge v0, v1, :cond_3d

    .line 23589
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;->order:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 23588
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 23583
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_38
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderStickerSets;->flags:I

    and-int/lit8 v2, v2, -0x2

    goto :goto_d

    .line 23591
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    :cond_3d
    return-void
.end method
