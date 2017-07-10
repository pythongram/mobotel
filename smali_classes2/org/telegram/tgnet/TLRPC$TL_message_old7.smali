.class public Lorg/telegram/tgnet/TLRPC$TL_message_old7;
.super Lorg/telegram/tgnet/TLRPC$TL_message;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_message_old7"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25131
    const v0, 0x5ba66c13

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25130
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 13
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 25134
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    .line 25135
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_e4

    move v5, v6

    :goto_f
    iput-boolean v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->unread:Z

    .line 25136
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_e7

    move v5, v6

    :goto_18
    iput-boolean v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->out:Z

    .line 25137
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_ea

    move v5, v6

    :goto_21
    iput-boolean v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->mentioned:Z

    .line 25138
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_ed

    move v5, v6

    :goto_2a
    iput-boolean v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->media_unread:Z

    .line 25139
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->id:I

    .line 25140
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_3e

    .line 25141
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->from_id:I

    .line 25143
    :cond_3e
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    invoke-static {p1, v5, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 25144
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->from_id:I

    if-nez v5, :cond_58

    .line 25145
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v5, :cond_f0

    .line 25146
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->from_id:I

    .line 25151
    :cond_58
    :goto_58
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_87

    .line 25152
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;-><init>()V

    iput-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    .line 25153
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    invoke-static {p1, v5, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v4

    .line 25154
    .local v4, "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v5, :cond_f9

    .line 25155
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    .line 25156
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v8, v5, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    .line 25161
    :cond_7f
    :goto_7f
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v8

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->date:I

    .line 25163
    .end local v4    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    :cond_87
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_93

    .line 25164
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->reply_to_msg_id:I

    .line 25166
    :cond_93
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->date:I

    .line 25167
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->message:Ljava/lang/String;

    .line 25168
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_10d

    .line 25169
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    invoke-static {p1, v5, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 25173
    :goto_af
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_bf

    .line 25174
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    invoke-static {p1, v5, p2}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 25176
    :cond_bf
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_12f

    .line 25177
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 25178
    .local v2, "magic":I
    const v5, 0x1cb5c415

    if-eq v2, v5, :cond_115

    .line 25179
    if-eqz p2, :cond_126

    .line 25180
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v8, "wrong Vector magic, got %x"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v2    # "magic":I
    :cond_e4
    move v5, v7

    .line 25135
    goto/16 :goto_f

    :cond_e7
    move v5, v7

    .line 25136
    goto/16 :goto_18

    :cond_ea
    move v5, v7

    .line 25137
    goto/16 :goto_21

    :cond_ed
    move v5, v7

    .line 25138
    goto/16 :goto_2a

    .line 25148
    :cond_f0
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v5, v5

    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->from_id:I

    goto/16 :goto_58

    .line 25157
    .restart local v4    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    :cond_f9
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-eqz v5, :cond_7f

    .line 25158
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    .line 25159
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v8, v5, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    or-int/lit8 v8, v8, 0x1

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    goto/16 :goto_7f

    .line 25171
    .end local v4    # "peer":Lorg/telegram/tgnet/TLRPC$Peer;
    :cond_10d
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    goto :goto_af

    .line 25184
    .restart local v2    # "magic":I
    :cond_115
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 25185
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_11a
    if-ge v0, v1, :cond_12f

    .line 25186
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    invoke-static {p1, v5, p2}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v3

    .line 25187
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    if-nez v3, :cond_127

    .line 25202
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v2    # "magic":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_126
    :goto_126
    return-void

    .line 25190
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v2    # "magic":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_127
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->entities:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25185
    add-int/lit8 v0, v0, 0x1

    goto :goto_11a

    .line 25193
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v2    # "magic":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_12f
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_13b

    .line 25194
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->views:I

    .line 25196
    :cond_13b
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->id:I

    if-ltz v5, :cond_165

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v5, :cond_16b

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v5, :cond_16b

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v5, :cond_16b

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->message:Ljava/lang/String;

    if-eqz v5, :cond_16b

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->message:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_16b

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->message:Ljava/lang/String;

    const-string v6, "-1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16b

    .line 25197
    :cond_165
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->attachPath:Ljava/lang/String;

    .line 25199
    :cond_16b
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_126

    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->id:I

    if-gez v5, :cond_126

    .line 25200
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v5

    iput v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_msg_id:I

    goto :goto_126
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 6
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 25205
    sget v3, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->constructor:I

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25206
    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->unread:Z

    if-eqz v3, :cond_b9

    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    or-int/lit8 v3, v3, 0x1

    :goto_d
    iput v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    .line 25207
    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->out:Z

    if-eqz v3, :cond_bf

    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    or-int/lit8 v3, v3, 0x2

    :goto_17
    iput v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    .line 25208
    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->mentioned:Z

    if-eqz v3, :cond_c5

    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    or-int/lit8 v3, v3, 0x10

    :goto_21
    iput v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    .line 25209
    iget-boolean v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->media_unread:Z

    if-eqz v3, :cond_cb

    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    or-int/lit8 v3, v3, 0x20

    :goto_2b
    iput v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    .line 25210
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25211
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->id:I

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25212
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_42

    .line 25213
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->from_id:I

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25215
    :cond_42
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v3, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 25216
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_68

    .line 25217
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    if-eqz v3, :cond_d1

    .line 25218
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    .line 25219
    .local v2, "peer":Lorg/telegram/tgnet/TLRPC$TL_peerUser;
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;->user_id:I

    .line 25220
    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 25226
    .end local v2    # "peer":Lorg/telegram/tgnet/TLRPC$TL_peerUser;
    :goto_61
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->date:I

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25228
    :cond_68
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_73

    .line 25229
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->reply_to_msg_id:I

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25231
    :cond_73
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->date:I

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25232
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->message:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 25233
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_88

    .line 25234
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v3, p1}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 25236
    :cond_88
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_93

    .line 25237
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    invoke-virtual {v3, p1}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 25239
    :cond_93
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_e0

    .line 25240
    const v3, 0x1cb5c415

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25241
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 25242
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25243
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_a9
    if-ge v0, v1, :cond_e0

    .line 25244
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-virtual {v3, p1}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 25243
    add-int/lit8 v0, v0, 0x1

    goto :goto_a9

    .line 25206
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_b9
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v3, v3, -0x2

    goto/16 :goto_d

    .line 25207
    :cond_bf
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v3, v3, -0x3

    goto/16 :goto_17

    .line 25208
    :cond_c5
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v3, v3, -0x11

    goto/16 :goto_21

    .line 25209
    :cond_cb
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v3, v3, -0x21

    goto/16 :goto_2b

    .line 25222
    :cond_d1
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    .line 25223
    .local v2, "peer":Lorg/telegram/tgnet/TLRPC$TL_peerChannel;
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;->channel_id:I

    .line 25224
    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    goto :goto_61

    .line 25247
    .end local v2    # "peer":Lorg/telegram/tgnet/TLRPC$TL_peerChannel;
    :cond_e0
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_eb

    .line 25248
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->views:I

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25250
    :cond_eb
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->attachPath:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 25251
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_ff

    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->id:I

    if-gez v3, :cond_ff

    .line 25252
    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_old7;->fwd_msg_id:I

    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25254
    :cond_ff
    return-void
.end method
