.class public Lorg/telegram/tgnet/TLRPC$UserStatus;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserStatus"
.end annotation


# instance fields
.field public expires:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11635
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$UserStatus;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 11639
    const/4 v0, 0x0

    .line 11640
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$UserStatus;
    sparse-switch p1, :sswitch_data_48

    .line 11660
    :goto_4
    if-nez v0, :cond_42

    if-eqz p2, :cond_42

    .line 11661
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in UserStatus"

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

    .line 11642
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userStatusOffline;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$UserStatus;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userStatusOffline;-><init>()V

    .line 11643
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$UserStatus;
    goto :goto_4

    .line 11645
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userStatusLastWeek;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$UserStatus;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userStatusLastWeek;-><init>()V

    .line 11646
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$UserStatus;
    goto :goto_4

    .line 11648
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userStatusEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$UserStatus;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userStatusEmpty;-><init>()V

    .line 11649
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$UserStatus;
    goto :goto_4

    .line 11651
    :sswitch_30
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userStatusLastMonth;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$UserStatus;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userStatusLastMonth;-><init>()V

    .line 11652
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$UserStatus;
    goto :goto_4

    .line 11654
    :sswitch_36
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userStatusOnline;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$UserStatus;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userStatusOnline;-><init>()V

    .line 11655
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$UserStatus;
    goto :goto_4

    .line 11657
    :sswitch_3c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userStatusRecently;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$UserStatus;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userStatusRecently;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$UserStatus;
    goto :goto_4

    .line 11663
    :cond_42
    if-eqz v0, :cond_47

    .line 11664
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$UserStatus;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 11666
    :cond_47
    return-object v0

    .line 11640
    :sswitch_data_48
    .sparse-switch
        -0x1d90bd0f -> :sswitch_3c
        -0x1246c6b7 -> :sswitch_36
        0x8c703f -> :sswitch_1e
        0x7bf09fc -> :sswitch_24
        0x9d05049 -> :sswitch_2a
        0x77ebc742 -> :sswitch_30
    .end sparse-switch
.end method
