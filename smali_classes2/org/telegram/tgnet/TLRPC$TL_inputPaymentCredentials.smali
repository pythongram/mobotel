.class public Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentials;
.super Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputPaymentCredentials"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9306
    const v0, 0x3417d728

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentials;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9305
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 9310
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentials;->flags:I

    .line 9311
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentials;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_d
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentials;->save:Z

    .line 9312
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentials;->data:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 9313
    return-void

    .line 9311
    :cond_1a
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 9316
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentials;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9317
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentials;->save:Z

    if-eqz v0, :cond_1a

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentials;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_d
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentials;->flags:I

    .line 9318
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentials;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9319
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentials;->data:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 9320
    return-void

    .line 9317
    :cond_1a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentials;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_d
.end method
