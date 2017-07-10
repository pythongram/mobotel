.class public Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updatePinnedDialogs"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public order:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Peer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12924
    const v0, -0x27350973

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12923
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    .line 12926
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;->order:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 12
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 12929
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;->flags:I

    .line 12930
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3e

    .line 12931
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 12932
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_2d

    .line 12933
    if-eqz p2, :cond_3e

    .line 12934
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

    .line 12938
    :cond_2d
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 12939
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_32
    if-ge v0, v1, :cond_3e

    .line 12940
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v3

    .line 12941
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$Peer;
    if-nez v3, :cond_3f

    .line 12947
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v2    # "magic":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$Peer;
    :cond_3e
    return-void

    .line 12944
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v2    # "magic":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$Peer;
    :cond_3f
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;->order:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12939
    add-int/lit8 v0, v0, 0x1

    goto :goto_32
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 12950
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12951
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12952
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_30

    .line 12953
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12954
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;->order:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 12955
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12956
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_20
    if-ge v0, v1, :cond_30

    .line 12957
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedDialogs;->order:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 12956
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 12960
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_30
    return-void
.end method
