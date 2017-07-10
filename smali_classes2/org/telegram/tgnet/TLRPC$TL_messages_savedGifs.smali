.class public Lorg/telegram/tgnet/TLRPC$TL_messages_savedGifs;
.super Lorg/telegram/tgnet/TLRPC$messages_SavedGifs;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_savedGifs"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18375
    const v0, 0x2e0709a5

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_savedGifs;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18374
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$messages_SavedGifs;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 12
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 18379
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_savedGifs;->hash:I

    .line 18380
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 18381
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_27

    .line 18382
    if-eqz p2, :cond_38

    .line 18383
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

    .line 18387
    :cond_27
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 18388
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2c
    if-ge v0, v1, :cond_38

    .line 18389
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    .line 18390
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$Document;
    if-nez v3, :cond_39

    .line 18395
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_38
    return-void

    .line 18393
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_39
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_savedGifs;->gifs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18388
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 18398
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_messages_savedGifs;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18399
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_savedGifs;->hash:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18400
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18401
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_savedGifs;->gifs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 18402
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18403
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1a
    if-ge v0, v1, :cond_2a

    .line 18404
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_savedGifs;->gifs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$Document;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 18403
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 18406
    :cond_2a
    return-void
.end method
