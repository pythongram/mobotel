.class public Lorg/telegram/tgnet/TLRPC$TL_channelParticipantModerator;
.super Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channelParticipantModerator"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16019
    const v0, -0x6efa8011

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantModerator;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16018
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 16023
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantModerator;->user_id:I

    .line 16024
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantModerator;->inviter_id:I

    .line 16025
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantModerator;->date:I

    .line 16026
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 16029
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantModerator;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16030
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantModerator;->user_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16031
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantModerator;->inviter_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16032
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantModerator;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16033
    return-void
.end method
