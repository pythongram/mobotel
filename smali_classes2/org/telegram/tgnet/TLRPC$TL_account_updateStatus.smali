.class public Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_account_updateStatus"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public offline:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20649
    const v0, 0x6628562c

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20648
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
    .line 20654
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Bool;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Bool;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 20658
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20659
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_updateStatus;->offline:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 20660
    return-void
.end method
