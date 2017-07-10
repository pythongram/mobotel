.class public Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChannelParticipant"
.end annotation


# instance fields
.field public date:I

.field public inviter_id:I

.field public kicked_by:I

.field public user_id:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15910
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 15917
    const/4 v0, 0x0

    .line 15918
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    sparse-switch p1, :sswitch_data_48

    .line 15938
    :goto_4
    if-nez v0, :cond_42

    if-eqz p2, :cond_42

    .line 15939
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in ChannelParticipant"

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

    .line 15920
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant;-><init>()V

    .line 15921
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    goto :goto_4

    .line 15923
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf;-><init>()V

    .line 15924
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    goto :goto_4

    .line 15926
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantEditor;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantEditor;-><init>()V

    .line 15927
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    goto :goto_4

    .line 15929
    :sswitch_30
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantKicked;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantKicked;-><init>()V

    .line 15930
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    goto :goto_4

    .line 15932
    :sswitch_36
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantModerator;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantModerator;-><init>()V

    .line 15933
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    goto :goto_4

    .line 15935
    :sswitch_3c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    goto :goto_4

    .line 15941
    :cond_42
    if-eqz v0, :cond_47

    .line 15942
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 15944
    :cond_47
    return-object v0

    .line 15918
    :sswitch_data_48
    .sparse-switch
        -0x733a1966 -> :sswitch_30
        -0x6efa8011 -> :sswitch_36
        -0x67e6d29f -> :sswitch_2a
        -0x5cd76593 -> :sswitch_24
        -0x1c1d1e07 -> :sswitch_3c
        0x15ebac1d -> :sswitch_1e
    .end sparse-switch
.end method
