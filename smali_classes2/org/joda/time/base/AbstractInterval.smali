.class public abstract Lorg/joda/time/base/AbstractInterval;
.super Ljava/lang/Object;
.source "AbstractInterval.java"

# interfaces
.implements Lorg/joda/time/ReadableInterval;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method protected checkInterval(JJ)V
    .registers 8

    .prologue
    .line 62
    cmp-long v0, p3, p1

    if-gez v0, :cond_c

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The end instant must be greater or equal to the start"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_c
    return-void
.end method

.method public contains(J)Z
    .registers 8

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getStartMillis()J

    move-result-wide v0

    .line 99
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getEndMillis()J

    move-result-wide v2

    .line 100
    cmp-long v0, p1, v0

    if-ltz v0, :cond_12

    cmp-long v0, p1, v2

    if-gez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public contains(Lorg/joda/time/ReadableInstant;)Z
    .registers 4

    .prologue
    .line 138
    if-nez p1, :cond_7

    .line 139
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->containsNow()Z

    move-result v0

    .line 141
    :goto_6
    return v0

    :cond_7
    invoke-interface {p1}, Lorg/joda/time/ReadableInstant;->getMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/base/AbstractInterval;->contains(J)Z

    move-result v0

    goto :goto_6
.end method

.method public contains(Lorg/joda/time/ReadableInterval;)Z
    .registers 10

    .prologue
    .line 179
    if-nez p1, :cond_7

    .line 180
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->containsNow()Z

    move-result v0

    .line 186
    :goto_6
    return v0

    .line 182
    :cond_7
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    move-result-wide v0

    .line 183
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    move-result-wide v2

    .line 184
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getStartMillis()J

    move-result-wide v4

    .line 185
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getEndMillis()J

    move-result-wide v6

    .line 186
    cmp-long v4, v4, v0

    if-gtz v4, :cond_25

    cmp-long v0, v0, v6

    if-gez v0, :cond_25

    cmp-long v0, v2, v6

    if-gtz v0, :cond_25

    const/4 v0, 0x1

    goto :goto_6

    :cond_25
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public containsNow()Z
    .registers 3

    .prologue
    .line 112
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/base/AbstractInterval;->contains(J)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 449
    if-ne p0, p1, :cond_5

    .line 456
    :cond_4
    :goto_4
    return v0

    .line 452
    :cond_5
    instance-of v2, p1, Lorg/joda/time/ReadableInterval;

    if-nez v2, :cond_b

    move v0, v1

    .line 453
    goto :goto_4

    .line 455
    :cond_b
    check-cast p1, Lorg/joda/time/ReadableInterval;

    .line 456
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getStartMillis()J

    move-result-wide v2

    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_33

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getEndMillis()J

    move-result-wide v2

    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_33

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v2

    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/joda/time/field/FieldUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_33
    move v0, v1

    goto :goto_4
.end method

.method public getEnd()Lorg/joda/time/DateTime;
    .registers 5

    .prologue
    .line 83
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getEndMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public getStart()Lorg/joda/time/DateTime;
    .registers 5

    .prologue
    .line 74
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getStartMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public hashCode()I
    .registers 8

    .prologue
    const/16 v6, 0x20

    .line 468
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getStartMillis()J

    move-result-wide v0

    .line 469
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getEndMillis()J

    move-result-wide v2

    .line 471
    ushr-long v4, v0, v6

    xor-long/2addr v0, v4

    long-to-int v0, v0

    add-int/lit16 v0, v0, 0xbbf

    .line 472
    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 473
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 474
    return v0
.end method

.method public isAfter(J)Z
    .registers 6

    .prologue
    .line 309
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getStartMillis()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isAfter(Lorg/joda/time/ReadableInstant;)Z
    .registers 4

    .prologue
    .line 332
    if-nez p1, :cond_7

    .line 333
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->isAfterNow()Z

    move-result v0

    .line 335
    :goto_6
    return v0

    :cond_7
    invoke-interface {p1}, Lorg/joda/time/ReadableInstant;->getMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/base/AbstractInterval;->isAfter(J)Z

    move-result v0

    goto :goto_6
.end method

.method public isAfter(Lorg/joda/time/ReadableInterval;)Z
    .registers 6

    .prologue
    .line 349
    if-nez p1, :cond_10

    .line 350
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    .line 354
    :goto_6
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getStartMillis()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-ltz v0, :cond_15

    const/4 v0, 0x1

    :goto_f
    return v0

    .line 352
    :cond_10
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    move-result-wide v0

    goto :goto_6

    .line 354
    :cond_15
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isAfterNow()Z
    .registers 3

    .prologue
    .line 320
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/base/AbstractInterval;->isAfter(J)Z

    move-result v0

    return v0
.end method

.method public isBefore(J)Z
    .registers 6

    .prologue
    .line 254
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getEndMillis()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gtz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isBefore(Lorg/joda/time/ReadableInstant;)Z
    .registers 4

    .prologue
    .line 277
    if-nez p1, :cond_7

    .line 278
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->isBeforeNow()Z

    move-result v0

    .line 280
    :goto_6
    return v0

    :cond_7
    invoke-interface {p1}, Lorg/joda/time/ReadableInstant;->getMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/base/AbstractInterval;->isBefore(J)Z

    move-result v0

    goto :goto_6
.end method

.method public isBefore(Lorg/joda/time/ReadableInterval;)Z
    .registers 4

    .prologue
    .line 292
    if-nez p1, :cond_7

    .line 293
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->isBeforeNow()Z

    move-result v0

    .line 295
    :goto_6
    return v0

    :cond_7
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/base/AbstractInterval;->isBefore(J)Z

    move-result v0

    goto :goto_6
.end method

.method public isBeforeNow()Z
    .registers 3

    .prologue
    .line 265
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/base/AbstractInterval;->isBefore(J)Z

    move-result v0

    return v0
.end method

.method public overlaps(Lorg/joda/time/ReadableInterval;)Z
    .registers 12

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 231
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getStartMillis()J

    move-result-wide v2

    .line 232
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getEndMillis()J

    move-result-wide v4

    .line 233
    if-nez p1, :cond_1b

    .line 234
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v6

    .line 235
    cmp-long v2, v2, v6

    if-gez v2, :cond_19

    cmp-long v2, v6, v4

    if-gez v2, :cond_19

    .line 239
    :cond_18
    :goto_18
    return v0

    :cond_19
    move v0, v1

    .line 235
    goto :goto_18

    .line 237
    :cond_1b
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    move-result-wide v6

    .line 238
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    move-result-wide v8

    .line 239
    cmp-long v2, v2, v8

    if-gez v2, :cond_2b

    cmp-long v2, v6, v4

    if-ltz v2, :cond_18

    :cond_2b
    move v0, v1

    goto :goto_18
.end method

.method public toDuration()Lorg/joda/time/Duration;
    .registers 5

    .prologue
    .line 400
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->toDurationMillis()J

    move-result-wide v2

    .line 401
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_d

    .line 402
    sget-object v0, Lorg/joda/time/Duration;->ZERO:Lorg/joda/time/Duration;

    .line 404
    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Lorg/joda/time/Duration;

    invoke-direct {v0, v2, v3}, Lorg/joda/time/Duration;-><init>(J)V

    goto :goto_c
.end method

.method public toDurationMillis()J
    .registers 5

    .prologue
    .line 388
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getEndMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getStartMillis()J

    move-result-wide v2

    neg-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toInterval()Lorg/joda/time/Interval;
    .registers 8

    .prologue
    .line 364
    new-instance v1, Lorg/joda/time/Interval;

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getStartMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getEndMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lorg/joda/time/Interval;-><init>(JJLorg/joda/time/Chronology;)V

    return-object v1
.end method

.method public toMutableInterval()Lorg/joda/time/MutableInterval;
    .registers 8

    .prologue
    .line 375
    new-instance v1, Lorg/joda/time/MutableInterval;

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getStartMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getEndMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lorg/joda/time/MutableInterval;-><init>(JJLorg/joda/time/Chronology;)V

    return-object v1
.end method

.method public toPeriod()Lorg/joda/time/Period;
    .registers 8

    .prologue
    .line 419
    new-instance v1, Lorg/joda/time/Period;

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getStartMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getEndMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lorg/joda/time/Period;-><init>(JJLorg/joda/time/Chronology;)V

    return-object v1
.end method

.method public toPeriod(Lorg/joda/time/PeriodType;)Lorg/joda/time/Period;
    .registers 10

    .prologue
    .line 433
    new-instance v1, Lorg/joda/time/Period;

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getStartMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getEndMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v7

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lorg/joda/time/Period;-><init>(JJLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 483
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateHourMinuteSecondFraction()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    .line 484
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatter;->withChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    .line 485
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x30

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 486
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getStartMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/joda/time/format/DateTimeFormatter;->printTo(Ljava/lang/StringBuffer;J)V

    .line 487
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 488
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->getEndMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/joda/time/format/DateTimeFormatter;->printTo(Ljava/lang/StringBuffer;J)V

    .line 489
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
