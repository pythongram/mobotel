.class public Lorg/telegram/tgnet/TLRPC$messages_RecentStickers;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "messages_RecentStickers"
.end annotation


# instance fields
.field public hash:I

.field public stickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19481
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 19483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_RecentStickers;->stickers:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_RecentStickers;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 19486
    const/4 v0, 0x0

    .line 19487
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$messages_RecentStickers;
    sparse-switch p1, :sswitch_data_30

    .line 19495
    :goto_4
    if-nez v0, :cond_2a

    if-eqz p2, :cond_2a

    .line 19496
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in messages_RecentStickers"

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

    .line 19489
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_recentStickers;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$messages_RecentStickers;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_recentStickers;-><init>()V

    .line 19490
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$messages_RecentStickers;
    goto :goto_4

    .line 19492
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_recentStickersNotModified;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$messages_RecentStickers;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_recentStickersNotModified;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$messages_RecentStickers;
    goto :goto_4

    .line 19498
    :cond_2a
    if-eqz v0, :cond_2f

    .line 19499
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$messages_RecentStickers;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 19501
    :cond_2f
    return-object v0

    .line 19487
    :sswitch_data_30
    .sparse-switch
        0xb17f890 -> :sswitch_24
        0x5ce20970 -> :sswitch_1e
    .end sparse-switch
.end method
