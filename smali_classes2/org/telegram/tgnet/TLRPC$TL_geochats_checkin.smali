.class public Lorg/telegram/tgnet/TLRPC$TL_geochats_checkin;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_geochats_checkin"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public peer:Lorg/telegram/tgnet/TLRPC$TL_inputGeoChat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21843
    const v0, 0x55b3e8fb

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_geochats_checkin;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21842
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
    .line 21848
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_geochats_statedMessage;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_geochats_statedMessage;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 21852
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_geochats_checkin;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21853
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_checkin;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputGeoChat;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoChat;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 21854
    return-void
.end method
