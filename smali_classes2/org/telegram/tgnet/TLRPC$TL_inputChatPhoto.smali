.class public Lorg/telegram/tgnet/TLRPC$TL_inputChatPhoto;
.super Lorg/telegram/tgnet/TLRPC$InputChatPhoto;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputChatPhoto"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19293
    const v0, -0x76ac52c9

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_inputChatPhoto;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19292
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputChatPhoto;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 19297
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputPhoto;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputPhoto;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputChatPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    .line 19298
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 19301
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_inputChatPhoto;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19302
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputChatPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$InputPhoto;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 19303
    return-void
.end method
