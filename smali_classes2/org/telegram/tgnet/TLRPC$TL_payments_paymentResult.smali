.class public Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;
.super Lorg/telegram/tgnet/TLRPC$payments_PaymentResult;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_payments_paymentResult"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 3014
    const v0, 0x4e5f810d    # 9.3744416E8f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3013
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$payments_PaymentResult;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 3018
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;->updates:Lorg/telegram/tgnet/TLRPC$Updates;

    .line 3019
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 3022
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3023
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentResult;->updates:Lorg/telegram/tgnet/TLRPC$Updates;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Updates;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 3024
    return-void
.end method
