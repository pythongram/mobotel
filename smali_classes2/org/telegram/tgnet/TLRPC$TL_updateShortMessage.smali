.class public Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;
.super Lorg/telegram/tgnet/TLRPC$Updates;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateShortMessage"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18877
    const v0, -0x6eb040ef

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18876
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Updates;-><init>()V

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

    .line 18881
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->flags:I

    .line 18882
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_9d

    move v4, v5

    :goto_f
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->out:Z

    .line 18883
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_a0

    move v4, v5

    :goto_18
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->mentioned:Z

    .line 18884
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->flags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_a3

    move v4, v5

    :goto_21
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->media_unread:Z

    .line 18885
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->flags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_a6

    move v4, v5

    :goto_2a
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->silent:Z

    .line 18886
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->id:I

    .line 18887
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->user_id:I

    .line 18888
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->message:Ljava/lang/String;

    .line 18889
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->pts:I

    .line 18890
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->pts_count:I

    .line 18891
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->date:I

    .line 18892
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_60

    .line 18893
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    .line 18895
    :cond_60
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->flags:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_6c

    .line 18896
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->via_bot_id:I

    .line 18898
    :cond_6c
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_78

    .line 18899
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->reply_to_msg_id:I

    .line 18901
    :cond_78
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_b9

    .line 18902
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 18903
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_a8

    .line 18904
    if-eqz p2, :cond_b9

    .line 18905
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
    :cond_9d
    move v4, v6

    .line 18882
    goto/16 :goto_f

    :cond_a0
    move v4, v6

    .line 18883
    goto/16 :goto_18

    :cond_a3
    move v4, v6

    .line 18884
    goto/16 :goto_21

    :cond_a6
    move v4, v6

    .line 18885
    goto :goto_2a

    .line 18909
    .restart local v2    # "magic":I
    :cond_a8
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 18910
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_ad
    if-ge v0, v1, :cond_b9

    .line 18911
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v3

    .line 18912
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    if-nez v3, :cond_ba

    .line 18918
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v2    # "magic":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_b9
    return-void

    .line 18915
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v2    # "magic":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_ba
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18910
    add-int/lit8 v0, v0, 0x1

    goto :goto_ad
.end method
