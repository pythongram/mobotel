.class public Lorg/telegram/tgnet/TLRPC$TL_auth_bindTempAuthKey;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_auth_bindTempAuthKey"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public encrypted_message:[B

.field public expires_at:I

.field public nonce:J

.field public perm_auth_key_id:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20522
    const v0, -0x322bd5fb

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_auth_bindTempAuthKey;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20521
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
    .line 20530
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Bool;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Bool;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 20534
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_auth_bindTempAuthKey;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20535
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_bindTempAuthKey;->perm_auth_key_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 20536
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_bindTempAuthKey;->nonce:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 20537
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_bindTempAuthKey;->expires_at:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20538
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_bindTempAuthKey;->encrypted_message:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 20539
    return-void
.end method
