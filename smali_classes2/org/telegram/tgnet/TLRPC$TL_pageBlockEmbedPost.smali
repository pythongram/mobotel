.class public Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;
.super Lorg/telegram/tgnet/TLRPC$PageBlock;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_pageBlockEmbedPost"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public author:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10491
    const v0, 0x292c7be9

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10490
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PageBlock;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 12
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 10496
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->url:Ljava/lang/String;

    .line 10497
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->webpage_id:J

    .line 10498
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->author_photo_id:J

    .line 10499
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->author:Ljava/lang/String;

    .line 10500
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->date:I

    .line 10501
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 10502
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_3f

    .line 10503
    if-eqz p2, :cond_50

    .line 10504
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

    .line 10508
    :cond_3f
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 10509
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_44
    if-ge v0, v1, :cond_59

    .line 10510
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$PageBlock;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v3

    .line 10511
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$PageBlock;
    if-nez v3, :cond_51

    .line 10517
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :cond_50
    :goto_50
    return-void

    .line 10514
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :cond_51
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10509
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 10516
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :cond_59
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$RichText;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    goto :goto_50
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 6
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 10520
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 10521
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->url:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 10522
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->webpage_id:J

    invoke-virtual {p1, v2, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 10523
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->author_photo_id:J

    invoke-virtual {p1, v2, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 10524
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->author:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 10525
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->date:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 10526
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 10527
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 10528
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 10529
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2e
    if-ge v0, v1, :cond_3e

    .line 10530
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$PageBlock;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 10529
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 10532
    :cond_3e
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$RichText;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 10533
    return-void
.end method
