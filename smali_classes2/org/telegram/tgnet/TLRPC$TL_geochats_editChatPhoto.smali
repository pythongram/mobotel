.class public Lorg/telegram/tgnet/TLRPC$TL_geochats_editChatPhoto;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_geochats_editChatPhoto"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public peer:Lorg/telegram/tgnet/TLRPC$TL_inputGeoChat;

.field public photo:Lorg/telegram/tgnet/TLRPC$InputChatPhoto;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21892
    const v0, 0x35d81a95

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_geochats_editChatPhoto;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21891
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
    .line 21898
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_geochats_statedMessage;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_geochats_statedMessage;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 21902
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_geochats_editChatPhoto;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21903
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_editChatPhoto;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputGeoChat;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoChat;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 21904
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_geochats_editChatPhoto;->photo:Lorg/telegram/tgnet/TLRPC$InputChatPhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$InputChatPhoto;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 21905
    return-void
.end method
