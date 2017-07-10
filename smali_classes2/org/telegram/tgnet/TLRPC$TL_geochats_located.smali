.class public Lorg/telegram/tgnet/TLRPC$TL_geochats_located;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_geochats_located"
.end annotation


# static fields
.field public static constructor:I


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

.field public messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$GeoChatMessage;",
            ">;"
        }
    .end annotation
.end field

.field public results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_chatLocated;",
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
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18031
    const v0, 0x48feb267

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_geochats_located;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18030
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 18033
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_located;->results:Ljava/util/ArrayList;

    .line 18034
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_located;->messages:Ljava/util/ArrayList;

    .line 18035
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_located;->chats:Ljava/util/ArrayList;

    .line 18036
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_located;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_geochats_located;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 18039
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_geochats_located;->constructor:I

    if-eq v1, p1, :cond_1e

    .line 18040
    if-eqz p2, :cond_1c

    .line 18041
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in TL_geochats_located"

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

    .line 18043
    :cond_1c
    const/4 v0, 0x0

    .line 18048
    :goto_1d
    return-object v0

    .line 18046
    :cond_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_geochats_located;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_geochats_located;-><init>()V

    .line 18047
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_geochats_located;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_geochats_located;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_1d
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

    .line 18052
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 18053
    .local v2, "magic":I
    if-eq v2, v5, :cond_21

    .line 18054
    if-eqz p2, :cond_32

    .line 18055
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

    .line 18059
    :cond_21
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 18060
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_26
    if-ge v0, v1, :cond_3b

    .line 18061
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$TL_chatLocated;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatLocated;

    move-result-object v3

    .line 18062
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$TL_chatLocated;
    if-nez v3, :cond_33

    .line 18112
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_chatLocated;
    :cond_32
    return-void

    .line 18065
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_chatLocated;
    :cond_33
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_located;->results:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18060
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 18067
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_chatLocated;
    :cond_3b
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 18068
    if-eq v2, v5, :cond_57

    .line 18069
    if-eqz p2, :cond_32

    .line 18070
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

    .line 18074
    :cond_57
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 18075
    const/4 v0, 0x0

    :goto_5c
    if-ge v0, v1, :cond_70

    .line 18076
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$GeoChatMessage;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$GeoChatMessage;

    move-result-object v3

    .line 18077
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$GeoChatMessage;
    if-eqz v3, :cond_32

    .line 18080
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_located;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18075
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 18082
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$GeoChatMessage;
    :cond_70
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 18083
    if-eq v2, v5, :cond_8c

    .line 18084
    if-eqz p2, :cond_32

    .line 18085
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

    .line 18089
    :cond_8c
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 18090
    const/4 v0, 0x0

    :goto_91
    if-ge v0, v1, :cond_a5

    .line 18091
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$Chat;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 18092
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v3, :cond_32

    .line 18095
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_located;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18090
    add-int/lit8 v0, v0, 0x1

    goto :goto_91

    .line 18097
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_a5
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 18098
    if-eq v2, v5, :cond_c1

    .line 18099
    if-eqz p2, :cond_32

    .line 18100
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

    .line 18104
    :cond_c1
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 18105
    const/4 v0, 0x0

    :goto_c6
    if-ge v0, v1, :cond_32

    .line 18106
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 18107
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v3, :cond_32

    .line 18110
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_located;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18105
    add-int/lit8 v0, v0, 0x1

    goto :goto_c6
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 6
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    const v3, 0x1cb5c415

    .line 18115
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_geochats_located;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18116
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18117
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_located;->results:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 18118
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18119
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_15
    if-ge v0, v1, :cond_25

    .line 18120
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_located;->results:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_chatLocated;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_chatLocated;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 18119
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 18122
    :cond_25
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18123
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_located;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 18124
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18125
    const/4 v0, 0x0

    :goto_32
    if-ge v0, v1, :cond_42

    .line 18126
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_located;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$GeoChatMessage;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$GeoChatMessage;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 18125
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 18128
    :cond_42
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18129
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_located;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 18130
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18131
    const/4 v0, 0x0

    :goto_4f
    if-ge v0, v1, :cond_5f

    .line 18132
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_located;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$Chat;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 18131
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 18134
    :cond_5f
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18135
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_located;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 18136
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18137
    const/4 v0, 0x0

    :goto_6c
    if-ge v0, v1, :cond_7c

    .line 18138
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_located;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$User;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 18137
    add-int/lit8 v0, v0, 0x1

    goto :goto_6c

    .line 18140
    :cond_7c
    return-void
.end method
