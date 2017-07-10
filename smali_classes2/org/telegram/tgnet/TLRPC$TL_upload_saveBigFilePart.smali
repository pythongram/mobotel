.class public Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_upload_saveBigFilePart"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public bytes:Lorg/telegram/tgnet/NativeByteBuffer;

.field public file_id:J

.field public file_part:I

.field public file_total_parts:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26094
    const v0, -0x218498c3

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26093
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
    .line 26102
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Bool;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Bool;

    move-result-object v0

    return-object v0
.end method

.method public freeResources()V
    .registers 2

    .prologue
    .line 26115
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->disableFree:Z

    if-eqz v0, :cond_5

    .line 26122
    :cond_4
    :goto_4
    return-void

    .line 26118
    :cond_5
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    if-eqz v0, :cond_4

    .line 26119
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 26120
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    goto :goto_4
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 26106
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26107
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->file_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 26108
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->file_part:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26109
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->file_total_parts:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26110
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteBuffer(Lorg/telegram/tgnet/NativeByteBuffer;)V

    .line 26111
    return-void
.end method
