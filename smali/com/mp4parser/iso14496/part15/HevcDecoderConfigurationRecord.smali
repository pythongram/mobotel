.class public Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;
.super Ljava/lang/Object;
.source "HevcDecoderConfigurationRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;
    }
.end annotation


# instance fields
.field arrays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;",
            ">;"
        }
    .end annotation
.end field

.field avgFrameRate:I

.field bitDepthChromaMinus8:I

.field bitDepthLumaMinus8:I

.field chromaFormat:I

.field configurationVersion:I

.field constantFrameRate:I

.field frame_only_constraint_flag:Z

.field general_constraint_indicator_flags:J

.field general_level_idc:I

.field general_profile_compatibility_flags:J

.field general_profile_idc:I

.field general_profile_space:I

.field general_tier_flag:Z

.field interlaced_source_flag:Z

.field lengthSizeMinusOne:I

.field min_spatial_segmentation_idc:I

.field non_packed_constraint_flag:Z

.field numTemporalLayers:I

.field parallelismType:I

.field progressive_source_flag:Z

.field reserved1:I

.field reserved2:I

.field reserved3:I

.field reserved4:I

.field reserved5:I

.field temporalIdNested:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/16 v2, 0x3f

    const/16 v1, 0x1f

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/16 v0, 0xf

    iput v0, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved1:I

    .line 27
    iput v2, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved2:I

    .line 30
    iput v2, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved3:I

    .line 33
    iput v1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved4:I

    .line 36
    iput v1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved5:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->arrays:Ljava/util/List;

    .line 55
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 210
    if-ne p0, p1, :cond_5

    .line 239
    :cond_4
    :goto_4
    return v1

    .line 211
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 213
    check-cast v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;

    .line 215
    .local v0, "that":Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;
    iget v3, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->avgFrameRate:I

    iget v4, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->avgFrameRate:I

    if-eq v3, v4, :cond_1e

    move v1, v2

    goto :goto_4

    .line 216
    :cond_1e
    iget v3, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    iget v4, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    if-eq v3, v4, :cond_26

    move v1, v2

    goto :goto_4

    .line 217
    :cond_26
    iget v3, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    iget v4, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    if-eq v3, v4, :cond_2e

    move v1, v2

    goto :goto_4

    .line 218
    :cond_2e
    iget v3, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->chromaFormat:I

    iget v4, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->chromaFormat:I

    if-eq v3, v4, :cond_36

    move v1, v2

    goto :goto_4

    .line 219
    :cond_36
    iget v3, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->configurationVersion:I

    iget v4, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->configurationVersion:I

    if-eq v3, v4, :cond_3e

    move v1, v2

    goto :goto_4

    .line 220
    :cond_3e
    iget v3, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->constantFrameRate:I

    iget v4, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->constantFrameRate:I

    if-eq v3, v4, :cond_46

    move v1, v2

    goto :goto_4

    .line 221
    :cond_46
    iget-wide v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_constraint_indicator_flags:J

    iget-wide v6, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_constraint_indicator_flags:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_50

    move v1, v2

    goto :goto_4

    .line 222
    :cond_50
    iget v3, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_level_idc:I

    iget v4, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_level_idc:I

    if-eq v3, v4, :cond_58

    move v1, v2

    goto :goto_4

    .line 223
    :cond_58
    iget-wide v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_profile_compatibility_flags:J

    iget-wide v6, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_profile_compatibility_flags:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_62

    move v1, v2

    goto :goto_4

    .line 224
    :cond_62
    iget v3, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_profile_idc:I

    iget v4, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_profile_idc:I

    if-eq v3, v4, :cond_6a

    move v1, v2

    goto :goto_4

    .line 225
    :cond_6a
    iget v3, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_profile_space:I

    iget v4, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_profile_space:I

    if-eq v3, v4, :cond_72

    move v1, v2

    goto :goto_4

    .line 226
    :cond_72
    iget-boolean v3, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_tier_flag:Z

    iget-boolean v4, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_tier_flag:Z

    if-eq v3, v4, :cond_7a

    move v1, v2

    goto :goto_4

    .line 227
    :cond_7a
    iget v3, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->lengthSizeMinusOne:I

    iget v4, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->lengthSizeMinusOne:I

    if-eq v3, v4, :cond_82

    move v1, v2

    goto :goto_4

    .line 228
    :cond_82
    iget v3, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->min_spatial_segmentation_idc:I

    iget v4, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->min_spatial_segmentation_idc:I

    if-eq v3, v4, :cond_8b

    move v1, v2

    goto/16 :goto_4

    .line 229
    :cond_8b
    iget v3, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->numTemporalLayers:I

    iget v4, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->numTemporalLayers:I

    if-eq v3, v4, :cond_94

    move v1, v2

    goto/16 :goto_4

    .line 230
    :cond_94
    iget v3, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->parallelismType:I

    iget v4, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->parallelismType:I

    if-eq v3, v4, :cond_9d

    move v1, v2

    goto/16 :goto_4

    .line 231
    :cond_9d
    iget v3, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved1:I

    iget v4, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved1:I

    if-eq v3, v4, :cond_a6

    move v1, v2

    goto/16 :goto_4

    .line 232
    :cond_a6
    iget v3, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved2:I

    iget v4, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved2:I

    if-eq v3, v4, :cond_af

    move v1, v2

    goto/16 :goto_4

    .line 233
    :cond_af
    iget v3, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved3:I

    iget v4, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved3:I

    if-eq v3, v4, :cond_b8

    move v1, v2

    goto/16 :goto_4

    .line 234
    :cond_b8
    iget v3, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved4:I

    iget v4, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved4:I

    if-eq v3, v4, :cond_c1

    move v1, v2

    goto/16 :goto_4

    .line 235
    :cond_c1
    iget v3, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved5:I

    iget v4, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved5:I

    if-eq v3, v4, :cond_ca

    move v1, v2

    goto/16 :goto_4

    .line 236
    :cond_ca
    iget-boolean v3, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->temporalIdNested:Z

    iget-boolean v4, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->temporalIdNested:Z

    if-eq v3, v4, :cond_d3

    move v1, v2

    goto/16 :goto_4

    .line 237
    :cond_d3
    iget-object v3, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->arrays:Ljava/util/List;

    if-eqz v3, :cond_e4

    iget-object v3, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->arrays:Ljava/util/List;

    iget-object v4, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->arrays:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_e1
    move v1, v2

    goto/16 :goto_4

    :cond_e4
    iget-object v3, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->arrays:Ljava/util/List;

    if-eqz v3, :cond_4

    goto :goto_e1
.end method

.method public getArrays()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;",
            ">;"
        }
    .end annotation

    .prologue
    .line 436
    iget-object v0, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->arrays:Ljava/util/List;

    return-object v0
.end method

.method public getAvgFrameRate()I
    .registers 2

    .prologue
    .line 396
    iget v0, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->avgFrameRate:I

    return v0
.end method

.method public getBitDepthChromaMinus8()I
    .registers 2

    .prologue
    .line 388
    iget v0, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    return v0
.end method

.method public getBitDepthLumaMinus8()I
    .registers 2

    .prologue
    .line 380
    iget v0, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    return v0
.end method

.method public getChromaFormat()I
    .registers 2

    .prologue
    .line 372
    iget v0, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->chromaFormat:I

    return v0
.end method

.method public getConfigurationVersion()I
    .registers 2

    .prologue
    .line 300
    iget v0, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->configurationVersion:I

    return v0
.end method

.method public getConstantFrameRate()I
    .registers 2

    .prologue
    .line 428
    iget v0, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->constantFrameRate:I

    return v0
.end method

.method public getGeneral_constraint_indicator_flags()J
    .registers 3

    .prologue
    .line 340
    iget-wide v0, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_constraint_indicator_flags:J

    return-wide v0
.end method

.method public getGeneral_level_idc()I
    .registers 2

    .prologue
    .line 348
    iget v0, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_level_idc:I

    return v0
.end method

.method public getGeneral_profile_compatibility_flags()J
    .registers 3

    .prologue
    .line 332
    iget-wide v0, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_profile_compatibility_flags:J

    return-wide v0
.end method

.method public getGeneral_profile_idc()I
    .registers 2

    .prologue
    .line 324
    iget v0, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_profile_idc:I

    return v0
.end method

.method public getGeneral_profile_space()I
    .registers 2

    .prologue
    .line 308
    iget v0, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_profile_space:I

    return v0
.end method

.method public getLengthSizeMinusOne()I
    .registers 2

    .prologue
    .line 412
    iget v0, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->lengthSizeMinusOne:I

    return v0
.end method

.method public getMin_spatial_segmentation_idc()I
    .registers 2

    .prologue
    .line 356
    iget v0, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->min_spatial_segmentation_idc:I

    return v0
.end method

.method public getNumTemporalLayers()I
    .registers 2

    .prologue
    .line 404
    iget v0, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->numTemporalLayers:I

    return v0
.end method

.method public getParallelismType()I
    .registers 2

    .prologue
    .line 364
    iget v0, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->parallelismType:I

    return v0
.end method

.method public getSize()I
    .registers 7

    .prologue
    .line 197
    const/16 v2, 0x17

    .line 198
    .local v2, "size":I
    iget-object v3, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->arrays:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_f

    .line 205
    return v2

    .line 198
    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;

    .line 199
    .local v0, "array":Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;
    add-int/lit8 v2, v2, 0x3

    .line 200
    iget-object v4, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;->nalUnits:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 201
    .local v1, "nalUnit":[B
    add-int/lit8 v2, v2, 0x2

    .line 202
    array-length v5, v1

    add-int/2addr v2, v5

    goto :goto_1d
.end method

.method public hashCode()I
    .registers 10

    .prologue
    const/16 v8, 0x20

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 244
    iget v0, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->configurationVersion:I

    .line 245
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_profile_space:I

    add-int v0, v1, v4

    .line 246
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_tier_flag:Z

    if-eqz v1, :cond_a2

    move v1, v2

    :goto_13
    add-int v0, v4, v1

    .line 247
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_profile_idc:I

    add-int v0, v1, v4

    .line 248
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_profile_compatibility_flags:J

    iget-wide v6, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_profile_compatibility_flags:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v0, v1, v4

    .line 249
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_constraint_indicator_flags:J

    iget-wide v6, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_constraint_indicator_flags:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v0, v1, v4

    .line 250
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_level_idc:I

    add-int v0, v1, v4

    .line 251
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved1:I

    add-int v0, v1, v4

    .line 252
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->min_spatial_segmentation_idc:I

    add-int v0, v1, v4

    .line 253
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved2:I

    add-int v0, v1, v4

    .line 254
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->parallelismType:I

    add-int v0, v1, v4

    .line 255
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved3:I

    add-int v0, v1, v4

    .line 256
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->chromaFormat:I

    add-int v0, v1, v4

    .line 257
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved4:I

    add-int v0, v1, v4

    .line 258
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    add-int v0, v1, v4

    .line 259
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved5:I

    add-int v0, v1, v4

    .line 260
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    add-int v0, v1, v4

    .line 261
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->avgFrameRate:I

    add-int v0, v1, v4

    .line 262
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->constantFrameRate:I

    add-int v0, v1, v4

    .line 263
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->numTemporalLayers:I

    add-int v0, v1, v4

    .line 264
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->temporalIdNested:Z

    if-eqz v4, :cond_a5

    :goto_8b
    add-int v0, v1, v2

    .line 265
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->lengthSizeMinusOne:I

    add-int v0, v1, v2

    .line 266
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->arrays:Ljava/util/List;

    if-eqz v2, :cond_9f

    iget-object v2, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->arrays:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v3

    :cond_9f
    add-int v0, v1, v3

    .line 267
    return v0

    :cond_a2
    move v1, v3

    .line 246
    goto/16 :goto_13

    :cond_a5
    move v2, v3

    .line 264
    goto :goto_8b
.end method

.method public isFrame_only_constraint_flag()Z
    .registers 2

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->frame_only_constraint_flag:Z

    return v0
.end method

.method public isGeneral_tier_flag()Z
    .registers 2

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_tier_flag:Z

    return v0
.end method

.method public isInterlaced_source_flag()Z
    .registers 2

    .prologue
    .line 460
    iget-boolean v0, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->interlaced_source_flag:Z

    return v0
.end method

.method public isNon_packed_constraint_flag()Z
    .registers 2

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->non_packed_constraint_flag:Z

    return v0
.end method

.method public isProgressive_source_flag()Z
    .registers 2

    .prologue
    .line 468
    iget-boolean v0, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->progressive_source_flag:Z

    return v0
.end method

.method public isTemporalIdNested()Z
    .registers 2

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->temporalIdNested:Z

    return v0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .registers 14
    .param p1, "content"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 59
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v8

    iput v8, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->configurationVersion:I

    .line 66
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 67
    .local v0, "a":I
    and-int/lit16 v8, v0, 0xc0

    shr-int/lit8 v8, v8, 0x6

    iput v8, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_profile_space:I

    .line 68
    and-int/lit8 v8, v0, 0x20

    if-lez v8, :cond_f3

    const/4 v8, 0x1

    :goto_15
    iput-boolean v8, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_tier_flag:Z

    .line 69
    and-int/lit8 v8, v0, 0x1f

    iput v8, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_profile_idc:I

    .line 72
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_profile_compatibility_flags:J

    .line 76
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt48(Ljava/nio/ByteBuffer;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_constraint_indicator_flags:J

    .line 78
    iget-wide v8, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_constraint_indicator_flags:J

    const/16 v10, 0x2c

    shr-long/2addr v8, v10

    const-wide/16 v10, 0x8

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_f6

    const/4 v8, 0x1

    :goto_36
    iput-boolean v8, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->frame_only_constraint_flag:Z

    .line 79
    iget-wide v8, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_constraint_indicator_flags:J

    const/16 v10, 0x2c

    shr-long/2addr v8, v10

    const-wide/16 v10, 0x4

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_f9

    const/4 v8, 0x1

    :goto_47
    iput-boolean v8, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->non_packed_constraint_flag:Z

    .line 80
    iget-wide v8, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_constraint_indicator_flags:J

    const/16 v10, 0x2c

    shr-long/2addr v8, v10

    const-wide/16 v10, 0x2

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_fc

    const/4 v8, 0x1

    :goto_58
    iput-boolean v8, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->interlaced_source_flag:Z

    .line 81
    iget-wide v8, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_constraint_indicator_flags:J

    const/16 v10, 0x2c

    shr-long/2addr v8, v10

    const-wide/16 v10, 0x1

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_ff

    const/4 v8, 0x1

    :goto_69
    iput-boolean v8, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->progressive_source_flag:Z

    .line 83
    iget-wide v8, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_constraint_indicator_flags:J

    const-wide v10, 0x7fffffffffffL

    and-long/2addr v8, v10

    iput-wide v8, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_constraint_indicator_flags:J

    .line 86
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v8

    iput v8, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_level_idc:I

    .line 92
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 93
    const v8, 0xf000

    and-int/2addr v8, v0

    shr-int/lit8 v8, v8, 0xc

    iput v8, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved1:I

    .line 94
    and-int/lit16 v8, v0, 0xfff

    iput v8, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->min_spatial_segmentation_idc:I

    .line 96
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 97
    and-int/lit16 v8, v0, 0xfc

    shr-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved2:I

    .line 98
    and-int/lit8 v8, v0, 0x3

    iput v8, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->parallelismType:I

    .line 100
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 101
    and-int/lit16 v8, v0, 0xfc

    shr-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved3:I

    .line 102
    and-int/lit8 v8, v0, 0x3

    iput v8, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->chromaFormat:I

    .line 104
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 105
    and-int/lit16 v8, v0, 0xf8

    shr-int/lit8 v8, v8, 0x3

    iput v8, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved4:I

    .line 106
    and-int/lit8 v8, v0, 0x7

    iput v8, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    .line 108
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 109
    and-int/lit16 v8, v0, 0xf8

    shr-int/lit8 v8, v8, 0x3

    iput v8, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved5:I

    .line 110
    and-int/lit8 v8, v0, 0x7

    iput v8, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    .line 112
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v8

    iput v8, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->avgFrameRate:I

    .line 114
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 115
    and-int/lit16 v8, v0, 0xc0

    shr-int/lit8 v8, v8, 0x6

    iput v8, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->constantFrameRate:I

    .line 116
    and-int/lit8 v8, v0, 0x38

    shr-int/lit8 v8, v8, 0x3

    iput v8, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->numTemporalLayers:I

    .line 117
    and-int/lit8 v8, v0, 0x4

    if-lez v8, :cond_102

    const/4 v8, 0x1

    :goto_de
    iput-boolean v8, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->temporalIdNested:Z

    .line 118
    and-int/lit8 v8, v0, 0x3

    iput v8, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->lengthSizeMinusOne:I

    .line 121
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 122
    .local v7, "numOfArrays":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->arrays:Ljava/util/List;

    .line 123
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f0
    if-lt v2, v7, :cond_104

    .line 141
    return-void

    .line 68
    .end local v2    # "i":I
    .end local v7    # "numOfArrays":I
    :cond_f3
    const/4 v8, 0x0

    goto/16 :goto_15

    .line 78
    :cond_f6
    const/4 v8, 0x0

    goto/16 :goto_36

    .line 79
    :cond_f9
    const/4 v8, 0x0

    goto/16 :goto_47

    .line 80
    :cond_fc
    const/4 v8, 0x0

    goto/16 :goto_58

    .line 81
    :cond_ff
    const/4 v8, 0x0

    goto/16 :goto_69

    .line 117
    :cond_102
    const/4 v8, 0x0

    goto :goto_de

    .line 124
    .restart local v2    # "i":I
    .restart local v7    # "numOfArrays":I
    :cond_104
    new-instance v1, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;

    invoke-direct {v1}, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;-><init>()V

    .line 126
    .local v1, "array":Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 127
    and-int/lit16 v8, v0, 0x80

    if-lez v8, :cond_135

    const/4 v8, 0x1

    :goto_112
    iput-boolean v8, v1, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;->array_completeness:Z

    .line 128
    and-int/lit8 v8, v0, 0x40

    if-lez v8, :cond_137

    const/4 v8, 0x1

    :goto_119
    iput-boolean v8, v1, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;->reserved:Z

    .line 129
    and-int/lit8 v8, v0, 0x3f

    iput v8, v1, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;->nal_unit_type:I

    .line 131
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 132
    .local v6, "numNalus":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;->nalUnits:Ljava/util/List;

    .line 133
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_12b
    if-lt v3, v6, :cond_139

    .line 139
    iget-object v8, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->arrays:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_f0

    .line 127
    .end local v3    # "j":I
    .end local v6    # "numNalus":I
    :cond_135
    const/4 v8, 0x0

    goto :goto_112

    .line 128
    :cond_137
    const/4 v8, 0x0

    goto :goto_119

    .line 134
    .restart local v3    # "j":I
    .restart local v6    # "numNalus":I
    :cond_139
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 135
    .local v5, "nalUnitLength":I
    new-array v4, v5, [B

    .line 136
    .local v4, "nal":[B
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 137
    iget-object v8, v1, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;->nalUnits:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    add-int/lit8 v3, v3, 0x1

    goto :goto_12b
.end method

.method public setArrays(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 440
    .local p1, "arrays":Ljava/util/List;, "Ljava/util/List<Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;>;"
    iput-object p1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->arrays:Ljava/util/List;

    .line 441
    return-void
.end method

.method public setAvgFrameRate(I)V
    .registers 2
    .param p1, "avgFrameRate"    # I

    .prologue
    .line 400
    iput p1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->avgFrameRate:I

    .line 401
    return-void
.end method

.method public setBitDepthChromaMinus8(I)V
    .registers 2
    .param p1, "bitDepthChromaMinus8"    # I

    .prologue
    .line 392
    iput p1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    .line 393
    return-void
.end method

.method public setBitDepthLumaMinus8(I)V
    .registers 2
    .param p1, "bitDepthLumaMinus8"    # I

    .prologue
    .line 384
    iput p1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    .line 385
    return-void
.end method

.method public setChromaFormat(I)V
    .registers 2
    .param p1, "chromaFormat"    # I

    .prologue
    .line 376
    iput p1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->chromaFormat:I

    .line 377
    return-void
.end method

.method public setConfigurationVersion(I)V
    .registers 2
    .param p1, "configurationVersion"    # I

    .prologue
    .line 304
    iput p1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->configurationVersion:I

    .line 305
    return-void
.end method

.method public setConstantFrameRate(I)V
    .registers 2
    .param p1, "constantFrameRate"    # I

    .prologue
    .line 432
    iput p1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->constantFrameRate:I

    .line 433
    return-void
.end method

.method public setFrame_only_constraint_flag(Z)V
    .registers 2
    .param p1, "frame_only_constraint_flag"    # Z

    .prologue
    .line 448
    iput-boolean p1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->frame_only_constraint_flag:Z

    .line 449
    return-void
.end method

.method public setGeneral_constraint_indicator_flags(J)V
    .registers 4
    .param p1, "general_constraint_indicator_flags"    # J

    .prologue
    .line 344
    iput-wide p1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_constraint_indicator_flags:J

    .line 345
    return-void
.end method

.method public setGeneral_level_idc(I)V
    .registers 2
    .param p1, "general_level_idc"    # I

    .prologue
    .line 352
    iput p1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_level_idc:I

    .line 353
    return-void
.end method

.method public setGeneral_profile_compatibility_flags(J)V
    .registers 4
    .param p1, "general_profile_compatibility_flags"    # J

    .prologue
    .line 336
    iput-wide p1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_profile_compatibility_flags:J

    .line 337
    return-void
.end method

.method public setGeneral_profile_idc(I)V
    .registers 2
    .param p1, "general_profile_idc"    # I

    .prologue
    .line 328
    iput p1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_profile_idc:I

    .line 329
    return-void
.end method

.method public setGeneral_profile_space(I)V
    .registers 2
    .param p1, "general_profile_space"    # I

    .prologue
    .line 312
    iput p1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_profile_space:I

    .line 313
    return-void
.end method

.method public setGeneral_tier_flag(Z)V
    .registers 2
    .param p1, "general_tier_flag"    # Z

    .prologue
    .line 320
    iput-boolean p1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_tier_flag:Z

    .line 321
    return-void
.end method

.method public setInterlaced_source_flag(Z)V
    .registers 2
    .param p1, "interlaced_source_flag"    # Z

    .prologue
    .line 464
    iput-boolean p1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->interlaced_source_flag:Z

    .line 465
    return-void
.end method

.method public setLengthSizeMinusOne(I)V
    .registers 2
    .param p1, "lengthSizeMinusOne"    # I

    .prologue
    .line 416
    iput p1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->lengthSizeMinusOne:I

    .line 417
    return-void
.end method

.method public setMin_spatial_segmentation_idc(I)V
    .registers 2
    .param p1, "min_spatial_segmentation_idc"    # I

    .prologue
    .line 360
    iput p1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->min_spatial_segmentation_idc:I

    .line 361
    return-void
.end method

.method public setNon_packed_constraint_flag(Z)V
    .registers 2
    .param p1, "non_packed_constraint_flag"    # Z

    .prologue
    .line 456
    iput-boolean p1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->non_packed_constraint_flag:Z

    .line 457
    return-void
.end method

.method public setNumTemporalLayers(I)V
    .registers 2
    .param p1, "numTemporalLayers"    # I

    .prologue
    .line 408
    iput p1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->numTemporalLayers:I

    .line 409
    return-void
.end method

.method public setParallelismType(I)V
    .registers 2
    .param p1, "parallelismType"    # I

    .prologue
    .line 368
    iput p1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->parallelismType:I

    .line 369
    return-void
.end method

.method public setProgressive_source_flag(Z)V
    .registers 2
    .param p1, "progressive_source_flag"    # Z

    .prologue
    .line 472
    iput-boolean p1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->progressive_source_flag:Z

    .line 473
    return-void
.end method

.method public setTemporalIdNested(Z)V
    .registers 2
    .param p1, "temporalIdNested"    # Z

    .prologue
    .line 424
    iput-boolean p1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->temporalIdNested:Z

    .line 425
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v5, 0x3f

    const/16 v4, 0x1f

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HEVCDecoderConfigurationRecord{configurationVersion="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    iget v1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->configurationVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 274
    const-string v1, ", general_profile_space="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_profile_space:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 275
    const-string v1, ", general_tier_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_tier_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 276
    const-string v1, ", general_profile_idc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_profile_idc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 277
    const-string v1, ", general_profile_compatibility_flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_profile_compatibility_flags:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 278
    const-string v1, ", general_constraint_indicator_flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_constraint_indicator_flags:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 279
    const-string v1, ", general_level_idc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_level_idc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 280
    iget v0, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved1:I

    const/16 v2, 0xf

    if-eq v0, v2, :cond_167

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ", reserved1="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_70
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 281
    const-string v1, ", min_spatial_segmentation_idc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->min_spatial_segmentation_idc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 282
    iget v0, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved2:I

    if-eq v0, v5, :cond_16b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ", reserved2="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_95
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 283
    const-string v1, ", parallelismType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->parallelismType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 284
    iget v0, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved3:I

    if-eq v0, v5, :cond_16f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ", reserved3="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved3:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_ba
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 285
    const-string v1, ", chromaFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->chromaFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 286
    iget v0, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved4:I

    if-eq v0, v4, :cond_173

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ", reserved4="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved4:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_df
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 287
    const-string v1, ", bitDepthLumaMinus8="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 288
    iget v0, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved5:I

    if-eq v0, v4, :cond_177

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ", reserved5="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved5:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_104
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 289
    const-string v1, ", bitDepthChromaMinus8="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 290
    const-string v1, ", avgFrameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->avgFrameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 291
    const-string v1, ", constantFrameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->constantFrameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 292
    const-string v1, ", numTemporalLayers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->numTemporalLayers:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 293
    const-string v1, ", temporalIdNested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->temporalIdNested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 294
    const-string v1, ", lengthSizeMinusOne="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->lengthSizeMinusOne:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 295
    const-string v1, ", arrays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->arrays:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 296
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 280
    :cond_167
    const-string v0, ""

    goto/16 :goto_70

    .line 282
    :cond_16b
    const-string v0, ""

    goto/16 :goto_95

    .line 284
    :cond_16f
    const-string v0, ""

    goto/16 :goto_ba

    .line 286
    :cond_173
    const-string v0, ""

    goto/16 :goto_df

    .line 288
    :cond_177
    const-string v0, ""

    goto :goto_104
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .registers 10
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v5, 0x0

    .line 144
    iget v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->configurationVersion:I

    invoke-static {p1, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 147
    iget v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_profile_space:I

    shl-int/lit8 v6, v4, 0x6

    iget-boolean v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_tier_flag:Z

    if-eqz v4, :cond_b0

    const/16 v4, 0x20

    :goto_10
    add-int/2addr v4, v6

    iget v6, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_profile_idc:I

    add-int/2addr v4, v6

    invoke-static {p1, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 149
    iget-wide v6, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_profile_compatibility_flags:J

    invoke-static {p1, v6, v7}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 150
    iget-wide v0, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_constraint_indicator_flags:J

    .line 151
    .local v0, "_general_constraint_indicator_flags":J
    iget-boolean v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->frame_only_constraint_flag:Z

    if-eqz v4, :cond_28

    .line 152
    const-wide v6, 0x800000000000L

    or-long/2addr v0, v6

    .line 154
    :cond_28
    iget-boolean v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->non_packed_constraint_flag:Z

    if-eqz v4, :cond_32

    .line 155
    const-wide v6, 0x400000000000L

    or-long/2addr v0, v6

    .line 157
    :cond_32
    iget-boolean v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->interlaced_source_flag:Z

    if-eqz v4, :cond_3c

    .line 158
    const-wide v6, 0x200000000000L

    or-long/2addr v0, v6

    .line 160
    :cond_3c
    iget-boolean v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->progressive_source_flag:Z

    if-eqz v4, :cond_46

    .line 161
    const-wide v6, 0x100000000000L

    or-long/2addr v0, v6

    .line 164
    :cond_46
    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt48(Ljava/nio/ByteBuffer;J)V

    .line 167
    iget v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_level_idc:I

    invoke-static {p1, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 169
    iget v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved1:I

    shl-int/lit8 v4, v4, 0xc

    iget v6, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->min_spatial_segmentation_idc:I

    add-int/2addr v4, v6

    invoke-static {p1, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 171
    iget v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved2:I

    shl-int/lit8 v4, v4, 0x2

    iget v6, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->parallelismType:I

    add-int/2addr v4, v6

    invoke-static {p1, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 173
    iget v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved3:I

    shl-int/lit8 v4, v4, 0x2

    iget v6, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->chromaFormat:I

    add-int/2addr v4, v6

    invoke-static {p1, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 175
    iget v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved4:I

    shl-int/lit8 v4, v4, 0x3

    iget v6, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    add-int/2addr v4, v6

    invoke-static {p1, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 177
    iget v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->reserved5:I

    shl-int/lit8 v4, v4, 0x3

    iget v6, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    add-int/2addr v4, v6

    invoke-static {p1, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 179
    iget v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->avgFrameRate:I

    invoke-static {p1, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 181
    iget v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->constantFrameRate:I

    shl-int/lit8 v4, v4, 0x6

    iget v6, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->numTemporalLayers:I

    shl-int/lit8 v6, v6, 0x3

    add-int/2addr v6, v4

    iget-boolean v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->temporalIdNested:Z

    if-eqz v4, :cond_b3

    const/4 v4, 0x4

    :goto_93
    add-int/2addr v4, v6

    iget v6, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->lengthSizeMinusOne:I

    add-int/2addr v4, v6

    invoke-static {p1, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 183
    iget-object v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->arrays:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {p1, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 185
    iget-object v4, p0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->arrays:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_b5

    .line 194
    return-void

    .end local v0    # "_general_constraint_indicator_flags":J
    :cond_b0
    move v4, v5

    .line 147
    goto/16 :goto_10

    .restart local v0    # "_general_constraint_indicator_flags":J
    :cond_b3
    move v4, v5

    .line 181
    goto :goto_93

    .line 185
    :cond_b5
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;

    .line 186
    .local v2, "array":Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;
    iget-boolean v4, v2, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;->array_completeness:Z

    if-eqz v4, :cond_f1

    const/16 v4, 0x80

    :goto_c1
    iget-boolean v6, v2, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;->reserved:Z

    if-eqz v6, :cond_f3

    const/16 v6, 0x40

    :goto_c7
    add-int/2addr v4, v6

    iget v6, v2, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;->nal_unit_type:I

    add-int/2addr v4, v6

    invoke-static {p1, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 188
    iget-object v4, v2, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;->nalUnits:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {p1, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 189
    iget-object v4, v2, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;->nalUnits:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_dd
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 190
    .local v3, "nalUnit":[B
    array-length v6, v3

    invoke-static {p1, v6}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 191
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_dd

    .end local v3    # "nalUnit":[B
    :cond_f1
    move v4, v5

    .line 186
    goto :goto_c1

    :cond_f3
    move v6, v5

    goto :goto_c7
.end method
