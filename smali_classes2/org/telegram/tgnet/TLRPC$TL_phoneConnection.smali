.class public Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_phoneConnection"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public id:J

.field public ip:Ljava/lang/String;

.field public ipv6:Ljava/lang/String;

.field public peer_tag:[B

.field public port:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15286
    const v0, -0x62b3e840

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15285
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 15295
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;->constructor:I

    if-eq v1, p1, :cond_1e

    .line 15296
    if-eqz p2, :cond_1c

    .line 15297
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in TL_phoneConnection"

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

    .line 15299
    :cond_1c
    const/4 v0, 0x0

    .line 15304
    :goto_1d
    return-object v0

    .line 15302
    :cond_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;-><init>()V

    .line 15303
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_1d
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 15308
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;->id:J

    .line 15309
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;->ip:Ljava/lang/String;

    .line 15310
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;->ipv6:Ljava/lang/String;

    .line 15311
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;->port:I

    .line 15312
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;->peer_tag:[B

    .line 15313
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 15316
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15317
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 15318
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;->ip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 15319
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;->ipv6:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 15320
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;->port:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15321
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;->peer_tag:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 15322
    return-void
.end method
