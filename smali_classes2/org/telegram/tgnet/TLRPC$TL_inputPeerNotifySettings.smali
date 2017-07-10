.class public Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputPeerNotifySettings"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public flags:I

.field public mute_until:I

.field public show_previews:Z

.field public silent:Z

.field public sound:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 5265
    const v0, 0x38935eb2

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5264
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 5274
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->constructor:I

    if-eq v1, p1, :cond_1e

    .line 5275
    if-eqz p2, :cond_1c

    .line 5276
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in TL_inputPeerNotifySettings"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5278
    :cond_1c
    const/4 v0, 0x0

    .line 5283
    :goto_1d
    return-object v0

    .line 5281
    :cond_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;-><init>()V

    .line 5282
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_1d
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 6
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5287
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    .line 5288
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_26

    move v0, v1

    :goto_f
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->show_previews:Z

    .line 5289
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_28

    :goto_17
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->silent:Z

    .line 5290
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->mute_until:I

    .line 5291
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->sound:Ljava/lang/String;

    .line 5292
    return-void

    :cond_26
    move v0, v2

    .line 5288
    goto :goto_f

    :cond_28
    move v1, v2

    .line 5289
    goto :goto_17
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 5295
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5296
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->show_previews:Z

    if-eqz v0, :cond_29

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_d
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    .line 5297
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->silent:Z

    if-eqz v0, :cond_2e

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_17
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    .line 5298
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5299
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->mute_until:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5300
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->sound:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 5301
    return-void

    .line 5296
    :cond_29
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_d

    .line 5297
    :cond_2e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_17
.end method
