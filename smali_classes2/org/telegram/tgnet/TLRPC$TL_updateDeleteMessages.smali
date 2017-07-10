.class public Lorg/telegram/tgnet/TLRPC$TL_updateDeleteMessages;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateDeleteMessages"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12154
    const v0, -0x5df24f1b

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteMessages;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12153
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 11
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 12158
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 12159
    .local v2, "magic":I
    const v3, 0x1cb5c415

    if-eq v2, v3, :cond_21

    .line 12160
    if-eqz p2, :cond_44

    .line 12161
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "wrong Vector magic, got %x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 12165
    :cond_21
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 12166
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_26
    if-ge v0, v1, :cond_38

    .line 12167
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12166
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 12169
    :cond_38
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v3

    iput v3, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteMessages;->pts:I

    .line 12170
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v3

    iput v3, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteMessages;->pts_count:I

    .line 12171
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_44
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 12174
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteMessages;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12175
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12176
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 12177
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12178
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_15
    if-ge v0, v1, :cond_29

    .line 12179
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12178
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 12181
    :cond_29
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteMessages;->pts:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12182
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteMessages;->pts_count:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 12183
    return-void
.end method
