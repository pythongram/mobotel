.class public Lorg/telegram/tgnet/TLRPC$PhotoSize;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhotoSize"
.end annotation


# instance fields
.field public bytes:[B

.field public h:I

.field public location:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field public size:I

.field public type:Ljava/lang/String;

.field public w:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18409
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 18418
    const/4 v0, 0x0

    .line 18419
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    sparse-switch p1, :sswitch_data_36

    .line 18430
    :goto_4
    if-nez v0, :cond_30

    if-eqz p2, :cond_30

    .line 18431
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in PhotoSize"

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

    .line 18421
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photoSize;-><init>()V

    .line 18422
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    goto :goto_4

    .line 18424
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    .line 18425
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    goto :goto_4

    .line 18427
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    goto :goto_4

    .line 18433
    :cond_30
    if-eqz v0, :cond_35

    .line 18434
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$PhotoSize;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 18436
    :cond_35
    return-object v0

    .line 18419
    :sswitch_data_36
    .sparse-switch
        -0x1658cb06 -> :sswitch_2a
        0xe17e23c -> :sswitch_24
        0x77bfb61b -> :sswitch_1e
    .end sparse-switch
.end method
