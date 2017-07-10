.class public Lorg/telegram/tgnet/TLRPC$InputChannel;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputChannel"
.end annotation


# instance fields
.field public access_hash:J

.field public channel_id:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15132
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputChannel;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 15137
    const/4 v0, 0x0

    .line 15138
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$InputChannel;
    sparse-switch p1, :sswitch_data_30

    .line 15146
    :goto_4
    if-nez v0, :cond_2a

    if-eqz p2, :cond_2a

    .line 15147
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in InputChannel"

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

    .line 15140
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputChannelEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputChannel;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputChannelEmpty;-><init>()V

    .line 15141
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputChannel;
    goto :goto_4

    .line 15143
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputChannel;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputChannel;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputChannel;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputChannel;
    goto :goto_4

    .line 15149
    :cond_2a
    if-eqz v0, :cond_2f

    .line 15150
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$InputChannel;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 15152
    :cond_2f
    return-object v0

    .line 15138
    :sswitch_data_30
    .sparse-switch
        -0x50148ed2 -> :sswitch_24
        -0x1173e17a -> :sswitch_1e
    .end sparse-switch
.end method
