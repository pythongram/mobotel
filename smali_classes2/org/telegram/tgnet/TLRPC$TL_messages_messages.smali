.class public Lorg/telegram/tgnet/TLRPC$TL_messages_messages;
.super Lorg/telegram/tgnet/TLRPC$messages_Messages;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_messages"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1210
    const v0, -0x738e7179

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1209
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$messages_Messages;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 12
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const v5, 0x1cb5c415

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 1214
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 1215
    .local v2, "magic":I
    if-eq v2, v5, :cond_21

    .line 1216
    if-eqz p2, :cond_32

    .line 1217
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "wrong Vector magic, got %x"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1221
    :cond_21
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 1222
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_26
    if-ge v0, v1, :cond_3b

    .line 1223
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v3

    .line 1224
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$Message;
    if-nez v3, :cond_33

    .line 1259
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_32
    return-void

    .line 1227
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_33
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1222
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 1229
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_3b
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 1230
    if-eq v2, v5, :cond_57

    .line 1231
    if-eqz p2, :cond_32

    .line 1232
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "wrong Vector magic, got %x"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1236
    :cond_57
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 1237
    const/4 v0, 0x0

    :goto_5c
    if-ge v0, v1, :cond_70

    .line 1238
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$Chat;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 1239
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v3, :cond_32

    .line 1242
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1237
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 1244
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_70
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 1245
    if-eq v2, v5, :cond_8c

    .line 1246
    if-eqz p2, :cond_32

    .line 1247
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "wrong Vector magic, got %x"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1251
    :cond_8c
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 1252
    const/4 v0, 0x0

    :goto_91
    if-ge v0, v1, :cond_32

    .line 1253
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 1254
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v3, :cond_32

    .line 1257
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1252
    add-int/lit8 v0, v0, 0x1

    goto :goto_91
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 6
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    const v3, 0x1cb5c415

    .line 1262
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1263
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1264
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1265
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1266
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_15
    if-ge v0, v1, :cond_25

    .line 1267
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$Message;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 1266
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 1269
    :cond_25
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1270
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1271
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1272
    const/4 v0, 0x0

    :goto_32
    if-ge v0, v1, :cond_42

    .line 1273
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$Chat;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 1272
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 1275
    :cond_42
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1276
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1277
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1278
    const/4 v0, 0x0

    :goto_4f
    if-ge v0, v1, :cond_5f

    .line 1279
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$User;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 1278
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 1281
    :cond_5f
    return-void
.end method
