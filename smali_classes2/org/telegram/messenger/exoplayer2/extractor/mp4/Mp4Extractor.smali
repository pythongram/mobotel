.class public final Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
.implements Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
    }
.end annotation


# static fields
.field private static final BRAND_QUICKTIME:I

.field public static final FACTORY:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;

.field private static final RELOAD_MINIMUM_SEEK_DISTANCE:J = 0x40000L

.field private static final STATE_AFTER_SEEK:I = 0x0

.field private static final STATE_READING_ATOM_HEADER:I = 0x1

.field private static final STATE_READING_ATOM_PAYLOAD:I = 0x2

.field private static final STATE_READING_SAMPLE:I = 0x3


# instance fields
.field private atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private final atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private atomHeaderBytesRead:I

.field private atomSize:J

.field private atomType:I

.field private final containerAtoms:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field private durationUs:J

.field private extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

.field private isQuickTime:Z

.field private final nalLength:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private final nalStartCode:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private parserState:I

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private tracks:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->FACTORY:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;

    .line 64
    const-string v0, "qt  "

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->BRAND_QUICKTIME:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 96
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    .line 97
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    sget-object v1, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->nalStartCode:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 98
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 99
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    .line 100
    return-void
.end method

.method private enterReadingAtomHeaderState()V
    .registers 2

    .prologue
    .line 189
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 191
    return-void
.end method

.method private getTrackIndexOfEarliestCurrentSample()I
    .registers 10

    .prologue
    .line 462
    const/4 v2, -0x1

    .line 463
    .local v2, "earliestSampleTrackIndex":I
    const-wide v0, 0x7fffffffffffffffL

    .line 464
    .local v0, "earliestSampleOffset":J
    const/4 v5, 0x0

    .local v5, "trackIndex":I
    :goto_7
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v8, v8

    if-ge v5, v8, :cond_28

    .line 465
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v4, v8, v5

    .line 466
    .local v4, "track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
    iget v3, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 467
    .local v3, "sampleIndex":I
    iget-object v8, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;

    iget v8, v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-ne v3, v8, :cond_1b

    .line 464
    :cond_18
    :goto_18
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 471
    :cond_1b
    iget-object v8, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v8, v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v6, v8, v3

    .line 472
    .local v6, "trackSampleOffset":J
    cmp-long v8, v6, v0

    if-gez v8, :cond_18

    .line 473
    move-wide v0, v6

    .line 474
    move v2, v5

    goto :goto_18

    .line 478
    .end local v3    # "sampleIndex":I
    .end local v4    # "track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
    .end local v6    # "trackSampleOffset":J
    :cond_28
    return v2
.end method

.method private processAtomEnded(J)V
    .registers 8
    .param p1, "atomEndPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 269
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget-wide v2, v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    cmp-long v1, v2, p1

    if-nez v1, :cond_44

    .line 270
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 271
    .local v0, "containerAtom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    iget v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_moov:I

    if-ne v1, v2, :cond_30

    .line 273
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->processMoovAtom(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    .line 274
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    .line 275
    iput v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_1

    .line 276
    :cond_30
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 277
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->add(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_1

    .line 280
    .end local v0    # "containerAtom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    :cond_44
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    if-eq v1, v4, :cond_4b

    .line 281
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    .line 283
    :cond_4b
    return-void
.end method

.method private static processFtypAtom(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Z
    .registers 5
    .param p0, "atomData"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    const/4 v1, 0x1

    .line 292
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 293
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 294
    .local v0, "majorBrand":I
    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->BRAND_QUICKTIME:I

    if-ne v0, v2, :cond_f

    .line 303
    :goto_e
    return v1

    .line 297
    :cond_f
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 298
    :cond_13
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lez v2, :cond_22

    .line 299
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    sget v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->BRAND_QUICKTIME:I

    if-ne v2, v3, :cond_13

    goto :goto_e

    .line 303
    :cond_22
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private processMoovAtom(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V
    .registers 29
    .param p1, "moov"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 310
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 311
    .local v10, "durationUs":J
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v25, "tracks":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    const-wide v12, 0x7fffffffffffffffL

    .line 314
    .local v12, "earliestSampleOffset":J
    const/16 v20, 0x0

    .line 315
    .local v20, "metadata":Lorg/telegram/messenger/exoplayer2/metadata/Metadata;
    new-instance v17, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;

    invoke-direct/range {v17 .. v17}, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;-><init>()V

    .line 316
    .local v17, "gaplessInfoHolder":Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_udta:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v26

    .line 317
    .local v26, "udta":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-eqz v26, :cond_33

    .line 318
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->isQuickTime:Z

    move-object/from16 v0, v26

    invoke-static {v0, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseUdta(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;Z)Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    move-result-object v20

    .line 319
    if-eqz v20, :cond_33

    .line 320
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->setFromMetadata(Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)Z

    .line 324
    :cond_33
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_35
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v18

    if-ge v0, v5, :cond_100

    .line 325
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 326
    .local v4, "atom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    iget v5, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_trak:I

    if-eq v5, v6, :cond_56

    .line 324
    :cond_53
    :goto_53
    add-int/lit8 v18, v18, 0x1

    goto :goto_35

    .line 330
    :cond_56
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mvhd:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v5

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->isQuickTime:Z

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseTrak(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;JLorg/telegram/messenger/exoplayer2/drm/DrmInitData;Z)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    move-result-object v23

    .line 332
    .local v23, "track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;
    if-eqz v23, :cond_53

    .line 336
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mdia:I

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_minf:I

    .line 337
    invoke-virtual {v5, v6}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stbl:I

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v22

    .line 338
    .local v22, "stblAtom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseStbl(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;)Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;

    move-result-object v24

    .line 339
    .local v24, "trackSampleTable":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;
    move-object/from16 v0, v24

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-eqz v5, :cond_53

    .line 343
    new-instance v21, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    move/from16 v0, v18

    invoke-interface {v5, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v5

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;)V

    .line 346
    .local v21, "mp4Track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
    move-object/from16 v0, v24

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->maximumSize:I

    add-int/lit8 v19, v5, 0x1e

    .line 347
    .local v19, "maxInputSize":I
    move-object/from16 v0, v23

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->format:Lorg/telegram/messenger/exoplayer2/Format;

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/telegram/messenger/exoplayer2/Format;->copyWithMaxInputSize(I)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v16

    .line 348
    .local v16, "format":Lorg/telegram/messenger/exoplayer2/Format;
    move-object/from16 v0, v23

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_da

    .line 349
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result v5

    if-eqz v5, :cond_d0

    .line 350
    move-object/from16 v0, v17

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    move-object/from16 v0, v17

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Lorg/telegram/messenger/exoplayer2/Format;->copyWithGaplessInfo(II)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v16

    .line 353
    :cond_d0
    if-eqz v20, :cond_da

    .line 354
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/Format;->copyWithMetadata(Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v16

    .line 357
    :cond_da
    move-object/from16 v0, v21

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 359
    move-object/from16 v0, v23

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->durationUs:J

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 360
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    move-object/from16 v0, v24

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    const/4 v6, 0x0

    aget-wide v14, v5, v6

    .line 363
    .local v14, "firstSampleOffset":J
    cmp-long v5, v14, v12

    if-gez v5, :cond_53

    .line 364
    move-wide v12, v14

    goto/16 :goto_53

    .line 367
    .end local v4    # "atom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .end local v14    # "firstSampleOffset":J
    .end local v16    # "format":Lorg/telegram/messenger/exoplayer2/Format;
    .end local v19    # "maxInputSize":I
    .end local v21    # "mp4Track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
    .end local v22    # "stblAtom":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .end local v23    # "track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;
    .end local v24    # "trackSampleTable":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;
    :cond_100
    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->durationUs:J

    .line 368
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 369
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v5}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 370
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    move-object/from16 v0, p0

    invoke-interface {v5, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;)V

    .line 371
    return-void
.end method

.method private readAtomHeader(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z
    .registers 14
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v4, 0x1

    const/16 v10, 0x8

    const/4 v5, 0x0

    .line 194
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    if-nez v3, :cond_2b

    .line 196
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v3, v5, v10, v4}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v3

    if-nez v3, :cond_14

    .line 235
    :goto_13
    return v5

    .line 199
    :cond_14
    iput v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 200
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 201
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    .line 202
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    .line 205
    :cond_2b
    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/16 v8, 0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_49

    .line 207
    const/16 v2, 0x8

    .line 208
    .local v2, "headerBytesRemaining":I
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v3, v10, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 209
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 210
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    .line 213
    .end local v2    # "headerBytesRemaining":I
    :cond_49
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->shouldParseContainerAtom(I)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 214
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    add-long/2addr v6, v8

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v8, v3

    sub-long v0, v6, v8

    .line 215
    .local v0, "endPosition":J
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    new-instance v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-direct {v5, v6, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {v3, v5}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 216
    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v8, v3

    cmp-long v3, v6, v8

    if-nez v3, :cond_77

    .line 217
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    .end local v0    # "endPosition":J
    :goto_75
    move v5, v4

    .line 235
    goto :goto_13

    .line 220
    .restart local v0    # "endPosition":J
    :cond_77
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_75

    .line 222
    .end local v0    # "endPosition":J
    :cond_7b
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->shouldParseLeafAtom(I)Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 225
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    if-ne v3, v10, :cond_b0

    move v3, v4

    :goto_88
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 226
    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/32 v8, 0x7fffffff

    cmp-long v3, v6, v8

    if-gtz v3, :cond_b2

    move v3, v4

    :goto_95
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 227
    new-instance v3, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    long-to-int v6, v6

    invoke-direct {v3, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 228
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v6, v6, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {v3, v5, v6, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    iput v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_75

    :cond_b0
    move v3, v5

    .line 225
    goto :goto_88

    :cond_b2
    move v3, v5

    .line 226
    goto :goto_95

    .line 231
    :cond_b4
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 232
    iput v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_75
.end method

.method private readAtomPayload(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)Z
    .registers 13
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .param p2, "positionHolder"    # Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 245
    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v8, v5

    sub-long v2, v6, v8

    .line 246
    .local v2, "atomPayloadSize":J
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    add-long v0, v6, v2

    .line 247
    .local v0, "atomEndPosition":J
    const/4 v4, 0x0

    .line 248
    .local v4, "seekRequired":Z
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    if-eqz v5, :cond_53

    .line 249
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    long-to-int v7, v2

    invoke-interface {p1, v5, v6, v7}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 250
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    sget v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_ftyp:I

    if-ne v5, v6, :cond_36

    .line 251
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->processFtypAtom(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Z

    move-result v5

    iput-boolean v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->isQuickTime:Z

    .line 264
    :cond_2a
    :goto_2a
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    .line 265
    if-eqz v4, :cond_68

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_68

    const/4 v5, 0x1

    :goto_35
    return v5

    .line 252
    :cond_36
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2a

    .line 253
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    new-instance v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v6, v7, v8}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;-><init>(ILorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->add(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    goto :goto_2a

    .line 257
    :cond_53
    const-wide/32 v6, 0x40000

    cmp-long v5, v2, v6

    if-gez v5, :cond_5f

    .line 258
    long-to-int v5, v2

    invoke-interface {p1, v5}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_2a

    .line 260
    :cond_5f
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    add-long/2addr v6, v2

    iput-wide v6, p2, Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;->position:J

    .line 261
    const/4 v4, 0x1

    goto :goto_2a

    .line 265
    :cond_68
    const/4 v5, 0x0

    goto :goto_35
.end method

.method private readSample(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)I
    .registers 23
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .param p2, "positionHolder"    # Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 391
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->getTrackIndexOfEarliestCurrentSample()I

    move-result v18

    .line 392
    .local v18, "trackIndex":I
    const/4 v4, -0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_b

    .line 393
    const/4 v4, -0x1

    .line 454
    :goto_a
    return v4

    .line 395
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v15, v4, v18

    .line 396
    .local v15, "track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
    iget-object v3, v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    .line 397
    .local v3, "trackOutput":Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
    iget v14, v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 398
    .local v14, "sampleIndex":I
    iget-object v4, v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v12, v4, v14

    .line 399
    .local v12, "position":J
    iget-object v4, v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v7, v4, v14

    .line 400
    .local v7, "sampleSize":I
    iget-object v4, v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    iget v4, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->sampleTransformation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2d

    .line 403
    const-wide/16 v4, 0x8

    add-long/2addr v12, v4

    .line 404
    add-int/lit8 v7, v7, -0x8

    .line 406
    :cond_2d
    invoke-interface/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    sub-long v4, v12, v4

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    int-to-long v8, v6

    add-long v16, v4, v8

    .line 407
    .local v16, "skipAmount":J
    const-wide/16 v4, 0x0

    cmp-long v4, v16, v4

    if-ltz v4, :cond_47

    const-wide/32 v4, 0x40000

    cmp-long v4, v16, v4

    if-ltz v4, :cond_4d

    .line 408
    :cond_47
    move-object/from16 v0, p2

    iput-wide v12, v0, Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;->position:J

    .line 409
    const/4 v4, 0x1

    goto :goto_a

    .line 411
    :cond_4d
    move-wide/from16 v0, v16

    long-to-int v4, v0

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 412
    iget-object v4, v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    iget v4, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    if-eqz v4, :cond_de

    .line 415
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v2, v4, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    .line 416
    .local v2, "nalLengthData":[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-byte v5, v2, v4

    .line 417
    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-byte v5, v2, v4

    .line 418
    const/4 v4, 0x2

    const/4 v5, 0x0

    aput-byte v5, v2, v4

    .line 419
    iget-object v4, v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    iget v10, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    .line 420
    .local v10, "nalUnitLengthFieldLength":I
    iget-object v4, v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    iget v4, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v11, v4, 0x4

    .line 424
    .local v11, "nalUnitLengthFieldLengthDiff":I
    :goto_77
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-ge v4, v7, :cond_106

    .line 425
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v4, :cond_be

    .line 427
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v11, v10}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 428
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 429
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 431
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->nalStartCode:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 432
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->nalStartCode:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v5, 0x4

    invoke-interface {v3, v4, v5}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    .line 433
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/lit8 v4, v4, 0x4

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 434
    add-int/2addr v7, v11

    goto :goto_77

    .line 437
    :cond_be
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v4, v5}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result v19

    .line 438
    .local v19, "writtenBytes":I
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int v4, v4, v19

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 439
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int v4, v4, v19

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_77

    .line 443
    .end local v2    # "nalLengthData":[B
    .end local v10    # "nalUnitLengthFieldLength":I
    .end local v11    # "nalUnitLengthFieldLengthDiff":I
    .end local v19    # "writtenBytes":I
    :cond_de
    :goto_de
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-ge v4, v7, :cond_106

    .line 444
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    sub-int v4, v7, v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v4, v5}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result v19

    .line 445
    .restart local v19    # "writtenBytes":I
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int v4, v4, v19

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 446
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int v4, v4, v19

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_de

    .line 449
    .end local v19    # "writtenBytes":I
    :cond_106
    iget-object v4, v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v4, v4, v14

    iget-object v6, v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v6, v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->flags:[I

    aget v6, v6, v14

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 451
    iget v4, v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v15, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 452
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 453
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 454
    const/4 v4, 0x0

    goto/16 :goto_a
.end method

.method private static shouldParseContainerAtom(I)Z
    .registers 2
    .param p0, "atom"    # I

    .prologue
    .line 497
    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_moov:I

    if-eq p0, v0, :cond_18

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_trak:I

    if-eq p0, v0, :cond_18

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mdia:I

    if-eq p0, v0, :cond_18

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_minf:I

    if-eq p0, v0, :cond_18

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stbl:I

    if-eq p0, v0, :cond_18

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_edts:I

    if-ne p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private static shouldParseLeafAtom(I)Z
    .registers 2
    .param p0, "atom"    # I

    .prologue
    .line 485
    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mdhd:I

    if-eq p0, v0, :cond_40

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mvhd:I

    if-eq p0, v0, :cond_40

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_hdlr:I

    if-eq p0, v0, :cond_40

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stsd:I

    if-eq p0, v0, :cond_40

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stts:I

    if-eq p0, v0, :cond_40

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stss:I

    if-eq p0, v0, :cond_40

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_ctts:I

    if-eq p0, v0, :cond_40

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_elst:I

    if-eq p0, v0, :cond_40

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stsc:I

    if-eq p0, v0, :cond_40

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stsz:I

    if-eq p0, v0, :cond_40

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stz2:I

    if-eq p0, v0, :cond_40

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stco:I

    if-eq p0, v0, :cond_40

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_co64:I

    if-eq p0, v0, :cond_40

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_tkhd:I

    if-eq p0, v0, :cond_40

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_ftyp:I

    if-eq p0, v0, :cond_40

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_udta:I

    if-ne p0, v0, :cond_42

    :cond_40
    const/4 v0, 0x1

    :goto_41
    return v0

    :cond_42
    const/4 v0, 0x0

    goto :goto_41
.end method


# virtual methods
.method public getDurationUs()J
    .registers 3

    .prologue
    .line 163
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->durationUs:J

    return-wide v0
.end method

.method public getPosition(J)J
    .registers 14
    .param p1, "timeUs"    # J

    .prologue
    .line 168
    const-wide v0, 0x7fffffffffffffffL

    .line 169
    .local v0, "earliestSamplePosition":J
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v9, v8

    const/4 v7, 0x0

    :goto_9
    if-ge v7, v9, :cond_28

    aget-object v6, v8, v7

    .line 170
    .local v6, "track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
    iget-object v5, v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 171
    .local v5, "sampleTable":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;
    invoke-virtual {v5, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v4

    .line 172
    .local v4, "sampleIndex":I
    const/4 v10, -0x1

    if-ne v4, v10, :cond_1a

    .line 174
    invoke-virtual {v5, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v4

    .line 176
    :cond_1a
    iput v4, v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 178
    iget-object v10, v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v2, v10, v4

    .line 179
    .local v2, "offset":J
    cmp-long v10, v2, v0

    if-gez v10, :cond_25

    .line 180
    move-wide v0, v2

    .line 169
    :cond_25
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 183
    .end local v2    # "offset":J
    .end local v4    # "sampleIndex":I
    .end local v5    # "sampleTable":Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;
    .end local v6    # "track":Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
    :cond_28
    return-wide v0
.end method

.method public init(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;)V
    .registers 2
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    .prologue
    .line 109
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    .line 110
    return-void
.end method

.method public isSeekable()Z
    .registers 2

    .prologue
    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method public read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)I
    .registers 7
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 130
    :cond_0
    :goto_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    packed-switch v0, :pswitch_data_2c

    .line 149
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->readSample(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)I

    move-result v0

    :goto_9
    return v0

    .line 132
    :pswitch_a
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    .line 133
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_0

    .line 135
    :cond_18
    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_0

    .line 139
    :pswitch_1c
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->readAtomHeader(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    const/4 v0, -0x1

    goto :goto_9

    .line 144
    :pswitch_24
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->readAtomPayload(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const/4 v0, 0x1

    goto :goto_9

    .line 130
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_a
        :pswitch_1c
        :pswitch_24
    .end packed-switch
.end method

.method public release()V
    .registers 1

    .prologue
    .line 124
    return-void
.end method

.method public seek(J)V
    .registers 5
    .param p1, "position"    # J

    .prologue
    const/4 v1, 0x0

    .line 114
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 115
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 116
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 117
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 118
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    .line 119
    return-void
.end method

.method public sniff(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z
    .registers 3
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Sniffer;->sniffUnfragmented(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    return v0
.end method
