.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_getDhConfig"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public random_length:I

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22035
    const v0, 0x26cf8950

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22034
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
    .line 22041
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_DhConfig;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 22045
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 22046
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->version:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 22047
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->random_length:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 22048
    return-void
.end method
