.class public Lorg/telegram/tgnet/TLRPC$updates_Difference;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "updates_Difference"
.end annotation


# instance fields
.field public chats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;"
        }
    .end annotation
.end field

.field public date:I

.field public intermediate_state:Lorg/telegram/tgnet/TLRPC$TL_updates_state;

.field public new_encrypted_messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$EncryptedMessage;",
            ">;"
        }
    .end annotation
.end field

.field public new_messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;"
        }
    .end annotation
.end field

.field public other_updates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Update;",
            ">;"
        }
    .end annotation
.end field

.field public pts:I

.field public seq:I

.field public state:Lorg/telegram/tgnet/TLRPC$TL_updates_state;

.field public users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1876
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 1877
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->new_messages:Ljava/util/ArrayList;

    .line 1878
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->new_encrypted_messages:Ljava/util/ArrayList;

    .line 1879
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->other_updates:Ljava/util/ArrayList;

    .line 1880
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->chats:Ljava/util/ArrayList;

    .line 1881
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$updates_Difference;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 1889
    const/4 v0, 0x0

    .line 1890
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$updates_Difference;
    sparse-switch p1, :sswitch_data_3c

    .line 1904
    :goto_4
    if-nez v0, :cond_36

    if-eqz p2, :cond_36

    .line 1905
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in updates_Difference"

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

    .line 1892
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updates_difference;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$updates_Difference;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updates_difference;-><init>()V

    .line 1893
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$updates_Difference;
    goto :goto_4

    .line 1895
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updates_differenceSlice;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$updates_Difference;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updates_differenceSlice;-><init>()V

    .line 1896
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$updates_Difference;
    goto :goto_4

    .line 1898
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updates_differenceTooLong;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$updates_Difference;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updates_differenceTooLong;-><init>()V

    .line 1899
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$updates_Difference;
    goto :goto_4

    .line 1901
    :sswitch_30
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updates_differenceEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$updates_Difference;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updates_differenceEmpty;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$updates_Difference;
    goto :goto_4

    .line 1907
    :cond_36
    if-eqz v0, :cond_3b

    .line 1908
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$updates_Difference;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 1910
    :cond_3b
    return-object v0

    .line 1890
    :sswitch_data_3c
    .sparse-switch
        -0x5704e67f -> :sswitch_24
        0xf49ca0 -> :sswitch_1e
        0x4afe8f6d -> :sswitch_2a
        0x5d75a138 -> :sswitch_30
    .end sparse-switch
.end method
