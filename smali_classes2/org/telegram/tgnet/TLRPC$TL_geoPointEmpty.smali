.class public Lorg/telegram/tgnet/TLRPC$TL_geoPointEmpty;
.super Lorg/telegram/tgnet/TLRPC$GeoPoint;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_geoPointEmpty"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2259
    const v0, 0x1117dd5f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_geoPointEmpty;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2258
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$GeoPoint;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 2263
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_geoPointEmpty;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2264
    return-void
.end method
