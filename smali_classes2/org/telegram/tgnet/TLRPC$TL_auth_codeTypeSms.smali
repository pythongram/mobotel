.class public Lorg/telegram/tgnet/TLRPC$TL_auth_codeTypeSms;
.super Lorg/telegram/tgnet/TLRPC$auth_CodeType;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_auth_codeTypeSms"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17835
    const v0, 0x72a3158c

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_auth_codeTypeSms;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17834
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$auth_CodeType;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 17839
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_auth_codeTypeSms;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17840
    return-void
.end method
