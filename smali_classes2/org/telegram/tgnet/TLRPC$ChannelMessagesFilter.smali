.class public Lorg/telegram/tgnet/TLRPC$ChannelMessagesFilter;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChannelMessagesFilter"
.end annotation


# instance fields
.field public exclude_new_messages:Z

.field public flags:I

.field public ranges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_messageRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15674
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 15677
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelMessagesFilter;->ranges:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChannelMessagesFilter;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 15680
    const/4 v0, 0x0

    .line 15681
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$ChannelMessagesFilter;
    sparse-switch p1, :sswitch_data_30

    .line 15689
    :goto_4
    if-nez v0, :cond_2a

    if-eqz p2, :cond_2a

    .line 15690
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in ChannelMessagesFilter"

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

    .line 15683
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelMessagesFilterEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelMessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelMessagesFilterEmpty;-><init>()V

    .line 15684
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelMessagesFilter;
    goto :goto_4

    .line 15686
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelMessagesFilter;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelMessagesFilter;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelMessagesFilter;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelMessagesFilter;
    goto :goto_4

    .line 15692
    :cond_2a
    if-eqz v0, :cond_2f

    .line 15693
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$ChannelMessagesFilter;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 15695
    :cond_2f
    return-object v0

    .line 15681
    :sswitch_data_30
    .sparse-switch
        -0x6b2bd119 -> :sswitch_1e
        -0x328826a9 -> :sswitch_24
    .end sparse-switch
.end method
