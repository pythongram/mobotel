.class public Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputEncryptedFile"
.end annotation


# instance fields
.field public access_hash:J

.field public id:J

.field public key_fingerprint:I

.field public md5_checksum:Ljava/lang/String;

.field public parts:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13352
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 13360
    const/4 v0, 0x0

    .line 13361
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;
    sparse-switch p1, :sswitch_data_3c

    .line 13375
    :goto_4
    if-nez v0, :cond_36

    if-eqz p2, :cond_36

    .line 13376
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in InputEncryptedFile"

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

    .line 13363
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;-><init>()V

    .line 13364
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;
    goto :goto_4

    .line 13366
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileBigUploaded;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileBigUploaded;-><init>()V

    .line 13367
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;
    goto :goto_4

    .line 13369
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileEmpty;-><init>()V

    .line 13370
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;
    goto :goto_4

    .line 13372
    :sswitch_30
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileUploaded;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileUploaded;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;
    goto :goto_4

    .line 13378
    :cond_36
    if-eqz v0, :cond_3b

    .line 13379
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 13381
    :cond_3b
    return-object v0

    .line 13361
    :sswitch_data_3c
    .sparse-switch
        0x1837c364 -> :sswitch_2a
        0x2dc173c8 -> :sswitch_24
        0x5a17b5e5 -> :sswitch_1e
        0x64bd0306 -> :sswitch_30
    .end sparse-switch
.end method
