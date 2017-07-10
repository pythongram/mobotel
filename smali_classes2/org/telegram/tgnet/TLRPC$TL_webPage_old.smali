.class public Lorg/telegram/tgnet/TLRPC$TL_webPage_old;
.super Lorg/telegram/tgnet/TLRPC$TL_webPage;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_webPage_old"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6252
    const v0, -0x5ce15f4b

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6251
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_webPage;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 6256
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    .line 6257
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->id:J

    .line 6258
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->url:Ljava/lang/String;

    .line 6259
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->display_url:Ljava/lang/String;

    .line 6260
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_24

    .line 6261
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->type:Ljava/lang/String;

    .line 6263
    :cond_24
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_30

    .line 6264
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->site_name:Ljava/lang/String;

    .line 6266
    :cond_30
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3c

    .line 6267
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->title:Ljava/lang/String;

    .line 6269
    :cond_3c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_48

    .line 6270
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->description:Ljava/lang/String;

    .line 6272
    :cond_48
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_58

    .line 6273
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 6275
    :cond_58
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_64

    .line 6276
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->embed_url:Ljava/lang/String;

    .line 6278
    :cond_64
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_70

    .line 6279
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->embed_type:Ljava/lang/String;

    .line 6281
    :cond_70
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7c

    .line 6282
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->embed_width:I

    .line 6284
    :cond_7c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_88

    .line 6285
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->embed_height:I

    .line 6287
    :cond_88
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_94

    .line 6288
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->duration:I

    .line 6290
    :cond_94
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a0

    .line 6291
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->author:Ljava/lang/String;

    .line 6293
    :cond_a0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 6296
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6297
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6298
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 6299
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6300
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->display_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6301
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_24

    .line 6302
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6304
    :cond_24
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2f

    .line 6305
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->site_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6307
    :cond_2f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3a

    .line 6308
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6310
    :cond_3a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_45

    .line 6311
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6313
    :cond_45
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_50

    .line 6314
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Photo;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 6316
    :cond_50
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5b

    .line 6317
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->embed_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6319
    :cond_5b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_66

    .line 6320
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->embed_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6322
    :cond_66
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_71

    .line 6323
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->embed_width:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6325
    :cond_71
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7c

    .line 6326
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->embed_height:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6328
    :cond_7c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_87

    .line 6329
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->duration:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6331
    :cond_87
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_92

    .line 6332
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->author:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6334
    :cond_92
    return-void
.end method
