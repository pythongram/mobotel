.class public Lorg/telegram/tgnet/TLRPC$InputGeoPoint;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputGeoPoint"
.end annotation


# instance fields
.field public _long:D

.field public lat:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4025
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputGeoPoint;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 4030
    const/4 v0, 0x0

    .line 4031
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$InputGeoPoint;
    sparse-switch p1, :sswitch_data_30

    .line 4039
    :goto_4
    if-nez v0, :cond_2a

    if-eqz p2, :cond_2a

    .line 4040
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in InputGeoPoint"

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

    .line 4033
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputGeoPoint;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;-><init>()V

    .line 4034
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputGeoPoint;
    goto :goto_4

    .line 4036
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPointEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputGeoPoint;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPointEmpty;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputGeoPoint;
    goto :goto_4

    .line 4042
    :cond_2a
    if-eqz v0, :cond_2f

    .line 4043
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 4045
    :cond_2f
    return-object v0

    .line 4031
    :sswitch_data_30
    .sparse-switch
        -0x1b3edc2a -> :sswitch_24
        -0xc485337 -> :sswitch_1e
    .end sparse-switch
.end method
