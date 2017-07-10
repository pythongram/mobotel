.class public Lorg/telegram/tgnet/TLRPC$Chat;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Chat"
.end annotation


# instance fields
.field public access_hash:J

.field public address:Ljava/lang/String;

.field public admin:Z

.field public admins_enabled:Z

.field public broadcast:Z

.field public checked_in:Z

.field public creator:Z

.field public date:I

.field public deactivated:Z

.field public democracy:Z

.field public editor:Z

.field public explicit_content:Z

.field public flags:I

.field public geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

.field public id:I

.field public kicked:Z

.field public left:Z

.field public megagroup:Z

.field public migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

.field public min:Z

.field public moderator:Z

.field public participants_count:I

.field public photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

.field public restricted:Z

.field public restriction_reason:Ljava/lang/String;

.field public signatures:Z

.field public title:Ljava/lang/String;

.field public username:Ljava/lang/String;

.field public venue:Ljava/lang/String;

.field public verified:Z

.field public version:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17115
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Chat;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 17149
    const/4 v0, 0x0

    .line 17150
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$Chat;
    sparse-switch p1, :sswitch_data_6c

    .line 17188
    :goto_4
    if-nez v0, :cond_66

    if-eqz p2, :cond_66

    .line 17189
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in Chat"

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

    .line 17152
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chat_old2;-><init>()V

    .line 17153
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    goto :goto_4

    .line 17155
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatForbidden;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatForbidden;-><init>()V

    .line 17156
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    goto :goto_4

    .line 17158
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;-><init>()V

    .line 17159
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    goto :goto_4

    .line 17161
    :sswitch_30
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channel_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channel_old;-><init>()V

    .line 17162
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    goto :goto_4

    .line 17164
    :sswitch_36
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatForbidden_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatForbidden_old;-><init>()V

    .line 17165
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    goto :goto_4

    .line 17167
    :sswitch_3c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chat;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chat;-><init>()V

    .line 17168
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    goto :goto_4

    .line 17170
    :sswitch_42
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatEmpty;-><init>()V

    .line 17171
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    goto :goto_4

    .line 17173
    :sswitch_48
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channel_layer48;-><init>()V

    .line 17174
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    goto :goto_4

    .line 17176
    :sswitch_4e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_geoChat;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_geoChat;-><init>()V

    .line 17177
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    goto :goto_4

    .line 17179
    :sswitch_54
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer52;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer52;-><init>()V

    .line 17180
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    goto :goto_4

    .line 17182
    :sswitch_5a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channel;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channel;-><init>()V

    .line 17183
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    goto :goto_4

    .line 17185
    :sswitch_60
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chat_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chat_old;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Chat;
    goto :goto_4

    .line 17191
    :cond_66
    if-eqz v0, :cond_6b

    .line 17192
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$Chat;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 17194
    :cond_6b
    return-object v0

    .line 17150
    :sswitch_data_6c
    .sparse-switch
        -0x7ac887b1 -> :sswitch_2a
        -0x645d2800 -> :sswitch_42
        -0x5eb235ae -> :sswitch_5a
        -0x26e322ac -> :sswitch_3c
        -0x4f333bf -> :sswitch_36
        0x7328bdb -> :sswitch_24
        0x2d85832c -> :sswitch_54
        0x4b1b7506 -> :sswitch_48
        0x678e9587 -> :sswitch_30
        0x6e9c9bc7 -> :sswitch_60
        0x7312bc48 -> :sswitch_1e
        0x75eaea5a -> :sswitch_4e
    .end sparse-switch
.end method
