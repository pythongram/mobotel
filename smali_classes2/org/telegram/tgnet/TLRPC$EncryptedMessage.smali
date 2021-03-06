.class public Lorg/telegram/tgnet/TLRPC$EncryptedMessage;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncryptedMessage"
.end annotation


# instance fields
.field public bytes:[B

.field public chat_id:I

.field public date:I

.field public file:Lorg/telegram/tgnet/TLRPC$EncryptedFile;

.field public random_id:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11499
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$EncryptedMessage;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 11507
    const/4 v0, 0x0

    .line 11508
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$EncryptedMessage;
    sparse-switch p1, :sswitch_data_30

    .line 11516
    :goto_4
    if-nez v0, :cond_2a

    if-eqz p2, :cond_2a

    .line 11517
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in EncryptedMessage"

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

    .line 11510
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedMessageService;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$EncryptedMessage;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_encryptedMessageService;-><init>()V

    .line 11511
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$EncryptedMessage;
    goto :goto_4

    .line 11513
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$EncryptedMessage;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_encryptedMessage;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$EncryptedMessage;
    goto :goto_4

    .line 11519
    :cond_2a
    if-eqz v0, :cond_2f

    .line 11520
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 11522
    :cond_2f
    return-object v0

    .line 11508
    :sswitch_data_30
    .sparse-switch
        -0x12e73ee8 -> :sswitch_24
        0x23734b06 -> :sswitch_1e
    .end sparse-switch
.end method
