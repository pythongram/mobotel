.class public Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_affectedMessages"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public pts:I

.field public pts_count:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1732
    const v0, -0x7b2e6e7b

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1731
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 1738
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;->constructor:I

    if-eq v1, p1, :cond_1e

    .line 1739
    if-eqz p2, :cond_1c

    .line 1740
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in TL_messages_affectedMessages"

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

    .line 1742
    :cond_1c
    const/4 v0, 0x0

    .line 1747
    :goto_1d
    return-object v0

    .line 1745
    :cond_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;-><init>()V

    .line 1746
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_1d
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 1751
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;->pts:I

    .line 1752
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;->pts_count:I

    .line 1753
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 1756
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1757
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;->pts:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1758
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;->pts_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1759
    return-void
.end method
