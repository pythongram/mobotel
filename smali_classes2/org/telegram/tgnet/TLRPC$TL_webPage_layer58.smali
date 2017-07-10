.class public Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;
.super Lorg/telegram/tgnet/TLRPC$TL_webPage;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_webPage_layer58"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6391
    const v0, -0x357df129    # -4261739.5f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6390
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_webPage;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 6395
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    .line 6396
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->id:J

    .line 6397
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->url:Ljava/lang/String;

    .line 6398
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->display_url:Ljava/lang/String;

    .line 6399
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_24

    .line 6400
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->type:Ljava/lang/String;

    .line 6402
    :cond_24
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_30

    .line 6403
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->site_name:Ljava/lang/String;

    .line 6405
    :cond_30
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3c

    .line 6406
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->title:Ljava/lang/String;

    .line 6408
    :cond_3c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_48

    .line 6409
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->description:Ljava/lang/String;

    .line 6411
    :cond_48
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_58

    .line 6412
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 6414
    :cond_58
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_64

    .line 6415
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->embed_url:Ljava/lang/String;

    .line 6417
    :cond_64
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_70

    .line 6418
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->embed_type:Ljava/lang/String;

    .line 6420
    :cond_70
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7c

    .line 6421
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->embed_width:I

    .line 6423
    :cond_7c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_88

    .line 6424
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->embed_height:I

    .line 6426
    :cond_88
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_94

    .line 6427
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->duration:I

    .line 6429
    :cond_94
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a0

    .line 6430
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->author:Ljava/lang/String;

    .line 6432
    :cond_a0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_b0

    .line 6433
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 6435
    :cond_b0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 6438
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6439
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6440
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 6441
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6442
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->display_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6443
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_24

    .line 6444
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6446
    :cond_24
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2f

    .line 6447
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->site_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6449
    :cond_2f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3a

    .line 6450
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6452
    :cond_3a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_45

    .line 6453
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6455
    :cond_45
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_50

    .line 6456
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Photo;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 6458
    :cond_50
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5b

    .line 6459
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->embed_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6461
    :cond_5b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_66

    .line 6462
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->embed_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6464
    :cond_66
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_71

    .line 6465
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->embed_width:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6467
    :cond_71
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7c

    .line 6468
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->embed_height:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6470
    :cond_7c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_87

    .line 6471
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->duration:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6473
    :cond_87
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_92

    .line 6474
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->author:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 6476
    :cond_92
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9d

    .line 6477
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Document;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 6479
    :cond_9d
    return-void
.end method
