.class public Lorg/telegram/tgnet/TLRPC$TL_messages_setGameScore;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_setGameScore"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public edit_message:Z

.field public flags:I

.field public force:Z

.field public id:I

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public score:I

.field public user_id:Lorg/telegram/tgnet/TLRPC$InputUser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23287
    const v0, -0x71071340

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_setGameScore;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23286
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .registers 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "constructor"    # I
    .param p3, "exception"    # Z

    .prologue
    .line 23298
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 23302
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_setGameScore;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23303
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setGameScore;->edit_message:Z

    if-eqz v0, :cond_33

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setGameScore;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_d
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setGameScore;->flags:I

    .line 23304
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setGameScore;->force:Z

    if-eqz v0, :cond_38

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setGameScore;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_17
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setGameScore;->flags:I

    .line 23305
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setGameScore;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23306
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setGameScore;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$InputPeer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 23307
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setGameScore;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23308
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setGameScore;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$InputUser;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 23309
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setGameScore;->score:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23310
    return-void

    .line 23303
    :cond_33
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setGameScore;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_d

    .line 23304
    :cond_38
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setGameScore;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_17
.end method
