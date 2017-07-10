.class public Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;
.super Ljava/lang/Object;
.source "ID3v2FrameBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$Buffer;
    }
.end annotation


# static fields
.field static final textBuffer:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$Buffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final data:Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

.field private final frameHeader:Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;

.field private final input:Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

.field private final tagHeader:Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    new-instance v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$1;

    invoke-direct {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->textBuffer:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;JILorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;)V
    .registers 13
    .param p1, "delegate"    # Ljava/io/InputStream;
    .param p2, "position"    # J
    .param p4, "dataLength"    # I
    .param p5, "tagHeader"    # Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;
    .param p6, "frameHeader"    # Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

    int-to-long v4, p4

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;-><init>(Ljava/io/InputStream;JJ)V

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->input:Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

    .line 58
    new-instance v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->input:Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->data:Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    .line 59
    iput-object p5, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->tagHeader:Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;

    .line 60
    iput-object p6, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->frameHeader:Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;

    .line 61
    return-void
.end method

.method private extractString([BIILorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;Z)Ljava/lang/String;
    .registers 12
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "encoding"    # Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;
    .param p5, "searchZeros"    # Z

    .prologue
    .line 84
    if-eqz p5, :cond_28

    .line 85
    const/4 v3, 0x0

    .line 86
    .local v3, "zeros":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, p3, :cond_28

    .line 88
    add-int v4, p2, v1

    aget-byte v4, p1, v4

    if-nez v4, :cond_4b

    sget-object v4, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->UTF_16:Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    if-ne p4, v4, :cond_18

    if-nez v3, :cond_18

    add-int v4, p2, v1

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_4b

    .line 89
    :cond_18
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p4}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->getZeroBytes()I

    move-result v4

    if-ne v3, v4, :cond_4c

    .line 90
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p4}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->getZeroBytes()I

    move-result v5

    sub-int p3, v4, v5

    .line 99
    .end local v1    # "i":I
    .end local v3    # "zeros":I
    :cond_28
    :try_start_28
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p4}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p1, p2, p3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 100
    .local v2, "string":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4a

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xfeff

    if-ne v4, v5, :cond_4a

    .line 101
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_49} :catch_4f

    move-result-object v2

    .line 105
    .end local v2    # "string":Ljava/lang/String;
    :cond_4a
    :goto_4a
    return-object v2

    .line 94
    .restart local v1    # "i":I
    .restart local v3    # "zeros":I
    :cond_4b
    const/4 v3, 0x0

    .line 86
    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 104
    .end local v1    # "i":I
    .end local v3    # "zeros":I
    :catch_4f
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_4a
.end method


# virtual methods
.method public getData()Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->data:Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    return-object v0
.end method

.method public getFrameHeader()Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->frameHeader:Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;

    return-object v0
.end method

.method public getPosition()J
    .registers 3

    .prologue
    .line 68
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->input:Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;->getPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRemainingLength()J
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->input:Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;->getRemainingLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTagHeader()Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->tagHeader:Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;

    return-object v0
.end method

.method public readEncoding()Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->data:Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    move-result v0

    .line 137
    .local v0, "value":B
    packed-switch v0, :pswitch_data_2e

    .line 149
    new-instance v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :pswitch_22
    sget-object v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->ISO_8859_1:Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    .line 145
    :goto_24
    return-object v1

    .line 141
    :pswitch_25
    sget-object v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->UTF_16:Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    goto :goto_24

    .line 143
    :pswitch_28
    sget-object v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->UTF_16BE:Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    goto :goto_24

    .line 145
    :pswitch_2b
    sget-object v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->UTF_8:Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    goto :goto_24

    .line 137
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
    .end packed-switch
.end method

.method public readFixedLengthString(ILorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;)Ljava/lang/String;
    .registers 11
    .param p1, "length"    # I
    .param p2, "encoding"    # Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 127
    int-to-long v4, p1

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getRemainingLength()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_23

    .line 128
    new-instance v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read fixed-length string of length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_23
    sget-object v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->textBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$Buffer;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$Buffer;->bytes(I)[B

    move-result-object v1

    .line 131
    .local v1, "bytes":[B
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->data:Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readFully([BII)V

    .line 132
    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->extractString([BIILorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readZeroTerminatedString(ILorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;)Ljava/lang/String;
    .registers 12
    .param p1, "maxLength"    # I
    .param p2, "encoding"    # Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 110
    const/4 v8, 0x0

    .line 111
    .local v8, "zeros":I
    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getRemainingLength()J

    move-result-wide v4

    long-to-int v0, v4

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 112
    .local v7, "length":I
    sget-object v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->textBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$Buffer;

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$Buffer;->bytes(I)[B

    move-result-object v1

    .line 113
    .local v1, "bytes":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_18
    if-ge v6, v7, :cond_4a

    .line 115
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->data:Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    move-result v0

    aput-byte v0, v1, v6

    if-nez v0, :cond_46

    sget-object v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->UTF_16:Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    if-ne p2, v0, :cond_2e

    if-nez v8, :cond_2e

    rem-int/lit8 v0, v6, 0x2

    if-nez v0, :cond_46

    .line 116
    :cond_2e
    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->getZeroBytes()I

    move-result v0

    if-ne v8, v0, :cond_47

    .line 117
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {p2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->getZeroBytes()I

    move-result v3

    sub-int v3, v0, v3

    move-object v0, p0

    move-object v4, p2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->extractString([BIILorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 120
    :cond_46
    const/4 v8, 0x0

    .line 113
    :cond_47
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    .line 123
    :cond_4a
    new-instance v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;

    const-string v2, "Could not read zero-termiated string"

    invoke-direct {v0, v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id3v2frame[pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getRemainingLength()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " left]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
