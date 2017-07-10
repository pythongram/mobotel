.class public Lorg/telegram/tgnet/TLRPC$TL_channel_old;
.super Lorg/telegram/tgnet/TLRPC$TL_channel;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channel_old"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17341
    const v0, 0x678e9587

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17340
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_channel;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 6
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 17344
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    .line 17345
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8d

    move v0, v1

    :goto_f
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->creator:Z

    .line 17346
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8f

    move v0, v1

    :goto_18
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->kicked:Z

    .line 17347
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_91

    move v0, v1

    :goto_21
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->left:Z

    .line 17348
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_93

    move v0, v1

    :goto_2a
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->editor:Z

    .line 17349
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_95

    move v0, v1

    :goto_33
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->moderator:Z

    .line 17350
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_97

    move v0, v1

    :goto_3c
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->broadcast:Z

    .line 17351
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_99

    move v0, v1

    :goto_45
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->verified:Z

    .line 17352
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_9b

    move v0, v1

    :goto_4e
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->megagroup:Z

    .line 17353
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9d

    :goto_56
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->explicit_content:Z

    .line 17354
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->id:I

    .line 17355
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->access_hash:J

    .line 17356
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->title:Ljava/lang/String;

    .line 17357
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_76

    .line 17358
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->username:Ljava/lang/String;

    .line 17360
    :cond_76
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 17361
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->date:I

    .line 17362
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->version:I

    .line 17363
    return-void

    :cond_8d
    move v0, v2

    .line 17345
    goto :goto_f

    :cond_8f
    move v0, v2

    .line 17346
    goto :goto_18

    :cond_91
    move v0, v2

    .line 17347
    goto :goto_21

    :cond_93
    move v0, v2

    .line 17348
    goto :goto_2a

    :cond_95
    move v0, v2

    .line 17349
    goto :goto_33

    :cond_97
    move v0, v2

    .line 17350
    goto :goto_3c

    :cond_99
    move v0, v2

    .line 17351
    goto :goto_45

    :cond_9b
    move v0, v2

    .line 17352
    goto :goto_4e

    :cond_9d
    move v1, v2

    .line 17353
    goto :goto_56
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 17366
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17367
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->creator:Z

    if-eqz v0, :cond_8e

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_d
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    .line 17368
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->kicked:Z

    if-eqz v0, :cond_94

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_17
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    .line 17369
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->left:Z

    if-eqz v0, :cond_9a

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    or-int/lit8 v0, v0, 0x4

    :goto_21
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    .line 17370
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->editor:Z

    if-eqz v0, :cond_9f

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    or-int/lit8 v0, v0, 0x8

    :goto_2b
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    .line 17371
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->moderator:Z

    if-eqz v0, :cond_a4

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    or-int/lit8 v0, v0, 0x10

    :goto_35
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    .line 17372
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->broadcast:Z

    if-eqz v0, :cond_a9

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_3f
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    .line 17373
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->verified:Z

    if-eqz v0, :cond_ae

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    or-int/lit16 v0, v0, 0x80

    :goto_49
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    .line 17374
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->megagroup:Z

    if-eqz v0, :cond_b3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    or-int/lit16 v0, v0, 0x100

    :goto_53
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    .line 17375
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->explicit_content:Z

    if-eqz v0, :cond_b8

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    or-int/lit16 v0, v0, 0x200

    :goto_5d
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    .line 17376
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17377
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17378
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 17379
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 17380
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7e

    .line 17381
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 17383
    :cond_7e
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 17384
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17385
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->version:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17386
    return-void

    .line 17367
    :cond_8e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto/16 :goto_d

    .line 17368
    :cond_94
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto/16 :goto_17

    .line 17369
    :cond_9a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    and-int/lit8 v0, v0, -0x5

    goto :goto_21

    .line 17370
    :cond_9f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    and-int/lit8 v0, v0, -0x9

    goto :goto_2b

    .line 17371
    :cond_a4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    and-int/lit8 v0, v0, -0x11

    goto :goto_35

    .line 17372
    :cond_a9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto :goto_3f

    .line 17373
    :cond_ae
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    and-int/lit16 v0, v0, -0x81

    goto :goto_49

    .line 17374
    :cond_b3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    and-int/lit16 v0, v0, -0x101

    goto :goto_53

    .line 17375
    :cond_b8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;->flags:I

    and-int/lit16 v0, v0, -0x201

    goto :goto_5d
.end method
