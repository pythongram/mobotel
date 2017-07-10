.class public final Lorg/telegram/messenger/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;
.super Ljava/lang/Object;
.source "DefaultTsPayloadReaderFactory.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory$Flags;
    }
.end annotation


# static fields
.field public static final FLAG_ALLOW_NON_IDR_KEYFRAMES:I = 0x1

.field public static final FLAG_DETECT_ACCESS_UNITS:I = 0x8

.field public static final FLAG_IGNORE_AAC_STREAM:I = 0x2

.field public static final FLAG_IGNORE_H264_STREAM:I = 0x4


# instance fields
.field private final flags:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(I)V

    .line 47
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "flags"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->flags:I

    .line 51
    return-void
.end method


# virtual methods
.method public createInitialPayloadReaders()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method public createPayloadReader(ILorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;
    .registers 9
    .param p1, "streamType"    # I
    .param p2, "esInfo"    # Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 60
    sparse-switch p1, :sswitch_data_92

    .line 86
    :cond_6
    :goto_6
    return-object v0

    .line 63
    :sswitch_7
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;

    iget-object v2, p2, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/MpegAudioReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    goto :goto_6

    .line 65
    :sswitch_14
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_6

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;

    iget-object v3, p2, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsReader;-><init>(ZLjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    goto :goto_6

    .line 69
    :sswitch_27
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;

    iget-object v2, p2, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    goto :goto_6

    .line 72
    :sswitch_34
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;

    iget-object v2, p2, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/DtsReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    goto :goto_6

    .line 74
    :sswitch_41
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;

    invoke-direct {v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;-><init>()V

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    goto :goto_6

    .line 76
    :sswitch_4c
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_6

    new-instance v3, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;

    new-instance v4, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6b

    move v0, v1

    :goto_5d
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->flags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_6d

    :goto_63
    invoke-direct {v4, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;-><init>(ZZ)V

    invoke-direct {v3, v4}, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    move-object v0, v3

    goto :goto_6

    :cond_6b
    move v0, v2

    goto :goto_5d

    :cond_6d
    move v1, v2

    goto :goto_63

    .line 80
    :sswitch_6f
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;

    invoke-direct {v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;-><init>()V

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    goto :goto_6

    .line 82
    :sswitch_7a
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/ts/SpliceInfoSectionReader;

    invoke-direct {v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/SpliceInfoSectionReader;-><init>()V

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionPayloadReader;)V

    goto :goto_6

    .line 84
    :sswitch_85
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;

    invoke-direct {v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;-><init>()V

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    goto/16 :goto_6

    .line 60
    nop

    :sswitch_data_92
    .sparse-switch
        0x2 -> :sswitch_41
        0x3 -> :sswitch_7
        0x4 -> :sswitch_7
        0xf -> :sswitch_14
        0x15 -> :sswitch_85
        0x1b -> :sswitch_4c
        0x24 -> :sswitch_6f
        0x81 -> :sswitch_27
        0x82 -> :sswitch_34
        0x86 -> :sswitch_7a
        0x87 -> :sswitch_27
        0x8a -> :sswitch_34
    .end sparse-switch
.end method
