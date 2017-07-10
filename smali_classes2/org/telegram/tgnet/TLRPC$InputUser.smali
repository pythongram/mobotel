.class public Lorg/telegram/tgnet/TLRPC$InputUser;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputUser"
.end annotation


# instance fields
.field public access_hash:J

.field public user_id:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5554
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputUser;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 5559
    const/4 v0, 0x0

    .line 5560
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$InputUser;
    sparse-switch p1, :sswitch_data_36

    .line 5571
    :goto_4
    if-nez v0, :cond_30

    if-eqz p2, :cond_30

    .line 5572
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in InputUser"

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

    .line 5562
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputUserEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputUser;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputUserEmpty;-><init>()V

    .line 5563
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputUser;
    goto :goto_4

    .line 5565
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputUser;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;-><init>()V

    .line 5566
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputUser;
    goto :goto_4

    .line 5568
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputUser;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputUser;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputUser;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputUser;
    goto :goto_4

    .line 5574
    :cond_30
    if-eqz v0, :cond_35

    .line 5575
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$InputUser;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 5577
    :cond_35
    return-object v0

    .line 5560
    :sswitch_data_36
    .sparse-switch
        -0x46777931 -> :sswitch_1e
        -0x27d6d7ea -> :sswitch_2a
        -0x83e4ec1 -> :sswitch_24
    .end sparse-switch
.end method
