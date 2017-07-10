.class public Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;
.super Ljava/lang/Object;
.source "H265TrackImplOld.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$LookAhead;,
        Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$NalUnitHeader;,
        Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$PARSE_STATE;
    }
.end annotation


# static fields
.field public static final AUD_NUT:I = 0x23

.field private static final BLA_N_LP:I = 0x12

.field private static final BLA_W_LP:I = 0x10

.field private static final BLA_W_RADL:I = 0x11

.field private static final BUFFER:J = 0x100000L

.field private static final CRA_NUT:I = 0x15

.field private static final IDR_N_LP:I = 0x14

.field private static final IDR_W_RADL:I = 0x13

.field public static final PPS_NUT:I = 0x22

.field public static final PREFIX_SEI_NUT:I = 0x27

.field private static final RADL_N:I = 0x6

.field private static final RADL_R:I = 0x7

.field private static final RASL_N:I = 0x8

.field private static final RASL_R:I = 0x9

.field public static final RSV_NVCL41:I = 0x29

.field public static final RSV_NVCL42:I = 0x2a

.field public static final RSV_NVCL43:I = 0x2b

.field public static final RSV_NVCL44:I = 0x2c

.field public static final SPS_NUT:I = 0x21

.field private static final STSA_N:I = 0x4

.field private static final STSA_R:I = 0x5

.field private static final TRAIL_N:I = 0x0

.field private static final TRAIL_R:I = 0x1

.field private static final TSA_N:I = 0x2

.field private static final TSA_R:I = 0x3

.field public static final UNSPEC48:I = 0x30

.field public static final UNSPEC49:I = 0x31

.field public static final UNSPEC50:I = 0x32

.field public static final UNSPEC51:I = 0x33

.field public static final UNSPEC52:I = 0x34

.field public static final UNSPEC53:I = 0x35

.field public static final UNSPEC54:I = 0x36

.field public static final UNSPEC55:I = 0x37

.field public static final VPS_NUT:I = 0x20


# instance fields
.field pictureParamterSets:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field samples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation
.end field

.field sequenceParamterSets:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field syncSamples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field videoParamterSets:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/DataSource;)V
    .registers 20
    .param p1, "ds"    # Lcom/googlecode/mp4parser/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->videoParamterSets:Ljava/util/LinkedHashMap;

    .line 62
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->sequenceParamterSets:Ljava/util/LinkedHashMap;

    .line 63
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->pictureParamterSets:Ljava/util/LinkedHashMap;

    .line 64
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->syncSamples:Ljava/util/List;

    .line 65
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->samples:Ljava/util/List;

    .line 68
    new-instance v7, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$LookAhead;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v7, v0, v1}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$LookAhead;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;Lcom/googlecode/mp4parser/DataSource;)V

    .line 70
    .local v7, "la":Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$LookAhead;
    const-wide/16 v10, 0x1

    .line 71
    .local v10, "sampleNo":J
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v3, "accessUnit":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    const/4 v4, 0x0

    .line 75
    .local v4, "accessUnitNalType":I
    :cond_41
    :goto_41
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->findNextNal(Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$LookAhead;)Ljava/nio/ByteBuffer;

    move-result-object v8

    .local v8, "nal":Ljava/nio/ByteBuffer;
    if-nez v8, :cond_61

    .line 119
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 120
    new-instance v6, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;

    invoke-direct {v6}, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;-><init>()V

    .line 122
    .local v6, "hvcC":Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;
    invoke-direct/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->getArrays()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->setArrays(Ljava/util/List;)V

    .line 123
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->setAvgFrameRate(I)V

    .line 124
    return-void

    .line 77
    .end local v6    # "hvcC":Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;
    :cond_61
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->getNalUnitHeader(Ljava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$NalUnitHeader;

    move-result-object v9

    .line 81
    .local v9, "nalUnitHeader":Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$NalUnitHeader;
    iget v12, v9, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$NalUnitHeader;->nalUnitType:I

    packed-switch v12, :pswitch_data_138

    .line 92
    :goto_6c
    iget v12, v9, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$NalUnitHeader;->nalUnitType:I

    const/16 v13, 0x20

    if-ge v12, v13, :cond_74

    .line 93
    iget v4, v9, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$NalUnitHeader;->nalUnitType:I

    .line 97
    :cond_74
    iget v12, v9, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$NalUnitHeader;->nalUnitType:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v8, v3}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->isFirstOfAU(ILjava/nio/ByteBuffer;Ljava/util/List;)Z

    move-result v12

    if-eqz v12, :cond_af

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_af

    .line 99
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v13, "##########################"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_8f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_eb

    .line 106
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v13, "                          ##########################"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->samples:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->createSample(Ljava/util/List;)Lcom/googlecode/mp4parser/authoring/Sample;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 109
    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    .line 111
    :cond_af
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    const/16 v12, 0x10

    if-lt v4, v12, :cond_41

    const/16 v12, 0x15

    if-gt v4, v12, :cond_41

    .line 113
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->syncSamples:Ljava/util/List;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_41

    .line 83
    :pswitch_c7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->videoParamterSets:Ljava/util/LinkedHashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6c

    .line 86
    :pswitch_d3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->sequenceParamterSets:Ljava/util/LinkedHashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6c

    .line 89
    :pswitch_df
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->pictureParamterSets:Ljava/util/LinkedHashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6c

    .line 100
    :cond_eb
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 101
    .local v5, "byteBuffer":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->getNalUnitHeader(Ljava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$NalUnitHeader;

    move-result-object v2

    .line 102
    .local v2, "_nalUnitHeader":Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$NalUnitHeader;
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v14, "type: %3d - layer: %3d - tempId: %3d - size: %3d"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    .line 103
    iget v0, v2, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$NalUnitHeader;->nalUnitType:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    iget v0, v2, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$NalUnitHeader;->nuhLayerId:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    iget v0, v2, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$NalUnitHeader;->nuhTemporalIdPlusOne:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    .line 102
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_8f

    .line 81
    nop

    :pswitch_data_138
    .packed-switch 0x20
        :pswitch_c7
        :pswitch_d3
        :pswitch_df
    .end packed-switch
.end method

.method private findNextNal(Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$LookAhead;)Ljava/nio/ByteBuffer;
    .registers 3
    .param p1, "la"    # Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$LookAhead;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$LookAhead;->nextThreeEquals001()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 135
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$LookAhead;->discardNext3AndMarkStart()V

    .line 137
    :goto_9
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$LookAhead;->nextThreeEquals000or001orEof()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 140
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$LookAhead;->getNal()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 142
    :goto_13
    return-object v0

    .line 133
    :cond_14
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$LookAhead;->discardByte()V

    goto :goto_0

    .line 142
    :catch_18
    move-exception v0

    const/4 v0, 0x0

    goto :goto_13

    .line 138
    :cond_1b
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$LookAhead;->discardByte()V
    :try_end_1e
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_1e} :catch_18

    goto :goto_9
.end method

.method private getArrays()Ljava/util/List;
    .registers 11
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
    const/16 v9, 0x21

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 340
    new-instance v4, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;

    invoke-direct {v4}, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;-><init>()V

    .line 341
    .local v4, "vpsArray":Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;
    iput-boolean v8, v4, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;->array_completeness:Z

    .line 342
    const/16 v5, 0x20

    iput v5, v4, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;->nal_unit_type:I

    .line 343
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;->nalUnits:Ljava/util/List;

    .line 344
    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->videoParamterSets:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_75

    .line 351
    new-instance v3, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;

    invoke-direct {v3}, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;-><init>()V

    .line 352
    .local v3, "spsArray":Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;
    iput-boolean v8, v3, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;->array_completeness:Z

    .line 353
    iput v9, v3, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;->nal_unit_type:I

    .line 354
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v3, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;->nalUnits:Ljava/util/List;

    .line 355
    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->sequenceParamterSets:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_40
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_8d

    .line 362
    new-instance v1, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;

    invoke-direct {v1}, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;-><init>()V

    .line 363
    .local v1, "ppsArray":Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;
    iput-boolean v8, v1, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;->array_completeness:Z

    .line 364
    iput v9, v1, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;->nal_unit_type:I

    .line 365
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;->nalUnits:Ljava/util/List;

    .line 366
    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->pictureParamterSets:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_60
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_a5

    .line 372
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;

    aput-object v4, v5, v7

    aput-object v3, v5, v8

    const/4 v6, 0x2

    aput-object v1, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    return-object v5

    .line 344
    .end local v1    # "ppsArray":Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;
    .end local v3    # "spsArray":Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;
    :cond_75
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 345
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    new-array v2, v6, [B

    .line 346
    .local v2, "ps":[B
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 347
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 348
    iget-object v6, v4, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;->nalUnits:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 355
    .end local v0    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v2    # "ps":[B
    .restart local v3    # "spsArray":Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;
    :cond_8d
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 356
    .restart local v0    # "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    new-array v2, v6, [B

    .line 357
    .restart local v2    # "ps":[B
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 358
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 359
    iget-object v6, v3, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;->nalUnits:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 366
    .end local v0    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v2    # "ps":[B
    .restart local v1    # "ppsArray":Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;
    :cond_a5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 367
    .restart local v0    # "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    new-array v2, v6, [B

    .line 368
    .restart local v2    # "ps":[B
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 369
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 370
    iget-object v6, v1, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;->nalUnits:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_60
.end method

.method private hrd_parameters(ZILcom/googlecode/mp4parser/h264/read/CAVLCReader;)V
    .registers 15
    .param p1, "commonInfPresentFlag"    # Z
    .param p2, "maxNumSubLayersMinus1"    # I
    .param p3, "r"    # Lcom/googlecode/mp4parser/h264/read/CAVLCReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    const/4 v6, 0x0

    .line 270
    .local v6, "nal_hrd_parameters_present_flag":Z
    const/4 v8, 0x0

    .line 271
    .local v8, "vcl_hrd_parameters_present_flag":Z
    const/4 v7, 0x0

    .line 272
    .local v7, "sub_pic_hrd_params_present_flag":Z
    if-eqz p1, :cond_5b

    .line 273
    const-string v9, "nal_hrd_parameters_present_flag"

    invoke-virtual {p3, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v6

    .line 274
    const-string v9, "vcl_hrd_parameters_present_flag"

    invoke-virtual {p3, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v8

    .line 275
    if-nez v6, :cond_15

    if-eqz v8, :cond_5b

    .line 276
    :cond_15
    const-string v9, "sub_pic_hrd_params_present_flag"

    invoke-virtual {p3, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v7

    .line 277
    if-eqz v7, :cond_35

    .line 278
    const/16 v9, 0x8

    const-string v10, "tick_divisor_minus2"

    invoke-virtual {p3, v9, v10}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    .line 279
    const/4 v9, 0x5

    const-string v10, "du_cpb_removal_delay_increment_length_minus1"

    invoke-virtual {p3, v9, v10}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    .line 280
    const-string v9, "sub_pic_cpb_params_in_pic_timing_sei_flag"

    invoke-virtual {p3, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    .line 281
    const/4 v9, 0x5

    const-string v10, "dpb_output_delay_du_length_minus1"

    invoke-virtual {p3, v9, v10}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    .line 284
    :cond_35
    const/4 v9, 0x4

    const-string v10, "bit_rate_scale"

    invoke-virtual {p3, v9, v10}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    .line 285
    const/4 v9, 0x4

    const-string v10, "cpb_size_scale"

    invoke-virtual {p3, v9, v10}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    .line 286
    if-eqz v7, :cond_49

    .line 287
    const/4 v9, 0x4

    const-string v10, "cpb_size_du_scale"

    invoke-virtual {p3, v9, v10}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    .line 289
    :cond_49
    const/4 v9, 0x5

    const-string v10, "initial_cpb_removal_delay_length_minus1"

    invoke-virtual {p3, v9, v10}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    .line 290
    const/4 v9, 0x5

    const-string v10, "au_cpb_removal_delay_length_minus1"

    invoke-virtual {p3, v9, v10}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    .line 291
    const/4 v9, 0x5

    const-string v10, "dpb_output_delay_length_minus1"

    invoke-virtual {p3, v9, v10}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    .line 294
    :cond_5b
    new-array v2, p2, [Z

    .line 295
    .local v2, "fixed_pic_rate_general_flag":[Z
    new-array v3, p2, [Z

    .line 296
    .local v3, "fixed_pic_rate_within_cvs_flag":[Z
    new-array v5, p2, [Z

    .line 297
    .local v5, "low_delay_hrd_flag":[Z
    new-array v0, p2, [I

    .line 298
    .local v0, "cpb_cnt_minus1":[I
    new-array v1, p2, [I

    .line 299
    .local v1, "elemental_duration_in_tc_minus1":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_66
    if-le v4, p2, :cond_69

    .line 320
    return-void

    .line 300
    :cond_69
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "fixed_pic_rate_general_flag["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v9

    aput-boolean v9, v2, v4

    .line 301
    aget-boolean v9, v2, v4

    if-nez v9, :cond_a3

    .line 302
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "fixed_pic_rate_within_cvs_flag["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v9

    aput-boolean v9, v3, v4

    .line 304
    :cond_a3
    aget-boolean v9, v3, v4

    if-eqz v9, :cond_f3

    .line 305
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "elemental_duration_in_tc_minus1["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v9

    aput v9, v1, v4

    .line 309
    :goto_c2
    aget-boolean v9, v5, v4

    if-nez v9, :cond_e1

    .line 310
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "cpb_cnt_minus1["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v9

    aput v9, v0, v4

    .line 312
    :cond_e1
    if-eqz v6, :cond_e8

    .line 313
    aget v9, v0, v4

    invoke-virtual {p0, v4, v9, v7, p3}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->sub_layer_hrd_parameters(IIZLcom/googlecode/mp4parser/h264/read/CAVLCReader;)V

    .line 315
    :cond_e8
    if-eqz v8, :cond_ef

    .line 316
    aget v9, v0, v4

    invoke-virtual {p0, v4, v9, v7, p3}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->sub_layer_hrd_parameters(IIZLcom/googlecode/mp4parser/h264/read/CAVLCReader;)V

    .line 299
    :cond_ef
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_66

    .line 307
    :cond_f3
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "low_delay_hrd_flag["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v9

    aput-boolean v9, v5, v4

    goto :goto_c2
.end method

.method public static main([Ljava/lang/String;)V
    .registers 4
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;

    new-instance v1, Lcom/googlecode/mp4parser/FileDataSourceImpl;

    const-string v2, "c:\\content\\test-UHD-HEVC_01_FMV_Med_track1.hvc"

    invoke-direct {v1, v2}, Lcom/googlecode/mp4parser/FileDataSourceImpl;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;-><init>(Lcom/googlecode/mp4parser/DataSource;)V

    .line 128
    return-void
.end method


# virtual methods
.method protected createSample(Ljava/util/List;)Lcom/googlecode/mp4parser/authoring/Sample;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Lcom/googlecode/mp4parser/authoring/Sample;"
        }
    .end annotation

    .prologue
    .line 444
    .local p1, "nals":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    new-array v4, v5, [B

    .line 445
    .local v4, "sizeInfo":[B
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 446
    .local v3, "sizeBuf":Ljava/nio/ByteBuffer;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2b

    .line 450
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    new-array v1, v5, [Ljava/nio/ByteBuffer;

    .line 452
    .local v1, "data":[Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v2, v5, :cond_39

    .line 457
    new-instance v5, Lcom/googlecode/mp4parser/authoring/SampleImpl;

    invoke-direct {v5, v1}, Lcom/googlecode/mp4parser/authoring/SampleImpl;-><init>([Ljava/nio/ByteBuffer;)V

    return-object v5

    .line 446
    .end local v1    # "data":[Ljava/nio/ByteBuffer;
    .end local v2    # "i":I
    :cond_2b
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 447
    .local v0, "b":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_10

    .line 453
    .end local v0    # "b":Ljava/nio/ByteBuffer;
    .restart local v1    # "data":[Ljava/nio/ByteBuffer;
    .restart local v2    # "i":I
    :cond_39
    mul-int/lit8 v5, v2, 0x2

    mul-int/lit8 v6, v2, 0x4

    const/4 v7, 0x4

    invoke-static {v4, v6, v7}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    aput-object v6, v1, v5

    .line 454
    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v6, v5, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    aput-object v5, v1, v6

    .line 452
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f
.end method

.method public getFrameRate(Ljava/nio/ByteBuffer;)I
    .registers 24
    .param p1, "vps"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    new-instance v7, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;

    new-instance v20, Lcom/googlecode/mp4parser/util/ByteBufferByteChannel;

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v19

    check-cast v19, Ljava/nio/ByteBuffer;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/googlecode/mp4parser/util/ByteBufferByteChannel;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static/range {v20 .. v20}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;-><init>(Ljava/io/InputStream;)V

    .line 209
    .local v7, "r":Lcom/googlecode/mp4parser/h264/read/CAVLCReader;
    const/16 v19, 0x4

    const-string v20, "vps_parameter_set_id"

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    .line 210
    const/16 v19, 0x2

    const-string v20, "vps_reserved_three_2bits"

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    .line 211
    const/16 v19, 0x6

    const-string v20, "vps_max_layers_minus1"

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    .line 212
    const/16 v19, 0x3

    const-string v20, "vps_max_sub_layers_minus1"

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v13

    .line 213
    .local v13, "vps_max_sub_layers_minus1":I
    const-string v19, "vps_temporal_id_nesting_flag"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    .line 214
    const/16 v19, 0x10

    const-string v20, "vps_reserved_0xffff_16bits"

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    .line 215
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v7}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->profile_tier_level(ILcom/googlecode/mp4parser/h264/read/CAVLCReader;)V

    .line 218
    const-string v19, "vps_sub_layer_ordering_info_present_flag"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v17

    .line 219
    .local v17, "vps_sub_layer_ordering_info_present_flag":Z
    if-eqz v17, :cond_112

    const/16 v19, 0x0

    :goto_70
    move/from16 v0, v19

    new-array v9, v0, [I

    .line 220
    .local v9, "vps_max_dec_pic_buffering_minus1":[I
    if-eqz v17, :cond_116

    const/16 v19, 0x0

    :goto_78
    move/from16 v0, v19

    new-array v12, v0, [I

    .line 221
    .local v12, "vps_max_num_reorder_pics":[I
    if-eqz v17, :cond_11a

    const/16 v19, 0x0

    :goto_80
    move/from16 v0, v19

    new-array v10, v0, [I

    .line 222
    .local v10, "vps_max_latency_increase_plus1":[I
    if-eqz v17, :cond_11e

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_87
    if-le v4, v13, :cond_121

    .line 227
    const/16 v19, 0x6

    const-string v20, "vps_max_layer_id"

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v11

    .line 228
    .local v11, "vps_max_layer_id":I
    const-string v19, "vps_num_layer_sets_minus1"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v15

    .line 229
    .local v15, "vps_num_layer_sets_minus1":I
    filled-new-array {v15, v11}, [I

    move-result-object v19

    sget-object v20, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Z

    .line 230
    .local v6, "layer_id_included_flag":[[Z
    const/4 v4, 0x1

    :goto_ae
    if-le v4, v15, :cond_182

    .line 235
    const-string v19, "vps_timing_info_present_flag"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v18

    .line 236
    .local v18, "vps_timing_info_present_flag":Z
    if-eqz v18, :cond_fc

    .line 237
    const/16 v19, 0x20

    const-string v20, "vps_num_units_in_tick"

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    .line 238
    const/16 v19, 0x20

    const-string v20, "vps_time_scale"

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    .line 239
    const-string v19, "vps_poc_proportional_to_timing_flag"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v16

    .line 240
    .local v16, "vps_poc_proportional_to_timing_flag":Z
    if-eqz v16, :cond_ed

    .line 241
    const-string v19, "vps_num_ticks_poc_diff_one_minus1"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    .line 243
    :cond_ed
    const-string v19, "vps_num_hrd_parameters"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v14

    .line 244
    .local v14, "vps_num_hrd_parameters":I
    new-array v3, v14, [I

    .line 245
    .local v3, "hrd_layer_set_idx":[I
    new-array v2, v14, [Z

    .line 246
    .local v2, "cprms_present_flag":[Z
    const/4 v4, 0x0

    :goto_fa
    if-lt v4, v14, :cond_1b9

    .line 258
    .end local v2    # "cprms_present_flag":[Z
    .end local v3    # "hrd_layer_set_idx":[I
    .end local v14    # "vps_num_hrd_parameters":I
    .end local v16    # "vps_poc_proportional_to_timing_flag":Z
    :cond_fc
    const-string v19, "vps_extension_flag"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v8

    .line 259
    .local v8, "vps_extension_flag":Z
    if-eqz v8, :cond_10c

    .line 260
    :goto_106
    invoke-virtual {v7}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->moreRBSPData()Z

    move-result v19

    if-nez v19, :cond_20d

    .line 264
    :cond_10c
    invoke-virtual {v7}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readTrailingBits()V

    .line 265
    const/16 v19, 0x0

    return v19

    .end local v4    # "i":I
    .end local v6    # "layer_id_included_flag":[[Z
    .end local v8    # "vps_extension_flag":Z
    .end local v9    # "vps_max_dec_pic_buffering_minus1":[I
    .end local v10    # "vps_max_latency_increase_plus1":[I
    .end local v11    # "vps_max_layer_id":I
    .end local v12    # "vps_max_num_reorder_pics":[I
    .end local v15    # "vps_num_layer_sets_minus1":I
    .end local v18    # "vps_timing_info_present_flag":Z
    :cond_112
    move/from16 v19, v13

    .line 219
    goto/16 :goto_70

    .restart local v9    # "vps_max_dec_pic_buffering_minus1":[I
    :cond_116
    move/from16 v19, v13

    .line 220
    goto/16 :goto_78

    .restart local v12    # "vps_max_num_reorder_pics":[I
    :cond_11a
    move/from16 v19, v13

    .line 221
    goto/16 :goto_80

    .restart local v10    # "vps_max_latency_increase_plus1":[I
    :cond_11e
    move v4, v13

    .line 222
    goto/16 :goto_87

    .line 223
    .restart local v4    # "i":I
    :cond_121
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "vps_max_dec_pic_buffering_minus1["

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v19

    aput v19, v9, v4

    .line 224
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "vps_max_dec_pic_buffering_minus1["

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v19

    aput v19, v12, v4

    .line 225
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "vps_max_dec_pic_buffering_minus1["

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v19

    aput v19, v10, v4

    .line 222
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_87

    .line 231
    .restart local v6    # "layer_id_included_flag":[[Z
    .restart local v11    # "vps_max_layer_id":I
    .restart local v15    # "vps_num_layer_sets_minus1":I
    :cond_182
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_183
    if-le v5, v11, :cond_189

    .line 230
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_ae

    .line 232
    :cond_189
    aget-object v19, v6, v4

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "layer_id_included_flag["

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v20

    aput-boolean v20, v19, v5

    .line 231
    add-int/lit8 v5, v5, 0x1

    goto :goto_183

    .line 247
    .end local v5    # "j":I
    .restart local v2    # "cprms_present_flag":[Z
    .restart local v3    # "hrd_layer_set_idx":[I
    .restart local v14    # "vps_num_hrd_parameters":I
    .restart local v16    # "vps_poc_proportional_to_timing_flag":Z
    .restart local v18    # "vps_timing_info_present_flag":Z
    :cond_1b9
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "hrd_layer_set_idx["

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v19

    aput v19, v3, v4

    .line 248
    if-lez v4, :cond_206

    .line 249
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "cprms_present_flag["

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v19

    aput-boolean v19, v2, v4

    .line 254
    :goto_1f9
    aget-boolean v19, v2, v4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v13, v7}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->hrd_parameters(ZILcom/googlecode/mp4parser/h264/read/CAVLCReader;)V

    .line 246
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_fa

    .line 251
    :cond_206
    const/16 v19, 0x0

    const/16 v20, 0x1

    aput-boolean v20, v2, v19

    goto :goto_1f9

    .line 261
    .end local v2    # "cprms_present_flag":[Z
    .end local v3    # "hrd_layer_set_idx":[I
    .end local v14    # "vps_num_hrd_parameters":I
    .end local v16    # "vps_poc_proportional_to_timing_flag":Z
    .restart local v8    # "vps_extension_flag":Z
    :cond_20d
    const-string v19, "vps_extension_data_flag"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    goto/16 :goto_106
.end method

.method public getNalUnitHeader(Ljava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$NalUnitHeader;
    .registers 5
    .param p1, "nal"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 431
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 432
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 435
    .local v1, "nal_unit_header":I
    new-instance v0, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$NalUnitHeader;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$NalUnitHeader;-><init>()V

    .line 436
    .local v0, "nalUnitHeader":Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$NalUnitHeader;
    const v2, 0x8000

    and-int/2addr v2, v1

    shr-int/lit8 v2, v2, 0xf

    iput v2, v0, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$NalUnitHeader;->forbiddenZeroFlag:I

    .line 437
    and-int/lit16 v2, v1, 0x7e00

    shr-int/lit8 v2, v2, 0x9

    iput v2, v0, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$NalUnitHeader;->nalUnitType:I

    .line 438
    and-int/lit16 v2, v1, 0x1f8

    shr-int/lit8 v2, v2, 0x3

    iput v2, v0, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$NalUnitHeader;->nuhLayerId:I

    .line 439
    and-int/lit8 v2, v1, 0x7

    iput v2, v0, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$NalUnitHeader;->nuhTemporalIdPlusOne:I

    .line 440
    return-object v0
.end method

.method isFirstOfAU(ILjava/nio/ByteBuffer;Ljava/util/List;)Z
    .registers 11
    .param p1, "nalUnitType"    # I
    .param p2, "nalUnit"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "accessUnit":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 376
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v4

    .line 427
    :goto_9
    return v3

    .line 379
    :cond_a
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v3}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->getNalUnitHeader(Ljava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$NalUnitHeader;

    move-result-object v3

    iget v3, v3, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$NalUnitHeader;->nalUnitType:I

    const/16 v6, 0x1f

    if-gt v3, v6, :cond_29

    move v2, v4

    .line 380
    .local v2, "vclPresentInCurrentAU":Z
    :goto_21
    packed-switch p1, :pswitch_data_4c

    .line 402
    :cond_24
    :pswitch_24
    packed-switch p1, :pswitch_data_80

    :pswitch_27
    move v3, v5

    .line 427
    goto :goto_9

    .end local v2    # "vclPresentInCurrentAU":Z
    :cond_29
    move v2, v5

    .line 379
    goto :goto_21

    .line 398
    .restart local v2    # "vclPresentInCurrentAU":Z
    :pswitch_2b
    if-eqz v2, :cond_24

    move v3, v4

    .line 399
    goto :goto_9

    .line 419
    :pswitch_2f
    const/16 v3, 0x32

    new-array v0, v3, [B

    .line 420
    .local v0, "b":[B
    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 421
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 422
    const/4 v3, 0x2

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 423
    invoke-static {p2}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 425
    .local v1, "firstRsbp8Bit":I
    if-eqz v2, :cond_49

    and-int/lit16 v3, v1, 0x80

    if-lez v3, :cond_49

    move v3, v4

    goto :goto_9

    :cond_49
    move v3, v5

    goto :goto_9

    .line 380
    nop

    :pswitch_data_4c
    .packed-switch 0x20
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_2b
        :pswitch_24
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
    .end packed-switch

    .line 402
    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
    .end packed-switch
.end method

.method public profile_tier_level(ILcom/googlecode/mp4parser/h264/read/CAVLCReader;)V
    .registers 24
    .param p1, "maxNumSubLayersMinus1"    # I
    .param p2, "r"    # Lcom/googlecode/mp4parser/h264/read/CAVLCReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    const/16 v18, 0x2

    const-string v19, "general_profile_space "

    move-object/from16 v0, p2

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    .line 149
    const-string v18, "general_tier_flag"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    .line 150
    const/16 v18, 0x5

    const-string v19, "general_profile_idc"

    move-object/from16 v0, p2

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    .line 151
    const/16 v18, 0x20

    move/from16 v0, v18

    new-array v4, v0, [Z

    .line 152
    .local v4, "general_profile_compatibility_flag":[Z
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2a
    const/16 v18, 0x20

    move/from16 v0, v18

    if-lt v6, v0, :cond_cb

    .line 155
    const-string v18, "general_progressive_source_flag"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    .line 156
    const-string v18, "general_interlaced_source_flag"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    .line 157
    const-string v18, "general_non_packed_constraint_flag"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    .line 158
    const-string v18, "general_frame_only_constraint_flag"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    .line 160
    const/16 v18, 0x2c

    const-string v19, "general_reserved_zero_44bits"

    move-object/from16 v0, p2

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 161
    const/16 v18, 0x8

    const-string v19, "general_level_idc"

    move-object/from16 v0, p2

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    .line 163
    move/from16 v0, p1

    new-array v14, v0, [Z

    .line 164
    .local v14, "sub_layer_profile_present_flag":[Z
    move/from16 v0, p1

    new-array v10, v0, [Z

    .line 165
    .local v10, "sub_layer_level_present_flag":[Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7d
    move/from16 v0, p1

    if-lt v5, v0, :cond_f0

    .line 169
    if-lez p1, :cond_8b

    .line 170
    move/from16 v5, p1

    :goto_85
    const/16 v18, 0x8

    move/from16 v0, v18

    if-lt v5, v0, :cond_136

    .line 176
    :cond_8b
    move/from16 v0, p1

    new-array v15, v0, [I

    .line 177
    .local v15, "sub_layer_profile_space":[I
    move/from16 v0, p1

    new-array v0, v0, [Z

    move-object/from16 v17, v0

    .line 178
    .local v17, "sub_layer_tier_flag":[Z
    move/from16 v0, p1

    new-array v13, v0, [I

    .line 179
    .local v13, "sub_layer_profile_idc":[I
    const/16 v18, 0x20

    move/from16 v0, p1

    move/from16 v1, v18

    filled-new-array {v0, v1}, [I

    move-result-object v18

    sget-object v19, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[Z

    .line 180
    .local v12, "sub_layer_profile_compatibility_flag":[[Z
    move/from16 v0, p1

    new-array v0, v0, [Z

    move-object/from16 v16, v0

    .line 182
    .local v16, "sub_layer_progressive_source_flag":[Z
    move/from16 v0, p1

    new-array v8, v0, [Z

    .line 183
    .local v8, "sub_layer_interlaced_source_flag":[Z
    move/from16 v0, p1

    new-array v11, v0, [Z

    .line 184
    .local v11, "sub_layer_non_packed_constraint_flag":[Z
    move/from16 v0, p1

    new-array v7, v0, [Z

    .line 185
    .local v7, "sub_layer_frame_only_constraint_flag":[Z
    move/from16 v0, p1

    new-array v9, v0, [I

    .line 187
    .local v9, "sub_layer_level_idc":[I
    const/4 v5, 0x0

    :goto_c6
    move/from16 v0, p1

    if-lt v5, v0, :cond_147

    .line 204
    return-void

    .line 153
    .end local v5    # "i":I
    .end local v7    # "sub_layer_frame_only_constraint_flag":[Z
    .end local v8    # "sub_layer_interlaced_source_flag":[Z
    .end local v9    # "sub_layer_level_idc":[I
    .end local v10    # "sub_layer_level_present_flag":[Z
    .end local v11    # "sub_layer_non_packed_constraint_flag":[Z
    .end local v12    # "sub_layer_profile_compatibility_flag":[[Z
    .end local v13    # "sub_layer_profile_idc":[I
    .end local v14    # "sub_layer_profile_present_flag":[Z
    .end local v15    # "sub_layer_profile_space":[I
    .end local v16    # "sub_layer_progressive_source_flag":[Z
    .end local v17    # "sub_layer_tier_flag":[Z
    :cond_cb
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "general_profile_compatibility_flag["

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v18

    aput-boolean v18, v4, v6

    .line 152
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2a

    .line 166
    .restart local v5    # "i":I
    .restart local v10    # "sub_layer_level_present_flag":[Z
    .restart local v14    # "sub_layer_profile_present_flag":[Z
    :cond_f0
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "sub_layer_profile_present_flag["

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v18

    aput-boolean v18, v14, v5

    .line 167
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "sub_layer_level_present_flag["

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v18

    aput-boolean v18, v10, v5

    .line 165
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_7d

    .line 171
    :cond_136
    const/16 v18, 0x2

    const-string v19, "reserved_zero_2bits"

    move-object/from16 v0, p2

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    .line 170
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_85

    .line 188
    .restart local v7    # "sub_layer_frame_only_constraint_flag":[Z
    .restart local v8    # "sub_layer_interlaced_source_flag":[Z
    .restart local v9    # "sub_layer_level_idc":[I
    .restart local v11    # "sub_layer_non_packed_constraint_flag":[Z
    .restart local v12    # "sub_layer_profile_compatibility_flag":[[Z
    .restart local v13    # "sub_layer_profile_idc":[I
    .restart local v15    # "sub_layer_profile_space":[I
    .restart local v16    # "sub_layer_progressive_source_flag":[Z
    .restart local v17    # "sub_layer_tier_flag":[Z
    :cond_147
    aget-boolean v18, v14, v5

    if-eqz v18, :cond_24e

    .line 189
    const/16 v18, 0x2

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "sub_layer_profile_space["

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v18

    aput v18, v15, v5

    .line 190
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "sub_layer_tier_flag["

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v18

    aput-boolean v18, v17, v5

    .line 191
    const/16 v18, 0x5

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "sub_layer_profile_idc["

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v18

    aput v18, v13, v5

    .line 192
    const/4 v6, 0x0

    :goto_1b7
    const/16 v18, 0x20

    move/from16 v0, v18

    if-lt v6, v0, :cond_266

    .line 195
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "sub_layer_progressive_source_flag["

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v18

    aput-boolean v18, v16, v5

    .line 196
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "sub_layer_interlaced_source_flag["

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v18

    aput-boolean v18, v8, v5

    .line 197
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "sub_layer_non_packed_constraint_flag["

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v18

    aput-boolean v18, v11, v5

    .line 198
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "sub_layer_frame_only_constraint_flag["

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v18

    aput-boolean v18, v7, v5

    .line 199
    const/16 v18, 0x2c

    const-string v19, "reserved"

    move-object/from16 v0, p2

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    .line 201
    :cond_24e
    aget-boolean v18, v10, v5

    if-eqz v18, :cond_262

    .line 202
    const/16 v18, 0x8

    const-string v19, "sub_layer_level_idc"

    move-object/from16 v0, p2

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v18

    aput v18, v9, v5

    .line 187
    :cond_262
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_c6

    .line 193
    :cond_266
    aget-object v18, v12, v5

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "sub_layer_profile_compatibility_flag["

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v19

    aput-boolean v19, v18, v6

    .line 192
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1b7
.end method

.method sub_layer_hrd_parameters(IIZLcom/googlecode/mp4parser/h264/read/CAVLCReader;)V
    .registers 13
    .param p1, "subLayerId"    # I
    .param p2, "cpbCnt"    # I
    .param p3, "sub_pic_hrd_params_present_flag"    # Z
    .param p4, "r"    # Lcom/googlecode/mp4parser/h264/read/CAVLCReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    new-array v1, p2, [I

    .line 324
    .local v1, "bit_rate_value_minus1":[I
    new-array v4, p2, [I

    .line 325
    .local v4, "cpb_size_value_minus1":[I
    new-array v3, p2, [I

    .line 326
    .local v3, "cpb_size_du_value_minus1":[I
    new-array v0, p2, [I

    .line 327
    .local v0, "bit_rate_du_value_minus1":[I
    new-array v2, p2, [Z

    .line 328
    .local v2, "cbr_flag":[Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_b
    if-le v5, p2, :cond_e

    .line 337
    return-void

    .line 329
    :cond_e
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bit_rate_value_minus1["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v6

    aput v6, v1, v5

    .line 330
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "cpb_size_value_minus1["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v5

    .line 331
    if-eqz p3, :cond_7c

    .line 332
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "cpb_size_du_value_minus1["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v6

    aput v6, v3, v5

    .line 333
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bit_rate_du_value_minus1["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v6

    aput v6, v0, v5

    .line 335
    :cond_7c
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "cbr_flag["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v6

    aput-boolean v6, v2, v5

    .line 328
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_b
.end method
