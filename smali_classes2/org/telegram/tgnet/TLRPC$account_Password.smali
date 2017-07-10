.class public Lorg/telegram/tgnet/TLRPC$account_Password;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "account_Password"
.end annotation


# instance fields
.field public current_salt:[B

.field public email_unconfirmed_pattern:Ljava/lang/String;

.field public has_recovery:Z

.field public hint:Ljava/lang/String;

.field public new_salt:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13811
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$account_Password;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 13819
    const/4 v0, 0x0

    .line 13820
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$account_Password;
    sparse-switch p1, :sswitch_data_30

    .line 13828
    :goto_4
    if-nez v0, :cond_2a

    if-eqz p2, :cond_2a

    .line 13829
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in account_Password"

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

    .line 13822
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_password;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$account_Password;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_password;-><init>()V

    .line 13823
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$account_Password;
    goto :goto_4

    .line 13825
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_noPassword;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$account_Password;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_noPassword;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$account_Password;
    goto :goto_4

    .line 13831
    :cond_2a
    if-eqz v0, :cond_2f

    .line 13832
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$account_Password;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 13834
    :cond_2f
    return-object v0

    .line 13820
    :sswitch_data_30
    .sparse-switch
        -0x692543e8 -> :sswitch_24
        0x7c18141c -> :sswitch_1e
    .end sparse-switch
.end method
