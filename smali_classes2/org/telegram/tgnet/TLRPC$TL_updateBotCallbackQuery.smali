.class public Lorg/telegram/tgnet/TLRPC$TL_updateBotCallbackQuery;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateBotCallbackQuery"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public msg_id:I

.field public peer:Lorg/telegram/tgnet/TLRPC$Peer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12263
    const v0, -0x18cab81f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_updateBotCallbackQuery;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12262
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 12269
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotCallbackQuery;->flags:I

    .line 12270
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotCallbackQuery;->query_id:J

    .line 12271
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotCallbackQuery;->user_id:I

    .line 12272
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotCallbackQuery;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 12273
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotCallbackQuery;->msg_id:I

    .line 12274
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotCallbackQuery;->chat_instance:J

    .line 12275
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotCallbackQuery;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_34

    .line 12276
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotCallbackQuery;->data:[B

    .line 12278
    :cond_34
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotCallbackQuery;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_40

    .line 12279
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotCallbackQuery;->game_short_name:Ljava/lang/String;

    .line 12281
    :cond_40
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 12284
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_updateBotCallbackQuery;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12285
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotCallbackQuery;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12286
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotCallbackQuery;->query_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 12287
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotCallbackQuery;->user_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12288
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotCallbackQuery;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 12289
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotCallbackQuery;->msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12290
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotCallbackQuery;->chat_instance:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 12291
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotCallbackQuery;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2e

    .line 12292
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotCallbackQuery;->data:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 12294
    :cond_2e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotCallbackQuery;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_39

    .line 12295
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotCallbackQuery;->game_short_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 12297
    :cond_39
    return-void
.end method
