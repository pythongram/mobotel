.class public Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StickerSetCovered"
.end annotation


# instance fields
.field public cover:Lorg/telegram/tgnet/TLRPC$Document;

.field public covers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field public set:Lorg/telegram/tgnet/TLRPC$StickerSet;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11245
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 11247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 11251
    const/4 v0, 0x0

    .line 11252
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    sparse-switch p1, :sswitch_data_30

    .line 11260
    :goto_4
    if-nez v0, :cond_2a

    if-eqz p2, :cond_2a

    .line 11261
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in StickerSetCovered"

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

    .line 11254
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stickerSetMultiCovered;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stickerSetMultiCovered;-><init>()V

    .line 11255
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    goto :goto_4

    .line 11257
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_stickerSetCovered;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_stickerSetCovered;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    goto :goto_4

    .line 11263
    :cond_2a
    if-eqz v0, :cond_2f

    .line 11264
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 11266
    :cond_2f
    return-object v0

    .line 11252
    :sswitch_data_30
    .sparse-switch
        0x3407e51b -> :sswitch_1e
        0x6410a5d2 -> :sswitch_24
    .end sparse-switch
.end method
