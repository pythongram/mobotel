.class public Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;
.super Lorg/telegram/tgnet/TLRPC$contacts_TopPeers;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_contacts_topPeers"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14894
    const v0, 0x70b772a8

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14893
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$contacts_TopPeers;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 12
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const v5, 0x1cb5c415

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 14898
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 14899
    .local v2, "magic":I
    if-eq v2, v5, :cond_21

    .line 14900
    if-eqz p2, :cond_32

    .line 14901
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "wrong Vector magic, got %x"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 14905
    :cond_21
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 14906
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_26
    if-ge v0, v1, :cond_3b

    .line 14907
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;

    move-result-object v3

    .line 14908
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;
    if-nez v3, :cond_33

    .line 14943
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;
    :cond_32
    return-void

    .line 14911
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;
    :cond_33
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;->categories:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14906
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 14913
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;
    :cond_3b
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 14914
    if-eq v2, v5, :cond_57

    .line 14915
    if-eqz p2, :cond_32

    .line 14916
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "wrong Vector magic, got %x"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 14920
    :cond_57
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 14921
    const/4 v0, 0x0

    :goto_5c
    if-ge v0, v1, :cond_70

    .line 14922
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$Chat;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 14923
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v3, :cond_32

    .line 14926
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14921
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 14928
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_70
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 14929
    if-eq v2, v5, :cond_8c

    .line 14930
    if-eqz p2, :cond_32

    .line 14931
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "wrong Vector magic, got %x"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 14935
    :cond_8c
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 14936
    const/4 v0, 0x0

    :goto_91
    if-ge v0, v1, :cond_32

    .line 14937
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 14938
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v3, :cond_32

    .line 14941
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14936
    add-int/lit8 v0, v0, 0x1

    goto :goto_91
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 6
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    const v3, 0x1cb5c415

    .line 14946
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14947
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14948
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;->categories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 14949
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14950
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_15
    if-ge v0, v1, :cond_25

    .line 14951
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;->categories:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 14950
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 14953
    :cond_25
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14954
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 14955
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14956
    const/4 v0, 0x0

    :goto_32
    if-ge v0, v1, :cond_42

    .line 14957
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$Chat;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 14956
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 14959
    :cond_42
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14960
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 14961
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14962
    const/4 v0, 0x0

    :goto_4f
    if-ge v0, v1, :cond_5f

    .line 14963
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$User;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 14962
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 14965
    :cond_5f
    return-void
.end method
