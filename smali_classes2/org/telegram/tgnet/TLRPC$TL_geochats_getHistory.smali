.class public Lorg/telegram/tgnet/TLRPC$TL_geochats_getHistory;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_geochats_getHistory"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public limit:I

.field public max_id:I

.field public offset:I

.field public peer:Lorg/telegram/tgnet/TLRPC$TL_inputGeoChat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21938
    const v0, -0x4ac08598

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_geochats_getHistory;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21937
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
    .line 21946
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$geochats_Messages;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$geochats_Messages;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 21950
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_geochats_getHistory;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21951
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_getHistory;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputGeoChat;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoChat;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 21952
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_getHistory;->offset:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21953
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_getHistory;->max_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21954
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_getHistory;->limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21955
    return-void
.end method
