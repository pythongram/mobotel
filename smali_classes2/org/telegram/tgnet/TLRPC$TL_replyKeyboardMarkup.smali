.class public Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;
.super Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_replyKeyboardMarkup"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 4542
    const v0, 0x3502758c

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4541
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 12
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 4546
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->flags:I

    .line 4547
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_42

    move v4, v5

    :goto_f
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->resize:Z

    .line 4548
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_44

    move v4, v5

    :goto_18
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->single_use:Z

    .line 4549
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_46

    move v4, v5

    :goto_21
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->selective:Z

    .line 4550
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 4551
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_48

    .line 4552
    if-eqz p2, :cond_59

    .line 4553
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

    .line 4547
    goto :goto_f

    :cond_44
    move v4, v6

    .line 4548
    goto :goto_18

    :cond_46
    move v4, v6

    .line 4549
    goto :goto_21

    .line 4557
    .restart local v2    # "magic":I
    :cond_48
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 4558
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_4d
    if-ge v0, v1, :cond_59

    .line 4559
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;

    move-result-object v3

    .line 4560
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;
    if-nez v3, :cond_5a

    .line 4565
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;
    :cond_59
    return-void

    .line 4563
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;
    :cond_5a
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4558
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 4568
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4569
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->resize:Z

    if-eqz v2, :cond_48

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->flags:I

    or-int/lit8 v2, v2, 0x1

    :goto_d
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->flags:I

    .line 4570
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->single_use:Z

    if-eqz v2, :cond_4d

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->flags:I

    or-int/lit8 v2, v2, 0x2

    :goto_17
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->flags:I

    .line 4571
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->selective:Z

    if-eqz v2, :cond_52

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->flags:I

    or-int/lit8 v2, v2, 0x4

    :goto_21
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->flags:I

    .line 4572
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4573
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4574
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4575
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4576
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_38
    if-ge v0, v1, :cond_57

    .line 4577
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 4576
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 4569
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_48
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->flags:I

    and-int/lit8 v2, v2, -0x2

    goto :goto_d

    .line 4570
    :cond_4d
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->flags:I

    and-int/lit8 v2, v2, -0x3

    goto :goto_17

    .line 4571
    :cond_52
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->flags:I

    and-int/lit8 v2, v2, -0x5

    goto :goto_21

    .line 4579
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    :cond_57
    return-void
.end method
