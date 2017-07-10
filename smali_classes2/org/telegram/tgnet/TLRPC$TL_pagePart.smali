.class public Lorg/telegram/tgnet/TLRPC$TL_pagePart;
.super Lorg/telegram/tgnet/TLRPC$Page;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_pagePart"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 5352
    const v0, -0x721193bc

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_pagePart;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5351
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Page;-><init>()V

    return-void
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

    .line 5356
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 5357
    .local v2, "magic":I
    if-eq v2, v5, :cond_21

    .line 5358
    if-eqz p2, :cond_32

    .line 5359
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

    .line 5363
    :cond_21
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 5364
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_26
    if-ge v0, v1, :cond_3b

    .line 5365
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$PageBlock;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v3

    .line 5366
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$PageBlock;
    if-nez v3, :cond_33

    .line 5401
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :cond_32
    return-void

    .line 5369
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :cond_33
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_pagePart;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5364
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 5371
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :cond_3b
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 5372
    if-eq v2, v5, :cond_57

    .line 5373
    if-eqz p2, :cond_32

    .line 5374
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

    .line 5378
    :cond_57
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 5379
    const/4 v0, 0x0

    :goto_5c
    if-ge v0, v1, :cond_70

    .line 5380
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v3

    .line 5381
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$Photo;
    if-eqz v3, :cond_32

    .line 5384
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_pagePart;->photos:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5379
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 5386
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$Photo;
    :cond_70
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 5387
    if-eq v2, v5, :cond_8c

    .line 5388
    if-eqz p2, :cond_32

    .line 5389
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

    .line 5393
    :cond_8c
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 5394
    const/4 v0, 0x0

    :goto_91
    if-ge v0, v1, :cond_32

    .line 5395
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    .line 5396
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v3, :cond_32

    .line 5399
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_pagePart;->videos:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5394
    add-int/lit8 v0, v0, 0x1

    goto :goto_91
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 6
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    const v3, 0x1cb5c415

    .line 5404
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_pagePart;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5405
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5406
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_pagePart;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5407
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5408
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_15
    if-ge v0, v1, :cond_25

    .line 5409
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_pagePart;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$PageBlock;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 5408
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 5411
    :cond_25
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5412
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_pagePart;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5413
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5414
    const/4 v0, 0x0

    :goto_32
    if-ge v0, v1, :cond_42

    .line 5415
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_pagePart;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$Photo;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 5414
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 5417
    :cond_42
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5418
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_pagePart;->videos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5419
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5420
    const/4 v0, 0x0

    :goto_4f
    if-ge v0, v1, :cond_5f

    .line 5421
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_pagePart;->videos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$Document;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 5420
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 5423
    :cond_5f
    return-void
.end method
