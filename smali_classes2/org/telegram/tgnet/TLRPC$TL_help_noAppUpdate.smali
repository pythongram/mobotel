.class public Lorg/telegram/tgnet/TLRPC$TL_help_noAppUpdate;
.super Lorg/telegram/tgnet/TLRPC$help_AppUpdate;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_help_noAppUpdate"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2498
    const v0, -0x3ba59aca

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_help_noAppUpdate;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2497
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$help_AppUpdate;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 2502
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_help_noAppUpdate;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2503
    return-void
.end method
