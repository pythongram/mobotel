.class public Lorg/telegram/tgnet/TLRPC$TL_message_old6;
.super Lorg/telegram/tgnet/TLRPC$TL_message;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_message_old6"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25309
    const v0, 0x2bebfa86

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25308
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

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

    .line 25313
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    or-int/lit16 v4, v4, 0x100

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    .line 25314
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_c6

    move v4, v5

    :goto_11
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->unread:Z

    .line 25315
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_c9

    move v4, v5

    :goto_1a
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->out:Z

    .line 25316
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_cc

    move v4, v5

    :goto_23
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->mentioned:Z

    .line 25317
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_cf

    move v4, v5

    :goto_2c
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->media_unread:Z

    .line 25318
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->id:I

    .line 25319
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->from_id:I

    .line 25320
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 25321
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_69

    .line 25322
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;-><init>()V

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    .line 25323
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    .line 25324
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v7, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    .line 25325
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->date:I

    .line 25327
    :cond_69
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_75

    .line 25328
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->reply_to_msg_id:I

    .line 25330
    :cond_75
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->date:I

    .line 25331
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->message:Ljava/lang/String;

    .line 25332
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_d2

    .line 25333
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 25337
    :goto_91
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_a1

    .line 25338
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 25340
    :cond_a1
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_f4

    .line 25341
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 25342
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_da

    .line 25343
    if-eqz p2, :cond_eb

    .line 25344
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
    :cond_c6
    move v4, v6

    .line 25314
    goto/16 :goto_11

    :cond_c9
    move v4, v6

    .line 25315
    goto/16 :goto_1a

    :cond_cc
    move v4, v6

    .line 25316
    goto/16 :goto_23

    :cond_cf
    move v4, v6

    .line 25317
    goto/16 :goto_2c

    .line 25335
    :cond_d2
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    goto :goto_91

    .line 25348
    .restart local v2    # "magic":I
    :cond_da
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 25349
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_df
    if-ge v0, v1, :cond_f4

    .line 25350
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v3

    .line 25351
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    if-nez v3, :cond_ec

    .line 25363
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v2    # "magic":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_eb
    :goto_eb
    return-void

    .line 25354
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v2    # "magic":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_ec
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25349
    add-int/lit8 v0, v0, 0x1

    goto :goto_df

    .line 25357
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v2    # "magic":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_f4
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->id:I

    if-ltz v4, :cond_11e

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_124

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v4, :cond_124

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v4, :cond_124

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->message:Ljava/lang/String;

    if-eqz v4, :cond_124

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->message:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_124

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->message:Ljava/lang/String;

    const-string v5, "-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_124

    .line 25358
    :cond_11e
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->attachPath:Ljava/lang/String;

    .line 25360
    :cond_124
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_eb

    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->id:I

    if-gez v4, :cond_eb

    .line 25361
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->fwd_msg_id:I

    goto :goto_eb
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 25366
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25367
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->unread:Z

    if-eqz v2, :cond_a6

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    or-int/lit8 v2, v2, 0x1

    :goto_d
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    .line 25368
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->out:Z

    if-eqz v2, :cond_ac

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    or-int/lit8 v2, v2, 0x2

    :goto_17
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    .line 25369
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->mentioned:Z

    if-eqz v2, :cond_b2

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    or-int/lit8 v2, v2, 0x10

    :goto_21
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    .line 25370
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->media_unread:Z

    if-eqz v2, :cond_b8

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    or-int/lit8 v2, v2, 0x20

    :goto_2b
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    .line 25371
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25372
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25373
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->from_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25374
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 25375
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_55

    .line 25376
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25377
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->date:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25379
    :cond_55
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_60

    .line 25380
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->reply_to_msg_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25382
    :cond_60
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->date:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25383
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->message:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 25384
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_75

    .line 25385
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 25387
    :cond_75
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_80

    .line 25388
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 25390
    :cond_80
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_be

    .line 25391
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25392
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 25393
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25394
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_96
    if-ge v0, v1, :cond_be

    .line 25395
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 25394
    add-int/lit8 v0, v0, 0x1

    goto :goto_96

    .line 25367
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_a6
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v2, v2, -0x2

    goto/16 :goto_d

    .line 25368
    :cond_ac
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v2, v2, -0x3

    goto/16 :goto_17

    .line 25369
    :cond_b2
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v2, v2, -0x11

    goto/16 :goto_21

    .line 25370
    :cond_b8
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v2, v2, -0x21

    goto/16 :goto_2b

    .line 25398
    :cond_be
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->attachPath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 25399
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_d2

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->id:I

    if-gez v2, :cond_d2

    .line 25400
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old6;->fwd_msg_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25402
    :cond_d2
    return-void
.end method
