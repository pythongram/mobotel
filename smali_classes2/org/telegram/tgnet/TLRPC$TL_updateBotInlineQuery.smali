.class public Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineQuery;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateBotInlineQuery"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12801
    const v0, 0x54826690

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineQuery;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12800
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 12805
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineQuery;->flags:I

    .line 12806
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineQuery;->query_id:J

    .line 12807
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineQuery;->user_id:I

    .line 12808
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineQuery;->query:Ljava/lang/String;

    .line 12809
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineQuery;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_28

    .line 12810
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$GeoPoint;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineQuery;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 12812
    :cond_28
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineQuery;->offset:Ljava/lang/String;

    .line 12813
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 12816
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineQuery;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12817
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineQuery;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12818
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineQuery;->query_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 12819
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineQuery;->user_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12820
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineQuery;->query:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 12821
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineQuery;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_24

    .line 12822
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineQuery;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$GeoPoint;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 12824
    :cond_24
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineQuery;->offset:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 12825
    return-void
.end method
