.class public Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageText;
.super Lorg/telegram/tgnet/TLRPC$BotInlineMessage;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_botInlineMessageText"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 5873
    const v0, -0x73809a1e

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageText;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5872
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;-><init>()V

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

    .line 5877
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageText;->flags:I

    .line 5878
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageText;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3c

    move v4, v5

    :goto_f
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageText;->no_webpage:Z

    .line 5879
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageText;->message:Ljava/lang/String;

    .line 5880
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageText;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_58

    .line 5881
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 5882
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_3e

    .line 5883
    if-eqz p2, :cond_4f

    .line 5884
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
    :cond_3c
    move v4, v6

    .line 5878
    goto :goto_f

    .line 5888
    .restart local v2    # "magic":I
    :cond_3e
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 5889
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_43
    if-ge v0, v1, :cond_58

    .line 5890
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v3

    .line 5891
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    if-nez v3, :cond_50

    .line 5900
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v2    # "magic":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_4f
    :goto_4f
    return-void

    .line 5894
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v2    # "magic":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_50
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageText;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5889
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 5897
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v2    # "magic":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_58
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageText;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_4f

    .line 5898
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageText;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    goto :goto_4f
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 5903
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageText;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5904
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageText;->no_webpage:Z

    if-eqz v2, :cond_3f

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageText;->flags:I

    or-int/lit8 v2, v2, 0x1

    :goto_d
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageText;->flags:I

    .line 5905
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageText;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5906
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageText;->message:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 5907
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageText;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_44

    .line 5908
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5909
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageText;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5910
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5911
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2f
    if-ge v0, v1, :cond_44

    .line 5912
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageText;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 5911
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 5904
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_3f
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageText;->flags:I

    and-int/lit8 v2, v2, -0x2

    goto :goto_d

    .line 5915
    :cond_44
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageText;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4f

    .line 5916
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageText;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 5918
    :cond_4f
    return-void
.end method
