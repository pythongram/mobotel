.class public Lorg/telegram/tgnet/TLRPC$contacts_TopPeers;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "contacts_TopPeers"
.end annotation


# instance fields
.field public categories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;",
            ">;"
        }
    .end annotation
.end field

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
    .line 14868
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 14869
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$contacts_TopPeers;->categories:Ljava/util/ArrayList;

    .line 14870
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$contacts_TopPeers;->chats:Ljava/util/ArrayList;

    .line 14871
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$contacts_TopPeers;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$contacts_TopPeers;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 14874
    const/4 v0, 0x0

    .line 14875
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$contacts_TopPeers;
    sparse-switch p1, :sswitch_data_30

    .line 14883
    :goto_4
    if-nez v0, :cond_2a

    if-eqz p2, :cond_2a

    .line 14884
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in contacts_TopPeers"

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

    .line 14877
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$contacts_TopPeers;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;-><init>()V

    .line 14878
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$contacts_TopPeers;
    goto :goto_4

    .line 14880
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeersNotModified;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$contacts_TopPeers;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeersNotModified;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$contacts_TopPeers;
    goto :goto_4

    .line 14886
    :cond_2a
    if-eqz v0, :cond_2f

    .line 14887
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$contacts_TopPeers;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 14889
    :cond_2f
    return-object v0

    .line 14875
    :sswitch_data_30
    .sparse-switch
        -0x21d9910b -> :sswitch_24
        0x70b772a8 -> :sswitch_1e
    .end sparse-switch
.end method
