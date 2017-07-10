.class public Lorg/telegram/tgnet/TLRPC$PrivacyRule;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrivacyRule"
.end annotation


# instance fields
.field public users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 3078
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 3079
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PrivacyRule;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 3082
    const/4 v0, 0x0

    .line 3083
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    sparse-switch p1, :sswitch_data_48

    .line 3103
    :goto_4
    if-nez v0, :cond_42

    if-eqz p2, :cond_42

    .line 3104
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in PrivacyRule"

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

    .line 3085
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;-><init>()V

    .line 3086
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    goto :goto_4

    .line 3088
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowAll;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowAll;-><init>()V

    .line 3089
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    goto :goto_4

    .line 3091
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowContacts;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowContacts;-><init>()V

    .line 3092
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    goto :goto_4

    .line 3094
    :sswitch_30
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowContacts;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowContacts;-><init>()V

    .line 3095
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    goto :goto_4

    .line 3097
    :sswitch_36
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowAll;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowAll;-><init>()V

    .line 3098
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    goto :goto_4

    .line 3100
    :sswitch_3c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    goto :goto_4

    .line 3106
    :cond_42
    if-eqz v0, :cond_47

    .line 3107
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$PrivacyRule;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 3109
    :cond_47
    return-object v0

    .line 3083
    :sswitch_data_48
    .sparse-switch
        -0x748c189d -> :sswitch_24
        -0x77705e6 -> :sswitch_30
        -0x1e454 -> :sswitch_2a
        0xc7f49b7 -> :sswitch_3c
        0x4d5bbe0c -> :sswitch_1e
        0x65427b82 -> :sswitch_36
    .end sparse-switch
.end method
