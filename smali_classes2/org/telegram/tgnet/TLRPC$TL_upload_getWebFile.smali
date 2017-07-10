.class public Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_upload_getWebFile"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public limit:I

.field public location:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

.field public offset:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26126
    const v0, 0x24e6818d

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26125
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
    .line 26133
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 26137
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26138
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;->location:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 26139
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;->offset:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26140
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;->limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26141
    return-void
.end method
