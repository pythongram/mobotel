.class public Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaWebPage;
.super Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_decryptedMessageMediaWebPage"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16670
    const v0, -0x1afaee28

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaWebPage;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16669
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 16674
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaWebPage;->url:Ljava/lang/String;

    .line 16675
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 16678
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaWebPage;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 16679
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaWebPage;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 16680
    return-void
.end method
