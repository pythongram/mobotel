.class public Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channels_createChannel"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public about:Ljava/lang/String;

.field public broadcast:Z

.field public flags:I

.field public megagroup:Z

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23817
    const v0, -0xb76c281

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23816
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .registers 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "constructor"    # I
    .param p3, "exception"    # Z

    .prologue
    .line 23826
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 23830
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23831
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->broadcast:Z

    if-eqz v0, :cond_29

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_d
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->flags:I

    .line 23832
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->megagroup:Z

    if-eqz v0, :cond_2e

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_17
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->flags:I

    .line 23833
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23834
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 23835
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->about:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 23836
    return-void

    .line 23831
    :cond_29
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_d

    .line 23832
    :cond_2e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_17
.end method
