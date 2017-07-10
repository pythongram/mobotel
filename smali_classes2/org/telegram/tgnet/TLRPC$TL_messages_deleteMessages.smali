.class public Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_deleteMessages"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public flags:I

.field public id:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public revoke:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21141
    const v0, -0x1a716a2e

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21140
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 21145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;->id:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 21148
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;->constructor:I

    if-eq v1, p1, :cond_1e

    .line 21149
    if-eqz p2, :cond_1c

    .line 21150
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in TL_messages_deleteMessages"

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

    .line 21152
    :cond_1c
    const/4 v0, 0x0

    .line 21157
    :goto_1d
    return-object v0

    .line 21155
    :cond_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;-><init>()V

    .line 21156
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_1d
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .registers 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "constructor"    # I
    .param p3, "exception"    # Z

    .prologue
    .line 21161
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;

    move-result-object v0

    return-object v0
.end method

.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 11
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 21165
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v3

    iput v3, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;->flags:I

    .line 21166
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_30

    move v3, v4

    :goto_f
    iput-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;->revoke:Z

    .line 21167
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 21168
    .local v2, "magic":I
    const v3, 0x1cb5c415

    if-eq v2, v3, :cond_32

    .line 21169
    if-eqz p2, :cond_49

    .line 21170
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v6, "wrong Vector magic, got %x"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v2    # "magic":I
    :cond_30
    move v3, v5

    .line 21166
    goto :goto_f

    .line 21174
    .restart local v2    # "magic":I
    :cond_32
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 21175
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_37
    if-ge v0, v1, :cond_49

    .line 21176
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;->id:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21175
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 21178
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_49
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 21181
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21182
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;->revoke:Z

    if-eqz v2, :cond_38

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;->flags:I

    or-int/lit8 v2, v2, 0x1

    :goto_d
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;->flags:I

    .line 21183
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21184
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21185
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;->id:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 21186
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21187
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_24
    if-ge v0, v1, :cond_3d

    .line 21188
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;->id:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21187
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 21182
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_38
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteMessages;->flags:I

    and-int/lit8 v2, v2, -0x2

    goto :goto_d

    .line 21190
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    :cond_3d
    return-void
.end method
