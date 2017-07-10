.class public Lorg/telegram/tgnet/TLRPC$TL_messages_acceptEncryption;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_acceptEncryption"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public g_b:[B

.field public key_fingerprint:J

.field public peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22071
    const v0, 0x3dbc0415

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptEncryption;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22070
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
    .line 22078
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 22082
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptEncryption;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 22083
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptEncryption;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 22084
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptEncryption;->g_b:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 22085
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptEncryption;->key_fingerprint:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 22086
    return-void
.end method
