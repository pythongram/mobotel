.class public Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedService;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_sendEncryptedService"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public data:Lorg/telegram/tgnet/NativeByteBuffer;

.field public peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

.field public random_id:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26337
    const v0, 0x32d439a4

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedService;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26336
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
    .line 26344
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;

    move-result-object v0

    return-object v0
.end method

.method public freeResources()V
    .registers 2

    .prologue
    .line 26356
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedService;->data:Lorg/telegram/tgnet/NativeByteBuffer;

    if-eqz v0, :cond_c

    .line 26357
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedService;->data:Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 26358
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedService;->data:Lorg/telegram/tgnet/NativeByteBuffer;

    .line 26360
    :cond_c
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 26348
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedService;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26349
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedService;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 26350
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedService;->random_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 26351
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedService;->data:Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteBuffer(Lorg/telegram/tgnet/NativeByteBuffer;)V

    .line 26352
    return-void
.end method
