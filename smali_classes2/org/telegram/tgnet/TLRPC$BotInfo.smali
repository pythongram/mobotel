.class public Lorg/telegram/tgnet/TLRPC$BotInfo;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BotInfo"
.end annotation


# instance fields
.field public commands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_botCommand;",
            ">;"
        }
    .end annotation
.end field

.field public description:Ljava/lang/String;

.field public user_id:I

.field public version:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 4267
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 4270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInfo;->commands:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$BotInfo;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 4274
    const/4 v0, 0x0

    .line 4275
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$BotInfo;
    sparse-switch p1, :sswitch_data_36

    .line 4286
    :goto_4
    if-nez v0, :cond_30

    if-eqz p2, :cond_30

    .line 4287
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in BotInfo"

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

    .line 4277
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_botInfoEmpty_layer48;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$BotInfo;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_botInfoEmpty_layer48;-><init>()V

    .line 4278
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$BotInfo;
    goto :goto_4

    .line 4280
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_botInfo;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$BotInfo;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_botInfo;-><init>()V

    .line 4281
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$BotInfo;
    goto :goto_4

    .line 4283
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_botInfo_layer48;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$BotInfo;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_botInfo_layer48;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$BotInfo;
    goto :goto_4

    .line 4289
    :cond_30
    if-eqz v0, :cond_35

    .line 4290
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$BotInfo;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 4292
    :cond_35
    return-object v0

    .line 4275
    :sswitch_data_36
    .sparse-switch
        -0x6717e2c6 -> :sswitch_24
        -0x44d1c832 -> :sswitch_1e
        0x9cf585d -> :sswitch_2a
    .end sparse-switch
.end method
