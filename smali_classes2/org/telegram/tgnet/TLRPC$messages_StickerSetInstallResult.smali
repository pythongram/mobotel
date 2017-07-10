.class public Lorg/telegram/tgnet/TLRPC$messages_StickerSetInstallResult;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "messages_StickerSetInstallResult"
.end annotation


# instance fields
.field public sets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 2821
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 2822
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_StickerSetInstallResult;->sets:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_StickerSetInstallResult;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 2825
    const/4 v0, 0x0

    .line 2826
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$messages_StickerSetInstallResult;
    sparse-switch p1, :sswitch_data_30

    .line 2834
    :goto_4
    if-nez v0, :cond_2a

    if-eqz p2, :cond_2a

    .line 2835
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in messages_StickerSetInstallResult"

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

    .line 2828
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSetInstallResultSuccess;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$messages_StickerSetInstallResult;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSetInstallResultSuccess;-><init>()V

    .line 2829
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$messages_StickerSetInstallResult;
    goto :goto_4

    .line 2831
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSetInstallResultArchive;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$messages_StickerSetInstallResult;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSetInstallResultArchive;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$messages_StickerSetInstallResult;
    goto :goto_4

    .line 2837
    :cond_2a
    if-eqz v0, :cond_2f

    .line 2838
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$messages_StickerSetInstallResult;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 2840
    :cond_2f
    return-object v0

    .line 2826
    :sswitch_data_30
    .sparse-switch
        0x35e410a8 -> :sswitch_24
        0x38641628 -> :sswitch_1e
    .end sparse-switch
.end method
