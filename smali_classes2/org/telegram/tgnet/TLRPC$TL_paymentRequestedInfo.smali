.class public Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_paymentRequestedInfo"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public email:Ljava/lang/String;

.field public flags:I

.field public name:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20302
    const v0, -0x6f63c06c

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20301
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 20311
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->constructor:I

    if-eq v1, p1, :cond_1e

    .line 20312
    if-eqz p2, :cond_1c

    .line 20313
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in TL_paymentRequestedInfo"

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

    .line 20315
    :cond_1c
    const/4 v0, 0x0

    .line 20320
    :goto_1d
    return-object v0

    .line 20318
    :cond_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;-><init>()V

    .line 20319
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_1d
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 20324
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    .line 20325
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_12

    .line 20326
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->name:Ljava/lang/String;

    .line 20328
    :cond_12
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1e

    .line 20329
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->phone:Ljava/lang/String;

    .line 20331
    :cond_1e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2a

    .line 20332
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->email:Ljava/lang/String;

    .line 20334
    :cond_2a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3a

    .line 20335
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    .line 20337
    :cond_3a
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 20340
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20341
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20342
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_15

    .line 20343
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 20345
    :cond_15
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_20

    .line 20346
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->phone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 20348
    :cond_20
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2b

    .line 20349
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 20351
    :cond_2b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_36

    .line 20352
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 20354
    :cond_36
    return-void
.end method
