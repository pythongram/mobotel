.class public Lorg/telegram/tgnet/TLRPC$GeoChatMessage;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeoChatMessage"
.end annotation


# instance fields
.field public action:Lorg/telegram/tgnet/TLRPC$MessageAction;

.field public chat_id:I

.field public date:I

.field public from_id:I

.field public id:I

.field public media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

.field public message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7933
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$GeoChatMessage;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 7943
    const/4 v0, 0x0

    .line 7944
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$GeoChatMessage;
    sparse-switch p1, :sswitch_data_36

    .line 7955
    :goto_4
    if-nez v0, :cond_30

    if-eqz p2, :cond_30

    .line 7956
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in GeoChatMessage"

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

    .line 7946
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_geoChatMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$GeoChatMessage;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_geoChatMessage;-><init>()V

    .line 7947
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$GeoChatMessage;
    goto :goto_4

    .line 7949
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_geoChatMessageService;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$GeoChatMessage;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_geoChatMessageService;-><init>()V

    .line 7950
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$GeoChatMessage;
    goto :goto_4

    .line 7952
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_geoChatMessageEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$GeoChatMessage;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_geoChatMessageEmpty;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$GeoChatMessage;
    goto :goto_4

    .line 7958
    :cond_30
    if-eqz v0, :cond_35

    .line 7959
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$GeoChatMessage;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 7961
    :cond_35
    return-object v0

    .line 7944
    :sswitch_data_36
    .sparse-switch
        -0x2cb05db2 -> :sswitch_24
        0x4505f8e1 -> :sswitch_1e
        0x60311a9b -> :sswitch_2a
    .end sparse-switch
.end method
