.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageEditData;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_getMessageEditData"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public id:I

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22962
    const v0, -0x25972ca

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageEditData;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22961
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
    .line 22968
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_messageEditData;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_messageEditData;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 22972
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageEditData;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 22973
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageEditData;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$InputPeer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 22974
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageEditData;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 22975
    return-void
.end method
