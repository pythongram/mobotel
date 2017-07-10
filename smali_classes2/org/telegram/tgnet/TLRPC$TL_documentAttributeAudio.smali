.class public Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
.super Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_documentAttributeAudio"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 827
    const v0, -0x67ad063a

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 826
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 831
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    .line 832
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_3a

    const/4 v0, 0x1

    :goto_d
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->voice:Z

    .line 833
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->duration:I

    .line 834
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_21

    .line 835
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->title:Ljava/lang/String;

    .line 837
    :cond_21
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2d

    .line 838
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->performer:Ljava/lang/String;

    .line 840
    :cond_2d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_39

    .line 841
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->waveform:[B

    .line 843
    :cond_39
    return-void

    .line 832
    :cond_3a
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 846
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 847
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->voice:Z

    if-eqz v0, :cond_3b

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    or-int/lit16 v0, v0, 0x400

    :goto_d
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    .line 848
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 849
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->duration:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 850
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_24

    .line 851
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 853
    :cond_24
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2f

    .line 854
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->performer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 856
    :cond_2f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3a

    .line 857
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->waveform:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 859
    :cond_3a
    return-void

    .line 847
    :cond_3b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    and-int/lit16 v0, v0, -0x401

    goto :goto_d
.end method
