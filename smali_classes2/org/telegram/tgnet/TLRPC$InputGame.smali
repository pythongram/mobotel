.class public Lorg/telegram/tgnet/TLRPC$InputGame;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputGame"
.end annotation


# instance fields
.field public access_hash:J

.field public bot_id:Lorg/telegram/tgnet/TLRPC$InputUser;

.field public id:J

.field public short_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4383
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputGame;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 4390
    const/4 v0, 0x0

    .line 4391
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$InputGame;
    sparse-switch p1, :sswitch_data_30

    .line 4399
    :goto_4
    if-nez v0, :cond_2a

    if-eqz p2, :cond_2a

    .line 4400
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in InputGame"

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

    .line 4393
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputGameShortName;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputGame;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputGameShortName;-><init>()V

    .line 4394
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputGame;
    goto :goto_4

    .line 4396
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputGameID;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputGame;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputGameID;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputGame;
    goto :goto_4

    .line 4402
    :cond_2a
    if-eqz v0, :cond_2f

    .line 4403
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$InputGame;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 4405
    :cond_2f
    return-object v0

    .line 4391
    :sswitch_data_30
    .sparse-switch
        -0x3cce17f6 -> :sswitch_1e
        0x32c3e77 -> :sswitch_24
    .end sparse-switch
.end method
