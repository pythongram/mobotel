.class public Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channels_editPhoto"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

.field public photo:Lorg/telegram/tgnet/TLRPC$InputChatPhoto;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23893
    const v0, -0xed1a837

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23892
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
    .line 23899
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 23903
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23904
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$InputChannel;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 23905
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_editPhoto;->photo:Lorg/telegram/tgnet/TLRPC$InputChatPhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$InputChatPhoto;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 23906
    return-void
.end method
