.class public Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_phoneCallProtocol"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public flags:I

.field public max_layer:I

.field public min_layer:I

.field public udp_p2p:Z

.field public udp_reflector:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26241
    const v0, -0x5d44ca35

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26240
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 26250
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->constructor:I

    if-eq v1, p1, :cond_1e

    .line 26251
    if-eqz p2, :cond_1c

    .line 26252
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in TL_phoneCallProtocol"

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

    .line 26254
    :cond_1c
    const/4 v0, 0x0

    .line 26259
    :goto_1d
    return-object v0

    .line 26257
    :cond_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;-><init>()V

    .line 26258
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_1d
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 6
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 26263
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->flags:I

    .line 26264
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_26

    move v0, v1

    :goto_f
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->udp_p2p:Z

    .line 26265
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_28

    :goto_17
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->udp_reflector:Z

    .line 26266
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->min_layer:I

    .line 26267
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->max_layer:I

    .line 26268
    return-void

    :cond_26
    move v0, v2

    .line 26264
    goto :goto_f

    :cond_28
    move v1, v2

    .line 26265
    goto :goto_17
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 26271
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26272
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->udp_p2p:Z

    if-eqz v0, :cond_29

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_d
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->flags:I

    .line 26273
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->udp_reflector:Z

    if-eqz v0, :cond_2e

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_17
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->flags:I

    .line 26274
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26275
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->min_layer:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26276
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->max_layer:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26277
    return-void

    .line 26272
    :cond_29
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_d

    .line 26273
    :cond_2e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_17
.end method
