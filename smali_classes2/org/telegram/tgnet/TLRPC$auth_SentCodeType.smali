.class public Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "auth_SentCodeType"
.end annotation


# instance fields
.field public length:I

.field public pattern:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2735
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 2740
    const/4 v0, 0x0

    .line 2741
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;
    sparse-switch p1, :sswitch_data_3c

    .line 2755
    :goto_4
    if-nez v0, :cond_36

    if-eqz p2, :cond_36

    .line 2756
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in auth_SentCodeType"

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

    .line 2743
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeApp;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeApp;-><init>()V

    .line 2744
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;
    goto :goto_4

    .line 2746
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeCall;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeCall;-><init>()V

    .line 2747
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;
    goto :goto_4

    .line 2749
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeFlashCall;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeFlashCall;-><init>()V

    .line 2750
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;
    goto :goto_4

    .line 2752
    :sswitch_30
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeSms;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeSms;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;
    goto :goto_4

    .line 2758
    :cond_36
    if-eqz v0, :cond_3b

    .line 2759
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 2761
    :cond_3b
    return-object v0

    .line 2741
    :sswitch_data_3c
    .sparse-switch
        -0x54fc3927 -> :sswitch_2a
        -0x3fff445e -> :sswitch_30
        0x3dbb5986 -> :sswitch_1e
        0x5353e5a7 -> :sswitch_24
    .end sparse-switch
.end method
