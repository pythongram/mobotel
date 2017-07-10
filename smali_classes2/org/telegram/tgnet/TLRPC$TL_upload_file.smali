.class public Lorg/telegram/tgnet/TLRPC$TL_upload_file;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_upload_file"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public bytes:Lorg/telegram/tgnet/NativeByteBuffer;

.field public mtime:I

.field public type:Lorg/telegram/tgnet/TLRPC$storage_FileType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26196
    const v0, 0x96a18d5

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26195
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 26203
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->constructor:I

    if-eq v1, p1, :cond_1e

    .line 26204
    if-eqz p2, :cond_1c

    .line 26205
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in TL_upload_file"

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

    .line 26207
    :cond_1c
    const/4 v0, 0x0

    .line 26212
    :goto_1d
    return-object v0

    .line 26210
    :cond_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_upload_file;-><init>()V

    .line 26211
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_1d
.end method


# virtual methods
.method public freeResources()V
    .registers 2

    .prologue
    .line 26230
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->disableFree:Z

    if-eqz v0, :cond_5

    .line 26237
    :cond_4
    :goto_4
    return-void

    .line 26233
    :cond_5
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    if-eqz v0, :cond_4

    .line 26234
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 26235
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    goto :goto_4
.end method

.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 26216
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$storage_FileType;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$storage_FileType;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->type:Lorg/telegram/tgnet/TLRPC$storage_FileType;

    .line 26217
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->mtime:I

    .line 26218
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteBuffer(Z)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    .line 26219
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 26222
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26223
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->type:Lorg/telegram/tgnet/TLRPC$storage_FileType;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$storage_FileType;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 26224
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->mtime:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26225
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteBuffer(Lorg/telegram/tgnet/NativeByteBuffer;)V

    .line 26226
    return-void
.end method
