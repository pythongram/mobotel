.class public Lorg/telegram/tgnet/TLRPC$InputStickerSet;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputStickerSet"
.end annotation


# instance fields
.field public access_hash:J

.field public id:J

.field public short_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11568
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 11574
    const/4 v0, 0x0

    .line 11575
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    sparse-switch p1, :sswitch_data_36

    .line 11586
    :goto_4
    if-nez v0, :cond_30

    if-eqz p2, :cond_30

    .line 11587
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in InputStickerSet"

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

    .line 11577
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;-><init>()V

    .line 11578
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    goto :goto_4

    .line 11580
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    .line 11581
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    goto :goto_4

    .line 11583
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    goto :goto_4

    .line 11589
    :cond_30
    if-eqz v0, :cond_35

    .line 11590
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 11592
    :cond_35
    return-object v0

    .line 11575
    :sswitch_data_36
    .sparse-switch
        -0x79e33760 -> :sswitch_2a
        -0x62185d97 -> :sswitch_24
        -0x49d46b -> :sswitch_1e
    .end sparse-switch
.end method
