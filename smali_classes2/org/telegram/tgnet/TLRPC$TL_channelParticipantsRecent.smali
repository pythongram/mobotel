.class public Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;
.super Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channelParticipantsRecent"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7907
    const v0, -0x21c0c387

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7906
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 7911
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7912
    return-void
.end method
