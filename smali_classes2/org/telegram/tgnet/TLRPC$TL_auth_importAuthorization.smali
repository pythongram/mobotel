.class public Lorg/telegram/tgnet/TLRPC$TL_auth_importAuthorization;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_auth_importAuthorization"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public bytes:[B

.field public id:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20505
    const v0, -0x1c1069ed

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_auth_importAuthorization;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20504
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
    .line 20511
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 20515
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_auth_importAuthorization;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20516
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_importAuthorization;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20517
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_importAuthorization;->bytes:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 20518
    return-void
.end method
