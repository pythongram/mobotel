.class public Lorg/telegram/tgnet/TLRPC$TL_chatLocated;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_chatLocated"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public chat_id:I

.field public distance:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8669
    const v0, 0x3631cf4c

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_chatLocated;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8668
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatLocated;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 8675
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_chatLocated;->constructor:I

    if-eq v1, p1, :cond_1e

    .line 8676
    if-eqz p2, :cond_1c

    .line 8677
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in TL_chatLocated"

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

    .line 8679
    :cond_1c
    const/4 v0, 0x0

    .line 8684
    :goto_1d
    return-object v0

    .line 8682
    :cond_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatLocated;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatLocated;-><init>()V

    .line 8683
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_chatLocated;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_chatLocated;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_1d
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 8688
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatLocated;->chat_id:I

    .line 8689
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatLocated;->distance:I

    .line 8690
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 8693
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_chatLocated;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8694
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatLocated;->chat_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8695
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatLocated;->distance:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8696
    return-void
.end method
