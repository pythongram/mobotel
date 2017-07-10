.class public Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;
.super Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updates_channelDifferenceTooLong"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15580
    const v0, 0x410dee07

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15579
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

    .line 15584
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->flags:I

    .line 15585
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5a

    move v4, v5

    :goto_12
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->isFinal:Z

    .line 15586
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->pts:I

    .line 15587
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_26

    .line 15588
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->timeout:I

    .line 15590
    :cond_26
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->top_message:I

    .line 15591
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->read_inbox_max_id:I

    .line 15592
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->read_outbox_max_id:I

    .line 15593
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->unread_count:I

    .line 15594
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 15595
    .local v2, "magic":I
    if-eq v2, v7, :cond_5c

    .line 15596
    if-eqz p2, :cond_6d

    .line 15597
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
    :cond_5a
    move v4, v6

    .line 15585
    goto :goto_12

    .line 15601
    .restart local v2    # "magic":I
    :cond_5c
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 15602
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_61
    if-ge v0, v1, :cond_76

    .line 15603
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v3

    .line 15604
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$Message;
    if-nez v3, :cond_6e

    .line 15639
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_6d
    return-void

    .line 15607
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_6e
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15602
    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 15609
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_76
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 15610
    if-eq v2, v7, :cond_92

    .line 15611
    if-eqz p2, :cond_6d

    .line 15612
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

    .line 15616
    :cond_92
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 15617
    const/4 v0, 0x0

    :goto_97
    if-ge v0, v1, :cond_ab

    .line 15618
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$Chat;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 15619
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v3, :cond_6d

    .line 15622
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15617
    add-int/lit8 v0, v0, 0x1

    goto :goto_97

    .line 15624
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_ab
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 15625
    if-eq v2, v7, :cond_c7

    .line 15626
    if-eqz p2, :cond_6d

    .line 15627
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

    .line 15631
    :cond_c7
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 15632
    const/4 v0, 0x0

    :goto_cc
    if-ge v0, v1, :cond_6d

    .line 15633
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 15634
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v3, :cond_6d

    .line 15637
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15632
    add-int/lit8 v0, v0, 0x1

    goto :goto_cc
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 6
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    const v3, 0x1cb5c415

    .line 15642
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15643
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->isFinal:Z

    if-eqz v2, :cond_58

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->flags:I

    or-int/lit8 v2, v2, 0x1

    :goto_10
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->flags:I

    .line 15644
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15645
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->pts:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15646
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_27

    .line 15647
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->timeout:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15649
    :cond_27
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->top_message:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15650
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->read_inbox_max_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15651
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->read_outbox_max_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15652
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->unread_count:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15653
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15654
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 15655
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15656
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_48
    if-ge v0, v1, :cond_5d

    .line 15657
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$Message;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 15656
    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    .line 15643
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_58
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->flags:I

    and-int/lit8 v2, v2, -0x2

    goto :goto_10

    .line 15659
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    :cond_5d
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15660
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 15661
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15662
    const/4 v0, 0x0

    :goto_6a
    if-ge v0, v1, :cond_7a

    .line 15663
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$Chat;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 15662
    add-int/lit8 v0, v0, 0x1

    goto :goto_6a

    .line 15665
    :cond_7a
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15666
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 15667
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15668
    const/4 v0, 0x0

    :goto_87
    if-ge v0, v1, :cond_97

    .line 15669
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$User;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 15668
    add-int/lit8 v0, v0, 0x1

    goto :goto_87

    .line 15671
    :cond_97
    return-void
.end method
