.class public Lorg/telegram/tgnet/TLRPC$TL_textBold;
.super Lorg/telegram/tgnet/TLRPC$RichText;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_textBold"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public text:Lorg/telegram/tgnet/TLRPC$RichText;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 986
    const v0, 0x6724abc4

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_textBold;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 985
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$RichText;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 991
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$RichText;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textBold;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 992
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 995
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_textBold;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 996
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textBold;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$RichText;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 997
    return-void
.end method
