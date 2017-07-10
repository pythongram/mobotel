.class public Lorg/telegram/tgnet/TLRPC$KeyboardButton;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyboardButton"
.end annotation


# instance fields
.field public data:[B

.field public flags:I

.field public query:Ljava/lang/String;

.field public same_peer:Z

.field public text:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5615
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 5624
    const/4 v0, 0x0

    .line 5625
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    sparse-switch p1, :sswitch_data_54

    .line 5651
    :goto_4
    if-nez v0, :cond_4e

    if-eqz p2, :cond_4e

    .line 5652
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in KeyboardButton"

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

    .line 5627
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestPhone;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestPhone;-><init>()V

    .line 5628
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    goto :goto_4

    .line 5630
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame;-><init>()V

    .line 5631
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    goto :goto_4

    .line 5633
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUrl;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUrl;-><init>()V

    .line 5634
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    goto :goto_4

    .line 5636
    :sswitch_30
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline;-><init>()V

    .line 5637
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    goto :goto_4

    .line 5639
    :sswitch_36
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestGeoLocation;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestGeoLocation;-><init>()V

    .line 5640
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    goto :goto_4

    .line 5642
    :sswitch_3c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonBuy;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonBuy;-><init>()V

    .line 5643
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    goto :goto_4

    .line 5645
    :sswitch_42
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCallback;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCallback;-><init>()V

    .line 5646
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    goto :goto_4

    .line 5648
    :sswitch_48
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButton;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButton;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    goto :goto_4

    .line 5654
    :cond_4e
    if-eqz v0, :cond_53

    .line 5655
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 5657
    :cond_53
    return-object v0

    .line 5625
    :sswitch_data_54
    .sparse-switch
        -0x5d05b780 -> :sswitch_48
        -0x5026c045 -> :sswitch_3c
        -0x4e9593d7 -> :sswitch_1e
        -0x38694c1 -> :sswitch_36
        0x568a748 -> :sswitch_30
        0x258aff05 -> :sswitch_2a
        0x50f41ccf -> :sswitch_24
        0x683a5e46 -> :sswitch_42
    .end sparse-switch
.end method
