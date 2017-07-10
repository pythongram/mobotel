.class public Lorg/telegram/tgnet/TLRPC$geochats_Messages;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "geochats_Messages"
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

.field public messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$GeoChatMessage;",
            ">;"
        }
    .end annotation
.end field

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
    .line 11321
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 11323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$geochats_Messages;->messages:Ljava/util/ArrayList;

    .line 11324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$geochats_Messages;->chats:Ljava/util/ArrayList;

    .line 11325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$geochats_Messages;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$geochats_Messages;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 11328
    const/4 v0, 0x0

    .line 11329
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$geochats_Messages;
    sparse-switch p1, :sswitch_data_30

    .line 11337
    :goto_4
    if-nez v0, :cond_2a

    if-eqz p2, :cond_2a

    .line 11338
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in geochats_Messages"

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

    .line 11331
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_geochats_messagesSlice;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$geochats_Messages;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_geochats_messagesSlice;-><init>()V

    .line 11332
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$geochats_Messages;
    goto :goto_4

    .line 11334
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_geochats_messages;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$geochats_Messages;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_geochats_messages;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$geochats_Messages;
    goto :goto_4

    .line 11340
    :cond_2a
    if-eqz v0, :cond_2f

    .line 11341
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$geochats_Messages;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 11343
    :cond_2f
    return-object v0

    .line 11329
    :sswitch_data_30
    .sparse-switch
        -0x43a79c18 -> :sswitch_1e
        -0x2ead924f -> :sswitch_24
    .end sparse-switch
.end method
