.class public Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;
.super Lorg/telegram/tgnet/TLRPC$TL_messageService;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messageService_old2"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24798
    const v0, 0x1d86f70e

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24797
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

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

    .line 24802
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    .line 24803
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_58

    move v0, v1

    :goto_f
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->unread:Z

    .line 24804
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5a

    move v0, v1

    :goto_18
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->out:Z

    .line 24805
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5c

    move v0, v1

    :goto_21
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->mentioned:Z

    .line 24806
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5e

    :goto_29
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->media_unread:Z

    .line 24807
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->id:I

    .line 24808
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->from_id:I

    .line 24809
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 24810
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->date:I

    .line 24811
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessageAction;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 24812
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    .line 24813
    return-void

    :cond_58
    move v0, v2

    .line 24803
    goto :goto_f

    :cond_5a
    move v0, v2

    .line 24804
    goto :goto_18

    :cond_5c
    move v0, v2

    .line 24805
    goto :goto_21

    :cond_5e
    move v1, v2

    .line 24806
    goto :goto_29
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 24816
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24817
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->unread:Z

    if-eqz v0, :cond_4c

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_d
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    .line 24818
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->out:Z

    if-eqz v0, :cond_51

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_17
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    .line 24819
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->mentioned:Z

    if-eqz v0, :cond_56

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    or-int/lit8 v0, v0, 0x10

    :goto_21
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    .line 24820
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->media_unread:Z

    if-eqz v0, :cond_5b

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_2b
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    .line 24821
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24822
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24823
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->from_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24824
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 24825
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24826
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$MessageAction;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 24827
    return-void

    .line 24817
    :cond_4c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_d

    .line 24818
    :cond_51
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_17

    .line 24819
    :cond_56
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    and-int/lit8 v0, v0, -0x11

    goto :goto_21

    .line 24820
    :cond_5b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_old2;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto :goto_2b
.end method
