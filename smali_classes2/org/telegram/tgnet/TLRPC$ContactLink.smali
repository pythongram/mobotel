.class public Lorg/telegram/tgnet/TLRPC$ContactLink;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactLink"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9989
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ContactLink;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 9992
    const/4 v0, 0x0

    .line 9993
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$ContactLink;
    sparse-switch p1, :sswitch_data_3c

    .line 10007
    :goto_4
    if-nez v0, :cond_36

    if-eqz p2, :cond_36

    .line 10008
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in ContactLink"

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

    .line 9995
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contactLinkNone;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ContactLink;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contactLinkNone;-><init>()V

    .line 9996
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ContactLink;
    goto :goto_4

    .line 9998
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contactLinkContact;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ContactLink;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contactLinkContact;-><init>()V

    .line 9999
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ContactLink;
    goto :goto_4

    .line 10001
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contactLinkHasPhone;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ContactLink;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contactLinkHasPhone;-><init>()V

    .line 10002
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ContactLink;
    goto :goto_4

    .line 10004
    :sswitch_30
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contactLinkUnknown;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ContactLink;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contactLinkUnknown;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ContactLink;
    goto :goto_4

    .line 10010
    :cond_36
    if-eqz v0, :cond_3b

    .line 10011
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$ContactLink;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 10013
    :cond_3b
    return-object v0

    .line 9993
    :sswitch_data_3c
    .sparse-switch
        -0x2afd3d30 -> :sswitch_24
        -0x1122c53 -> :sswitch_1e
        0x268f3f59 -> :sswitch_2a
        0x5f4f9247 -> :sswitch_30
    .end sparse-switch
.end method
