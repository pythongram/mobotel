.class final Lorg/telegram/messenger/query/StickersQuery$10;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->reorderStickers(ILjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$order:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 460
    iput-object p1, p0, Lorg/telegram/messenger/query/StickersQuery$10;->val$order:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 460
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/query/StickersQuery$10;->compare(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)I
    .registers 9
    .param p1, "lhs"    # Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .param p2, "rhs"    # Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .prologue
    .line 463
    iget-object v2, p0, Lorg/telegram/messenger/query/StickersQuery$10;->val$order:Ljava/util/ArrayList;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 464
    .local v0, "index1":I
    iget-object v2, p0, Lorg/telegram/messenger/query/StickersQuery$10;->val$order:Ljava/util/ArrayList;

    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 465
    .local v1, "index2":I
    if-le v0, v1, :cond_20

    .line 466
    const/4 v2, 0x1

    .line 470
    :goto_1f
    return v2

    .line 467
    :cond_20
    if-ge v0, v1, :cond_24

    .line 468
    const/4 v2, -0x1

    goto :goto_1f

    .line 470
    :cond_24
    const/4 v2, 0x0

    goto :goto_1f
.end method
