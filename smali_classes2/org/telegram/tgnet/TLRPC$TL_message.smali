.class public Lorg/telegram/tgnet/TLRPC$TL_message;
.super Lorg/telegram/tgnet/TLRPC$Message;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_message"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24831
    const v0, -0x3f641ba1

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_message;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24830
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Message;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 14
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 24834
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 24835
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_ed

    move v6, v7

    :goto_f
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->unread:Z

    .line 24836
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_f0

    move v6, v7

    :goto_18
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->out:Z

    .line 24837
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_f3

    move v6, v7

    :goto_21
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->mentioned:Z

    .line 24838
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_f6

    move v6, v7

    :goto_2a
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->media_unread:Z

    .line 24839
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v6, v6, 0x2000

    if-eqz v6, :cond_f9

    move v6, v7

    :goto_33
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->silent:Z

    .line 24840
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v6, v6, 0x4000

    if-eqz v6, :cond_fc

    move v6, v7

    :goto_3c
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->post:Z

    .line 24841
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    const/high16 v9, 0x40000000    # 2.0f

    and-int/2addr v6, v9

    if-eqz v6, :cond_ff

    move v6, v7

    :goto_46
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->with_my_score:Z

    .line 24842
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    .line 24843
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_5a

    .line 24844
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    .line 24846
    :cond_5a
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 24847
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    if-nez v6, :cond_74

    .line 24848
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v6, :cond_102

    .line 24849
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    .line 24854
    :cond_74
    :goto_74
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_84

    .line 24855
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    .line 24857
    :cond_84
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v6, v6, 0x800

    if-eqz v6, :cond_90

    .line 24858
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->via_bot_id:I

    .line 24860
    :cond_90
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_9c

    .line 24861
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->reply_to_msg_id:I

    .line 24863
    :cond_9c
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->date:I

    .line 24864
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    .line 24865
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_10b

    .line 24866
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 24870
    :goto_b8
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_c8

    .line 24871
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 24873
    :cond_c8
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_12d

    .line 24874
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    .line 24875
    .local v4, "magic":I
    const v6, 0x1cb5c415

    if-eq v4, v6, :cond_113

    .line 24876
    if-eqz p2, :cond_124

    .line 24877
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v9, "wrong Vector magic, got %x"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v4    # "magic":I
    :cond_ed
    move v6, v8

    .line 24835
    goto/16 :goto_f

    :cond_f0
    move v6, v8

    .line 24836
    goto/16 :goto_18

    :cond_f3
    move v6, v8

    .line 24837
    goto/16 :goto_21

    :cond_f6
    move v6, v8

    .line 24838
    goto/16 :goto_2a

    :cond_f9
    move v6, v8

    .line 24839
    goto/16 :goto_33

    :cond_fc
    move v6, v8

    .line 24840
    goto/16 :goto_3c

    :cond_ff
    move v6, v8

    .line 24841
    goto/16 :goto_46

    .line 24851
    :cond_102
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v6, v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    goto/16 :goto_74

    .line 24868
    :cond_10b
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    goto :goto_b8

    .line 24881
    .restart local v4    # "magic":I
    :cond_113
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v3

    .line 24882
    .local v3, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_118
    if-ge v0, v3, :cond_12d

    .line 24883
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v5

    .line 24884
    .local v5, "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    if-nez v5, :cond_125

    .line 24915
    .end local v0    # "a":I
    .end local v3    # "count":I
    .end local v4    # "magic":I
    .end local v5    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_124
    :goto_124
    return-void

    .line 24887
    .restart local v0    # "a":I
    .restart local v3    # "count":I
    .restart local v4    # "magic":I
    .restart local v5    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_125
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24882
    add-int/lit8 v0, v0, 0x1

    goto :goto_118

    .line 24890
    .end local v0    # "a":I
    .end local v3    # "count":I
    .end local v4    # "magic":I
    .end local v5    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_12d
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_139

    .line 24891
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->views:I

    .line 24893
    :cond_139
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    const v9, 0x8000

    and-int/2addr v6, v9

    if-eqz v6, :cond_147

    .line 24894
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->edit_date:I

    .line 24896
    :cond_147
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    if-ltz v6, :cond_171

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v6, :cond_1bc

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v6, :cond_1bc

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v6, :cond_1bc

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    if-eqz v6, :cond_1bc

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1bc

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    const-string v9, "-1"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1bc

    .line 24897
    :cond_171
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->attachPath:Ljava/lang/String;

    .line 24898
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    if-gez v6, :cond_1bc

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->attachPath:Ljava/lang/String;

    const-string v9, "||"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1bc

    .line 24899
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->attachPath:Ljava/lang/String;

    const-string v9, "\\|\\|"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 24900
    .local v1, "args":[Ljava/lang/String;
    array-length v6, v1

    if-lez v6, :cond_1bc

    .line 24901
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->params:Ljava/util/HashMap;

    .line 24902
    const/4 v0, 0x1

    .restart local v0    # "a":I
    :goto_198
    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_1b5

    .line 24903
    aget-object v6, v1, v0

    const-string v9, "\\|=\\|"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 24904
    .local v2, "args2":[Ljava/lang/String;
    array-length v6, v2

    const/4 v9, 0x2

    if-ne v6, v9, :cond_1b2

    .line 24905
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->params:Ljava/util/HashMap;

    aget-object v9, v2, v8

    aget-object v10, v2, v7

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24902
    :cond_1b2
    add-int/lit8 v0, v0, 0x1

    goto :goto_198

    .line 24908
    .end local v2    # "args2":[Ljava/lang/String;
    :cond_1b5
    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v1, v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->attachPath:Ljava/lang/String;

    .line 24912
    .end local v0    # "a":I
    .end local v1    # "args":[Ljava/lang/String;
    :cond_1bc
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_124

    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    if-gez v6, :cond_124

    .line 24913
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->fwd_msg_id:I

    goto/16 :goto_124
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 9
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 24918
    sget v4, Lorg/telegram/tgnet/TLRPC$TL_message;->constructor:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24919
    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->unread:Z

    if-eqz v4, :cond_cd

    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    or-int/lit8 v4, v4, 0x1

    :goto_d
    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 24920
    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->out:Z

    if-eqz v4, :cond_d3

    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    or-int/lit8 v4, v4, 0x2

    :goto_17
    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 24921
    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->mentioned:Z

    if-eqz v4, :cond_d9

    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    or-int/lit8 v4, v4, 0x10

    :goto_21
    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 24922
    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->media_unread:Z

    if-eqz v4, :cond_df

    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    or-int/lit8 v4, v4, 0x20

    :goto_2b
    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 24923
    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->silent:Z

    if-eqz v4, :cond_e5

    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    or-int/lit16 v4, v4, 0x2000

    :goto_35
    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 24924
    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->post:Z

    if-eqz v4, :cond_eb

    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    or-int/lit16 v4, v4, 0x4000

    :goto_3f
    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 24925
    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->with_my_score:Z

    if-eqz v4, :cond_f1

    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    const/high16 v5, 0x40000000    # 2.0f

    or-int/2addr v4, v5

    :goto_4a
    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 24926
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24927
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24928
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_61

    .line 24929
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24931
    :cond_61
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 24932
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_71

    .line 24933
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 24935
    :cond_71
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_7c

    .line 24936
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->via_bot_id:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24938
    :cond_7c
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_87

    .line 24939
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->reply_to_msg_id:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24941
    :cond_87
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->date:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24942
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 24943
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_9c

    .line 24944
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 24946
    :cond_9c
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_a7

    .line 24947
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 24949
    :cond_a7
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_f9

    .line 24950
    const v4, 0x1cb5c415

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24951
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 24952
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24953
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_bd
    if-ge v0, v1, :cond_f9

    .line 24954
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 24953
    add-int/lit8 v0, v0, 0x1

    goto :goto_bd

    .line 24919
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_cd
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v4, v4, -0x2

    goto/16 :goto_d

    .line 24920
    :cond_d3
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v4, v4, -0x3

    goto/16 :goto_17

    .line 24921
    :cond_d9
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v4, v4, -0x11

    goto/16 :goto_21

    .line 24922
    :cond_df
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v4, v4, -0x21

    goto/16 :goto_2b

    .line 24923
    :cond_e5
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v4, v4, -0x2001

    goto/16 :goto_35

    .line 24924
    :cond_eb
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v4, v4, -0x4001

    goto/16 :goto_3f

    .line 24925
    :cond_f1
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    const v5, -0x40000001

    and-int/2addr v4, v5

    goto/16 :goto_4a

    .line 24957
    :cond_f9
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_104

    .line 24958
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->views:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24960
    :cond_104
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    const v5, 0x8000

    and-int/2addr v4, v5

    if-eqz v4, :cond_111

    .line 24961
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->edit_date:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24963
    :cond_111
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->attachPath:Ljava/lang/String;

    .line 24964
    .local v3, "path":Ljava/lang/String;
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    if-gez v4, :cond_17a

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->params:Ljava/util/HashMap;

    if-eqz v4, :cond_17a

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->params:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_17a

    .line 24965
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->params:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_12d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_167

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 24966
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "|=|"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "||"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 24967
    goto :goto_12d

    .line 24968
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "||"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 24970
    :cond_17a
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 24971
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_18c

    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    if-gez v4, :cond_18c

    .line 24972
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->fwd_msg_id:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24974
    :cond_18c
    return-void
.end method
