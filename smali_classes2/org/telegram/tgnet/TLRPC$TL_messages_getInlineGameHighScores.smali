.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineGameHighScores;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_getInlineGameHighScores"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public id:Lorg/telegram/tgnet/TLRPC$TL_inputBotInlineMessageID;

.field public user_id:Lorg/telegram/tgnet/TLRPC$InputUser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23373
    const v0, 0xf635e1b

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineGameHighScores;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23372
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
    .line 23379
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_highScores;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_highScores;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 23383
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineGameHighScores;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23384
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineGameHighScores;->id:Lorg/telegram/tgnet/TLRPC$TL_inputBotInlineMessageID;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_inputBotInlineMessageID;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 23385
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineGameHighScores;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$InputUser;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 23386
    return-void
.end method
