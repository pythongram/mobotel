.class public Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_stickerSet"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public documents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field public packs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_stickerPack;",
            ">;"
        }
    .end annotation
.end field

.field public set:Lorg/telegram/tgnet/TLRPC$StickerSet;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 3954
    const v0, -0x49f5db5a

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 3953
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 3957
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->packs:Ljava/util/ArrayList;

    .line 3958
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 3961
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->constructor:I

    if-eq v1, p1, :cond_1e

    .line 3962
    if-eqz p2, :cond_1c

    .line 3963
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in TL_messages_stickerSet"

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

    .line 3965
    :cond_1c
    const/4 v0, 0x0

    .line 3970
    :goto_1d
    return-object v0

    .line 3968
    :cond_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;-><init>()V

    .line 3969
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_1d
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 12
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const v5, 0x1cb5c415

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 3974
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$StickerSet;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$StickerSet;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 3975
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 3976
    .local v2, "magic":I
    if-eq v2, v5, :cond_2b

    .line 3977
    if-eqz p2, :cond_3c

    .line 3978
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "wrong Vector magic, got %x"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3982
    :cond_2b
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 3983
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_30
    if-ge v0, v1, :cond_45

    .line 3984
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    move-result-object v3

    .line 3985
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$TL_stickerPack;
    if-nez v3, :cond_3d

    .line 4005
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_stickerPack;
    :cond_3c
    return-void

    .line 3988
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_stickerPack;
    :cond_3d
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3983
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 3990
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_stickerPack;
    :cond_45
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 3991
    if-eq v2, v5, :cond_61

    .line 3992
    if-eqz p2, :cond_3c

    .line 3993
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "wrong Vector magic, got %x"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3997
    :cond_61
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 3998
    const/4 v0, 0x0

    :goto_66
    if-ge v0, v1, :cond_3c

    .line 3999
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    .line 4000
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v3, :cond_3c

    .line 4003
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3998
    add-int/lit8 v0, v0, 0x1

    goto :goto_66
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 6
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    const v3, 0x1cb5c415

    .line 4008
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4009
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$StickerSet;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 4010
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4011
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4012
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4013
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1a
    if-ge v0, v1, :cond_2a

    .line 4014
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 4013
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 4016
    :cond_2a
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4017
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4018
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4019
    const/4 v0, 0x0

    :goto_37
    if-ge v0, v1, :cond_47

    .line 4020
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$Document;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 4019
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 4022
    :cond_47
    return-void
.end method
