.class public Lorg/telegram/tgnet/TLRPC$TL_chatParticipants_old;
.super Lorg/telegram/tgnet/TLRPC$TL_chatParticipants;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_chatParticipants_old"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16359
    const v0, 0x7841b415

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants_old;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16358
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 12
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 16363
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants_old;->chat_id:I

    .line 16364
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants_old;->admin_id:I

    .line 16365
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 16366
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_2d

    .line 16367
    if-eqz p2, :cond_3e

    .line 16368
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "wrong Vector magic, got %x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 16372
    :cond_2d
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 16373
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_32
    if-ge v0, v1, :cond_47

    .line 16374
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    move-result-object v3

    .line 16375
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    if-nez v3, :cond_3f

    .line 16381
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_3e
    :goto_3e
    return-void

    .line 16378
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_3f
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants_old;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16373
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 16380
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_47
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants_old;->version:I

    goto :goto_3e
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 16384
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants_old;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16385
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants_old;->chat_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16386
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants_old;->admin_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16387
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16388
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants_old;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 16389
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16390
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1f
    if-ge v0, v1, :cond_2f

    .line 16391
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants_old;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 16390
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 16393
    :cond_2f
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants_old;->version:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16394
    return-void
.end method
