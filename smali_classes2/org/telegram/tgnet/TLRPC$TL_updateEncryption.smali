.class public Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateEncryption"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12660
    const v0, -0x4b5d1773

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12659
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 12664
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;->chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 12665
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;->date:I

    .line 12666
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 12669
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12670
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;->chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 12671
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12672
    return-void
.end method
