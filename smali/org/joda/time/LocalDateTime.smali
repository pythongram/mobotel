.class public final Lorg/joda/time/LocalDateTime;
.super Lorg/joda/time/base/BaseLocal;
.source "LocalDateTime.java"

# interfaces
.implements Lorg/joda/time/ReadablePartial;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/LocalDateTime$Property;
    }
.end annotation


# static fields
.field private static final DAY_OF_MONTH:I = 0x2

.field private static final MILLIS_OF_DAY:I = 0x3

.field private static final MONTH_OF_YEAR:I = 0x1

.field private static final YEAR:I = 0x0

.field private static final serialVersionUID:J = -0x3baac930a5a78f0L


# instance fields
.field private final iChronology:Lorg/joda/time/Chronology;

.field private final iLocalMillis:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 255
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/joda/time/LocalDateTime;-><init>(JLorg/joda/time/Chronology;)V

    .line 256
    return-void
.end method

.method public constructor <init>(IIIII)V
    .registers 15

    .prologue
    const/4 v6, 0x0

    .line 422
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/LocalDateTime;-><init>(IIIIIIILorg/joda/time/Chronology;)V

    .line 424
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .registers 16

    .prologue
    .line 444
    const/4 v7, 0x0

    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/LocalDateTime;-><init>(IIIIIIILorg/joda/time/Chronology;)V

    .line 446
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .registers 17

    .prologue
    .line 468
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/LocalDateTime;-><init>(IIIIIIILorg/joda/time/Chronology;)V

    .line 470
    return-void
.end method

.method public constructor <init>(IIIIIIILorg/joda/time/Chronology;)V
    .registers 17

    .prologue
    .line 496
    invoke-direct {p0}, Lorg/joda/time/base/BaseLocal;-><init>()V

    .line 497
    invoke-static/range {p8 .. p8}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .line 498
    invoke-virtual/range {v0 .. v7}, Lorg/joda/time/Chronology;->getDateTimeMillis(IIIIIII)J

    move-result-wide v2

    .line 500
    iput-object v0, p0, Lorg/joda/time/LocalDateTime;->iChronology:Lorg/joda/time/Chronology;

    .line 501
    iput-wide v2, p0, Lorg/joda/time/LocalDateTime;->iLocalMillis:J

    .line 502
    return-void
.end method

.method public constructor <init>(J)V
    .registers 4

    .prologue
    .line 296
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/LocalDateTime;-><init>(JLorg/joda/time/Chronology;)V

    .line 297
    return-void
.end method

.method public constructor <init>(JLorg/joda/time/Chronology;)V
    .registers 9

    .prologue
    .line 323
    invoke-direct {p0}, Lorg/joda/time/base/BaseLocal;-><init>()V

    .line 324
    invoke-static {p3}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    sget-object v2, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v1, v2, p1, p2}, Lorg/joda/time/DateTimeZone;->getMillisKeepLocal(Lorg/joda/time/DateTimeZone;J)J

    move-result-wide v2

    .line 327
    iput-wide v2, p0, Lorg/joda/time/LocalDateTime;->iLocalMillis:J

    .line 328
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/LocalDateTime;->iChronology:Lorg/joda/time/Chronology;

    .line 329
    return-void
.end method

.method public constructor <init>(JLorg/joda/time/DateTimeZone;)V
    .registers 5

    .prologue
    .line 310
    invoke-static {p3}, Lorg/joda/time/chrono/ISOChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/LocalDateTime;-><init>(JLorg/joda/time/Chronology;)V

    .line 311
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 349
    const/4 v0, 0x0

    check-cast v0, Lorg/joda/time/Chronology;

    invoke-direct {p0, p1, v0}, Lorg/joda/time/LocalDateTime;-><init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V

    .line 350
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V
    .registers 9

    .prologue
    .line 396
    invoke-direct {p0}, Lorg/joda/time/base/BaseLocal;-><init>()V

    .line 397
    invoke-static {}, Lorg/joda/time/convert/ConverterManager;->getInstance()Lorg/joda/time/convert/ConverterManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/convert/ConverterManager;->getPartialConverter(Ljava/lang/Object;)Lorg/joda/time/convert/PartialConverter;

    move-result-object v0

    .line 398
    invoke-interface {v0, p1, p2}, Lorg/joda/time/convert/PartialConverter;->getChronology(Ljava/lang/Object;Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v1

    .line 399
    invoke-static {v1}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v1

    .line 400
    invoke-virtual {v1}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v2

    iput-object v2, p0, Lorg/joda/time/LocalDateTime;->iChronology:Lorg/joda/time/Chronology;

    .line 401
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->localDateOptionalTimeParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-interface {v0, p0, p1, v1, v2}, Lorg/joda/time/convert/PartialConverter;->getPartialValues(Lorg/joda/time/ReadablePartial;Ljava/lang/Object;Lorg/joda/time/Chronology;Lorg/joda/time/format/DateTimeFormatter;)[I

    move-result-object v0

    .line 402
    iget-object v1, p0, Lorg/joda/time/LocalDateTime;->iChronology:Lorg/joda/time/Chronology;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v0, v0, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Lorg/joda/time/Chronology;->getDateTimeMillis(IIII)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/LocalDateTime;->iLocalMillis:J

    .line 403
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/DateTimeZone;)V
    .registers 9

    .prologue
    .line 370
    invoke-direct {p0}, Lorg/joda/time/base/BaseLocal;-><init>()V

    .line 371
    invoke-static {}, Lorg/joda/time/convert/ConverterManager;->getInstance()Lorg/joda/time/convert/ConverterManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/convert/ConverterManager;->getPartialConverter(Ljava/lang/Object;)Lorg/joda/time/convert/PartialConverter;

    move-result-object v0

    .line 372
    invoke-interface {v0, p1, p2}, Lorg/joda/time/convert/PartialConverter;->getChronology(Ljava/lang/Object;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v1

    .line 373
    invoke-static {v1}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v1

    .line 374
    invoke-virtual {v1}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v2

    iput-object v2, p0, Lorg/joda/time/LocalDateTime;->iChronology:Lorg/joda/time/Chronology;

    .line 375
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->localDateOptionalTimeParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-interface {v0, p0, p1, v1, v2}, Lorg/joda/time/convert/PartialConverter;->getPartialValues(Lorg/joda/time/ReadablePartial;Ljava/lang/Object;Lorg/joda/time/Chronology;Lorg/joda/time/format/DateTimeFormatter;)[I

    move-result-object v0

    .line 376
    iget-object v1, p0, Lorg/joda/time/LocalDateTime;->iChronology:Lorg/joda/time/Chronology;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v0, v0, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Lorg/joda/time/Chronology;->getDateTimeMillis(IIII)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/LocalDateTime;->iLocalMillis:J

    .line 377
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/Chronology;)V
    .registers 4

    .prologue
    .line 283
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lorg/joda/time/LocalDateTime;-><init>(JLorg/joda/time/Chronology;)V

    .line 284
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/DateTimeZone;)V
    .registers 5

    .prologue
    .line 269
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lorg/joda/time/chrono/ISOChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ISOChronology;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/joda/time/LocalDateTime;-><init>(JLorg/joda/time/Chronology;)V

    .line 270
    return-void
.end method

.method public static fromCalendarFields(Ljava/util/Calendar;)Lorg/joda/time/LocalDateTime;
    .registers 9

    .prologue
    .line 195
    if-nez p0, :cond_a

    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The calendar must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_a
    new-instance v0, Lorg/joda/time/LocalDateTime;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xc

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xd

    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0xe

    invoke-virtual {p0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lorg/joda/time/LocalDateTime;-><init>(IIIIIII)V

    return-object v0
.end method

.method public static fromDateFields(Ljava/util/Date;)Lorg/joda/time/LocalDateTime;
    .registers 13

    .prologue
    .line 231
    if-nez p0, :cond_a

    .line 232
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_a
    new-instance v0, Lorg/joda/time/LocalDateTime;

    invoke-virtual {p0}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    invoke-virtual {p0}, Ljava/util/Date;->getMonth()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result v3

    invoke-virtual {p0}, Ljava/util/Date;->getHours()I

    move-result v4

    invoke-virtual {p0}, Ljava/util/Date;->getMinutes()I

    move-result v5

    invoke-virtual {p0}, Ljava/util/Date;->getSeconds()I

    move-result v6

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    rem-long/2addr v8, v10

    long-to-int v7, v8

    invoke-direct/range {v0 .. v7}, Lorg/joda/time/LocalDateTime;-><init>(IIIIIII)V

    return-object v0
.end method

.method public static now()Lorg/joda/time/LocalDateTime;
    .registers 1

    .prologue
    .line 110
    new-instance v0, Lorg/joda/time/LocalDateTime;

    invoke-direct {v0}, Lorg/joda/time/LocalDateTime;-><init>()V

    return-object v0
.end method

.method public static now(Lorg/joda/time/Chronology;)Lorg/joda/time/LocalDateTime;
    .registers 3

    .prologue
    .line 139
    if-nez p0, :cond_a

    .line 140
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Chronology must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_a
    new-instance v0, Lorg/joda/time/LocalDateTime;

    invoke-direct {v0, p0}, Lorg/joda/time/LocalDateTime;-><init>(Lorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public static now(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/LocalDateTime;
    .registers 3

    .prologue
    .line 123
    if-nez p0, :cond_a

    .line 124
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Zone must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_a
    new-instance v0, Lorg/joda/time/LocalDateTime;

    invoke-direct {v0, p0}, Lorg/joda/time/LocalDateTime;-><init>(Lorg/joda/time/DateTimeZone;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lorg/joda/time/LocalDateTime;
    .registers 2
    .annotation runtime Lorg/joda/convert/FromString;
    .end annotation

    .prologue
    .line 156
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->localDateOptionalTimeParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/joda/time/LocalDateTime;->parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDateTime;
    .registers 3

    .prologue
    .line 167
    invoke-virtual {p1, p0}, Lorg/joda/time/format/DateTimeFormatter;->parseLocalDateTime(Ljava/lang/String;)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 509
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    iget-object v1, p0, Lorg/joda/time/LocalDateTime;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTimeZone;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 510
    new-instance v0, Lorg/joda/time/LocalDateTime;

    iget-wide v2, p0, Lorg/joda/time/LocalDateTime;->iLocalMillis:J

    iget-object v1, p0, Lorg/joda/time/LocalDateTime;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/joda/time/LocalDateTime;-><init>(JLorg/joda/time/Chronology;)V

    move-object p0, v0

    .line 512
    :cond_1c
    return-object p0
.end method


# virtual methods
.method public centuryOfEra()Lorg/joda/time/LocalDateTime$Property;
    .registers 3

    .prologue
    .line 1872
    new-instance v0, Lorg/joda/time/LocalDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->centuryOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDateTime$Property;-><init>(Lorg/joda/time/LocalDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 79
    check-cast p1, Lorg/joda/time/ReadablePartial;

    invoke-virtual {p0, p1}, Lorg/joda/time/LocalDateTime;->compareTo(Lorg/joda/time/ReadablePartial;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/joda/time/ReadablePartial;)I
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 687
    if-ne p0, p1, :cond_4

    .line 698
    :goto_3
    return v1

    .line 690
    :cond_4
    instance-of v0, p1, Lorg/joda/time/LocalDateTime;

    if-eqz v0, :cond_2c

    move-object v0, p1

    .line 691
    check-cast v0, Lorg/joda/time/LocalDateTime;

    .line 692
    iget-object v2, p0, Lorg/joda/time/LocalDateTime;->iChronology:Lorg/joda/time/Chronology;

    iget-object v3, v0, Lorg/joda/time/LocalDateTime;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 693
    iget-wide v2, p0, Lorg/joda/time/LocalDateTime;->iLocalMillis:J

    iget-wide v4, v0, Lorg/joda/time/LocalDateTime;->iLocalMillis:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_20

    const/4 v0, -0x1

    :goto_1e
    move v1, v0

    goto :goto_3

    :cond_20
    iget-wide v2, p0, Lorg/joda/time/LocalDateTime;->iLocalMillis:J

    iget-wide v4, v0, Lorg/joda/time/LocalDateTime;->iLocalMillis:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2a

    move v0, v1

    goto :goto_1e

    :cond_2a
    const/4 v0, 0x1

    goto :goto_1e

    .line 698
    :cond_2c
    invoke-super {p0, p1}, Lorg/joda/time/base/BaseLocal;->compareTo(Lorg/joda/time/ReadablePartial;)I

    move-result v1

    goto :goto_3
.end method

.method public dayOfMonth()Lorg/joda/time/LocalDateTime$Property;
    .registers 3

    .prologue
    .line 1944
    new-instance v0, Lorg/joda/time/LocalDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDateTime$Property;-><init>(Lorg/joda/time/LocalDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public dayOfWeek()Lorg/joda/time/LocalDateTime$Property;
    .registers 3

    .prologue
    .line 1953
    new-instance v0, Lorg/joda/time/LocalDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDateTime$Property;-><init>(Lorg/joda/time/LocalDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public dayOfYear()Lorg/joda/time/LocalDateTime$Property;
    .registers 3

    .prologue
    .line 1935
    new-instance v0, Lorg/joda/time/LocalDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->dayOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDateTime$Property;-><init>(Lorg/joda/time/LocalDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 657
    if-ne p0, p1, :cond_4

    .line 666
    :goto_3
    return v1

    .line 660
    :cond_4
    instance-of v0, p1, Lorg/joda/time/LocalDateTime;

    if-eqz v0, :cond_22

    move-object v0, p1

    .line 661
    check-cast v0, Lorg/joda/time/LocalDateTime;

    .line 662
    iget-object v2, p0, Lorg/joda/time/LocalDateTime;->iChronology:Lorg/joda/time/Chronology;

    iget-object v3, v0, Lorg/joda/time/LocalDateTime;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 663
    iget-wide v2, p0, Lorg/joda/time/LocalDateTime;->iLocalMillis:J

    iget-wide v4, v0, Lorg/joda/time/LocalDateTime;->iLocalMillis:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_20

    move v0, v1

    :goto_1e
    move v1, v0

    goto :goto_3

    :cond_20
    const/4 v0, 0x0

    goto :goto_1e

    .line 666
    :cond_22
    invoke-super {p0, p1}, Lorg/joda/time/base/BaseLocal;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3
.end method

.method public era()Lorg/joda/time/LocalDateTime$Property;
    .registers 3

    .prologue
    .line 1863
    new-instance v0, Lorg/joda/time/LocalDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->era()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDateTime$Property;-><init>(Lorg/joda/time/LocalDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public get(Lorg/joda/time/DateTimeFieldType;)I
    .registers 6

    .prologue
    .line 591
    if-nez p1, :cond_a

    .line 592
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The DateTimeFieldType must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 594
    :cond_a
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getCenturyOfEra()I
    .registers 5

    .prologue
    .line 1458
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->centuryOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getChronology()Lorg/joda/time/Chronology;
    .registers 2

    .prologue
    .line 644
    iget-object v0, p0, Lorg/joda/time/LocalDateTime;->iChronology:Lorg/joda/time/Chronology;

    return-object v0
.end method

.method public getDayOfMonth()I
    .registers 5

    .prologue
    .line 1543
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getDayOfWeek()I
    .registers 5

    .prologue
    .line 1554
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getDayOfYear()I
    .registers 5

    .prologue
    .line 1532
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getEra()I
    .registers 5

    .prologue
    .line 1449
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->era()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method protected getField(ILorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;
    .registers 6

    .prologue
    .line 536
    packed-switch p1, :pswitch_data_30

    .line 546
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :pswitch_1c
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    .line 544
    :goto_20
    return-object v0

    .line 540
    :pswitch_21
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    goto :goto_20

    .line 542
    :pswitch_26
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    goto :goto_20

    .line 544
    :pswitch_2b
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    goto :goto_20

    .line 536
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_21
        :pswitch_26
        :pswitch_2b
    .end packed-switch
.end method

.method public getHourOfDay()I
    .registers 5

    .prologue
    .line 1564
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->hourOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method protected getLocalMillis()J
    .registers 3

    .prologue
    .line 635
    iget-wide v0, p0, Lorg/joda/time/LocalDateTime;->iLocalMillis:J

    return-wide v0
.end method

.method public getMillisOfDay()I
    .registers 5

    .prologue
    .line 1600
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getMillisOfSecond()I
    .registers 5

    .prologue
    .line 1591
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millisOfSecond()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getMinuteOfHour()I
    .registers 5

    .prologue
    .line 1573
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->minuteOfHour()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getMonthOfYear()I
    .registers 5

    .prologue
    .line 1509
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getSecondOfMinute()I
    .registers 5

    .prologue
    .line 1582
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->secondOfMinute()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getValue(I)I
    .registers 6

    .prologue
    .line 561
    packed-switch p1, :pswitch_data_60

    .line 571
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :pswitch_1c
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    .line 569
    :goto_2c
    return v0

    .line 565
    :pswitch_2d
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    goto :goto_2c

    .line 567
    :pswitch_3e
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    goto :goto_2c

    .line 569
    :pswitch_4f
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    goto :goto_2c

    .line 561
    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_2d
        :pswitch_3e
        :pswitch_4f
    .end packed-switch
.end method

.method public getWeekOfWeekyear()I
    .registers 5

    .prologue
    .line 1523
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weekOfWeekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getWeekyear()I
    .registers 5

    .prologue
    .line 1500
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getYear()I
    .registers 5

    .prologue
    .line 1485
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getYearOfCentury()I
    .registers 5

    .prologue
    .line 1476
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->yearOfCentury()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getYearOfEra()I
    .registers 5

    .prologue
    .line 1467
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->yearOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public hourOfDay()Lorg/joda/time/LocalDateTime$Property;
    .registers 3

    .prologue
    .line 1963
    new-instance v0, Lorg/joda/time/LocalDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->hourOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDateTime$Property;-><init>(Lorg/joda/time/LocalDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public isSupported(Lorg/joda/time/DateTimeFieldType;)Z
    .registers 3

    .prologue
    .line 606
    if-nez p1, :cond_4

    .line 607
    const/4 v0, 0x0

    .line 609
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->isSupported()Z

    move-result v0

    goto :goto_3
.end method

.method public isSupported(Lorg/joda/time/DurationFieldType;)Z
    .registers 3

    .prologue
    .line 620
    if-nez p1, :cond_4

    .line 621
    const/4 v0, 0x0

    .line 623
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DurationFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DurationField;->isSupported()Z

    move-result v0

    goto :goto_3
.end method

.method public millisOfDay()Lorg/joda/time/LocalDateTime$Property;
    .registers 3

    .prologue
    .line 1999
    new-instance v0, Lorg/joda/time/LocalDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDateTime$Property;-><init>(Lorg/joda/time/LocalDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public millisOfSecond()Lorg/joda/time/LocalDateTime$Property;
    .registers 3

    .prologue
    .line 1990
    new-instance v0, Lorg/joda/time/LocalDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->millisOfSecond()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDateTime$Property;-><init>(Lorg/joda/time/LocalDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public minus(Lorg/joda/time/ReadableDuration;)Lorg/joda/time/LocalDateTime;
    .registers 3

    .prologue
    .line 1217
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/LocalDateTime;->withDurationAdded(Lorg/joda/time/ReadableDuration;I)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public minus(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/LocalDateTime;
    .registers 3

    .prologue
    .line 1234
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/LocalDateTime;->withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public minusDays(I)Lorg/joda/time/LocalDateTime;
    .registers 6

    .prologue
    .line 1323
    if-nez p1, :cond_3

    .line 1327
    :goto_2
    return-object p0

    .line 1326
    :cond_3
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->days()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    .line 1327
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p0

    goto :goto_2
.end method

.method public minusHours(I)Lorg/joda/time/LocalDateTime;
    .registers 6

    .prologue
    .line 1347
    if-nez p1, :cond_3

    .line 1351
    :goto_2
    return-object p0

    .line 1350
    :cond_3
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->hours()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    .line 1351
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p0

    goto :goto_2
.end method

.method public minusMillis(I)Lorg/joda/time/LocalDateTime;
    .registers 6

    .prologue
    .line 1416
    if-nez p1, :cond_3

    .line 1420
    :goto_2
    return-object p0

    .line 1419
    :cond_3
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millis()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    .line 1420
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p0

    goto :goto_2
.end method

.method public minusMinutes(I)Lorg/joda/time/LocalDateTime;
    .registers 6

    .prologue
    .line 1370
    if-nez p1, :cond_3

    .line 1374
    :goto_2
    return-object p0

    .line 1373
    :cond_3
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->minutes()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    .line 1374
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p0

    goto :goto_2
.end method

.method public minusMonths(I)Lorg/joda/time/LocalDateTime;
    .registers 6

    .prologue
    .line 1277
    if-nez p1, :cond_3

    .line 1281
    :goto_2
    return-object p0

    .line 1280
    :cond_3
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->months()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    .line 1281
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p0

    goto :goto_2
.end method

.method public minusSeconds(I)Lorg/joda/time/LocalDateTime;
    .registers 6

    .prologue
    .line 1393
    if-nez p1, :cond_3

    .line 1397
    :goto_2
    return-object p0

    .line 1396
    :cond_3
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->seconds()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    .line 1397
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p0

    goto :goto_2
.end method

.method public minusWeeks(I)Lorg/joda/time/LocalDateTime;
    .registers 6

    .prologue
    .line 1300
    if-nez p1, :cond_3

    .line 1304
    :goto_2
    return-object p0

    .line 1303
    :cond_3
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weeks()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    .line 1304
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p0

    goto :goto_2
.end method

.method public minusYears(I)Lorg/joda/time/LocalDateTime;
    .registers 6

    .prologue
    .line 1254
    if-nez p1, :cond_3

    .line 1258
    :goto_2
    return-object p0

    .line 1257
    :cond_3
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->years()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    .line 1258
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p0

    goto :goto_2
.end method

.method public minuteOfHour()Lorg/joda/time/LocalDateTime$Property;
    .registers 3

    .prologue
    .line 1972
    new-instance v0, Lorg/joda/time/LocalDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->minuteOfHour()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDateTime$Property;-><init>(Lorg/joda/time/LocalDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public monthOfYear()Lorg/joda/time/LocalDateTime$Property;
    .registers 3

    .prologue
    .line 1917
    new-instance v0, Lorg/joda/time/LocalDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDateTime$Property;-><init>(Lorg/joda/time/LocalDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public plus(Lorg/joda/time/ReadableDuration;)Lorg/joda/time/LocalDateTime;
    .registers 3

    .prologue
    .line 1000
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/LocalDateTime;->withDurationAdded(Lorg/joda/time/ReadableDuration;I)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plus(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/LocalDateTime;
    .registers 3

    .prologue
    .line 1017
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/LocalDateTime;->withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusDays(I)Lorg/joda/time/LocalDateTime;
    .registers 6

    .prologue
    .line 1106
    if-nez p1, :cond_3

    .line 1110
    :goto_2
    return-object p0

    .line 1109
    :cond_3
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->days()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 1110
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p0

    goto :goto_2
.end method

.method public plusHours(I)Lorg/joda/time/LocalDateTime;
    .registers 6

    .prologue
    .line 1130
    if-nez p1, :cond_3

    .line 1134
    :goto_2
    return-object p0

    .line 1133
    :cond_3
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->hours()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 1134
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p0

    goto :goto_2
.end method

.method public plusMillis(I)Lorg/joda/time/LocalDateTime;
    .registers 6

    .prologue
    .line 1199
    if-nez p1, :cond_3

    .line 1203
    :goto_2
    return-object p0

    .line 1202
    :cond_3
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millis()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 1203
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p0

    goto :goto_2
.end method

.method public plusMinutes(I)Lorg/joda/time/LocalDateTime;
    .registers 6

    .prologue
    .line 1153
    if-nez p1, :cond_3

    .line 1157
    :goto_2
    return-object p0

    .line 1156
    :cond_3
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->minutes()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 1157
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p0

    goto :goto_2
.end method

.method public plusMonths(I)Lorg/joda/time/LocalDateTime;
    .registers 6

    .prologue
    .line 1060
    if-nez p1, :cond_3

    .line 1064
    :goto_2
    return-object p0

    .line 1063
    :cond_3
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->months()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 1064
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p0

    goto :goto_2
.end method

.method public plusSeconds(I)Lorg/joda/time/LocalDateTime;
    .registers 6

    .prologue
    .line 1176
    if-nez p1, :cond_3

    .line 1180
    :goto_2
    return-object p0

    .line 1179
    :cond_3
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->seconds()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 1180
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p0

    goto :goto_2
.end method

.method public plusWeeks(I)Lorg/joda/time/LocalDateTime;
    .registers 6

    .prologue
    .line 1083
    if-nez p1, :cond_3

    .line 1087
    :goto_2
    return-object p0

    .line 1086
    :cond_3
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weeks()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 1087
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p0

    goto :goto_2
.end method

.method public plusYears(I)Lorg/joda/time/LocalDateTime;
    .registers 6

    .prologue
    .line 1037
    if-nez p1, :cond_3

    .line 1041
    :goto_2
    return-object p0

    .line 1040
    :cond_3
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->years()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 1041
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p0

    goto :goto_2
.end method

.method public property(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/LocalDateTime$Property;
    .registers 5

    .prologue
    .line 1433
    if-nez p1, :cond_a

    .line 1434
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The DateTimeFieldType must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1436
    :cond_a
    invoke-virtual {p0, p1}, Lorg/joda/time/LocalDateTime;->isSupported(Lorg/joda/time/DateTimeFieldType;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1437
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1439
    :cond_2f
    new-instance v0, Lorg/joda/time/LocalDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDateTime$Property;-><init>(Lorg/joda/time/LocalDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public secondOfMinute()Lorg/joda/time/LocalDateTime$Property;
    .registers 3

    .prologue
    .line 1981
    new-instance v0, Lorg/joda/time/LocalDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->secondOfMinute()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDateTime$Property;-><init>(Lorg/joda/time/LocalDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 523
    const/4 v0, 0x4

    return v0
.end method

.method public toDate()Ljava/util/Date;
    .registers 11

    .prologue
    const-wide/16 v8, 0x3e8

    .line 771
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getDayOfMonth()I

    move-result v3

    .line 772
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, -0x76c

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getMonthOfYear()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getHourOfDay()I

    move-result v4

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getMinuteOfHour()I

    move-result v5

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getSecondOfMinute()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    .line 774
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getMillisOfSecond()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 775
    invoke-static {v0}, Lorg/joda/time/LocalDateTime;->fromDateFields(Ljava/util/Date;)Lorg/joda/time/LocalDateTime;

    move-result-object v1

    .line 776
    invoke-virtual {v1, p0}, Lorg/joda/time/LocalDateTime;->isBefore(Lorg/joda/time/ReadablePartial;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 779
    :goto_3a
    invoke-virtual {v1, p0}, Lorg/joda/time/LocalDateTime;->isBefore(Lorg/joda/time/ReadablePartial;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 780
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 781
    invoke-static {v0}, Lorg/joda/time/LocalDateTime;->fromDateFields(Ljava/util/Date;)Lorg/joda/time/LocalDateTime;

    move-result-object v1

    goto :goto_3a

    .line 784
    :cond_50
    :goto_50
    invoke-virtual {v1, p0}, Lorg/joda/time/LocalDateTime;->isBefore(Lorg/joda/time/ReadablePartial;)Z

    move-result v1

    if-nez v1, :cond_63

    .line 785
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 786
    invoke-static {v0}, Lorg/joda/time/LocalDateTime;->fromDateFields(Ljava/util/Date;)Lorg/joda/time/LocalDateTime;

    move-result-object v1

    goto :goto_50

    .line 788
    :cond_63
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    add-long/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 797
    :cond_6b
    :goto_6b
    return-object v0

    .line 789
    :cond_6c
    invoke-virtual {v1, p0}, Lorg/joda/time/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 791
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 792
    invoke-static {v1}, Lorg/joda/time/LocalDateTime;->fromDateFields(Ljava/util/Date;)Lorg/joda/time/LocalDateTime;

    move-result-object v2

    .line 793
    invoke-virtual {v2, p0}, Lorg/joda/time/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    move-object v0, v1

    .line 794
    goto :goto_6b
.end method

.method public toDateTime()Lorg/joda/time/DateTime;
    .registers 2

    .prologue
    .line 711
    const/4 v0, 0x0

    check-cast v0, Lorg/joda/time/DateTimeZone;

    invoke-virtual {p0, v0}, Lorg/joda/time/LocalDateTime;->toDateTime(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public toDateTime(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;
    .registers 11

    .prologue
    .line 724
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 725
    iget-object v1, p0, Lorg/joda/time/LocalDateTime;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v1, v0}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v8

    .line 726
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getMonthOfYear()I

    move-result v2

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getDayOfMonth()I

    move-result v3

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getHourOfDay()I

    move-result v4

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getMinuteOfHour()I

    move-result v5

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getSecondOfMinute()I

    move-result v6

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getMillisOfSecond()I

    move-result v7

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/DateTime;-><init>(IIIIIIILorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public toLocalDate()Lorg/joda/time/LocalDate;
    .registers 5

    .prologue
    .line 739
    new-instance v0, Lorg/joda/time/LocalDate;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/joda/time/LocalDate;-><init>(JLorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public toLocalTime()Lorg/joda/time/LocalTime;
    .registers 5

    .prologue
    .line 748
    new-instance v0, Lorg/joda/time/LocalTime;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/joda/time/LocalTime;-><init>(JLorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    .prologue
    .line 2010
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 2020
    if-nez p1, :cond_7

    .line 2021
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2023
    :goto_6
    return-object v0

    :cond_7
    invoke-static {p1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public toString(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2034
    if-nez p1, :cond_7

    .line 2035
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2037
    :goto_6
    return-object v0

    :cond_7
    invoke-static {p1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/joda/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public weekOfWeekyear()Lorg/joda/time/LocalDateTime$Property;
    .registers 3

    .prologue
    .line 1926
    new-instance v0, Lorg/joda/time/LocalDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->weekOfWeekyear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDateTime$Property;-><init>(Lorg/joda/time/LocalDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public weekyear()Lorg/joda/time/LocalDateTime$Property;
    .registers 3

    .prologue
    .line 1908
    new-instance v0, Lorg/joda/time/LocalDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->weekyear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDateTime$Property;-><init>(Lorg/joda/time/LocalDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public withCenturyOfEra(I)Lorg/joda/time/LocalDateTime;
    .registers 6

    .prologue
    .line 1631
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->centuryOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withDate(III)Lorg/joda/time/LocalDateTime;
    .registers 8

    .prologue
    .line 834
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    .line 835
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    .line 836
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-virtual {v1, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v2

    .line 837
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-virtual {v1, v2, v3, p2}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v2

    .line 838
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, v2, v3, p3}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    .line 839
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfMonth(I)Lorg/joda/time/LocalDateTime;
    .registers 6

    .prologue
    .line 1762
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfWeek(I)Lorg/joda/time/LocalDateTime;
    .registers 6

    .prologue
    .line 1777
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfYear(I)Lorg/joda/time/LocalDateTime;
    .registers 6

    .prologue
    .line 1747
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withDurationAdded(Lorg/joda/time/ReadableDuration;I)Lorg/joda/time/LocalDateTime;
    .registers 10

    .prologue
    .line 959
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 963
    :cond_4
    :goto_4
    return-object p0

    .line 962
    :cond_5
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-interface {p1}, Lorg/joda/time/ReadableDuration;->getMillis()J

    move-result-wide v4

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/joda/time/Chronology;->add(JJI)J

    move-result-wide v0

    .line 963
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p0

    goto :goto_4
.end method

.method public withEra(I)Lorg/joda/time/LocalDateTime;
    .registers 6

    .prologue
    .line 1616
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->era()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withField(Lorg/joda/time/DateTimeFieldType;I)Lorg/joda/time/LocalDateTime;
    .registers 7

    .prologue
    .line 910
    if-nez p1, :cond_a

    .line 911
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 913
    :cond_a
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p2}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    .line 914
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/LocalDateTime;
    .registers 7

    .prologue
    .line 937
    if-nez p1, :cond_a

    .line 938
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 940
    :cond_a
    if-nez p2, :cond_d

    .line 944
    :goto_c
    return-object p0

    .line 943
    :cond_d
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DurationFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p2}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 944
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p0

    goto :goto_c
.end method

.method public withFields(Lorg/joda/time/ReadablePartial;)Lorg/joda/time/LocalDateTime;
    .registers 6

    .prologue
    .line 884
    if-nez p1, :cond_3

    .line 887
    :goto_2
    return-object p0

    :cond_3
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lorg/joda/time/Chronology;->set(Lorg/joda/time/ReadablePartial;J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p0

    goto :goto_2
.end method

.method public withHourOfDay(I)Lorg/joda/time/LocalDateTime;
    .registers 6

    .prologue
    .line 1793
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->hourOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method withLocalMillis(J)Lorg/joda/time/LocalDateTime;
    .registers 6

    .prologue
    .line 812
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_9

    :goto_8
    return-object p0

    :cond_9
    new-instance v0, Lorg/joda/time/LocalDateTime;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lorg/joda/time/LocalDateTime;-><init>(JLorg/joda/time/Chronology;)V

    move-object p0, v0

    goto :goto_8
.end method

.method public withMillisOfDay(I)Lorg/joda/time/LocalDateTime;
    .registers 6

    .prologue
    .line 1853
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withMillisOfSecond(I)Lorg/joda/time/LocalDateTime;
    .registers 6

    .prologue
    .line 1838
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millisOfSecond()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withMinuteOfHour(I)Lorg/joda/time/LocalDateTime;
    .registers 6

    .prologue
    .line 1808
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->minuteOfHour()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withMonthOfYear(I)Lorg/joda/time/LocalDateTime;
    .registers 6

    .prologue
    .line 1712
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/LocalDateTime;
    .registers 7

    .prologue
    .line 982
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 986
    :cond_4
    :goto_4
    return-object p0

    .line 985
    :cond_5
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3, p2}, Lorg/joda/time/Chronology;->add(Lorg/joda/time/ReadablePeriod;JI)J

    move-result-wide v0

    .line 986
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object p0

    goto :goto_4
.end method

.method public withSecondOfMinute(I)Lorg/joda/time/LocalDateTime;
    .registers 6

    .prologue
    .line 1823
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->secondOfMinute()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withTime(IIII)Lorg/joda/time/LocalDateTime;
    .registers 9

    .prologue
    .line 861
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    .line 862
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    .line 863
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->hourOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-virtual {v1, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v2

    .line 864
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->minuteOfHour()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-virtual {v1, v2, v3, p2}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v2

    .line 865
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->secondOfMinute()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-virtual {v1, v2, v3, p3}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v2

    .line 866
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millisOfSecond()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, v2, v3, p4}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    .line 867
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withWeekOfWeekyear(I)Lorg/joda/time/LocalDateTime;
    .registers 6

    .prologue
    .line 1732
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weekOfWeekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withWeekyear(I)Lorg/joda/time/LocalDateTime;
    .registers 6

    .prologue
    .line 1697
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withYear(I)Lorg/joda/time/LocalDateTime;
    .registers 6

    .prologue
    .line 1676
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withYearOfCentury(I)Lorg/joda/time/LocalDateTime;
    .registers 6

    .prologue
    .line 1661
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->yearOfCentury()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public withYearOfEra(I)Lorg/joda/time/LocalDateTime;
    .registers 6

    .prologue
    .line 1646
    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->yearOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDateTime;->withLocalMillis(J)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public year()Lorg/joda/time/LocalDateTime$Property;
    .registers 3

    .prologue
    .line 1899
    new-instance v0, Lorg/joda/time/LocalDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDateTime$Property;-><init>(Lorg/joda/time/LocalDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public yearOfCentury()Lorg/joda/time/LocalDateTime$Property;
    .registers 3

    .prologue
    .line 1881
    new-instance v0, Lorg/joda/time/LocalDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->yearOfCentury()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDateTime$Property;-><init>(Lorg/joda/time/LocalDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public yearOfEra()Lorg/joda/time/LocalDateTime$Property;
    .registers 3

    .prologue
    .line 1890
    new-instance v0, Lorg/joda/time/LocalDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->yearOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDateTime$Property;-><init>(Lorg/joda/time/LocalDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method
