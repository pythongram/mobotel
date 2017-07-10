.class public final Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$PpsData;,
        Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;
    }
.end annotation


# static fields
.field public static final ASPECT_RATIO_IDC_VALUES:[F

.field public static final EXTENDED_SAR:I = 0xff

.field public static final NAL_START_CODE:[B

.field private static final NAL_UNIT_TYPE_SPS:I = 0x7

.field private static final TAG:Ljava/lang/String; = "NalUnitUtil"

.field private static scratchEscapePositions:[I

.field private static final scratchEscapePositionsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_20

    sput-object v0, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    .line 86
    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_26

    sput-object v0, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    .line 114
    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    return-void

    .line 81
    nop

    :array_20
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 86
    :array_26
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    return-void
.end method

.method public static clearPrefixFlags([Z)V
    .registers 3
    .param p0, "prefixFlags"    # [Z

    .prologue
    const/4 v1, 0x0

    .line 443
    aput-boolean v1, p0, v1

    .line 444
    const/4 v0, 0x1

    aput-boolean v1, p0, v0

    .line 445
    const/4 v0, 0x2

    aput-boolean v1, p0, v0

    .line 446
    return-void
.end method

.method public static discardToSps(Ljava/nio/ByteBuffer;)V
    .registers 8
    .param p0, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 173
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 174
    .local v1, "length":I
    const/4 v0, 0x0

    .line 175
    .local v0, "consecutiveZeros":I
    const/4 v2, 0x0

    .line 176
    .local v2, "offset":I
    :goto_6
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v1, :cond_3f

    .line 177
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v4, v5, 0xff

    .line 178
    .local v4, "value":I
    const/4 v5, 0x3

    if-ne v0, v5, :cond_35

    .line 179
    const/4 v5, 0x1

    if-ne v4, v5, :cond_39

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit8 v5, v5, 0x1f

    const/4 v6, 0x7

    if-ne v5, v6, :cond_39

    .line 181
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 182
    .local v3, "offsetData":Ljava/nio/ByteBuffer;
    add-int/lit8 v5, v2, -0x3

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 183
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 184
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 185
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 198
    .end local v3    # "offsetData":Ljava/nio/ByteBuffer;
    .end local v4    # "value":I
    :goto_34
    return-void

    .line 188
    .restart local v4    # "value":I
    :cond_35
    if-nez v4, :cond_39

    .line 189
    add-int/lit8 v0, v0, 0x1

    .line 191
    :cond_39
    if-eqz v4, :cond_3c

    .line 192
    const/4 v0, 0x0

    .line 194
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    .line 195
    goto :goto_6

    .line 197
    .end local v4    # "value":I
    :cond_3f
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_34
.end method

.method public static findNalUnit([BII[Z)I
    .registers 11
    .param p0, "data"    # [B
    .param p1, "startOffset"    # I
    .param p2, "endOffset"    # I
    .param p3, "prefixFlags"    # [Z

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 381
    sub-int v1, p2, p1

    .line 383
    .local v1, "length":I
    if-ltz v1, :cond_e

    move v3, v4

    :goto_8
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 384
    if-nez v1, :cond_10

    .line 434
    .end local p2    # "endOffset":I
    :cond_d
    :goto_d
    return p2

    .restart local p2    # "endOffset":I
    :cond_e
    move v3, v5

    .line 383
    goto :goto_8

    .line 388
    :cond_10
    if-eqz p3, :cond_42

    .line 389
    aget-boolean v3, p3, v5

    if-eqz v3, :cond_1c

    .line 390
    invoke-static {p3}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 391
    add-int/lit8 p2, p1, -0x3

    goto :goto_d

    .line 392
    :cond_1c
    if-le v1, v4, :cond_2c

    aget-boolean v3, p3, v4

    if-eqz v3, :cond_2c

    aget-byte v3, p0, p1

    if-ne v3, v4, :cond_2c

    .line 393
    invoke-static {p3}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 394
    add-int/lit8 p2, p1, -0x2

    goto :goto_d

    .line 395
    :cond_2c
    if-le v1, v6, :cond_42

    aget-boolean v3, p3, v6

    if-eqz v3, :cond_42

    aget-byte v3, p0, p1

    if-nez v3, :cond_42

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_42

    .line 397
    invoke-static {p3}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 398
    add-int/lit8 p2, p1, -0x1

    goto :goto_d

    .line 402
    :cond_42
    add-int/lit8 v2, p2, -0x1

    .line 405
    .local v2, "limit":I
    add-int/lit8 v0, p1, 0x2

    .local v0, "i":I
    :goto_46
    if-ge v0, v2, :cond_6c

    .line 406
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xfe

    if-eqz v3, :cond_51

    .line 405
    :goto_4e
    add-int/lit8 v0, v0, 0x3

    goto :goto_46

    .line 409
    :cond_51
    add-int/lit8 v3, v0, -0x2

    aget-byte v3, p0, v3

    if-nez v3, :cond_69

    add-int/lit8 v3, v0, -0x1

    aget-byte v3, p0, v3

    if-nez v3, :cond_69

    aget-byte v3, p0, v0

    if-ne v3, v4, :cond_69

    .line 410
    if-eqz p3, :cond_66

    .line 411
    invoke-static {p3}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 413
    :cond_66
    add-int/lit8 p2, v0, -0x2

    goto :goto_d

    .line 417
    :cond_69
    add-int/lit8 v0, v0, -0x2

    goto :goto_4e

    .line 421
    :cond_6c
    if-eqz p3, :cond_d

    .line 423
    if-le v1, v6, :cond_a2

    add-int/lit8 v3, p2, -0x3

    aget-byte v3, p0, v3

    if-nez v3, :cond_a0

    add-int/lit8 v3, p2, -0x2

    aget-byte v3, p0, v3

    if-nez v3, :cond_a0

    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_a0

    move v3, v4

    :goto_83
    aput-boolean v3, p3, v5

    .line 428
    if-le v1, v4, :cond_c8

    add-int/lit8 v3, p2, -0x2

    aget-byte v3, p0, v3

    if-nez v3, :cond_c6

    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p0, v3

    if-nez v3, :cond_c6

    move v3, v4

    :goto_94
    aput-boolean v3, p3, v4

    .line 431
    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p0, v3

    if-nez v3, :cond_d6

    :goto_9c
    aput-boolean v4, p3, v6

    goto/16 :goto_d

    :cond_a0
    move v3, v5

    .line 423
    goto :goto_83

    :cond_a2
    if-ne v1, v6, :cond_b8

    aget-boolean v3, p3, v6

    if-eqz v3, :cond_b6

    add-int/lit8 v3, p2, -0x2

    aget-byte v3, p0, v3

    if-nez v3, :cond_b6

    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_b6

    move v3, v4

    goto :goto_83

    :cond_b6
    move v3, v5

    goto :goto_83

    :cond_b8
    aget-boolean v3, p3, v4

    if-eqz v3, :cond_c4

    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_c4

    move v3, v4

    goto :goto_83

    :cond_c4
    move v3, v5

    goto :goto_83

    :cond_c6
    move v3, v5

    .line 428
    goto :goto_94

    :cond_c8
    aget-boolean v3, p3, v6

    if-eqz v3, :cond_d4

    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p0, v3

    if-nez v3, :cond_d4

    move v3, v4

    goto :goto_94

    :cond_d4
    move v3, v5

    goto :goto_94

    :cond_d6
    move v4, v5

    .line 431
    goto :goto_9c
.end method

.method private static findNextUnescapeIndex([BII)I
    .registers 6
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "limit"    # I

    .prologue
    .line 449
    move v0, p1

    .local v0, "i":I
    :goto_1
    add-int/lit8 v1, p2, -0x2

    if-ge v0, v1, :cond_1a

    .line 450
    aget-byte v1, p0, v0

    if-nez v1, :cond_17

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_17

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p0, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_17

    .line 454
    .end local v0    # "i":I
    :goto_16
    return v0

    .line 449
    .restart local v0    # "i":I
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1a
    move v0, p2

    .line 454
    goto :goto_16
.end method

.method public static getH265NalUnitType([BI)I
    .registers 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 221
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7e

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static getNalUnitType([BI)I
    .registers 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 209
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public static parsePpsNalUnit([BII)Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$PpsData;
    .registers 8
    .param p0, "nalData"    # [B
    .param p1, "nalOffset"    # I
    .param p2, "nalLimit"    # I

    .prologue
    .line 349
    new-instance v1, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;-><init>([BII)V

    .line 350
    .local v1, "data":Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 351
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    .line 352
    .local v2, "picParameterSetId":I
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v3

    .line 353
    .local v3, "seqParameterSetId":I
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 354
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v0

    .line 355
    .local v0, "bottomFieldPicOrderInFramePresentFlag":Z
    new-instance v4, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$PpsData;

    invoke-direct {v4, v2, v3, v0}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$PpsData;-><init>(IIZ)V

    return-object v4
.end method

.method public static parseSpsNalUnit([BII)Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;
    .registers 47
    .param p0, "nalData"    # [B
    .param p1, "nalOffset"    # I
    .param p2, "nalLimit"    # I

    .prologue
    .line 234
    new-instance v20, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;-><init>([BII)V

    .line 235
    .local v20, "data":Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;
    const/16 v4, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 236
    const/16 v4, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v33

    .line 237
    .local v33, "profileIdc":I
    const/16 v4, 0x10

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 238
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    .line 240
    .local v5, "seqParameterSetId":I
    const/16 v17, 0x1

    .line 241
    .local v17, "chromaFormatIdc":I
    const/4 v9, 0x0

    .line 242
    .local v9, "separateColorPlaneFlag":Z
    const/16 v4, 0x64

    move/from16 v0, v33

    if-eq v0, v4, :cond_66

    const/16 v4, 0x6e

    move/from16 v0, v33

    if-eq v0, v4, :cond_66

    const/16 v4, 0x7a

    move/from16 v0, v33

    if-eq v0, v4, :cond_66

    const/16 v4, 0xf4

    move/from16 v0, v33

    if-eq v0, v4, :cond_66

    const/16 v4, 0x2c

    move/from16 v0, v33

    if-eq v0, v4, :cond_66

    const/16 v4, 0x53

    move/from16 v0, v33

    if-eq v0, v4, :cond_66

    const/16 v4, 0x56

    move/from16 v0, v33

    if-eq v0, v4, :cond_66

    const/16 v4, 0x76

    move/from16 v0, v33

    if-eq v0, v4, :cond_66

    const/16 v4, 0x80

    move/from16 v0, v33

    if-eq v0, v4, :cond_66

    const/16 v4, 0x8a

    move/from16 v0, v33

    if-ne v0, v4, :cond_af

    .line 245
    :cond_66
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v17

    .line 246
    const/4 v4, 0x3

    move/from16 v0, v17

    if-ne v0, v4, :cond_73

    .line 247
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v9

    .line 249
    :cond_73
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 250
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 251
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 252
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v37

    .line 253
    .local v37, "seqScalingMatrixPresentFlag":Z
    if-eqz v37, :cond_af

    .line 254
    const/4 v4, 0x3

    move/from16 v0, v17

    if-eq v0, v4, :cond_a9

    const/16 v28, 0x8

    .line 255
    .local v28, "limit":I
    :goto_8c
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_8e
    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_af

    .line 256
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v36

    .line 257
    .local v36, "seqScalingListPresentFlag":Z
    if-eqz v36, :cond_a6

    .line 258
    const/4 v4, 0x6

    move/from16 v0, v27

    if-ge v0, v4, :cond_ac

    const/16 v4, 0x10

    :goto_a1
    move-object/from16 v0, v20

    invoke-static {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->skipScalingList(Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;I)V

    .line 255
    :cond_a6
    add-int/lit8 v27, v27, 0x1

    goto :goto_8e

    .line 254
    .end local v27    # "i":I
    .end local v28    # "limit":I
    .end local v36    # "seqScalingListPresentFlag":Z
    :cond_a9
    const/16 v28, 0xc

    goto :goto_8c

    .line 258
    .restart local v27    # "i":I
    .restart local v28    # "limit":I
    .restart local v36    # "seqScalingListPresentFlag":Z
    :cond_ac
    const/16 v4, 0x40

    goto :goto_a1

    .line 264
    .end local v27    # "i":I
    .end local v28    # "limit":I
    .end local v36    # "seqScalingListPresentFlag":Z
    .end local v37    # "seqScalingMatrixPresentFlag":Z
    :cond_af
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    add-int/lit8 v11, v4, 0x4

    .line 265
    .local v11, "frameNumLength":I
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v12

    .line 266
    .local v12, "picOrderCntType":I
    const/4 v13, 0x0

    .line 267
    .local v13, "picOrderCntLsbLength":I
    const/4 v14, 0x0

    .line 268
    .local v14, "deltaPicOrderAlwaysZeroFlag":Z
    if-nez v12, :cond_15c

    .line 270
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    add-int/lit8 v13, v4, 0x4

    .line 280
    :cond_c3
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 281
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 283
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    add-int/lit8 v32, v4, 0x1

    .line 284
    .local v32, "picWidthInMbs":I
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    add-int/lit8 v29, v4, 0x1

    .line 285
    .local v29, "picHeightInMapUnits":I
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v10

    .line 286
    .local v10, "frameMbsOnlyFlag":Z
    if-eqz v10, :cond_181

    const/4 v4, 0x1

    :goto_df
    rsub-int/lit8 v4, v4, 0x2

    mul-int v26, v4, v29

    .line 287
    .local v26, "frameHeightInMbs":I
    if-nez v10, :cond_eb

    .line 288
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 291
    :cond_eb
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 292
    mul-int/lit8 v6, v32, 0x10

    .line 293
    .local v6, "frameWidth":I
    mul-int/lit8 v7, v26, 0x10

    .line 294
    .local v7, "frameHeight":I
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v25

    .line 295
    .local v25, "frameCroppingFlag":Z
    if-eqz v25, :cond_11e

    .line 296
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v22

    .line 297
    .local v22, "frameCropLeftOffset":I
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v23

    .line 298
    .local v23, "frameCropRightOffset":I
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v24

    .line 299
    .local v24, "frameCropTopOffset":I
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v21

    .line 301
    .local v21, "frameCropBottomOffset":I
    if-nez v17, :cond_186

    .line 302
    const/16 v18, 0x1

    .line 303
    .local v18, "cropUnitX":I
    if-eqz v10, :cond_184

    const/4 v4, 0x1

    :goto_112
    rsub-int/lit8 v19, v4, 0x2

    .line 310
    .local v19, "cropUnitY":I
    :goto_114
    add-int v4, v22, v23

    mul-int v4, v4, v18

    sub-int/2addr v6, v4

    .line 311
    add-int v4, v24, v21

    mul-int v4, v4, v19

    sub-int/2addr v7, v4

    .line 314
    .end local v18    # "cropUnitX":I
    .end local v19    # "cropUnitY":I
    .end local v21    # "frameCropBottomOffset":I
    .end local v22    # "frameCropLeftOffset":I
    .end local v23    # "frameCropRightOffset":I
    .end local v24    # "frameCropTopOffset":I
    :cond_11e
    const/high16 v8, 0x3f800000    # 1.0f

    .line 315
    .local v8, "pixelWidthHeightRatio":F
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v40

    .line 316
    .local v40, "vuiParametersPresentFlag":Z
    if-eqz v40, :cond_156

    .line 317
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v16

    .line 318
    .local v16, "aspectRatioInfoPresentFlag":Z
    if-eqz v16, :cond_156

    .line 319
    const/16 v4, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v15

    .line 320
    .local v15, "aspectRatioIdc":I
    const/16 v4, 0xff

    if-ne v15, v4, :cond_1a7

    .line 321
    const/16 v4, 0x10

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v35

    .line 322
    .local v35, "sarWidth":I
    const/16 v4, 0x10

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v34

    .line 323
    .local v34, "sarHeight":I
    if-eqz v35, :cond_156

    if-eqz v34, :cond_156

    .line 324
    move/from16 v0, v35

    int-to-float v4, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v41, v0

    div-float v8, v4, v41

    .line 334
    .end local v15    # "aspectRatioIdc":I
    .end local v16    # "aspectRatioInfoPresentFlag":Z
    .end local v34    # "sarHeight":I
    .end local v35    # "sarWidth":I
    :cond_156
    :goto_156
    new-instance v4, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;

    invoke-direct/range {v4 .. v14}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;-><init>(IIIFZZIIIZ)V

    return-object v4

    .line 271
    .end local v6    # "frameWidth":I
    .end local v7    # "frameHeight":I
    .end local v8    # "pixelWidthHeightRatio":F
    .end local v10    # "frameMbsOnlyFlag":Z
    .end local v25    # "frameCroppingFlag":Z
    .end local v26    # "frameHeightInMbs":I
    .end local v29    # "picHeightInMapUnits":I
    .end local v32    # "picWidthInMbs":I
    .end local v40    # "vuiParametersPresentFlag":Z
    :cond_15c
    const/4 v4, 0x1

    if-ne v12, v4, :cond_c3

    .line 272
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v14

    .line 273
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 274
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 275
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v30, v0

    .line 276
    .local v30, "numRefFramesInPicOrderCntCycle":J
    const/16 v27, 0x0

    .restart local v27    # "i":I
    :goto_172
    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v42, v0

    cmp-long v4, v42, v30

    if-gez v4, :cond_c3

    .line 277
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 276
    add-int/lit8 v27, v27, 0x1

    goto :goto_172

    .line 286
    .end local v27    # "i":I
    .end local v30    # "numRefFramesInPicOrderCntCycle":J
    .restart local v10    # "frameMbsOnlyFlag":Z
    .restart local v29    # "picHeightInMapUnits":I
    .restart local v32    # "picWidthInMbs":I
    :cond_181
    const/4 v4, 0x0

    goto/16 :goto_df

    .line 303
    .restart local v6    # "frameWidth":I
    .restart local v7    # "frameHeight":I
    .restart local v18    # "cropUnitX":I
    .restart local v21    # "frameCropBottomOffset":I
    .restart local v22    # "frameCropLeftOffset":I
    .restart local v23    # "frameCropRightOffset":I
    .restart local v24    # "frameCropTopOffset":I
    .restart local v25    # "frameCroppingFlag":Z
    .restart local v26    # "frameHeightInMbs":I
    :cond_184
    const/4 v4, 0x0

    goto :goto_112

    .line 305
    .end local v18    # "cropUnitX":I
    :cond_186
    const/4 v4, 0x3

    move/from16 v0, v17

    if-ne v0, v4, :cond_19f

    const/16 v39, 0x1

    .line 306
    .local v39, "subWidthC":I
    :goto_18d
    const/4 v4, 0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_1a2

    const/16 v38, 0x2

    .line 307
    .local v38, "subHeightC":I
    :goto_194
    move/from16 v18, v39

    .line 308
    .restart local v18    # "cropUnitX":I
    if-eqz v10, :cond_1a5

    const/4 v4, 0x1

    :goto_199
    rsub-int/lit8 v4, v4, 0x2

    mul-int v19, v38, v4

    .restart local v19    # "cropUnitY":I
    goto/16 :goto_114

    .line 305
    .end local v18    # "cropUnitX":I
    .end local v19    # "cropUnitY":I
    .end local v38    # "subHeightC":I
    .end local v39    # "subWidthC":I
    :cond_19f
    const/16 v39, 0x2

    goto :goto_18d

    .line 306
    .restart local v39    # "subWidthC":I
    :cond_1a2
    const/16 v38, 0x1

    goto :goto_194

    .line 308
    .restart local v18    # "cropUnitX":I
    .restart local v38    # "subHeightC":I
    :cond_1a5
    const/4 v4, 0x0

    goto :goto_199

    .line 326
    .end local v18    # "cropUnitX":I
    .end local v21    # "frameCropBottomOffset":I
    .end local v22    # "frameCropLeftOffset":I
    .end local v23    # "frameCropRightOffset":I
    .end local v24    # "frameCropTopOffset":I
    .end local v38    # "subHeightC":I
    .end local v39    # "subWidthC":I
    .restart local v8    # "pixelWidthHeightRatio":F
    .restart local v15    # "aspectRatioIdc":I
    .restart local v16    # "aspectRatioInfoPresentFlag":Z
    .restart local v40    # "vuiParametersPresentFlag":Z
    :cond_1a7
    sget-object v4, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v4, v4

    if-ge v15, v4, :cond_1b1

    .line 327
    sget-object v4, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    aget v8, v4, v15

    goto :goto_156

    .line 329
    :cond_1b1
    const-string v4, "NalUnitUtil"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Unexpected aspect_ratio_idc value: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_156
.end method

.method private static skipScalingList(Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;I)V
    .registers 7
    .param p0, "bitArray"    # Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;
    .param p1, "size"    # I

    .prologue
    .line 458
    const/16 v2, 0x8

    .line 459
    .local v2, "lastScale":I
    const/16 v3, 0x8

    .line 460
    .local v3, "nextScale":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, p1, :cond_1a

    .line 461
    if-eqz v3, :cond_13

    .line 462
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v0

    .line 463
    .local v0, "deltaScale":I
    add-int v4, v2, v0

    add-int/lit16 v4, v4, 0x100

    rem-int/lit16 v3, v4, 0x100

    .line 465
    .end local v0    # "deltaScale":I
    :cond_13
    if-nez v3, :cond_18

    .line 460
    :goto_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_18
    move v2, v3

    .line 465
    goto :goto_15

    .line 467
    :cond_1a
    return-void
.end method

.method public static unescapeStream([BI)I
    .registers 16
    .param p0, "data"    # [B
    .param p1, "limit"    # I

    .prologue
    .line 128
    sget-object v12, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    monitor-enter v12

    .line 129
    const/4 v4, 0x0

    .line 130
    .local v4, "position":I
    const/4 v6, 0x0

    .local v6, "scratchEscapeCount":I
    move v7, v6

    .line 131
    .end local v6    # "scratchEscapeCount":I
    .local v7, "scratchEscapeCount":I
    :cond_6
    :goto_6
    if-ge v4, p1, :cond_2a

    .line 132
    :try_start_8
    invoke-static {p0, v4, p1}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->findNextUnescapeIndex([BII)I

    move-result v4

    .line 133
    if-ge v4, p1, :cond_6

    .line 134
    sget-object v11, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    array-length v11, v11

    if-gt v11, v7, :cond_20

    .line 136
    sget-object v11, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    sget-object v13, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    array-length v13, v13

    mul-int/lit8 v13, v13, 0x2

    invoke-static {v11, v13}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v11

    sput-object v11, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    .line 139
    :cond_20
    sget-object v11, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_52

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "scratchEscapeCount":I
    .restart local v6    # "scratchEscapeCount":I
    :try_start_24
    aput v4, v11, v7
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_56

    .line 140
    add-int/lit8 v4, v4, 0x3

    move v7, v6

    .end local v6    # "scratchEscapeCount":I
    .restart local v7    # "scratchEscapeCount":I
    goto :goto_6

    .line 144
    :cond_2a
    sub-int v8, p1, v7

    .line 145
    .local v8, "unescapedLength":I
    const/4 v1, 0x0

    .line 146
    .local v1, "escapedPosition":I
    const/4 v9, 0x0

    .line 147
    .local v9, "unescapedPosition":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2f
    if-ge v2, v7, :cond_4b

    .line 148
    :try_start_31
    sget-object v11, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    aget v3, v11, v2

    .line 149
    .local v3, "nextEscapePosition":I
    sub-int v0, v3, v1

    .line 150
    .local v0, "copyLength":I
    invoke-static {p0, v1, p0, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    add-int/2addr v9, v0

    .line 152
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "unescapedPosition":I
    .local v10, "unescapedPosition":I
    const/4 v11, 0x0

    aput-byte v11, p0, v9

    .line 153
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "unescapedPosition":I
    .restart local v9    # "unescapedPosition":I
    const/4 v11, 0x0

    aput-byte v11, p0, v10

    .line 154
    add-int/lit8 v11, v0, 0x3

    add-int/2addr v1, v11

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 157
    .end local v0    # "copyLength":I
    .end local v3    # "nextEscapePosition":I
    :cond_4b
    sub-int v5, v8, v9

    .line 158
    .local v5, "remainingLength":I
    invoke-static {p0, v1, p0, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    monitor-exit v12
    :try_end_51
    .catchall {:try_start_31 .. :try_end_51} :catchall_52

    return v8

    .line 160
    .end local v1    # "escapedPosition":I
    .end local v2    # "i":I
    .end local v5    # "remainingLength":I
    .end local v8    # "unescapedLength":I
    .end local v9    # "unescapedPosition":I
    :catchall_52
    move-exception v11

    move v6, v7

    .end local v7    # "scratchEscapeCount":I
    .restart local v6    # "scratchEscapeCount":I
    :goto_54
    :try_start_54
    monitor-exit v12
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_56

    throw v11

    :catchall_56
    move-exception v11

    goto :goto_54
.end method
