.class public Lorg/telegram/tgnet/TLRPC$TopPeerCategory;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TopPeerCategory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9367
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TopPeerCategory;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 9370
    const/4 v0, 0x0

    .line 9371
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TopPeerCategory;
    sparse-switch p1, :sswitch_data_42

    .line 9388
    :goto_4
    if-nez v0, :cond_3c

    if-eqz p2, :cond_3c

    .line 9389
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in TopPeerCategory"

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

    .line 9373
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryCorrespondents;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$TopPeerCategory;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryCorrespondents;-><init>()V

    .line 9374
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$TopPeerCategory;
    goto :goto_4

    .line 9376
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryGroups;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$TopPeerCategory;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryGroups;-><init>()V

    .line 9377
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$TopPeerCategory;
    goto :goto_4

    .line 9379
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryBotsInline;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$TopPeerCategory;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryBotsInline;-><init>()V

    .line 9380
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$TopPeerCategory;
    goto :goto_4

    .line 9382
    :sswitch_30
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryChannels;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$TopPeerCategory;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryChannels;-><init>()V

    .line 9383
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$TopPeerCategory;
    goto :goto_4

    .line 9385
    :sswitch_36
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryBotsPM;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$TopPeerCategory;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryBotsPM;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$TopPeerCategory;
    goto :goto_4

    .line 9391
    :cond_3c
    if-eqz v0, :cond_41

    .line 9392
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TopPeerCategory;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 9394
    :cond_41
    return-object v0

    .line 9371
    :sswitch_data_42
    .sparse-switch
        -0x5499e4a5 -> :sswitch_36
        -0x42e85eb6 -> :sswitch_24
        0x637b7ed -> :sswitch_1e
        0x148677e2 -> :sswitch_2a
        0x161d9628 -> :sswitch_30
    .end sparse-switch
.end method
