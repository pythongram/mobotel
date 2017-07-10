.class public Lorg/telegram/tgnet/TLRPC$TL_message_old3;
.super Lorg/telegram/tgnet/TLRPC$TL_message;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_message_old3"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25610
    const v0, -0x5854e66f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25609
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

    .line 25613
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    or-int/lit16 v0, v0, 0x100

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    .line 25614
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_cd

    move v0, v1

    :goto_13
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->unread:Z

    .line 25615
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_d0

    move v0, v1

    :goto_1c
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->out:Z

    .line 25616
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_d3

    move v0, v1

    :goto_25
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->mentioned:Z

    .line 25617
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_d6

    :goto_2d
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->media_unread:Z

    .line 25618
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->id:I

    .line 25619
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->from_id:I

    .line 25620
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 25621
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6a

    .line 25622
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    .line 25623
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    .line 25624
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    .line 25625
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->date:I

    .line 25627
    :cond_6a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_76

    .line 25628
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->reply_to_msg_id:I

    .line 25630
    :cond_76
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->date:I

    .line 25631
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->message:Ljava/lang/String;

    .line 25632
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 25633
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->id:I

    if-ltz v0, :cond_b6

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_bc

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v0, :cond_bc

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v0, :cond_bc

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->message:Ljava/lang/String;

    if-eqz v0, :cond_bc

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_bc

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->message:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 25634
    :cond_b6
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->attachPath:Ljava/lang/String;

    .line 25636
    :cond_bc
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_cc

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->id:I

    if-gez v0, :cond_cc

    .line 25637
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->fwd_msg_id:I

    .line 25639
    :cond_cc
    return-void

    :cond_cd
    move v0, v2

    .line 25614
    goto/16 :goto_13

    :cond_d0
    move v0, v2

    .line 25615
    goto/16 :goto_1c

    :cond_d3
    move v0, v2

    .line 25616
    goto/16 :goto_25

    :cond_d6
    move v1, v2

    .line 25617
    goto/16 :goto_2d
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 25642
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25643
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->unread:Z

    if-eqz v0, :cond_84

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_d
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    .line 25644
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->out:Z

    if-eqz v0, :cond_89

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_17
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    .line 25645
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->mentioned:Z

    if-eqz v0, :cond_8e

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    or-int/lit8 v0, v0, 0x10

    :goto_21
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    .line 25646
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->media_unread:Z

    if-eqz v0, :cond_93

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_2b
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    .line 25647
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25648
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25649
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->from_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25650
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 25651
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_55

    .line 25652
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25653
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25655
    :cond_55
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_60

    .line 25656
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->reply_to_msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25658
    :cond_60
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25659
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 25660
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 25661
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->attachPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 25662
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_83

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->id:I

    if-gez v0, :cond_83

    .line 25663
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->fwd_msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25665
    :cond_83
    return-void

    .line 25643
    :cond_84
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_d

    .line 25644
    :cond_89
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_17

    .line 25645
    :cond_8e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, -0x11

    goto :goto_21

    .line 25646
    :cond_93
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old3;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto :goto_2b
.end method
