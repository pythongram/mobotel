.class public Lorg/telegram/tgnet/TLRPC$TL_chatInvite;
.super Lorg/telegram/tgnet/TLRPC$ChatInvite;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_chatInvite"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2385
    const v0, -0x248b0aa8

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2384
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ChatInvite;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 12
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2389
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    .line 2390
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_67

    move v4, v5

    :goto_f
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->channel:Z

    .line 2391
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_69

    move v4, v5

    :goto_18
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->broadcast:Z

    .line 2392
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_6b

    move v4, v5

    :goto_21
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->isPublic:Z

    .line 2393
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_6d

    move v4, v5

    :goto_2a
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->megagroup:Z

    .line 2394
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->title:Ljava/lang/String;

    .line 2395
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 2396
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->participants_count:I

    .line 2397
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_80

    .line 2398
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 2399
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_6f

    .line 2400
    if-eqz p2, :cond_80

    .line 2401
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v7, "wrong Vector magic, got %x"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v2    # "magic":I
    :cond_67
    move v4, v6

    .line 2390
    goto :goto_f

    :cond_69
    move v4, v6

    .line 2391
    goto :goto_18

    :cond_6b
    move v4, v6

    .line 2392
    goto :goto_21

    :cond_6d
    move v4, v6

    .line 2393
    goto :goto_2a

    .line 2405
    .restart local v2    # "magic":I
    :cond_6f
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 2406
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_74
    if-ge v0, v1, :cond_80

    .line 2407
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 2408
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v3, :cond_81

    .line 2414
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v2    # "magic":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$User;
    :cond_80
    return-void

    .line 2411
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v2    # "magic":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$User;
    :cond_81
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2406
    add-int/lit8 v0, v0, 0x1

    goto :goto_74
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 2417
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2418
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->channel:Z

    if-eqz v2, :cond_67

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    or-int/lit8 v2, v2, 0x1

    :goto_d
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    .line 2419
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->broadcast:Z

    if-eqz v2, :cond_6c

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    or-int/lit8 v2, v2, 0x2

    :goto_17
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    .line 2420
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->isPublic:Z

    if-eqz v2, :cond_71

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    or-int/lit8 v2, v2, 0x4

    :goto_21
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    .line 2421
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->megagroup:Z

    if-eqz v2, :cond_76

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    or-int/lit8 v2, v2, 0x8

    :goto_2b
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    .line 2422
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2423
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->title:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 2424
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 2425
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->participants_count:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2426
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_7b

    .line 2427
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2428
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2429
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2430
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_57
    if-ge v0, v1, :cond_7b

    .line 2431
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$User;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 2430
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 2418
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_67
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    and-int/lit8 v2, v2, -0x2

    goto :goto_d

    .line 2419
    :cond_6c
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    and-int/lit8 v2, v2, -0x3

    goto :goto_17

    .line 2420
    :cond_71
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    and-int/lit8 v2, v2, -0x5

    goto :goto_21

    .line 2421
    :cond_76
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;->flags:I

    and-int/lit8 v2, v2, -0x9

    goto :goto_2b

    .line 2434
    :cond_7b
    return-void
.end method
