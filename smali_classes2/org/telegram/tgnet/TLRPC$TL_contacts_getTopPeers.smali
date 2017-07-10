.class public Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_contacts_getTopPeers"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public bots_inline:Z

.field public bots_pm:Z

.field public channels:Z

.field public correspondents:Z

.field public flags:I

.field public groups:Z

.field public hash:I

.field public limit:I

.field public offset:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22349
    const v0, -0x2b67d24b

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22348
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
    .line 22362
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$contacts_TopPeers;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$contacts_TopPeers;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 22366
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 22367
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->correspondents:Z

    if-eqz v0, :cond_4e

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_d
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->flags:I

    .line 22368
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->bots_pm:Z

    if-eqz v0, :cond_53

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_17
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->flags:I

    .line 22369
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->bots_inline:Z

    if-eqz v0, :cond_58

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->flags:I

    or-int/lit8 v0, v0, 0x4

    :goto_21
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->flags:I

    .line 22370
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->groups:Z

    if-eqz v0, :cond_5d

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->flags:I

    or-int/lit16 v0, v0, 0x400

    :goto_2b
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->flags:I

    .line 22371
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->channels:Z

    if-eqz v0, :cond_62

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->flags:I

    const v1, 0x8000

    or-int/2addr v0, v1

    :goto_37
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->flags:I

    .line 22372
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 22373
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->offset:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 22374
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 22375
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->hash:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 22376
    return-void

    .line 22367
    :cond_4e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_d

    .line 22368
    :cond_53
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_17

    .line 22369
    :cond_58
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->flags:I

    and-int/lit8 v0, v0, -0x5

    goto :goto_21

    .line 22370
    :cond_5d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->flags:I

    and-int/lit16 v0, v0, -0x401

    goto :goto_2b

    .line 22371
    :cond_62
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->flags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    goto :goto_37
.end method
