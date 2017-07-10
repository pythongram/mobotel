.class public Lorg/telegram/tgnet/TLRPC$Audio;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Audio"
.end annotation


# instance fields
.field public access_hash:J

.field public date:I

.field public dc_id:I

.field public duration:I

.field public id:J

.field public iv:[B

.field public key:[B

.field public mime_type:Ljava/lang/String;

.field public size:I

.field public user_id:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4102
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Audio;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 4115
    const/4 v0, 0x0

    .line 4116
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$Audio;
    sparse-switch p1, :sswitch_data_42

    .line 4133
    :goto_4
    if-nez v0, :cond_3c

    if-eqz p2, :cond_3c

    .line 4134
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in Audio"

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

    .line 4118
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_audioEmpty_layer45;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Audio;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_audioEmpty_layer45;-><init>()V

    .line 4119
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Audio;
    goto :goto_4

    .line 4121
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_audio_layer45;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Audio;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_audio_layer45;-><init>()V

    .line 4122
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Audio;
    goto :goto_4

    .line 4124
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_audio_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Audio;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_audio_old;-><init>()V

    .line 4125
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Audio;
    goto :goto_4

    .line 4127
    :sswitch_30
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_audioEncrypted;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Audio;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_audioEncrypted;-><init>()V

    .line 4128
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Audio;
    goto :goto_4

    .line 4130
    :sswitch_36
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_audio_old2;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Audio;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_audio_old2;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Audio;
    goto :goto_4

    .line 4136
    :cond_3c
    if-eqz v0, :cond_41

    .line 4137
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$Audio;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 4139
    :cond_41
    return-object v0

    .line 4116
    :sswitch_data_42
    .sparse-switch
        -0x38539b6a -> :sswitch_36
        -0x61cafab -> :sswitch_24
        0x427425e7 -> :sswitch_2a
        0x555555f6 -> :sswitch_30
        0x586988d8 -> :sswitch_1e
    .end sparse-switch
.end method
