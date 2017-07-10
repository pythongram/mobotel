.class public Lorg/telegram/tgnet/TLRPC$TL_updates_state;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updates_state"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public date:I

.field public pts:I

.field public qts:I

.field public seq:I

.field public unread_count:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18651
    const v0, -0x5a93d5c2

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18650
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_updates_state;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 18660
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->constructor:I

    if-eq v1, p1, :cond_1e

    .line 18661
    if-eqz p2, :cond_1c

    .line 18662
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in TL_updates_state"

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

    .line 18664
    :cond_1c
    const/4 v0, 0x0

    .line 18669
    :goto_1d
    return-object v0

    .line 18667
    :cond_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updates_state;-><init>()V

    .line 18668
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_updates_state;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_1d
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 18673
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->pts:I

    .line 18674
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->qts:I

    .line 18675
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->date:I

    .line 18676
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->seq:I

    .line 18677
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->unread_count:I

    .line 18678
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 18681
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18682
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->pts:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18683
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->qts:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18684
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18685
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->seq:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18686
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->unread_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18687
    return-void
.end method
