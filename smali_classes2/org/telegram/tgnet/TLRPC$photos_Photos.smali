.class public Lorg/telegram/tgnet/TLRPC$photos_Photos;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "photos_Photos"
.end annotation


# instance fields
.field public count:I

.field public photos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Photo;",
            ">;"
        }
    .end annotation
.end field

.field public users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 4721
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 4722
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$photos_Photos;->photos:Ljava/util/ArrayList;

    .line 4723
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$photos_Photos;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$photos_Photos;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 4727
    const/4 v0, 0x0

    .line 4728
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$photos_Photos;
    sparse-switch p1, :sswitch_data_30

    .line 4736
    :goto_4
    if-nez v0, :cond_2a

    if-eqz p2, :cond_2a

    .line 4737
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in photos_Photos"

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

    .line 4730
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photos_photos;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$photos_Photos;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photos_photos;-><init>()V

    .line 4731
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$photos_Photos;
    goto :goto_4

    .line 4733
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photos_photosSlice;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$photos_Photos;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photos_photosSlice;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$photos_Photos;
    goto :goto_4

    .line 4739
    :cond_2a
    if-eqz v0, :cond_2f

    .line 4740
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$photos_Photos;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 4742
    :cond_2f
    return-object v0

    .line 4728
    :sswitch_data_30
    .sparse-switch
        -0x7235955b -> :sswitch_1e
        0x15051f54 -> :sswitch_24
    .end sparse-switch
.end method
