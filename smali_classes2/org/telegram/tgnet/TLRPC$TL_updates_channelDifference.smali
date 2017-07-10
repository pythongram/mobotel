.class public Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifference;
.super Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updates_channelDifference"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15472
    const v0, 0x2064674e

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifference;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15471
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 12
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const v7, 0x1cb5c415

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 15476
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifference;->flags:I

    .line 15477
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifference;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_42

    move v4, v5

    :goto_12
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifference;->isFinal:Z

    .line 15478
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifference;->pts:I

    .line 15479
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifference;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_26

    .line 15480
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifference;->timeout:I

    .line 15482
    :cond_26
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 15483
    .local v2, "magic":I
    if-eq v2, v7, :cond_44

    .line 15484
    if-eqz p2, :cond_55

    .line 15485
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
    :cond_42
    move v4, v6

    .line 15477
    goto :goto_12

    .line 15489
    .restart local v2    # "magic":I
    :cond_44
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 15490
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_49
    if-ge v0, v1, :cond_5e

    .line 15491
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v3

    .line 15492
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$Message;
    if-nez v3, :cond_56

    .line 15542
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_55
    return-void

    .line 15495
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_56
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifference;->new_messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15490
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 15497
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_5e
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 15498
    if-eq v2, v7, :cond_7a

    .line 15499
    if-eqz p2, :cond_55

    .line 15500
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

    .line 15504
    :cond_7a
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 15505
    const/4 v0, 0x0

    :goto_7f
    if-ge v0, v1, :cond_93

    .line 15506
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$Update;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Update;

    move-result-object v3

    .line 15507
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$Update;
    if-eqz v3, :cond_55

    .line 15510
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifference;->other_updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15505
    add-int/lit8 v0, v0, 0x1

    goto :goto_7f

    .line 15512
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$Update;
    :cond_93
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 15513
    if-eq v2, v7, :cond_af

    .line 15514
    if-eqz p2, :cond_55

    .line 15515
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

    .line 15519
    :cond_af
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 15520
    const/4 v0, 0x0

    :goto_b4
    if-ge v0, v1, :cond_c8

    .line 15521
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$Chat;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 15522
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v3, :cond_55

    .line 15525
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifference;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15520
    add-int/lit8 v0, v0, 0x1

    goto :goto_b4

    .line 15527
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_c8
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 15528
    if-eq v2, v7, :cond_e4

    .line 15529
    if-eqz p2, :cond_55

    .line 15530
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

    .line 15534
    :cond_e4
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 15535
    const/4 v0, 0x0

    :goto_e9
    if-ge v0, v1, :cond_55

    .line 15536
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 15537
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v3, :cond_55

    .line 15540
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifference;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15535
    add-int/lit8 v0, v0, 0x1

    goto :goto_e9
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 6
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    const v3, 0x1cb5c415

    .line 15545
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifference;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15546
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifference;->isFinal:Z

    if-eqz v2, :cond_44

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifference;->flags:I

    or-int/lit8 v2, v2, 0x1

    :goto_10
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifference;->flags:I

    .line 15547
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifference;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15548
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifference;->pts:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15549
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifference;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_27

    .line 15550
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifference;->timeout:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15552
    :cond_27
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15553
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifference;->new_messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 15554
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15555
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_34
    if-ge v0, v1, :cond_49

    .line 15556
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifference;->new_messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$Message;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 15555
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 15546
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_44
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifference;->flags:I

    and-int/lit8 v2, v2, -0x2

    goto :goto_10

    .line 15558
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    :cond_49
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15559
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifference;->other_updates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 15560
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15561
    const/4 v0, 0x0

    :goto_56
    if-ge v0, v1, :cond_66

    .line 15562
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifference;->other_updates:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Update;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$Update;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 15561
    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    .line 15564
    :cond_66
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15565
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifference;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 15566
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15567
    const/4 v0, 0x0

    :goto_73
    if-ge v0, v1, :cond_83

    .line 15568
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifference;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$Chat;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 15567
    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    .line 15570
    :cond_83
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15571
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifference;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 15572
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15573
    const/4 v0, 0x0

    :goto_90
    if-ge v0, v1, :cond_a0

    .line 15574
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifference;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$User;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 15573
    add-int/lit8 v0, v0, 0x1

    goto :goto_90

    .line 15576
    :cond_a0
    return-void
.end method
