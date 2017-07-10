.class public Lorg/telegram/tgnet/TLRPC$TL_channelMessagesFilter;
.super Lorg/telegram/tgnet/TLRPC$ChannelMessagesFilter;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channelMessagesFilter"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15709
    const v0, -0x328826a9

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_channelMessagesFilter;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15708
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ChannelMessagesFilter;-><init>()V

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

    .line 15713
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelMessagesFilter;->flags:I

    .line 15714
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelMessagesFilter;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_30

    move v4, v5

    :goto_f
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelMessagesFilter;->exclude_new_messages:Z

    .line 15715
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 15716
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_32

    .line 15717
    if-eqz p2, :cond_43

    .line 15718
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
    :cond_30
    move v4, v6

    .line 15714
    goto :goto_f

    .line 15722
    .restart local v2    # "magic":I
    :cond_32
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 15723
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_37
    if-ge v0, v1, :cond_43

    .line 15724
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$TL_messageRange;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messageRange;

    move-result-object v3

    .line 15725
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$TL_messageRange;
    if-nez v3, :cond_44

    .line 15730
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_messageRange;
    :cond_43
    return-void

    .line 15728
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_messageRange;
    :cond_44
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_channelMessagesFilter;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15723
    add-int/lit8 v0, v0, 0x1

    goto :goto_37
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 15733
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_channelMessagesFilter;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15734
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelMessagesFilter;->exclude_new_messages:Z

    if-eqz v2, :cond_34

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelMessagesFilter;->flags:I

    or-int/lit8 v2, v2, 0x2

    :goto_d
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelMessagesFilter;->flags:I

    .line 15735
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelMessagesFilter;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15736
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15737
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelMessagesFilter;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 15738
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 15739
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_24
    if-ge v0, v1, :cond_39

    .line 15740
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelMessagesFilter;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageRange;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_messageRange;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 15739
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 15734
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_34
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelMessagesFilter;->flags:I

    and-int/lit8 v2, v2, -0x3

    goto :goto_d

    .line 15742
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    :cond_39
    return-void
.end method
