.class public Lorg/telegram/tgnet/TLRPC$TL_chat;
.super Lorg/telegram/tgnet/TLRPC$Chat;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_chat"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17408
    const v0, -0x26e322ac

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_chat;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17407
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Chat;-><init>()V

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

    .line 17411
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    .line 17412
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_76

    move v0, v1

    :goto_f
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->creator:Z

    .line 17413
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_78

    move v0, v1

    :goto_18
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->kicked:Z

    .line 17414
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7a

    move v0, v1

    :goto_21
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->left:Z

    .line 17415
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_7c

    move v0, v1

    :goto_2a
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->admins_enabled:Z

    .line 17416
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7e

    move v0, v1

    :goto_33
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->admin:Z

    .line 17417
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_80

    :goto_3b
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->deactivated:Z

    .line 17418
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->id:I

    .line 17419
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->title:Ljava/lang/String;

    .line 17420
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 17421
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->participants_count:I

    .line 17422
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->date:I

    .line 17423
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->version:I

    .line 17424
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_75

    .line 17425
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputChannel;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 17427
    :cond_75
    return-void

    :cond_76
    move v0, v2

    .line 17412
    goto :goto_f

    :cond_78
    move v0, v2

    .line 17413
    goto :goto_18

    :cond_7a
    move v0, v2

    .line 17414
    goto :goto_21

    :cond_7c
    move v0, v2

    .line 17415
    goto :goto_2a

    :cond_7e
    move v0, v2

    .line 17416
    goto :goto_33

    :cond_80
    move v1, v2

    .line 17417
    goto :goto_3b
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 17430
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_chat;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17431
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->creator:Z

    if-eqz v0, :cond_70

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_d
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    .line 17432
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->kicked:Z

    if-eqz v0, :cond_75

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_17
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    .line 17433
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->left:Z

    if-eqz v0, :cond_7a

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    or-int/lit8 v0, v0, 0x4

    :goto_21
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    .line 17434
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->admins_enabled:Z

    if-eqz v0, :cond_7f

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    or-int/lit8 v0, v0, 0x8

    :goto_2b
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    .line 17435
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->admin:Z

    if-eqz v0, :cond_84

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    or-int/lit8 v0, v0, 0x10

    :goto_35
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    .line 17436
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->deactivated:Z

    if-eqz v0, :cond_89

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_3f
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    .line 17437
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17438
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17439
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 17440
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 17441
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->participants_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17442
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17443
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->version:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17444
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6f

    .line 17445
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$InputChannel;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 17447
    :cond_6f
    return-void

    .line 17431
    :cond_70
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_d

    .line 17432
    :cond_75
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_17

    .line 17433
    :cond_7a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    and-int/lit8 v0, v0, -0x5

    goto :goto_21

    .line 17434
    :cond_7f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    and-int/lit8 v0, v0, -0x9

    goto :goto_2b

    .line 17435
    :cond_84
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    and-int/lit8 v0, v0, -0x11

    goto :goto_35

    .line 17436
    :cond_89
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chat;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto :goto_3f
.end method
