.class public Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_forwardMessages"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public background:Z

.field public flags:I

.field public from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public id:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public random_id:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public silent:Z

.field public to_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public with_my_score:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21316
    const v0, 0x708e0195

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21315
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 21323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->id:Ljava/util/ArrayList;

    .line 21324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->random_id:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .registers 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "constructor"    # I
    .param p3, "exception"    # Z

    .prologue
    .line 21328
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 6
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    const v3, 0x1cb5c415

    .line 21332
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21333
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->silent:Z

    if-eqz v2, :cond_51

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    or-int/lit8 v2, v2, 0x20

    :goto_10
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    .line 21334
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->background:Z

    if-eqz v2, :cond_56

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    or-int/lit8 v2, v2, 0x40

    :goto_1a
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    .line 21335
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->with_my_score:Z

    if-eqz v2, :cond_5b

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    or-int/lit16 v2, v2, 0x100

    :goto_24
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    .line 21336
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21337
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$InputPeer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 21338
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21339
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->id:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 21340
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21341
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_3d
    if-ge v0, v1, :cond_60

    .line 21342
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->id:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21341
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 21333
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_51
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    and-int/lit8 v2, v2, -0x21

    goto :goto_10

    .line 21334
    :cond_56
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    and-int/lit8 v2, v2, -0x41

    goto :goto_1a

    .line 21335
    :cond_5b
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    and-int/lit16 v2, v2, -0x101

    goto :goto_24

    .line 21344
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    :cond_60
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21345
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->random_id:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 21346
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21347
    const/4 v0, 0x0

    :goto_6d
    if-ge v0, v1, :cond_81

    .line 21348
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->random_id:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 21347
    add-int/lit8 v0, v0, 0x1

    goto :goto_6d

    .line 21350
    :cond_81
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->to_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$InputPeer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 21351
    return-void
.end method
