.class public Lorg/telegram/tgnet/TLRPC$TL_stickerSet;
.super Lorg/telegram/tgnet/TLRPC$StickerSet;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_stickerSet"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17640
    const v0, -0x32cfc4bf    # -1.8479208E8f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17639
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$StickerSet;-><init>()V

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

    .line 17644
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->flags:I

    .line 17645
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_50

    move v0, v1

    :goto_f
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->installed:Z

    .line 17646
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_52

    move v0, v1

    :goto_18
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->archived:Z

    .line 17647
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_54

    move v0, v1

    :goto_21
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->official:Z

    .line 17648
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_56

    :goto_29
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->masks:Z

    .line 17649
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->id:J

    .line 17650
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->access_hash:J

    .line 17651
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->title:Ljava/lang/String;

    .line 17652
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->short_name:Ljava/lang/String;

    .line 17653
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->count:I

    .line 17654
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->hash:I

    .line 17655
    return-void

    :cond_50
    move v0, v2

    .line 17645
    goto :goto_f

    :cond_52
    move v0, v2

    .line 17646
    goto :goto_18

    :cond_54
    move v0, v2

    .line 17647
    goto :goto_21

    :cond_56
    move v1, v2

    .line 17648
    goto :goto_29
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 17658
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17659
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->installed:Z

    if-eqz v0, :cond_51

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_d
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->flags:I

    .line 17660
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->archived:Z

    if-eqz v0, :cond_56

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_17
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->flags:I

    .line 17661
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->official:Z

    if-eqz v0, :cond_5b

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->flags:I

    or-int/lit8 v0, v0, 0x4

    :goto_21
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->flags:I

    .line 17662
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->masks:Z

    if-eqz v0, :cond_60

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->flags:I

    or-int/lit8 v0, v0, 0x8

    :goto_2b
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->flags:I

    .line 17663
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17664
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 17665
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 17666
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 17667
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->short_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 17668
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17669
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->hash:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17670
    return-void

    .line 17659
    :cond_51
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_d

    .line 17660
    :cond_56
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_17

    .line 17661
    :cond_5b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->flags:I

    and-int/lit8 v0, v0, -0x5

    goto :goto_21

    .line 17662
    :cond_60
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stickerSet;->flags:I

    and-int/lit8 v0, v0, -0x9

    goto :goto_2b
.end method
