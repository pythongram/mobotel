.class public Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneCallDiscardReason"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6568
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 6571
    const/4 v0, 0x0

    .line 6572
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
    sparse-switch p1, :sswitch_data_3c

    .line 6586
    :goto_4
    if-nez v0, :cond_36

    if-eqz p2, :cond_36

    .line 6587
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in PhoneCallDiscardReason"

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

    .line 6574
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonHangup;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonHangup;-><init>()V

    .line 6575
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
    goto :goto_4

    .line 6577
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;-><init>()V

    .line 6578
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
    goto :goto_4

    .line 6580
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;-><init>()V

    .line 6581
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
    goto :goto_4

    .line 6583
    :sswitch_30
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonDisconnect;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonDisconnect;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
    goto :goto_4

    .line 6589
    :cond_36
    if-eqz v0, :cond_3b

    .line 6590
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 6592
    :cond_3b
    return-object v0

    .line 6572
    :sswitch_data_3c
    .sparse-switch
        -0x7a1bdcff -> :sswitch_2a
        -0x1f6a3e60 -> :sswitch_30
        -0x5081737 -> :sswitch_24
        0x57adc690 -> :sswitch_1e
    .end sparse-switch
.end method
