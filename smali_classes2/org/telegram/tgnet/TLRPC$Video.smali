.class public Lorg/telegram/tgnet/TLRPC$Video;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Video"
.end annotation


# instance fields
.field public access_hash:J

.field public caption:Ljava/lang/String;

.field public date:I

.field public dc_id:I

.field public duration:I

.field public h:I

.field public id:J

.field public iv:[B

.field public key:[B

.field public mime_type:Ljava/lang/String;

.field public size:I

.field public thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

.field public user_id:I

.field public w:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9044
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Video;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 9061
    const/4 v0, 0x0

    .line 9062
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$Video;
    sparse-switch p1, :sswitch_data_48

    .line 9082
    :goto_4
    if-nez v0, :cond_42

    if-eqz p2, :cond_42

    .line 9083
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in Video"

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

    .line 9064
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_video_old3;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Video;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_video_old3;-><init>()V

    .line 9065
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Video;
    goto :goto_4

    .line 9067
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_video_layer45;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Video;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_video_layer45;-><init>()V

    .line 9068
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Video;
    goto :goto_4

    .line 9070
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_videoEncrypted;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Video;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_videoEncrypted;-><init>()V

    .line 9071
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Video;
    goto :goto_4

    .line 9073
    :sswitch_30
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_video_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Video;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_video_old;-><init>()V

    .line 9074
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Video;
    goto :goto_4

    .line 9076
    :sswitch_36
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_video_old2;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Video;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_video_old2;-><init>()V

    .line 9077
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Video;
    goto :goto_4

    .line 9079
    :sswitch_3c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_videoEmpty_layer45;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Video;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_videoEmpty_layer45;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Video;
    goto :goto_4

    .line 9085
    :cond_42
    if-eqz v0, :cond_47

    .line 9086
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$Video;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 9088
    :cond_47
    return-object v0

    .line 9062
    :sswitch_data_48
    .sparse-switch
        -0x3ef9a758 -> :sswitch_3c
        -0x1160b5b3 -> :sswitch_1e
        -0x8d7782d -> :sswitch_24
        0x388fa391 -> :sswitch_36
        0x55555553 -> :sswitch_2a
        0x5a04a49f -> :sswitch_30
    .end sparse-switch
.end method
