.class public Lorg/telegram/tgnet/TLRPC$messages_Messages;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "messages_Messages"
.end annotation


# instance fields
.field public chats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;"
        }
    .end annotation
.end field

.field public count:I

.field public flags:I

.field public messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;"
        }
    .end annotation
.end field

.field public pts:I

.field public users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1178
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 1179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    .line 1180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    .line 1181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_Messages;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 1187
    const/4 v0, 0x0

    .line 1188
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    sparse-switch p1, :sswitch_data_36

    .line 1199
    :goto_4
    if-nez v0, :cond_30

    if-eqz p2, :cond_30

    .line 1200
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in messages_Messages"

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

    .line 1190
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;-><init>()V

    .line 1191
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    goto :goto_4

    .line 1193
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_channelMessages;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_channelMessages;-><init>()V

    .line 1194
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    goto :goto_4

    .line 1196
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    goto :goto_4

    .line 1202
    :cond_30
    if-eqz v0, :cond_35

    .line 1203
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$messages_Messages;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 1205
    :cond_35
    return-object v0

    .line 1188
    :sswitch_data_36
    .sparse-switch
        -0x738e7179 -> :sswitch_1e
        -0x66d9d1c9 -> :sswitch_24
        0xb446ae3 -> :sswitch_2a
    .end sparse-switch
.end method
