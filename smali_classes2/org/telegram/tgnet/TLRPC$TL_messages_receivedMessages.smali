.class public Lorg/telegram/tgnet/TLRPC$TL_messages_receivedMessages;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_receivedMessages"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public max_id:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21194
    const v0, 0x5a954c0

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_receivedMessages;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21193
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .registers 9
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "constructor"    # I
    .param p3, "exception"    # Z

    .prologue
    .line 21199
    new-instance v3, Lorg/telegram/tgnet/TLRPC$Vector;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$Vector;-><init>()V

    .line 21200
    .local v3, "vector":Lorg/telegram/tgnet/TLRPC$Vector;
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 21201
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_a
    if-ge v0, v2, :cond_16

    .line 21202
    invoke-virtual {p1, p3}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p3}, Lorg/telegram/tgnet/TLRPC$TL_receivedNotifyMessage;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_receivedNotifyMessage;

    move-result-object v1

    .line 21203
    .local v1, "object":Lorg/telegram/tgnet/TLRPC$TL_receivedNotifyMessage;
    if-nez v1, :cond_17

    .line 21208
    .end local v1    # "object":Lorg/telegram/tgnet/TLRPC$TL_receivedNotifyMessage;
    :cond_16
    return-object v3

    .line 21206
    .restart local v1    # "object":Lorg/telegram/tgnet/TLRPC$TL_receivedNotifyMessage;
    :cond_17
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21201
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 21212
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_receivedMessages;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21213
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_receivedMessages;->max_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21214
    return-void
.end method
