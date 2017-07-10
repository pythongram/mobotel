.class public Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputPrivacyRule"
.end annotation


# instance fields
.field public users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$InputUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10630
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 10631
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 10634
    const/4 v0, 0x0

    .line 10635
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;
    sparse-switch p1, :sswitch_data_48

    .line 10655
    :goto_4
    if-nez v0, :cond_42

    if-eqz p2, :cond_42

    .line 10656
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in InputPrivacyRule"

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

    .line 10637
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;-><init>()V

    .line 10638
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;
    goto :goto_4

    .line 10640
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowAll;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowAll;-><init>()V

    .line 10641
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;
    goto :goto_4

    .line 10643
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowContacts;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowContacts;-><init>()V

    .line 10644
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;
    goto :goto_4

    .line 10646
    :sswitch_30
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowAll;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowAll;-><init>()V

    .line 10647
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;
    goto :goto_4

    .line 10649
    :sswitch_36
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowContacts;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowContacts;-><init>()V

    .line 10650
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;
    goto :goto_4

    .line 10652
    :sswitch_3c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;
    goto :goto_4

    .line 10658
    :cond_42
    if-eqz v0, :cond_47

    .line 10659
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$InputPrivacyRule;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 10661
    :cond_47
    return-object v0

    .line 10635
    :sswitch_data_48
    .sparse-switch
        -0x6feefb99 -> :sswitch_1e
        -0x29949937 -> :sswitch_24
        0xba52007 -> :sswitch_2a
        0xd09e07b -> :sswitch_36
        0x131cc67f -> :sswitch_3c
        0x184b35ce -> :sswitch_30
    .end sparse-switch
.end method
