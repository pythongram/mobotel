.class public Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonDisconnect;
.super Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_phoneCallDiscardReasonDisconnect"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6624
    const v0, -0x1f6a3e60

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonDisconnect;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6623
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 6628
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonDisconnect;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6629
    return-void
.end method
