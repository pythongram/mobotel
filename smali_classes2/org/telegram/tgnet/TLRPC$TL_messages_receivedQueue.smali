.class public Lorg/telegram/tgnet/TLRPC$TL_messages_receivedQueue;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_receivedQueue"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public max_qts:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22139
    const v0, 0x55a5bb66

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_receivedQueue;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22138
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .registers 10
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "constructor"    # I
    .param p3, "exception"    # Z

    .prologue
    .line 22144
    new-instance v2, Lorg/telegram/tgnet/TLRPC$Vector;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$Vector;-><init>()V

    .line 22145
    .local v2, "vector":Lorg/telegram/tgnet/TLRPC$Vector;
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 22146
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_a
    if-ge v0, v1, :cond_1c

    .line 22147
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22146
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 22149
    :cond_1c
    return-object v2
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 22153
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_receivedQueue;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 22154
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_receivedQueue;->max_qts:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 22155
    return-void
.end method
