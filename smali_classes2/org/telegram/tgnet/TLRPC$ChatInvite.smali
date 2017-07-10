.class public Lorg/telegram/tgnet/TLRPC$ChatInvite;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChatInvite"
.end annotation


# instance fields
.field public broadcast:Z

.field public channel:Z

.field public chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field public flags:I

.field public isPublic:Z

.field public megagroup:Z

.field public participants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field public participants_count:I

.field public photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 2352
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 2361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatInvite;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 2365
    const/4 v0, 0x0

    .line 2366
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$ChatInvite;
    sparse-switch p1, :sswitch_data_30

    .line 2374
    :goto_4
    if-nez v0, :cond_2a

    if-eqz p2, :cond_2a

    .line 2375
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in ChatInvite"

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

    .line 2368
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChatInvite;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;-><init>()V

    .line 2369
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChatInvite;
    goto :goto_4

    .line 2371
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteAlready;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChatInvite;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatInviteAlready;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ChatInvite;
    goto :goto_4

    .line 2377
    :cond_2a
    if-eqz v0, :cond_2f

    .line 2378
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$ChatInvite;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 2380
    :cond_2f
    return-object v0

    .line 2366
    :sswitch_data_30
    .sparse-switch
        -0x248b0aa8 -> :sswitch_1e
        0x5a686d7c -> :sswitch_24
    .end sparse-switch
.end method
