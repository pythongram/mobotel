.class public Lorg/telegram/tgnet/TLRPC$TL_messageEntityBotCommand;
.super Lorg/telegram/tgnet/TLRPC$MessageEntity;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messageEntityBotCommand"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14025
    const v0, 0x6cef8ac7

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBotCommand;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14024
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$MessageEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 14029
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBotCommand;->offset:I

    .line 14030
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBotCommand;->length:I

    .line 14031
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 14034
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBotCommand;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14035
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBotCommand;->offset:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14036
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBotCommand;->length:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 14037
    return-void
.end method
