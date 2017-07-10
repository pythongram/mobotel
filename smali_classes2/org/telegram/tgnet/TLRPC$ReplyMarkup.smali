.class public Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReplyMarkup"
.end annotation


# instance fields
.field public flags:I

.field public resize:Z

.field public rows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;",
            ">;"
        }
    .end annotation
.end field

.field public selective:Z

.field public single_use:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 4441
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 4442
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 4449
    const/4 v0, 0x0

    .line 4450
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    sparse-switch p1, :sswitch_data_3c

    .line 4464
    :goto_4
    if-nez v0, :cond_36

    if-eqz p2, :cond_36

    .line 4465
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in ReplyMarkup"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4452
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;-><init>()V

    .line 4453
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    goto :goto_4

    .line 4455
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;-><init>()V

    .line 4456
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    goto :goto_4

    .line 4458
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardForceReply;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardForceReply;-><init>()V

    .line 4459
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    goto :goto_4

    .line 4461
    :sswitch_30
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    goto :goto_4

    .line 4467
    :cond_36
    if-eqz v0, :cond_3b

    .line 4468
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 4470
    :cond_3b
    return-object v0

    .line 4450
    :sswitch_data_3c
    .sparse-switch
        -0x5fc1a47b -> :sswitch_24
        -0xbef7560 -> :sswitch_2a
        0x3502758c -> :sswitch_30
        0x48a30254 -> :sswitch_1e
    .end sparse-switch
.end method
