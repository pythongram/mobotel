.class public Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_account_setAccountTTL"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public ttl:Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22319
    const v0, 0x2442485e

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22318
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
    .line 22324
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Bool;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Bool;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 22328
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 22329
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;->ttl:Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 22330
    return-void
.end method
