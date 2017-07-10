.class public Lorg/telegram/tgnet/TLRPC$TL_messages_dialogsSlice;
.super Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_dialogsSlice"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20157
    const v0, 0x71e094f3

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogsSlice;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20156
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;-><init>()V

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

    .line 20161
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogsSlice;->count:I

    .line 20162
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 20163
    .local v2, "magic":I
    if-eq v2, v5, :cond_27

    .line 20164
    if-eqz p2, :cond_38

    .line 20165
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

    .line 20169
    :cond_27
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 20170
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2c
    if-ge v0, v1, :cond_41

    .line 20171
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$TL_dialog;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_dialog;

    move-result-object v3

    .line 20172
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-nez v3, :cond_39

    .line 20222
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_38
    return-void

    .line 20175
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_39
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogsSlice;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20170
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 20177
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_41
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 20178
    if-eq v2, v5, :cond_5d

    .line 20179
    if-eqz p2, :cond_38

    .line 20180
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

    .line 20184
    :cond_5d
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 20185
    const/4 v0, 0x0

    :goto_62
    if-ge v0, v1, :cond_76

    .line 20186
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v3

    .line 20187
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v3, :cond_38

    .line 20190
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogsSlice;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20185
    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    .line 20192
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_76
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 20193
    if-eq v2, v5, :cond_92

    .line 20194
    if-eqz p2, :cond_38

    .line 20195
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

    .line 20199
    :cond_92
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 20200
    const/4 v0, 0x0

    :goto_97
    if-ge v0, v1, :cond_ab

    .line 20201
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$Chat;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 20202
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v3, :cond_38

    .line 20205
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogsSlice;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20200
    add-int/lit8 v0, v0, 0x1

    goto :goto_97

    .line 20207
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_ab
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 20208
    if-eq v2, v5, :cond_c7

    .line 20209
    if-eqz p2, :cond_38

    .line 20210
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

    .line 20214
    :cond_c7
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 20215
    const/4 v0, 0x0

    :goto_cc
    if-ge v0, v1, :cond_38

    .line 20216
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 20217
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v3, :cond_38

    .line 20220
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogsSlice;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20215
    add-int/lit8 v0, v0, 0x1

    goto :goto_cc
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 6
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    const v3, 0x1cb5c415

    .line 20225
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogsSlice;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20226
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogsSlice;->count:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20227
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20228
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogsSlice;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 20229
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20230
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1a
    if-ge v0, v1, :cond_2a

    .line 20231
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogsSlice;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_dialog;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 20230
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 20233
    :cond_2a
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20234
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogsSlice;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 20235
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20236
    const/4 v0, 0x0

    :goto_37
    if-ge v0, v1, :cond_47

    .line 20237
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogsSlice;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$Message;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 20236
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 20239
    :cond_47
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20240
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogsSlice;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 20241
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20242
    const/4 v0, 0x0

    :goto_54
    if-ge v0, v1, :cond_64

    .line 20243
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogsSlice;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$Chat;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 20242
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    .line 20245
    :cond_64
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20246
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogsSlice;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 20247
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20248
    const/4 v0, 0x0

    :goto_71
    if-ge v0, v1, :cond_81

    .line 20249
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogsSlice;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$User;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 20248
    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    .line 20251
    :cond_81
    return-void
.end method
