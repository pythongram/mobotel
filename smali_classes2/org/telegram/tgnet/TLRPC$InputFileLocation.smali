.class public Lorg/telegram/tgnet/TLRPC$InputFileLocation;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputFileLocation"
.end annotation


# instance fields
.field public access_hash:J

.field public id:J

.field public local_id:I

.field public secret:J

.field public volume_id:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6779
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputFileLocation;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 6787
    const/4 v0, 0x0

    .line 6788
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$InputFileLocation;
    sparse-switch p1, :sswitch_data_36

    .line 6799
    :goto_4
    if-nez v0, :cond_30

    if-eqz p2, :cond_30

    .line 6800
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in InputFileLocation"

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

    .line 6790
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileLocation;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputFileLocation;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileLocation;-><init>()V

    .line 6791
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputFileLocation;
    goto :goto_4

    .line 6793
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputFileLocation;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;-><init>()V

    .line 6794
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputFileLocation;
    goto :goto_4

    .line 6796
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputFileLocation;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputFileLocation;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputFileLocation;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputFileLocation;
    goto :goto_4

    .line 6802
    :cond_30
    if-eqz v0, :cond_35

    .line 6803
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 6805
    :cond_35
    return-object v0

    .line 6788
    :sswitch_data_36
    .sparse-switch
        -0xadca2ab -> :sswitch_1e
        0x14637196 -> :sswitch_2a
        0x4e45abe9 -> :sswitch_24
    .end sparse-switch
.end method
