.class public Lorg/telegram/tgnet/TLRPC$TL_message_layer47;
.super Lorg/telegram/tgnet/TLRPC$TL_message;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_message_layer47"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24978
    const v0, -0x366d1ea4    # -1203243.5f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24977
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 15
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 24981
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    iput v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    .line 24982
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_f0

    move v7, v8

    :goto_f
    iput-boolean v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->unread:Z

    .line 24983
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_f3

    move v7, v8

    :goto_18
    iput-boolean v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->out:Z

    .line 24984
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_f6

    move v7, v8

    :goto_21
    iput-boolean v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->mentioned:Z

    .line 24985
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_f9

    move v7, v8

    :goto_2a
    iput-boolean v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->media_unread:Z

    .line 24986
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    iput v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->id:I

    .line 24987
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_3e

    .line 24988
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    iput v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->from_id:I

    .line 24990
    :cond_3e
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    invoke-static {p1, v7, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 24991
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->from_id:I

    if-nez v7, :cond_58

    .line 24992
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v7, :cond_fc

    .line 24993
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    iput v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->from_id:I

    .line 24998
    :cond_58
    :goto_58
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_87

    .line 24999
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;-><init>()V

    iput-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    .line 25000
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    invoke-static {p1, v7, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v6

    .line 25001
    .local v6, "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v7, :cond_105

    .line 25002
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v10, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    iput v10, v7, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    .line 25003
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v10, v7, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    or-int/lit8 v10, v10, 0x2

    iput v10, v7, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    .line 25008
    :cond_7f
    :goto_7f
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v10

    iput v10, v7, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->date:I

    .line 25010
    .end local v6    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    :cond_87
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v7, v7, 0x800

    if-eqz v7, :cond_93

    .line 25011
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    iput v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->via_bot_id:I

    .line 25013
    :cond_93
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_9f

    .line 25014
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    iput v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->reply_to_msg_id:I

    .line 25016
    :cond_9f
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    iput v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->date:I

    .line 25017
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->message:Ljava/lang/String;

    .line 25018
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v7, v7, 0x200

    if-eqz v7, :cond_119

    .line 25019
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    invoke-static {p1, v7, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 25023
    :goto_bb
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_cb

    .line 25024
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    invoke-static {p1, v7, p2}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 25026
    :cond_cb
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_13b

    .line 25027
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    .line 25028
    .local v4, "magic":I
    const v7, 0x1cb5c415

    if-eq v4, v7, :cond_121

    .line 25029
    if-eqz p2, :cond_132

    .line 25030
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v10, "wrong Vector magic, got %x"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v4    # "magic":I
    :cond_f0
    move v7, v9

    .line 24982
    goto/16 :goto_f

    :cond_f3
    move v7, v9

    .line 24983
    goto/16 :goto_18

    :cond_f6
    move v7, v9

    .line 24984
    goto/16 :goto_21

    :cond_f9
    move v7, v9

    .line 24985
    goto/16 :goto_2a

    .line 24995
    :cond_fc
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v7, v7

    iput v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->from_id:I

    goto/16 :goto_58

    .line 25004
    .restart local v6    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    :cond_105
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-eqz v7, :cond_7f

    .line 25005
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v10, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    iput v10, v7, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    .line 25006
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v10, v7, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    or-int/lit8 v10, v10, 0x1

    iput v10, v7, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    goto/16 :goto_7f

    .line 25021
    .end local v6    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    :cond_119
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    goto :goto_bb

    .line 25034
    .restart local v4    # "magic":I
    :cond_121
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v3

    .line 25035
    .local v3, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_126
    if-ge v0, v3, :cond_13b

    .line 25036
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    invoke-static {p1, v7, p2}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v5

    .line 25037
    .local v5, "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    if-nez v5, :cond_133

    .line 25065
    .end local v0    # "a":I
    .end local v3    # "count":I
    .end local v4    # "magic":I
    .end local v5    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_132
    :goto_132
    return-void

    .line 25040
    .restart local v0    # "a":I
    .restart local v3    # "count":I
    .restart local v4    # "magic":I
    .restart local v5    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_133
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->entities:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25035
    add-int/lit8 v0, v0, 0x1

    goto :goto_126

    .line 25043
    .end local v0    # "a":I
    .end local v3    # "count":I
    .end local v4    # "magic":I
    .end local v5    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_13b
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v7, v7, 0x400

    if-eqz v7, :cond_147

    .line 25044
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    iput v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->views:I

    .line 25046
    :cond_147
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->id:I

    if-ltz v7, :cond_171

    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v7, :cond_1bc

    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v7, :cond_1bc

    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v7, :cond_1bc

    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->message:Ljava/lang/String;

    if-eqz v7, :cond_1bc

    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->message:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1bc

    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->message:Ljava/lang/String;

    const-string v10, "-1"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1bc

    .line 25047
    :cond_171
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->attachPath:Ljava/lang/String;

    .line 25048
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->id:I

    if-gez v7, :cond_1bc

    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->attachPath:Ljava/lang/String;

    const-string v10, "||"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1bc

    .line 25049
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->attachPath:Ljava/lang/String;

    const-string v10, "\\|\\|"

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 25050
    .local v1, "args":[Ljava/lang/String;
    array-length v7, v1

    if-lez v7, :cond_1bc

    .line 25051
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->params:Ljava/util/HashMap;

    .line 25052
    const/4 v0, 0x1

    .restart local v0    # "a":I
    :goto_198
    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    if-ge v0, v7, :cond_1b5

    .line 25053
    aget-object v7, v1, v0

    const-string v10, "\\|=\\|"

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 25054
    .local v2, "args2":[Ljava/lang/String;
    array-length v7, v2

    const/4 v10, 0x2

    if-ne v7, v10, :cond_1b2

    .line 25055
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->params:Ljava/util/HashMap;

    aget-object v10, v2, v9

    aget-object v11, v2, v8

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25052
    :cond_1b2
    add-int/lit8 v0, v0, 0x1

    goto :goto_198

    .line 25058
    .end local v2    # "args2":[Ljava/lang/String;
    :cond_1b5
    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v1, v7

    iput-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->attachPath:Ljava/lang/String;

    .line 25062
    .end local v0    # "a":I
    .end local v1    # "args":[Ljava/lang/String;
    :cond_1bc
    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_132

    iget v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->id:I

    if-gez v7, :cond_132

    .line 25063
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v7

    iput v7, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_msg_id:I

    goto/16 :goto_132
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 10
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 25068
    sget v5, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->constructor:I

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25069
    iget-boolean v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->unread:Z

    if-eqz v5, :cond_c4

    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    or-int/lit8 v5, v5, 0x1

    :goto_d
    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    .line 25070
    iget-boolean v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->out:Z

    if-eqz v5, :cond_ca

    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    or-int/lit8 v5, v5, 0x2

    :goto_17
    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    .line 25071
    iget-boolean v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->mentioned:Z

    if-eqz v5, :cond_d0

    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    or-int/lit8 v5, v5, 0x10

    :goto_21
    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    .line 25072
    iget-boolean v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->media_unread:Z

    if-eqz v5, :cond_d6

    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    or-int/lit8 v5, v5, 0x20

    :goto_2b
    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    .line 25073
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25074
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->id:I

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25075
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_42

    .line 25076
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->from_id:I

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25078
    :cond_42
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v5, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 25079
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_68

    .line 25080
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    if-eqz v5, :cond_dc

    .line 25081
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    .line 25082
    .local v4, "peer":Lorg/telegram/tgnet/TLRPC$TL_peerUser;
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;->user_id:I

    .line 25083
    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 25089
    .end local v4    # "peer":Lorg/telegram/tgnet/TLRPC$TL_peerUser;
    :goto_61
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->date:I

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25091
    :cond_68
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v5, v5, 0x800

    if-eqz v5, :cond_73

    .line 25092
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->via_bot_id:I

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25094
    :cond_73
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_7e

    .line 25095
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->reply_to_msg_id:I

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25097
    :cond_7e
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->date:I

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25098
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->message:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 25099
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_93

    .line 25100
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v5, p1}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 25102
    :cond_93
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_9e

    .line 25103
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    invoke-virtual {v5, p1}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 25105
    :cond_9e
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_ec

    .line 25106
    const v5, 0x1cb5c415

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25107
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->entities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 25108
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25109
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_b4
    if-ge v0, v1, :cond_ec

    .line 25110
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->entities:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-virtual {v5, p1}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 25109
    add-int/lit8 v0, v0, 0x1

    goto :goto_b4

    .line 25069
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_c4
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v5, v5, -0x2

    goto/16 :goto_d

    .line 25070
    :cond_ca
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v5, v5, -0x3

    goto/16 :goto_17

    .line 25071
    :cond_d0
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v5, v5, -0x11

    goto/16 :goto_21

    .line 25072
    :cond_d6
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v5, v5, -0x21

    goto/16 :goto_2b

    .line 25085
    :cond_dc
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    .line 25086
    .local v4, "peer":Lorg/telegram/tgnet/TLRPC$TL_peerChannel;
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;->channel_id:I

    .line 25087
    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    goto/16 :goto_61

    .line 25113
    .end local v4    # "peer":Lorg/telegram/tgnet/TLRPC$TL_peerChannel;
    :cond_ec
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_f7

    .line 25114
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->views:I

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25116
    :cond_f7
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->attachPath:Ljava/lang/String;

    .line 25117
    .local v3, "path":Ljava/lang/String;
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->id:I

    if-gez v5, :cond_160

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->params:Ljava/util/HashMap;

    if-eqz v5, :cond_160

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->params:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_160

    .line 25118
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->params:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_113
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 25119
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "|=|"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "||"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 25120
    goto :goto_113

    .line 25121
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_14d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "||"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 25123
    :cond_160
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 25124
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_172

    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->id:I

    if-gez v5, :cond_172

    .line 25125
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_msg_id:I

    invoke-virtual {p1, v5}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25127
    :cond_172
    return-void
.end method
