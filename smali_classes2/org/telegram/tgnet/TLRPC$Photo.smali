.class public Lorg/telegram/tgnet/TLRPC$Photo;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Photo"
.end annotation


# instance fields
.field public access_hash:J

.field public caption:Ljava/lang/String;

.field public date:I

.field public flags:I

.field public geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

.field public has_stickers:Z

.field public id:J

.field public sizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PhotoSize;",
            ">;"
        }
    .end annotation
.end field

.field public user_id:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14224
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 14231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 14236
    const/4 v0, 0x0

    .line 14237
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$Photo;
    sparse-switch p1, :sswitch_data_42

    .line 14254
    :goto_4
    if-nez v0, :cond_3c

    if-eqz p2, :cond_3c

    .line 14255
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in Photo"

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

    .line 14239
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photo_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Photo;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photo_old;-><init>()V

    .line 14240
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Photo;
    goto :goto_4

    .line 14242
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photo;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Photo;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photo;-><init>()V

    .line 14243
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Photo;
    goto :goto_4

    .line 14245
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photo_old2;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Photo;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photo_old2;-><init>()V

    .line 14246
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Photo;
    goto :goto_4

    .line 14248
    :sswitch_30
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photo_layer55;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Photo;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photo_layer55;-><init>()V

    .line 14249
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Photo;
    goto :goto_4

    .line 14251
    :sswitch_36
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Photo;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Photo;
    goto :goto_4

    .line 14257
    :cond_3c
    if-eqz v0, :cond_41

    .line 14258
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 14260
    :cond_41
    return-object v0

    .line 14237
    :sswitch_data_42
    .sparse-switch
        -0x6d7722d7 -> :sswitch_24
        -0x3c7c7f8a -> :sswitch_2a
        -0x3212bd02 -> :sswitch_30
        0x22b56751 -> :sswitch_1e
        0x2331b22d -> :sswitch_36
    .end sparse-switch
.end method
