.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getMaskStickers;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_getMaskStickers"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public hash:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23339
    const v0, 0x65b8c79f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMaskStickers;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23338
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
    .line 23344
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$messages_AllStickers;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_AllStickers;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 23348
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMaskStickers;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23349
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMaskStickers;->hash:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23350
    return-void
.end method
