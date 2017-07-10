.class public Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardForceReply;
.super Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_replyKeyboardForceReply"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 4524
    const v0, -0xbef7560

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardForceReply;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4523
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;-><init>()V

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

    .line 4528
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardForceReply;->flags:I

    .line 4529
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardForceReply;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1a

    move v0, v1

    :goto_f
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardForceReply;->single_use:Z

    .line 4530
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardForceReply;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1c

    :goto_17
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardForceReply;->selective:Z

    .line 4531
    return-void

    :cond_1a
    move v0, v2

    .line 4529
    goto :goto_f

    :cond_1c
    move v1, v2

    .line 4530
    goto :goto_17
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 4534
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardForceReply;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4535
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardForceReply;->single_use:Z

    if-eqz v0, :cond_1f

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardForceReply;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_d
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardForceReply;->flags:I

    .line 4536
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardForceReply;->selective:Z

    if-eqz v0, :cond_24

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardForceReply;->flags:I

    or-int/lit8 v0, v0, 0x4

    :goto_17
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardForceReply;->flags:I

    .line 4537
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardForceReply;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4538
    return-void

    .line 4535
    :cond_1f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardForceReply;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_d

    .line 4536
    :cond_24
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardForceReply;->flags:I

    and-int/lit8 v0, v0, -0x5

    goto :goto_17
.end method
