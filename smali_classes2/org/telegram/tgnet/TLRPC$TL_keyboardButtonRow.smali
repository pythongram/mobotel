.class public Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_keyboardButtonRow"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public buttons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$KeyboardButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 5978
    const v0, 0x77608b83

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 5977
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 5980
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 5983
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->constructor:I

    if-eq v1, p1, :cond_1e

    .line 5984
    if-eqz p2, :cond_1c

    .line 5985
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in TL_keyboardButtonRow"

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

    .line 5987
    :cond_1c
    const/4 v0, 0x0

    .line 5992
    :goto_1d
    return-object v0

    .line 5990
    :cond_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;-><init>()V

    .line 5991
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_1d
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 12
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 5996
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 5997
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_21

    .line 5998
    if-eqz p2, :cond_32

    .line 5999
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "wrong Vector magic, got %x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6003
    :cond_21
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 6004
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_26
    if-ge v0, v1, :cond_32

    .line 6005
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    move-result-object v3

    .line 6006
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    if-nez v3, :cond_33

    .line 6011
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    :cond_32
    return-void

    .line 6009
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    :cond_33
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6004
    add-int/lit8 v0, v0, 0x1

    goto :goto_26
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 6014
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6015
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6016
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6017
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 6018
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_15
    if-ge v0, v1, :cond_25

    .line 6019
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 6018
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 6021
    :cond_25
    return-void
.end method
