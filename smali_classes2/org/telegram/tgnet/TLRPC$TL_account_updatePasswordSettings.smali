.class public Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_account_updatePasswordSettings"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public current_password_hash:[B

.field public new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22540
    const v0, -0x583b47a

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22539
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
    .line 22546
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Bool;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Bool;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 22550
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 22551
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->current_password_hash:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 22552
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 22553
    return-void
.end method
