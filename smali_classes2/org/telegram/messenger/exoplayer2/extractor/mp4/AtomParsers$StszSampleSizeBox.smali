.class final Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;
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
    name = "StszSampleSizeBox"
.end annotation


# instance fields
.field private final data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private final fixedSampleSize:I

.field private final sampleCount:I


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;)V
    .registers 4
    .param p1, "stszAtom"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .prologue
    .line 1211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1212
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 1213
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1214
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;->fixedSampleSize:I

    .line 1215
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;->sampleCount:I

    .line 1216
    return-void
.end method


# virtual methods
.method public getSampleCount()I
    .registers 2

    .prologue
    .line 1220
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;->sampleCount:I

    return v0
.end method

.method public isFixedSampleSize()Z
    .registers 2

    .prologue
    .line 1230
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;->fixedSampleSize:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public readNextSampleSize()I
    .registers 2

    .prologue
    .line 1225
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;->fixedSampleSize:I

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;->fixedSampleSize:I

    goto :goto_a
.end method
