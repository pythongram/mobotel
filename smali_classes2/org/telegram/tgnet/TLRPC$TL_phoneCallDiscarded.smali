.class public Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;
.super Lorg/telegram/tgnet/TLRPC$PhoneCall;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_phoneCallDiscarded"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7114
    const v0, 0x50ca4de1

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7113
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PhoneCall;-><init>()V

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

    .line 7118
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->flags:I

    .line 7119
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3c

    move v0, v1

    :goto_f
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->need_rating:Z

    .line 7120
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3e

    :goto_17
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->need_debug:Z

    .line 7121
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->id:J

    .line 7122
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2f

    .line 7123
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    .line 7125
    :cond_2f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3b

    .line 7126
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->duration:I

    .line 7128
    :cond_3b
    return-void

    :cond_3c
    move v0, v2

    .line 7119
    goto :goto_f

    :cond_3e
    move v1, v2

    .line 7120
    goto :goto_17
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 7131
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7132
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->need_rating:Z

    if-eqz v0, :cond_3a

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->flags:I

    or-int/lit8 v0, v0, 0x4

    :goto_d
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->flags:I

    .line 7133
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->need_debug:Z

    if-eqz v0, :cond_3f

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->flags:I

    or-int/lit8 v0, v0, 0x8

    :goto_17
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->flags:I

    .line 7134
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7135
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 7136
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2e

    .line 7137
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 7139
    :cond_2e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_39

    .line 7140
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->duration:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7142
    :cond_39
    return-void

    .line 7132
    :cond_3a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->flags:I

    and-int/lit8 v0, v0, -0x5

    goto :goto_d

    .line 7133
    :cond_3f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscarded;->flags:I

    and-int/lit8 v0, v0, -0x9

    goto :goto_17
.end method
