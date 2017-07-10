.class final Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;
.super Ljava/lang/Object;
.source "H265Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SampleReader"
.end annotation


# static fields
.field private static final FIRST_SLICE_FLAG_OFFSET:I = 0x2


# instance fields
.field private isFirstParameterSet:Z

.field private isFirstSlice:Z

.field private lookingForFirstSliceFlag:Z

.field private nalUnitBytesRead:I

.field private nalUnitHasKeyframeData:Z

.field private nalUnitStartPosition:J

.field private nalUnitTimeUs:J

.field private final output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

.field private readingSample:Z

.field private sampleIsKeyframe:Z

.field private samplePosition:J

.field private sampleTimeUs:J

.field private writingParameterSets:Z


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;)V
    .registers 2
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    .prologue
    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    .line 411
    return-void
.end method

.method private outputSample(I)V
    .registers 10
    .param p1, "offset"    # I

    .prologue
    .line 478
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    if-eqz v0, :cond_15

    const/4 v4, 0x1

    .line 479
    .local v4, "flags":I
    :goto_5
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitStartPosition:J

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->samplePosition:J

    sub-long/2addr v0, v2

    long-to-int v5, v0

    .line 480
    .local v5, "size":I
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->sampleTimeUs:J

    const/4 v7, 0x0

    move v6, p1

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 481
    return-void

    .line 478
    .end local v4    # "flags":I
    .end local v5    # "size":I
    :cond_15
    const/4 v4, 0x0

    goto :goto_5
.end method


# virtual methods
.method public endNalUnit(JI)V
    .registers 9
    .param p1, "position"    # J
    .param p3, "offset"    # I

    .prologue
    .line 459
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->writingParameterSets:Z

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    if-eqz v1, :cond_10

    .line 461
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    .line 462
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->writingParameterSets:Z

    .line 475
    :cond_f
    :goto_f
    return-void

    .line 463
    :cond_10
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstParameterSet:Z

    if-nez v1, :cond_18

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    if-eqz v1, :cond_f

    .line 465
    :cond_18
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    if-eqz v1, :cond_26

    .line 467
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitStartPosition:J

    sub-long v2, p1, v2

    long-to-int v0, v2

    .line 468
    .local v0, "nalUnitLength":I
    add-int v1, p3, v0

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->outputSample(I)V

    .line 470
    .end local v0    # "nalUnitLength":I
    :cond_26
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitStartPosition:J

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->samplePosition:J

    .line 471
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitTimeUs:J

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->sampleTimeUs:J

    .line 472
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    .line 473
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    goto :goto_f
.end method

.method public readNalUnitData([BII)V
    .registers 8
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .prologue
    const/4 v2, 0x0

    .line 447
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    if-eqz v1, :cond_18

    .line 448
    add-int/lit8 v1, p2, 0x2

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    sub-int v0, v1, v3

    .line 449
    .local v0, "headerOffset":I
    if-ge v0, p3, :cond_1b

    .line 450
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    :goto_14
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    .line 451
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    .line 456
    .end local v0    # "headerOffset":I
    :cond_18
    :goto_18
    return-void

    .restart local v0    # "headerOffset":I
    :cond_19
    move v1, v2

    .line 450
    goto :goto_14

    .line 453
    :cond_1b
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    sub-int v2, p3, p2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    goto :goto_18
.end method

.method public reset()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 414
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    .line 415
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    .line 416
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstParameterSet:Z

    .line 417
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    .line 418
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->writingParameterSets:Z

    .line 419
    return-void
.end method

.method public startNalUnit(JIIJ)V
    .registers 10
    .param p1, "position"    # J
    .param p3, "offset"    # I
    .param p4, "nalUnitType"    # I
    .param p5, "pesTimeUs"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 422
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    .line 423
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstParameterSet:Z

    .line 424
    iput-wide p5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitTimeUs:J

    .line 425
    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    .line 426
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitStartPosition:J

    .line 428
    const/16 v0, 0x20

    if-lt p4, v0, :cond_2a

    .line 429
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->writingParameterSets:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    if-eqz v0, :cond_1d

    .line 431
    invoke-direct {p0, p3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->outputSample(I)V

    .line 432
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    .line 434
    :cond_1d
    const/16 v0, 0x22

    if-gt p4, v0, :cond_2a

    .line 436
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->writingParameterSets:Z

    if-nez v0, :cond_41

    move v0, v1

    :goto_26
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstParameterSet:Z

    .line 437
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->writingParameterSets:Z

    .line 442
    :cond_2a
    const/16 v0, 0x10

    if-lt p4, v0, :cond_43

    const/16 v0, 0x15

    if-gt p4, v0, :cond_43

    move v0, v1

    :goto_33
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    .line 443
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    if-nez v0, :cond_3d

    const/16 v0, 0x9

    if-gt p4, v0, :cond_3e

    :cond_3d
    move v2, v1

    :cond_3e
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    .line 444
    return-void

    :cond_41
    move v0, v2

    .line 436
    goto :goto_26

    :cond_43
    move v0, v2

    .line 442
    goto :goto_33
.end method
