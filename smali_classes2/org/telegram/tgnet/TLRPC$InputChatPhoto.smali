.class public Lorg/telegram/tgnet/TLRPC$InputChatPhoto;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputChatPhoto"
.end annotation


# instance fields
.field public file:Lorg/telegram/tgnet/TLRPC$InputFile;

.field public id:Lorg/telegram/tgnet/TLRPC$InputPhoto;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19265
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputChatPhoto;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 19270
    const/4 v0, 0x0

    .line 19271
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$InputChatPhoto;
    sparse-switch p1, :sswitch_data_36

    .line 19282
    :goto_4
    if-nez v0, :cond_30

    if-eqz p2, :cond_30

    .line 19283
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in InputChatPhoto"

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

    .line 19273
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputChatPhoto;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputChatPhoto;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputChatPhoto;-><init>()V

    .line 19274
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputChatPhoto;
    goto :goto_4

    .line 19276
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputChatPhotoEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputChatPhoto;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputChatPhotoEmpty;-><init>()V

    .line 19277
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputChatPhoto;
    goto :goto_4

    .line 19279
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputChatPhoto;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputChatUploadedPhoto;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$InputChatPhoto;
    goto :goto_4

    .line 19285
    :cond_30
    if-eqz v0, :cond_35

    .line 19286
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$InputChatPhoto;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 19288
    :cond_35
    return-object v0

    .line 19271
    :sswitch_data_36
    .sparse-switch
        -0x76ac52c9 -> :sswitch_1e
        -0x6d83aa4c -> :sswitch_2a
        0x1ca48f57 -> :sswitch_24
    .end sparse-switch
.end method
