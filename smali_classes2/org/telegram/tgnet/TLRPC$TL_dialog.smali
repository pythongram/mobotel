.class public Lorg/telegram/tgnet/TLRPC$TL_dialog;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_dialog"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public draft:Lorg/telegram/tgnet/TLRPC$DraftMessage;

.field public flags:I

.field public id:J

.field public last_message_date:I

.field public last_read:I

.field public notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

.field public peer:Lorg/telegram/tgnet/TLRPC$Peer;

.field public pinned:Z

.field public pinnedNum:I

.field public pts:I

.field public read_inbox_max_id:I

.field public read_outbox_max_id:I

.field public top_message:I

.field public unread_count:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25969
    const v0, 0x66ffba14

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25968
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 25987
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->constructor:I

    if-eq v1, p1, :cond_1e

    .line 25988
    if-eqz p2, :cond_1c

    .line 25989
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in TL_dialog"

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

    .line 25991
    :cond_1c
    const/4 v0, 0x0

    .line 25996
    :goto_1d
    return-object v0

    .line 25994
    :cond_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 25995
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_dialog;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_1d
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 26000
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->flags:I

    .line 26001
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_58

    const/4 v0, 0x1

    :goto_d
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    .line 26002
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 26003
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    .line 26004
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    .line 26005
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    .line 26006
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    .line 26007
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 26008
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_47

    .line 26009
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pts:I

    .line 26011
    :cond_47
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_57

    .line 26012
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$DraftMessage;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$DraftMessage;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->draft:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    .line 26014
    :cond_57
    return-void

    .line 26001
    :cond_58
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 26017
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26018
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-eqz v0, :cond_49

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->flags:I

    or-int/lit8 v0, v0, 0x4

    :goto_d
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->flags:I

    .line 26019
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26020
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 26021
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26022
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26023
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26024
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26025
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 26026
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3d

    .line 26027
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pts:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26029
    :cond_3d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_48

    .line 26030
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->draft:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$DraftMessage;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 26032
    :cond_48
    return-void

    .line 26018
    :cond_49
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->flags:I

    and-int/lit8 v0, v0, -0x5

    goto :goto_d
.end method
