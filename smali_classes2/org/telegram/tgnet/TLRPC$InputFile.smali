.class public Lorg/telegram/tgnet/TLRPC$InputFile;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputFile"
.end annotation


# instance fields
.field public id:J

.field public md5_checksum:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public parts:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18586
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputFile;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 18593
    const/4 v0, 0x0

    .line 18594
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$InputFile;
    sparse-switch p1, :sswitch_data_30

    .line 18602
    :goto_4
    if-nez v0, :cond_2a

    if-eqz p2, :cond_2a

    .line 18603
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in InputFile"

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

    .line 18596
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputFileBig;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputFile;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputFileBig;-><init>()V

    .line 18597
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputFile;
    goto :goto_4

    .line 18599
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputFile;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputFile;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputFile;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputFile;
    goto :goto_4

    .line 18605
    :cond_2a
    if-eqz v0, :cond_2f

    .line 18606
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$InputFile;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 18608
    :cond_2f
    return-object v0

    .line 18594
    :sswitch_data_30
    .sparse-switch
        -0xad00d81 -> :sswitch_24
        -0x5b0f44b -> :sswitch_1e
    .end sparse-switch
.end method
