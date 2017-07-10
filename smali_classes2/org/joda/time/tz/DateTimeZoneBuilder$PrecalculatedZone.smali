.class final Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;
.super Lorg/joda/time/DateTimeZone;
.source "DateTimeZoneBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/tz/DateTimeZoneBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrecalculatedZone"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6c69b735442cb4f9L


# instance fields
.field private final iNameKeys:[Ljava/lang/String;

.field private final iStandardOffsets:[I

.field private final iTailZone:Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;

.field private final iTransitions:[J

.field private final iWallOffsets:[I


# direct methods
.method private constructor <init>(Ljava/lang/String;[J[I[I[Ljava/lang/String;Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;)V
    .registers 7

    .prologue
    .line 1500
    invoke-direct {p0, p1}, Lorg/joda/time/DateTimeZone;-><init>(Ljava/lang/String;)V

    .line 1501
    iput-object p2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iTransitions:[J

    .line 1502
    iput-object p3, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iWallOffsets:[I

    .line 1503
    iput-object p4, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iStandardOffsets:[I

    .line 1504
    iput-object p5, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iNameKeys:[Ljava/lang/String;

    .line 1505
    iput-object p6, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iTailZone:Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;

    .line 1506
    return-void
.end method

.method static create(Ljava/lang/String;ZLjava/util/ArrayList;Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;)Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;",
            ">;",
            "Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;",
            ")",
            "Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;"
        }
    .end annotation

    .prologue
    .line 1389
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1390
    if-nez v5, :cond_c

    .line 1391
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1394
    :cond_c
    new-array v11, v5, [J

    .line 1395
    new-array v12, v5, [I

    .line 1396
    new-array v13, v5, [I

    .line 1397
    new-array v14, v5, [Ljava/lang/String;

    .line 1399
    const/4 v3, 0x0

    .line 1400
    const/4 v2, 0x0

    move-object v4, v3

    move v3, v2

    :goto_18
    if-ge v3, v5, :cond_4c

    .line 1401
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    .line 1403
    invoke-virtual {v2, v4}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->isTransitionFrom(Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 1404
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1407
    :cond_30
    invoke-virtual {v2}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getMillis()J

    move-result-wide v6

    aput-wide v6, v11, v3

    .line 1408
    invoke-virtual {v2}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getWallOffset()I

    move-result v4

    aput v4, v12, v3

    .line 1409
    invoke-virtual {v2}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getStandardOffset()I

    move-result v4

    aput v4, v13, v3

    .line 1410
    invoke-virtual {v2}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getNameKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v14, v3

    .line 1400
    add-int/lit8 v3, v3, 0x1

    move-object v4, v2

    goto :goto_18

    .line 1417
    :cond_4c
    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/String;

    .line 1418
    new-instance v2, Ljava/text/DateFormatSymbols;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v4}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getZoneStrings()[[Ljava/lang/String;

    move-result-object v4

    .line 1419
    const/4 v2, 0x0

    move-object v10, v3

    :goto_5c
    array-length v3, v4

    if-ge v2, v3, :cond_76

    .line 1420
    aget-object v3, v4, v2

    .line 1421
    if-eqz v3, :cond_20c

    array-length v5, v3

    const/4 v6, 0x5

    if-ne v5, v6, :cond_20c

    const/4 v5, 0x0

    aget-object v5, v3, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20c

    .line 1419
    :goto_72
    add-int/lit8 v2, v2, 0x1

    move-object v10, v3

    goto :goto_5c

    .line 1426
    :cond_76
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v9

    .line 1428
    const/4 v2, 0x0

    :goto_7b
    array-length v3, v14

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_179

    .line 1429
    aget-object v15, v14, v2

    .line 1430
    add-int/lit8 v3, v2, 0x1

    aget-object v16, v14, v3

    .line 1431
    aget v3, v12, v2

    int-to-long v0, v3

    move-wide/from16 v18, v0

    .line 1432
    add-int/lit8 v3, v2, 0x1

    aget v3, v12, v3

    int-to-long v0, v3

    move-wide/from16 v20, v0

    .line 1433
    aget v3, v13, v2

    int-to-long v0, v3

    move-wide/from16 v22, v0

    .line 1434
    add-int/lit8 v3, v2, 0x1

    aget v3, v13, v3

    int-to-long v0, v3

    move-wide/from16 v24, v0

    .line 1435
    new-instance v3, Lorg/joda/time/Period;

    aget-wide v4, v11, v2

    add-int/lit8 v6, v2, 0x1

    aget-wide v6, v11, v6

    invoke-static {}, Lorg/joda/time/PeriodType;->yearMonthDay()Lorg/joda/time/PeriodType;

    move-result-object v8

    invoke-direct/range {v3 .. v9}, Lorg/joda/time/Period;-><init>(JJLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    .line 1436
    cmp-long v4, v18, v20

    if-eqz v4, :cond_151

    cmp-long v4, v22, v24

    if-nez v4, :cond_151

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_151

    invoke-virtual {v3}, Lorg/joda/time/Period;->getYears()I

    move-result v4

    if-nez v4, :cond_151

    invoke-virtual {v3}, Lorg/joda/time/Period;->getMonths()I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_151

    invoke-virtual {v3}, Lorg/joda/time/Period;->getMonths()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_151

    const/4 v3, 0x2

    aget-object v3, v10, v3

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_151

    const/4 v3, 0x4

    aget-object v3, v10, v3

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_151

    .line 1443
    invoke-static {}, Lorg/joda/time/tz/ZoneInfoCompiler;->verbose()Z

    move-result v3

    if-eqz v3, :cond_134

    .line 1444
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fixing duplicate name key - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1445
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "     - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Lorg/joda/time/DateTime;

    aget-wide v6, v11, v2

    invoke-direct {v5, v6, v7, v9}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Lorg/joda/time/DateTime;

    add-int/lit8 v6, v2, 0x1

    aget-wide v6, v11, v6

    invoke-direct {v5, v6, v7, v9}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1448
    :cond_134
    cmp-long v3, v18, v20

    if-lez v3, :cond_155

    .line 1449
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-Summer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v2

    .line 1428
    :cond_151
    :goto_151
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7b

    .line 1450
    :cond_155
    cmp-long v3, v18, v20

    if-gez v3, :cond_151

    .line 1451
    add-int/lit8 v3, v2, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-Summer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v14, v3

    .line 1452
    add-int/lit8 v2, v2, 0x1

    goto :goto_151

    .line 1457
    :cond_179
    if-eqz p3, :cond_209

    .line 1458
    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStartRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    invoke-virtual {v2}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->getNameKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iget-object v3, v0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iEndRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    invoke-virtual {v3}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->getNameKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_209

    .line 1460
    invoke-static {}, Lorg/joda/time/tz/ZoneInfoCompiler;->verbose()Z

    move-result v2

    if-eqz v2, :cond_1b7

    .line 1461
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fixing duplicate recurrent name key - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStartRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    invoke-virtual {v4}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->getNameKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1464
    :cond_1b7
    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStartRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    invoke-virtual {v2}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->getSaveMillis()I

    move-result v2

    if-lez v2, :cond_1ea

    .line 1465
    new-instance v8, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;

    invoke-virtual/range {p3 .. p3}, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->getID()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iget v3, v0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStandardOffset:I

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStartRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    const-string v5, "-Summer"

    invoke-virtual {v4, v5}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->renameAppend(Ljava/lang/String;)Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    move-result-object v4

    move-object/from16 v0, p3

    iget-object v5, v0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iEndRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    invoke-direct {v8, v2, v3, v4, v5}, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;-><init>(Ljava/lang/String;ILorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;)V

    .line 1480
    :goto_1dc
    new-instance v2, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;

    if-eqz p1, :cond_206

    move-object/from16 v3, p0

    :goto_1e2
    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    invoke-direct/range {v2 .. v8}, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;-><init>(Ljava/lang/String;[J[I[I[Ljava/lang/String;Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;)V

    return-object v2

    .line 1471
    :cond_1ea
    new-instance v8, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;

    invoke-virtual/range {p3 .. p3}, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->getID()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iget v3, v0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStandardOffset:I

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStartRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    move-object/from16 v0, p3

    iget-object v5, v0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iEndRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    const-string v6, "-Summer"

    invoke-virtual {v5, v6}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->renameAppend(Ljava/lang/String;)Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    move-result-object v5

    invoke-direct {v8, v2, v3, v4, v5}, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;-><init>(Ljava/lang/String;ILorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;)V

    goto :goto_1dc

    .line 1480
    :cond_206
    const-string v3, ""

    goto :goto_1e2

    :cond_209
    move-object/from16 v8, p3

    goto :goto_1dc

    :cond_20c
    move-object v3, v10

    goto/16 :goto_72
.end method

.method static readFrom(Ljava/io/DataInput;Ljava/lang/String;)Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1341
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v6

    .line 1342
    new-array v7, v6, [Ljava/lang/String;

    move v1, v0

    .line 1343
    :goto_8
    if-ge v1, v6, :cond_13

    .line 1344
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    .line 1343
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1347
    :cond_13
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v8

    .line 1348
    new-array v2, v8, [J

    .line 1349
    new-array v3, v8, [I

    .line 1350
    new-array v4, v8, [I

    .line 1351
    new-array v5, v8, [Ljava/lang/String;

    move v1, v0

    .line 1353
    :goto_20
    if-ge v1, v8, :cond_54

    .line 1354
    invoke-static {p0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->readMillis(Ljava/io/DataInput;)J

    move-result-wide v10

    aput-wide v10, v2, v1

    .line 1355
    invoke-static {p0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->readMillis(Ljava/io/DataInput;)J

    move-result-wide v10

    long-to-int v0, v10

    aput v0, v3, v1

    .line 1356
    invoke-static {p0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->readMillis(Ljava/io/DataInput;)J

    move-result-wide v10

    long-to-int v0, v10

    aput v0, v4, v1

    .line 1359
    const/16 v0, 0x100

    if-ge v6, v0, :cond_46

    .line 1360
    :try_start_3a
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 1364
    :goto_3e
    aget-object v0, v7, v0

    aput-object v0, v5, v1

    .line 1353
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_20

    .line 1362
    :cond_46
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I
    :try_end_49
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3a .. :try_end_49} :catch_4b

    move-result v0

    goto :goto_3e

    .line 1365
    :catch_4b
    move-exception v0

    .line 1366
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1370
    :cond_54
    const/4 v6, 0x0

    .line 1371
    invoke-interface {p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 1372
    invoke-static {p0, p1}, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->readFrom(Ljava/io/DataInput;Ljava/lang/String;)Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;

    move-result-object v6

    .line 1375
    :cond_5f
    new-instance v0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;-><init>(Ljava/lang/String;[J[I[I[Ljava/lang/String;Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1619
    if-ne p0, p1, :cond_5

    .line 1634
    :cond_4
    :goto_4
    return v0

    .line 1622
    :cond_5
    instance-of v2, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;

    if-eqz v2, :cond_56

    .line 1623
    check-cast p1, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;

    .line 1624
    invoke-virtual {p0}, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    iget-object v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iTransitions:[J

    iget-object v3, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iTransitions:[J

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_49

    iget-object v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iNameKeys:[Ljava/lang/String;

    iget-object v3, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iNameKeys:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    iget-object v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iWallOffsets:[I

    iget-object v3, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iWallOffsets:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_49

    iget-object v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iStandardOffsets:[I

    iget-object v3, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iStandardOffsets:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_49

    iget-object v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iTailZone:Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;

    if-nez v2, :cond_4b

    iget-object v2, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iTailZone:Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;

    if-eqz v2, :cond_4

    :cond_49
    move v0, v1

    goto :goto_4

    :cond_4b
    iget-object v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iTailZone:Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;

    iget-object v3, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iTailZone:Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;

    invoke-virtual {v2, v3}, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    goto :goto_4

    :cond_56
    move v0, v1

    .line 1634
    goto :goto_4
.end method

.method public getNameKey(J)Ljava/lang/String;
    .registers 6

    .prologue
    .line 1509
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iTransitions:[J

    .line 1510
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v1

    .line 1511
    if-ltz v1, :cond_d

    .line 1512
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iNameKeys:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 1524
    :goto_c
    return-object v0

    .line 1514
    :cond_d
    xor-int/lit8 v1, v1, -0x1

    .line 1515
    array-length v0, v0

    if-ge v1, v0, :cond_1e

    .line 1516
    if-lez v1, :cond_1b

    .line 1517
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iNameKeys:[Ljava/lang/String;

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_c

    .line 1519
    :cond_1b
    const-string v0, "UTC"

    goto :goto_c

    .line 1521
    :cond_1e
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iTailZone:Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;

    if-nez v0, :cond_29

    .line 1522
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iNameKeys:[Ljava/lang/String;

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_c

    .line 1524
    :cond_29
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iTailZone:Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->getNameKey(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public getOffset(J)I
    .registers 6

    .prologue
    .line 1528
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iTransitions:[J

    .line 1529
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v1

    .line 1530
    if-ltz v1, :cond_d

    .line 1531
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iWallOffsets:[I

    aget v0, v0, v1

    .line 1543
    :goto_c
    return v0

    .line 1533
    :cond_d
    xor-int/lit8 v1, v1, -0x1

    .line 1534
    array-length v0, v0

    if-ge v1, v0, :cond_1d

    .line 1535
    if-lez v1, :cond_1b

    .line 1536
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iWallOffsets:[I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    goto :goto_c

    .line 1538
    :cond_1b
    const/4 v0, 0x0

    goto :goto_c

    .line 1540
    :cond_1d
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iTailZone:Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;

    if-nez v0, :cond_28

    .line 1541
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iWallOffsets:[I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    goto :goto_c

    .line 1543
    :cond_28
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iTailZone:Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->getOffset(J)I

    move-result v0

    goto :goto_c
.end method

.method public getStandardOffset(J)I
    .registers 6

    .prologue
    .line 1547
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iTransitions:[J

    .line 1548
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v1

    .line 1549
    if-ltz v1, :cond_d

    .line 1550
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iStandardOffsets:[I

    aget v0, v0, v1

    .line 1562
    :goto_c
    return v0

    .line 1552
    :cond_d
    xor-int/lit8 v1, v1, -0x1

    .line 1553
    array-length v0, v0

    if-ge v1, v0, :cond_1d

    .line 1554
    if-lez v1, :cond_1b

    .line 1555
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iStandardOffsets:[I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    goto :goto_c

    .line 1557
    :cond_1b
    const/4 v0, 0x0

    goto :goto_c

    .line 1559
    :cond_1d
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iTailZone:Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;

    if-nez v0, :cond_28

    .line 1560
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iStandardOffsets:[I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    goto :goto_c

    .line 1562
    :cond_28
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iTailZone:Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->getStandardOffset(J)I

    move-result v0

    goto :goto_c
.end method

.method public isCachable()Z
    .registers 13

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 1690
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iTailZone:Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;

    if-eqz v0, :cond_7

    .line 1725
    :cond_6
    :goto_6
    return v1

    .line 1693
    :cond_7
    iget-object v6, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iTransitions:[J

    .line 1694
    array-length v0, v6

    if-gt v0, v1, :cond_e

    move v1, v3

    .line 1695
    goto :goto_6

    .line 1700
    :cond_e
    const-wide/16 v4, 0x0

    move v0, v1

    move v2, v3

    .line 1703
    :goto_12
    array-length v7, v6

    if-ge v0, v7, :cond_2c

    .line 1704
    aget-wide v8, v6, v0

    add-int/lit8 v7, v0, -0x1

    aget-wide v10, v6, v7

    sub-long/2addr v8, v10

    .line 1705
    const-wide v10, 0xeb488b400L

    cmp-long v7, v8, v10

    if-gez v7, :cond_29

    .line 1706
    long-to-double v8, v8

    add-double/2addr v4, v8

    .line 1707
    add-int/lit8 v2, v2, 0x1

    .line 1703
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1711
    :cond_2c
    if-lez v2, :cond_3c

    .line 1712
    int-to-double v6, v2

    div-double/2addr v4, v6

    .line 1713
    const-wide v6, 0x4194997000000000L    # 8.64E7

    div-double/2addr v4, v6

    .line 1714
    const-wide/high16 v6, 0x4039000000000000L    # 25.0

    cmpl-double v0, v4, v6

    if-gez v0, :cond_6

    :cond_3c
    move v1, v3

    .line 1725
    goto :goto_6
.end method

.method public isFixed()Z
    .registers 2

    .prologue
    .line 1566
    const/4 v0, 0x0

    return v0
.end method

.method public nextTransition(J)J
    .registers 6

    .prologue
    .line 1570
    iget-object v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iTransitions:[J

    .line 1571
    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 1572
    if-ltz v0, :cond_10

    add-int/lit8 v0, v0, 0x1

    .line 1573
    :goto_a
    array-length v2, v1

    if-ge v0, v2, :cond_13

    .line 1574
    aget-wide p1, v1, v0

    .line 1583
    :cond_f
    :goto_f
    return-wide p1

    .line 1572
    :cond_10
    xor-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1576
    :cond_13
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iTailZone:Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;

    if-eqz v0, :cond_f

    .line 1579
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, v1, v0

    .line 1580
    cmp-long v2, p1, v0

    if-gez v2, :cond_21

    move-wide p1, v0

    .line 1583
    :cond_21
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iTailZone:Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->nextTransition(J)J

    move-result-wide p1

    goto :goto_f
.end method

.method public previousTransition(J)J
    .registers 14

    .prologue
    const-wide/16 v8, 0x1

    const-wide/high16 v6, -0x8000000000000000L

    .line 1587
    iget-object v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iTransitions:[J

    .line 1588
    invoke-static {v2, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 1589
    if-ltz v0, :cond_12

    .line 1590
    cmp-long v0, p1, v6

    if-lez v0, :cond_11

    .line 1591
    sub-long/2addr p1, v8

    .line 1615
    :cond_11
    :goto_11
    return-wide p1

    .line 1595
    :cond_12
    xor-int/lit8 v3, v0, -0x1

    .line 1596
    array-length v0, v2

    if-ge v3, v0, :cond_24

    .line 1597
    if-lez v3, :cond_11

    .line 1598
    add-int/lit8 v0, v3, -0x1

    aget-wide v0, v2, v0

    .line 1599
    cmp-long v2, v0, v6

    if-lez v2, :cond_11

    .line 1600
    sub-long p1, v0, v8

    goto :goto_11

    .line 1605
    :cond_24
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iTailZone:Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;

    if-eqz v0, :cond_34

    .line 1606
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iTailZone:Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->previousTransition(J)J

    move-result-wide v0

    .line 1607
    cmp-long v4, v0, p1

    if-gez v4, :cond_34

    move-wide p1, v0

    .line 1608
    goto :goto_11

    .line 1611
    :cond_34
    add-int/lit8 v0, v3, -0x1

    aget-wide v0, v2, v0

    .line 1612
    cmp-long v2, v0, v6

    if-lez v2, :cond_11

    .line 1613
    sub-long p1, v0, v8

    goto :goto_11
.end method

.method public writeTo(Ljava/io/DataOutput;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1638
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iTransitions:[J

    array-length v3, v0

    .line 1641
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move v0, v2

    .line 1642
    :goto_a
    if-ge v0, v3, :cond_16

    .line 1643
    iget-object v4, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iNameKeys:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1642
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1646
    :cond_16
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    .line 1647
    const v0, 0xffff

    if-le v4, v0, :cond_27

    .line 1648
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "String pool is too large"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1650
    :cond_27
    new-array v5, v4, [Ljava/lang/String;

    .line 1651
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    .line 1652
    :goto_2e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1653
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v5, v1

    .line 1652
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2e

    .line 1657
    :cond_40
    invoke-interface {p1, v4}, Ljava/io/DataOutput;->writeShort(I)V

    move v0, v2

    .line 1658
    :goto_44
    if-ge v0, v4, :cond_4e

    .line 1659
    aget-object v1, v5, v0

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 1658
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 1662
    :cond_4e
    invoke-interface {p1, v3}, Ljava/io/DataOutput;->writeInt(I)V

    move v1, v2

    .line 1664
    :goto_52
    if-ge v1, v3, :cond_8c

    .line 1665
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iTransitions:[J

    aget-wide v6, v0, v1

    invoke-static {p1, v6, v7}, Lorg/joda/time/tz/DateTimeZoneBuilder;->writeMillis(Ljava/io/DataOutput;J)V

    .line 1666
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iWallOffsets:[I

    aget v0, v0, v1

    int-to-long v6, v0

    invoke-static {p1, v6, v7}, Lorg/joda/time/tz/DateTimeZoneBuilder;->writeMillis(Ljava/io/DataOutput;J)V

    .line 1667
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iStandardOffsets:[I

    aget v0, v0, v1

    int-to-long v6, v0

    invoke-static {p1, v6, v7}, Lorg/joda/time/tz/DateTimeZoneBuilder;->writeMillis(Ljava/io/DataOutput;J)V

    .line 1670
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iNameKeys:[Ljava/lang/String;

    aget-object v6, v0, v1

    move v0, v2

    .line 1671
    :goto_70
    if-ge v0, v4, :cond_81

    .line 1672
    aget-object v7, v5, v0

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_89

    .line 1673
    const/16 v6, 0x100

    if-ge v4, v6, :cond_85

    .line 1674
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1664
    :cond_81
    :goto_81
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_52

    .line 1676
    :cond_85
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    goto :goto_81

    .line 1671
    :cond_89
    add-int/lit8 v0, v0, 0x1

    goto :goto_70

    .line 1683
    :cond_8c
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iTailZone:Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;

    if-eqz v0, :cond_91

    const/4 v2, 0x1

    :cond_91
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 1684
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iTailZone:Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;

    if-eqz v0, :cond_9d

    .line 1685
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->iTailZone:Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;

    invoke-virtual {v0, p1}, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->writeTo(Ljava/io/DataOutput;)V

    .line 1687
    :cond_9d
    return-void
.end method
