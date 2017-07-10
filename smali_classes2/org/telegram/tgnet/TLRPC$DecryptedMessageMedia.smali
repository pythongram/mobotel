.class public Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecryptedMessageMedia"
.end annotation


# instance fields
.field public _long:D

.field public access_hash:J

.field public address:Ljava/lang/String;

.field public attributes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$DocumentAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public caption:Ljava/lang/String;

.field public date:I

.field public dc_id:I

.field public duration:I

.field public file_name:Ljava/lang/String;

.field public first_name:Ljava/lang/String;

.field public h:I

.field public id:J

.field public iv:[B

.field public key:[B

.field public last_name:Ljava/lang/String;

.field public lat:D

.field public mime_type:Ljava/lang/String;

.field public phone_number:Ljava/lang/String;

.field public provider:Ljava/lang/String;

.field public size:I

.field public thumb_h:I

.field public thumb_w:I

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public user_id:I

.field public venue_id:Ljava/lang/String;

.field public w:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16464
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 16478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 16494
    const/4 v0, 0x0

    .line 16495
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    sparse-switch p1, :sswitch_data_7e

    .line 16542
    :goto_4
    if-nez v0, :cond_78

    if-eqz p2, :cond_78

    .line 16543
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in DecryptedMessageMedia"

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

    .line 16497
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaAudio;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaAudio;-><init>()V

    .line 16498
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    goto :goto_4

    .line 16500
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaGeoPoint;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaGeoPoint;-><init>()V

    .line 16501
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    goto :goto_4

    .line 16503
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaContact;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaContact;-><init>()V

    .line 16504
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    goto :goto_4

    .line 16506
    :sswitch_30
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaEmpty;-><init>()V

    .line 16507
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    goto :goto_4

    .line 16509
    :sswitch_36
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;-><init>()V

    .line 16510
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    goto :goto_4

    .line 16512
    :sswitch_3c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaWebPage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaWebPage;-><init>()V

    .line 16513
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    goto :goto_4

    .line 16515
    :sswitch_42
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;-><init>()V

    .line 16516
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    goto :goto_4

    .line 16518
    :sswitch_48
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;-><init>()V

    .line 16519
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    goto :goto_4

    .line 16521
    :sswitch_4e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument_layer8;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument_layer8;-><init>()V

    .line 16522
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    goto :goto_4

    .line 16524
    :sswitch_54
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;-><init>()V

    .line 16525
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    goto :goto_4

    .line 16527
    :sswitch_5a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;-><init>()V

    .line 16528
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    goto :goto_4

    .line 16530
    :sswitch_60
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;-><init>()V

    .line 16531
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    goto :goto_4

    .line 16533
    :sswitch_66
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer17;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer17;-><init>()V

    .line 16534
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    goto :goto_4

    .line 16536
    :sswitch_6c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaAudio_layer8;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaAudio_layer8;-><init>()V

    .line 16537
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    goto :goto_4

    .line 16539
    :sswitch_72
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto_layer8;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto_layer8;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
    goto :goto_4

    .line 16545
    :cond_78
    if-eqz v0, :cond_7d

    .line 16546
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 16548
    :cond_7d
    return-object v0

    .line 16495
    :sswitch_data_7e
    .sparse-switch
        -0x75f20a91 -> :sswitch_5a
        -0x68f373f2 -> :sswitch_48
        -0x4f6abcb5 -> :sswitch_4e
        -0x1afaee28 -> :sswitch_3c
        -0xe057288 -> :sswitch_42
        -0x56a4f23 -> :sswitch_60
        0x89f5c4a -> :sswitch_30
        0x32798a8c -> :sswitch_72
        0x35480a59 -> :sswitch_24
        0x4cee6ef3 -> :sswitch_54
        0x524a415d -> :sswitch_66
        0x57e0a9cb -> :sswitch_1e
        0x588a0a97 -> :sswitch_2a
        0x6080758f -> :sswitch_6c
        0x7afe8ae2 -> :sswitch_36
    .end sparse-switch
.end method
