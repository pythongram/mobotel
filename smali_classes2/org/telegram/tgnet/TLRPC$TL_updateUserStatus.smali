.class public Lorg/telegram/tgnet/TLRPC$TL_updateUserStatus;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateUserStatus"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12454
    const v0, 0x1bfbd823

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserStatus;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12453
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 12458
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateUserStatus;->user_id:I

    .line 12459
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$UserStatus;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateUserStatus;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    .line 12460
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 12463
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserStatus;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12464
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateUserStatus;->user_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12465
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateUserStatus;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$UserStatus;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 12466
    return-void
.end method
