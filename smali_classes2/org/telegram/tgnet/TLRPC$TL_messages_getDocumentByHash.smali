.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getDocumentByHash;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_getDocumentByHash"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public mime_type:Ljava/lang/String;

.field public sha256:[B

.field public size:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23595
    const v0, 0x338e2464

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDocumentByHash;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23594
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
    .line 23602
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 23606
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDocumentByHash;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23607
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDocumentByHash;->sha256:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 23608
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDocumentByHash;->size:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23609
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDocumentByHash;->mime_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 23610
    return-void
.end method
