.class public Lorg/telegram/tgnet/TLRPC$TL_photo_old2;
.super Lorg/telegram/tgnet/TLRPC$TL_photo;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_photo_old2"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14353
    const v0, -0x3c7c7f8a

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_photo_old2;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14352
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_photo;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 12
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 14357
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/tgnet/TLRPC$TL_photo_old2;->id:J

    .line 14358
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/tgnet/TLRPC$TL_photo_old2;->access_hash:J

    .line 14359
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_photo_old2;->user_id:I

    .line 14360
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_photo_old2;->date:I

    .line 14361
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$GeoPoint;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$GeoPoint;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_photo_old2;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 14362
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 14363
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_43

    .line 14364
    if-eqz p2, :cond_54

    .line 14365
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

    .line 14369
    :cond_43
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 14370
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_48
    if-ge v0, v1, :cond_54

    .line 14371
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$PhotoSize;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    .line 14372
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-nez v3, :cond_55

    .line 14377
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_54
    return-void

    .line 14375
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_55
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_photo_old2;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14370
    add-int/lit8 v0, v0, 0x1

    goto :goto_48
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 6
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 14380
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_photo_old2;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14381
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$TL_photo_old2;->id:J

    invoke-virtual {p1, v2, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 14382
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$TL_photo_old2;->access_hash:J

    invoke-virtual {p1, v2, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 14383
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_photo_old2;->user_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14384
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_photo_old2;->date:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14385
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_photo_old2;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$GeoPoint;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 14386
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14387
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_photo_old2;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 14388
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14389
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2e
    if-ge v0, v1, :cond_3e

    .line 14390
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_photo_old2;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$PhotoSize;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 14389
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 14392
    :cond_3e
    return-void
.end method
