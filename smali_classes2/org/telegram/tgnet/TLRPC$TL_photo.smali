.class public Lorg/telegram/tgnet/TLRPC$TL_photo;
.super Lorg/telegram/tgnet/TLRPC$Photo;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_photo"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14310
    const v0, -0x6d7722d7

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14309
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Photo;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 13
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 14314
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_photo;->flags:I

    .line 14315
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_photo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_42

    move v4, v5

    :goto_f
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_photo;->has_stickers:Z

    .line 14316
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v8

    iput-wide v8, p0, Lorg/telegram/tgnet/TLRPC$TL_photo;->id:J

    .line 14317
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v8

    iput-wide v8, p0, Lorg/telegram/tgnet/TLRPC$TL_photo;->access_hash:J

    .line 14318
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_photo;->date:I

    .line 14319
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 14320
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_44

    .line 14321
    if-eqz p2, :cond_55

    .line 14322
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v7, "wrong Vector magic, got %x"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v2    # "magic":I
    :cond_42
    move v4, v6

    .line 14315
    goto :goto_f

    .line 14326
    .restart local v2    # "magic":I
    :cond_44
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 14327
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_49
    if-ge v0, v1, :cond_55

    .line 14328
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$PhotoSize;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    .line 14329
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-nez v3, :cond_56

    .line 14334
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_55
    return-void

    .line 14332
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_56
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14327
    add-int/lit8 v0, v0, 0x1

    goto :goto_49
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 6
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 14337
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_photo;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14338
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_photo;->has_stickers:Z

    if-eqz v2, :cond_43

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_photo;->flags:I

    or-int/lit8 v2, v2, 0x1

    :goto_d
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_photo;->flags:I

    .line 14339
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_photo;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14340
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$TL_photo;->id:J

    invoke-virtual {p1, v2, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 14341
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$TL_photo;->access_hash:J

    invoke-virtual {p1, v2, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 14342
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_photo;->date:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14343
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14344
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 14345
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14346
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_33
    if-ge v0, v1, :cond_48

    .line 14347
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$PhotoSize;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 14346
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 14338
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_43
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_photo;->flags:I

    and-int/lit8 v2, v2, -0x2

    goto :goto_d

    .line 14349
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    :cond_48
    return-void
.end method
