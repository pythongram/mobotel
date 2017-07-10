.class public Lorg/telegram/tgnet/TLRPC$TL_shippingOption;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_shippingOption"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public id:Ljava/lang/String;

.field public prices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9536
    const v0, -0x49dec321

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9535
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 9540
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->prices:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_shippingOption;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 9543
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->constructor:I

    if-eq v1, p1, :cond_1e

    .line 9544
    if-eqz p2, :cond_1c

    .line 9545
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in TL_shippingOption"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9547
    :cond_1c
    const/4 v0, 0x0

    .line 9552
    :goto_1d
    return-object v0

    .line 9550
    :cond_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;-><init>()V

    .line 9551
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_shippingOption;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_1d
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 12
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 9556
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->id:Ljava/lang/String;

    .line 9557
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->title:Ljava/lang/String;

    .line 9558
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 9559
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_2d

    .line 9560
    if-eqz p2, :cond_3e

    .line 9561
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "wrong Vector magic, got %x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 9565
    :cond_2d
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 9566
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_32
    if-ge v0, v1, :cond_3e

    .line 9567
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;

    move-result-object v3

    .line 9568
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;
    if-nez v3, :cond_3f

    .line 9573
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;
    :cond_3e
    return-void

    .line 9571
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;
    :cond_3f
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->prices:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9566
    add-int/lit8 v0, v0, 0x1

    goto :goto_32
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 9576
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9577
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->id:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 9578
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->title:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 9579
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9580
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->prices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 9581
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9582
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1f
    if-ge v0, v1, :cond_2f

    .line 9583
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->prices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 9582
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 9585
    :cond_2f
    return-void
.end method
