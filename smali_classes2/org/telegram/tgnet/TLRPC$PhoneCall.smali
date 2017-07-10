.class public Lorg/telegram/tgnet/TLRPC$PhoneCall;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneCall"
.end annotation


# instance fields
.field public access_hash:J

.field public admin_id:I

.field public alternative_connections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;",
            ">;"
        }
    .end annotation
.end field

.field public connection:Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;

.field public date:I

.field public duration:I

.field public flags:I

.field public g_a_hash:[B

.field public g_a_or_b:[B

.field public g_b:[B

.field public id:J

.field public key_fingerprint:J

.field public need_debug:Z

.field public need_rating:Z

.field public participant_id:I

.field public protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

.field public reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

.field public receive_date:I

.field public start_date:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 6909
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 6920
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PhoneCall;->alternative_connections:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PhoneCall;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 6931
    const/4 v0, 0x0

    .line 6932
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$PhoneCall;
    sparse-switch p1, :sswitch_data_48

    .line 6952
    :goto_4
    if-nez v0, :cond_42

    if-eqz p2, :cond_42

    .line 6953
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in PhoneCall"

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

    .line 6934
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallRequested;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCall;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallRequested;-><init>()V

    .line 6935
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCall;
    goto :goto_4

    .line 6937
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCall;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCall;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phoneCall;-><init>()V

    .line 6938
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCall;
    goto :goto_4

    .line 6940
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCall;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallEmpty;-><init>()V

    .line 6941
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCall;
    goto :goto_4

    .line 6943
    :sswitch_30
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallAccepted;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCall;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallAccepted;-><init>()V

    .line 6944
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCall;
    goto :goto_4

    .line 6946
    :sswitch_36
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallWaiting;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCall;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallWaiting;-><init>()V

    .line 6947
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCall;
    goto :goto_4

    .line 6949
    :sswitch_3c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCall;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PhoneCall;
    goto :goto_4

    .line 6955
    :cond_42
    if-eqz v0, :cond_47

    .line 6956
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$PhoneCall;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 6958
    :cond_47
    return-object v0

    .line 6932
    :sswitch_data_48
    .sparse-switch
        -0x7c89e31c -> :sswitch_1e
        -0x195499 -> :sswitch_24
        0x1b8f4ad1 -> :sswitch_36
        0x50ca4de1 -> :sswitch_3c
        0x5366c915 -> :sswitch_2a
        0x6d003d3f -> :sswitch_30
    .end sparse-switch
.end method
