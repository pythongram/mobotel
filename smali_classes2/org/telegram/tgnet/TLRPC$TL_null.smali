.class public Lorg/telegram/tgnet/TLRPC$TL_null;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_null"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 5305
    const v0, 0x56730bcc

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_null;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5304
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_null;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 5309
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_null;->constructor:I

    if-eq v1, p1, :cond_1e

    .line 5310
    if-eqz p2, :cond_1c

    .line 5311
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in TL_null"

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

    .line 5313
    :cond_1c
    const/4 v0, 0x0

    .line 5318
    :goto_1d
    return-object v0

    .line 5316
    :cond_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_null;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_null;-><init>()V

    .line 5317
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_null;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_null;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_1d
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 5322
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_null;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5323
    return-void
.end method
