.class public Lorg/telegram/tgnet/TLRPC$TL_channels_reportSpam;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channels_reportSpam"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

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

.field public user_id:Lorg/telegram/tgnet/TLRPC$InputUser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23698
    const v0, -0x1f787f0

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_channels_reportSpam;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23697
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 23702
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_reportSpam;->id:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .registers 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "constructor"    # I
    .param p3, "exception"    # Z

    .prologue
    .line 23705
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Bool;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Bool;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 23709
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_channels_reportSpam;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23710
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_reportSpam;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$InputChannel;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 23711
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_reportSpam;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$InputUser;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 23712
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23713
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_reportSpam;->id:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 23714
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23715
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1f
    if-ge v0, v1, :cond_33

    .line 23716
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_reportSpam;->id:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 23715
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 23718
    :cond_33
    return-void
.end method
