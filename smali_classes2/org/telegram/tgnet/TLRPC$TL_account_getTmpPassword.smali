.class public Lorg/telegram/tgnet/TLRPC$TL_account_getTmpPassword;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_account_getTmpPassword"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public password_hash:[B

.field public period:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22597
    const v0, 0x4a82327e    # 4266303.0f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_account_getTmpPassword;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22596
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
    .line 22603
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 22607
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_account_getTmpPassword;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 22608
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_getTmpPassword;->password_hash:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 22609
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_getTmpPassword;->period:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 22610
    return-void
.end method
