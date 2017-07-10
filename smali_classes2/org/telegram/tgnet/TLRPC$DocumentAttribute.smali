.class public Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DocumentAttribute"
.end annotation


# instance fields
.field public alt:Ljava/lang/String;

.field public duration:I

.field public file_name:Ljava/lang/String;

.field public flags:I

.field public h:I

.field public mask:Z

.field public mask_coords:Lorg/telegram/tgnet/TLRPC$TL_maskCoords;

.field public performer:Ljava/lang/String;

.field public stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

.field public title:Ljava/lang/String;

.field public voice:Z

.field public w:I

.field public waveform:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 595
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 611
    const/4 v0, 0x0

    .line 612
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    sparse-switch p1, :sswitch_data_6c

    .line 650
    :goto_4
    if-nez v0, :cond_66

    if-eqz p2, :cond_66

    .line 651
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in DocumentAttribute"

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

    .line 614
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;-><init>()V

    .line 615
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    goto :goto_4

    .line 617
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio_old;-><init>()V

    .line 618
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    goto :goto_4

    .line 620
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;-><init>()V

    .line 621
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    goto :goto_4

    .line 623
    :sswitch_30
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;-><init>()V

    .line 624
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    goto :goto_4

    .line 626
    :sswitch_36
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;-><init>()V

    .line 627
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    goto :goto_4

    .line 629
    :sswitch_3c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;-><init>()V

    .line 630
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    goto :goto_4

    .line 632
    :sswitch_42
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio_layer45;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio_layer45;-><init>()V

    .line 633
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    goto :goto_4

    .line 635
    :sswitch_48
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_old;-><init>()V

    .line 636
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    goto :goto_4

    .line 638
    :sswitch_4e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeHasStickers;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeHasStickers;-><init>()V

    .line 639
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    goto :goto_4

    .line 641
    :sswitch_54
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_old2;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_old2;-><init>()V

    .line 642
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    goto :goto_4

    .line 644
    :sswitch_5a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;-><init>()V

    .line 645
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    goto :goto_4

    .line 647
    :sswitch_60
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    goto :goto_4

    .line 653
    :cond_66
    if-eqz v0, :cond_6b

    .line 654
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 656
    :cond_6b
    return-object v0

    .line 612
    :sswitch_data_6c
    .sparse-switch
        -0x67fe2d09 -> :sswitch_4e
        -0x67ad063a -> :sswitch_60
        -0x66b3677e -> :sswitch_54
        -0x212de720 -> :sswitch_42
        -0x4f5a8d9 -> :sswitch_48
        0x51448e5 -> :sswitch_24
        0x11b58939 -> :sswitch_30
        0x15590068 -> :sswitch_36
        0x3a556302 -> :sswitch_1e
        0x5910cccb -> :sswitch_3c
        0x6319d612 -> :sswitch_2a
        0x6c37c15c -> :sswitch_5a
    .end sparse-switch
.end method
