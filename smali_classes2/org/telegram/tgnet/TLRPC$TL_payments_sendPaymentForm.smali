.class public Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_payments_sendPaymentForm"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public credentials:Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;

.field public flags:I

.field public msg_id:I

.field public requested_info_id:Ljava/lang/String;

.field public shipping_option_id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24327
    const v0, 0x2b8879b3

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24326
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .registers 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "constructor"    # I
    .param p3, "exception"    # Z

    .prologue
    .line 24336
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$payments_PaymentResult;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$payments_PaymentResult;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 24340
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24341
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24342
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24343
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1a

    .line 24344
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->requested_info_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 24346
    :cond_1a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_25

    .line 24347
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->shipping_option_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 24349
    :cond_25
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->credentials:Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 24350
    return-void
.end method
