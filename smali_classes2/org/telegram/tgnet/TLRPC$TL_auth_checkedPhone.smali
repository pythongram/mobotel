.class public Lorg/telegram/tgnet/TLRPC$TL_auth_checkedPhone;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_auth_checkedPhone"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public phone_registered:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 468
    const v0, -0x7ee15d72

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_auth_checkedPhone;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 467
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_auth_checkedPhone;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 473
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_auth_checkedPhone;->constructor:I

    if-eq v1, p1, :cond_1e

    .line 474
    if-eqz p2, :cond_1c

    .line 475
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in TL_auth_checkedPhone"

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

    .line 477
    :cond_1c
    const/4 v0, 0x0

    .line 482
    :goto_1d
    return-object v0

    .line 480
    :cond_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_checkedPhone;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_checkedPhone;-><init>()V

    .line 481
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_auth_checkedPhone;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_auth_checkedPhone;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_1d
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 486
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_checkedPhone;->phone_registered:Z

    .line 487
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 490
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_auth_checkedPhone;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 491
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_checkedPhone;->phone_registered:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 492
    return-void
.end method
