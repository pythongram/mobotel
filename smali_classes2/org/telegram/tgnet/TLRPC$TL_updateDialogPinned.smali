.class public Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateDialogPinned"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public peer:Lorg/telegram/tgnet/TLRPC$Peer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12341
    const v0, -0x28ee5d34

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12340
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 12346
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;->flags:I

    .line 12347
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_d
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;->pinned:Z

    .line 12348
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 12349
    return-void

    .line 12347
    :cond_1a
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 12352
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12353
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;->pinned:Z

    if-eqz v0, :cond_1a

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_d
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;->flags:I

    .line 12354
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12355
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 12356
    return-void

    .line 12353
    :cond_1a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDialogPinned;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_d
.end method
