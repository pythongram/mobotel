.class public Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_payments_clearSavedInfo"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public credentials:Z

.field public flags:I

.field public info:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24367
    const v0, -0x27c28f3f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24366
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
    .line 24374
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Bool;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Bool;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 24378
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24379
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;->credentials:Z

    if-eqz v0, :cond_1f

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_d
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;->flags:I

    .line 24380
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;->info:Z

    if-eqz v0, :cond_24

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_17
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;->flags:I

    .line 24381
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24382
    return-void

    .line 24379
    :cond_1f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_d

    .line 24380
    :cond_24
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_17
.end method
