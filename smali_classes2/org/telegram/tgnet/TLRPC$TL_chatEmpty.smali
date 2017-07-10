.class public Lorg/telegram/tgnet/TLRPC$TL_chatEmpty;
.super Lorg/telegram/tgnet/TLRPC$Chat;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_chatEmpty"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26046
    const v0, -0x645d2800

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_chatEmpty;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26045
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Chat;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 26050
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatEmpty;->id:I

    .line 26052
    const-string v0, "DELETED"

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatEmpty;->title:Ljava/lang/String;

    .line 26053
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 26056
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_chatEmpty;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26057
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatEmpty;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26058
    return-void
.end method
