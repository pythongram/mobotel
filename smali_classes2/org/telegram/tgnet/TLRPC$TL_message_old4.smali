.class public Lorg/telegram/tgnet/TLRPC$TL_message_old4;
.super Lorg/telegram/tgnet/TLRPC$TL_message;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_message_old4"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25544
    const v0, -0x3cf9fcdb

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25543
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

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

    .line 25548
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    or-int/lit16 v0, v0, 0x100

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    .line 25549
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_dd

    move v0, v1

    :goto_13
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->unread:Z

    .line 25550
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_e0

    move v0, v1

    :goto_1c
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->out:Z

    .line 25551
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_e3

    move v0, v1

    :goto_25
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->mentioned:Z

    .line 25552
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_e6

    :goto_2d
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->media_unread:Z

    .line 25553
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->id:I

    .line 25554
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->from_id:I

    .line 25555
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 25556
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6a

    .line 25557
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    .line 25558
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    .line 25559
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    .line 25560
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->date:I

    .line 25562
    :cond_6a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_76

    .line 25563
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->reply_to_msg_id:I

    .line 25565
    :cond_76
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->date:I

    .line 25566
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->message:Ljava/lang/String;

    .line 25567
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 25568
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_9c

    .line 25569
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 25571
    :cond_9c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->id:I

    if-ltz v0, :cond_c6

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_cc

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v0, :cond_cc

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v0, :cond_cc

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->message:Ljava/lang/String;

    if-eqz v0, :cond_cc

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_cc

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->message:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 25572
    :cond_c6
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->attachPath:Ljava/lang/String;

    .line 25574
    :cond_cc
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_dc

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->id:I

    if-gez v0, :cond_dc

    .line 25575
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->fwd_msg_id:I

    .line 25577
    :cond_dc
    return-void

    :cond_dd
    move v0, v2

    .line 25549
    goto/16 :goto_13

    :cond_e0
    move v0, v2

    .line 25550
    goto/16 :goto_1c

    :cond_e3
    move v0, v2

    .line 25551
    goto/16 :goto_25

    :cond_e6
    move v1, v2

    .line 25552
    goto/16 :goto_2d
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 25580
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25581
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->unread:Z

    if-eqz v0, :cond_8f

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_d
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    .line 25582
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->out:Z

    if-eqz v0, :cond_95

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_17
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    .line 25583
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->mentioned:Z

    if-eqz v0, :cond_9b

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    or-int/lit8 v0, v0, 0x10

    :goto_21
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    .line 25584
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->media_unread:Z

    if-eqz v0, :cond_a0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_2b
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    .line 25585
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25586
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25587
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->from_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25588
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 25589
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_55

    .line 25590
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25591
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25593
    :cond_55
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_60

    .line 25594
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->reply_to_msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25596
    :cond_60
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25597
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 25598
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 25599
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7a

    .line 25600
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 25602
    :cond_7a
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->attachPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 25603
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8e

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->id:I

    if-gez v0, :cond_8e

    .line 25604
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->fwd_msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25606
    :cond_8e
    return-void

    .line 25581
    :cond_8f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto/16 :goto_d

    .line 25582
    :cond_95
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto/16 :goto_17

    .line 25583
    :cond_9b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    and-int/lit8 v0, v0, -0x11

    goto :goto_21

    .line 25584
    :cond_a0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old4;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto :goto_2b
.end method
