.class public Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputEncryptedChat"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public access_hash:J

.field public chat_id:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19235
    const v0, -0xebe4a1f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19234
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 19241
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->constructor:I

    if-eq v1, p1, :cond_1e

    .line 19242
    if-eqz p2, :cond_1c

    .line 19243
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in TL_inputEncryptedChat"

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

    .line 19245
    :cond_1c
    const/4 v0, 0x0

    .line 19250
    :goto_1d
    return-object v0

    .line 19248
    :cond_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;-><init>()V

    .line 19249
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_1d
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 19254
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->chat_id:I

    .line 19255
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->access_hash:J

    .line 19256
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 19259
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19260
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->chat_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19261
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 19262
    return-void
.end method
