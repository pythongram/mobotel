.class final Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;
.super Ljava/lang/Object;
.source "AtomParsers.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Stz2SampleSizeBox"
.end annotation


# instance fields
.field private currentByte:I

.field private final data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private final fieldSize:I

.field private final sampleCount:I

.field private sampleIndex:I


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;)V
    .registers 4
    .param p1, "stz2Atom"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .prologue
    .line 1248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1249
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 1250
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1251
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->fieldSize:I

    .line 1252
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->sampleCount:I

    .line 1253
    return-void
.end method


# virtual methods
.method public getSampleCount()I
    .registers 2

    .prologue
    .line 1257
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->sampleCount:I

    return v0
.end method

.method public isFixedSampleSize()Z
    .registers 2

    .prologue
    .line 1282
    const/4 v0, 0x0

    return v0
.end method

.method public readNextSampleSize()I
    .registers 3

    .prologue
    .line 1262
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->fieldSize:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    .line 1263
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 1275
    :goto_c
    return v0

    .line 1264
    :cond_d
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->fieldSize:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1a

    .line 1265
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    goto :goto_c

    .line 1268
    :cond_1a
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->sampleIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->sampleIndex:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_33

    .line 1270
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->currentByte:I

    .line 1272
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->currentByte:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    goto :goto_c

    .line 1275
    :cond_33
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->currentByte:I

    and-int/lit8 v0, v0, 0xf

    goto :goto_c
.end method
