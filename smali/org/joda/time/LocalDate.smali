.class public final Lorg/joda/time/LocalDate;
.super Lorg/joda/time/base/BaseLocal;
.source "LocalDate.java"

# interfaces
.implements Lorg/joda/time/ReadablePartial;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/LocalDate$Property;
    }
.end annotation


# static fields
.field private static final DATE_DURATION_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/joda/time/DurationFieldType;",
            ">;"
        }
    .end annotation
.end field

.field private static final DAY_OF_MONTH:I = 0x2

.field private static final MONTH_OF_YEAR:I = 0x1

.field private static final YEAR:I = 0x0

.field private static final serialVersionUID:J = -0x7fb2c1b144bL


# instance fields
.field private final iChronology:Lorg/joda/time/Chronology;

.field private volatile transient iHash:I

.field private final iLocalMillis:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 95
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/joda/time/LocalDate;->DATE_DURATION_TYPES:Ljava/util/Set;

    .line 97
    sget-object v0, Lorg/joda/time/LocalDate;->DATE_DURATION_TYPES:Ljava/util/Set;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lorg/joda/time/LocalDate;->DATE_DURATION_TYPES:Ljava/util/Set;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lorg/joda/time/LocalDate;->DATE_DURATION_TYPES:Ljava/util/Set;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lorg/joda/time/LocalDate;->DATE_DURATION_TYPES:Ljava/util/Set;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->weekyears()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lorg/joda/time/LocalDate;->DATE_DURATION_TYPES:Ljava/util/Set;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lorg/joda/time/LocalDate;->DATE_DURATION_TYPES:Ljava/util/Set;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->centuries()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lorg/joda/time/LocalDate;->DATE_DURATION_TYPES:Ljava/util/Set;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->eras()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 258
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/joda/time/LocalDate;-><init>(JLorg/joda/time/Chronology;)V

    .line 259
    return-void
.end method

.method public constructor <init>(III)V
    .registers 5

    .prologue
    .line 423
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/joda/time/LocalDate;-><init>(IIILorg/joda/time/Chronology;)V

    .line 424
    return-void
.end method

.method public constructor <init>(IIILorg/joda/time/Chronology;)V
    .registers 9

    .prologue
    .line 442
    invoke-direct {p0}, Lorg/joda/time/base/BaseLocal;-><init>()V

    .line 443
    invoke-static {p4}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v0

    .line 444
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/joda/time/Chronology;->getDateTimeMillis(IIII)J

    move-result-wide v2

    .line 445
    iput-object v0, p0, Lorg/joda/time/LocalDate;->iChronology:Lorg/joda/time/Chronology;

    .line 446
    iput-wide v2, p0, Lorg/joda/time/LocalDate;->iLocalMillis:J

    .line 447
    return-void
.end method

.method public constructor <init>(J)V
    .registers 4

    .prologue
    .line 299
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/LocalDate;-><init>(JLorg/joda/time/Chronology;)V

    .line 300
    return-void
.end method

.method public constructor <init>(JLorg/joda/time/Chronology;)V
    .registers 9

    .prologue
    .line 326
    invoke-direct {p0}, Lorg/joda/time/base/BaseLocal;-><init>()V

    .line 327
    invoke-static {p3}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    sget-object v2, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v1, v2, p1, p2}, Lorg/joda/time/DateTimeZone;->getMillisKeepLocal(Lorg/joda/time/DateTimeZone;J)J

    move-result-wide v2

    .line 330
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/joda/time/LocalDate;->iLocalMillis:J

    .line 332
    iput-object v0, p0, Lorg/joda/time/LocalDate;->iChronology:Lorg/joda/time/Chronology;

    .line 333
    return-void
.end method

.method public constructor <init>(JLorg/joda/time/DateTimeZone;)V
    .registers 5

    .prologue
    .line 313
    invoke-static {p3}, Lorg/joda/time/chrono/ISOChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/LocalDate;-><init>(JLorg/joda/time/Chronology;)V

    .line 314
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 354
    const/4 v0, 0x0

    check-cast v0, Lorg/joda/time/Chronology;

    invoke-direct {p0, p1, v0}, Lorg/joda/time/LocalDate;-><init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V

    .line 355
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 401
    invoke-direct {p0}, Lorg/joda/time/base/BaseLocal;-><init>()V

    .line 402
    invoke-static {}, Lorg/joda/time/convert/ConverterManager;->getInstance()Lorg/joda/time/convert/ConverterManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/convert/ConverterManager;->getPartialConverter(Ljava/lang/Object;)Lorg/joda/time/convert/PartialConverter;

    move-result-object v0

    .line 403
    invoke-interface {v0, p1, p2}, Lorg/joda/time/convert/PartialConverter;->getChronology(Ljava/lang/Object;Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v1

    .line 404
    invoke-static {v1}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v1

    .line 405
    invoke-virtual {v1}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v2

    iput-object v2, p0, Lorg/joda/time/LocalDate;->iChronology:Lorg/joda/time/Chronology;

    .line 406
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->localDateParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-interface {v0, p0, p1, v1, v2}, Lorg/joda/time/convert/PartialConverter;->getPartialValues(Lorg/joda/time/ReadablePartial;Ljava/lang/Object;Lorg/joda/time/Chronology;Lorg/joda/time/format/DateTimeFormatter;)[I

    move-result-object v0

    .line 407
    iget-object v1, p0, Lorg/joda/time/LocalDate;->iChronology:Lorg/joda/time/Chronology;

    aget v2, v0, v5

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v0, v0, v4

    invoke-virtual {v1, v2, v3, v0, v5}, Lorg/joda/time/Chronology;->getDateTimeMillis(IIII)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/LocalDate;->iLocalMillis:J

    .line 408
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/DateTimeZone;)V
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 375
    invoke-direct {p0}, Lorg/joda/time/base/BaseLocal;-><init>()V

    .line 376
    invoke-static {}, Lorg/joda/time/convert/ConverterManager;->getInstance()Lorg/joda/time/convert/ConverterManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/convert/ConverterManager;->getPartialConverter(Ljava/lang/Object;)Lorg/joda/time/convert/PartialConverter;

    move-result-object v0

    .line 377
    invoke-interface {v0, p1, p2}, Lorg/joda/time/convert/PartialConverter;->getChronology(Ljava/lang/Object;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v1

    .line 378
    invoke-static {v1}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v1

    .line 379
    invoke-virtual {v1}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v2

    iput-object v2, p0, Lorg/joda/time/LocalDate;->iChronology:Lorg/joda/time/Chronology;

    .line 380
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->localDateParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-interface {v0, p0, p1, v1, v2}, Lorg/joda/time/convert/PartialConverter;->getPartialValues(Lorg/joda/time/ReadablePartial;Ljava/lang/Object;Lorg/joda/time/Chronology;Lorg/joda/time/format/DateTimeFormatter;)[I

    move-result-object v0

    .line 381
    iget-object v1, p0, Lorg/joda/time/LocalDate;->iChronology:Lorg/joda/time/Chronology;

    aget v2, v0, v5

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v0, v0, v4

    invoke-virtual {v1, v2, v3, v0, v5}, Lorg/joda/time/Chronology;->getDateTimeMillis(IIII)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/LocalDate;->iLocalMillis:J

    .line 382
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/Chronology;)V
    .registers 4

    .prologue
    .line 286
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lorg/joda/time/LocalDate;-><init>(JLorg/joda/time/Chronology;)V

    .line 287
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/DateTimeZone;)V
    .registers 5

    .prologue
    .line 272
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lorg/joda/time/chrono/ISOChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ISOChronology;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/joda/time/LocalDate;-><init>(JLorg/joda/time/Chronology;)V

    .line 273
    return-void
.end method

.method public static fromCalendarFields(Ljava/util/Calendar;)Lorg/joda/time/LocalDate;
    .registers 5

    .prologue
    .line 206
    if-nez p0, :cond_a

    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The calendar must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_a
    new-instance v0, Lorg/joda/time/LocalDate;

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

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/LocalDate;-><init>(III)V

    return-object v0
.end method

.method public static fromDateFields(Ljava/util/Date;)Lorg/joda/time/LocalDate;
    .registers 5

    .prologue
    .line 238
    if-nez p0, :cond_a

    .line 239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_a
    new-instance v0, Lorg/joda/time/LocalDate;

    invoke-virtual {p0}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    invoke-virtual {p0}, Ljava/util/Date;->getMonth()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/LocalDate;-><init>(III)V

    return-object v0
.end method

.method public static now()Lorg/joda/time/LocalDate;
    .registers 1

    .prologue
    .line 123
    new-instance v0, Lorg/joda/time/LocalDate;

    invoke-direct {v0}, Lorg/joda/time/LocalDate;-><init>()V

    return-object v0
.end method

.method public static now(Lorg/joda/time/Chronology;)Lorg/joda/time/LocalDate;
    .registers 3

    .prologue
    .line 150
    if-nez p0, :cond_a

    .line 151
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Chronology must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_a
    new-instance v0, Lorg/joda/time/LocalDate;

    invoke-direct {v0, p0}, Lorg/joda/time/LocalDate;-><init>(Lorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public static now(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/LocalDate;
    .registers 3

    .prologue
    .line 135
    if-nez p0, :cond_a

    .line 136
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Zone must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_a
    new-instance v0, Lorg/joda/time/LocalDate;

    invoke-direct {v0, p0}, Lorg/joda/time/LocalDate;-><init>(Lorg/joda/time/DateTimeZone;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lorg/joda/time/LocalDate;
    .registers 2
    .annotation runtime Lorg/joda/convert/FromString;
    .end annotation

    .prologue
    .line 167
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->localDateParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/joda/time/LocalDate;->parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDate;
    .registers 3

    .prologue
    .line 178
    invoke-virtual {p1, p0}, Lorg/joda/time/format/DateTimeFormatter;->parseLocalDate(Ljava/lang/String;)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 454
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    iget-object v1, p0, Lorg/joda/time/LocalDate;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTimeZone;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 455
    new-instance v0, Lorg/joda/time/LocalDate;

    iget-wide v2, p0, Lorg/joda/time/LocalDate;->iLocalMillis:J

    iget-object v1, p0, Lorg/joda/time/LocalDate;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/joda/time/LocalDate;-><init>(JLorg/joda/time/Chronology;)V

    move-object p0, v0

    .line 457
    :cond_1c
    return-object p0
.end method


# virtual methods
.method public centuryOfEra()Lorg/joda/time/LocalDate$Property;
    .registers 3

    .prologue
    .line 1697
    new-instance v0, Lorg/joda/time/LocalDate$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->centuryOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDate$Property;-><init>(Lorg/joda/time/LocalDate;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 81
    check-cast p1, Lorg/joda/time/ReadablePartial;

    invoke-virtual {p0, p1}, Lorg/joda/time/LocalDate;->compareTo(Lorg/joda/time/ReadablePartial;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/joda/time/ReadablePartial;)I
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 660
    if-ne p0, p1, :cond_4

    .line 671
    :goto_3
    return v1

    .line 663
    :cond_4
    instance-of v0, p1, Lorg/joda/time/LocalDate;

    if-eqz v0, :cond_2c

    move-object v0, p1

    .line 664
    check-cast v0, Lorg/joda/time/LocalDate;

    .line 665
    iget-object v2, p0, Lorg/joda/time/LocalDate;->iChronology:Lorg/joda/time/Chronology;

    iget-object v3, v0, Lorg/joda/time/LocalDate;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 666
    iget-wide v2, p0, Lorg/joda/time/LocalDate;->iLocalMillis:J

    iget-wide v4, v0, Lorg/joda/time/LocalDate;->iLocalMillis:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_20

    const/4 v0, -0x1

    :goto_1e
    move v1, v0

    goto :goto_3

    :cond_20
    iget-wide v2, p0, Lorg/joda/time/LocalDate;->iLocalMillis:J

    iget-wide v4, v0, Lorg/joda/time/LocalDate;->iLocalMillis:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2a

    move v0, v1

    goto :goto_1e

    :cond_2a
    const/4 v0, 0x1

    goto :goto_1e

    .line 671
    :cond_2c
    invoke-super {p0, p1}, Lorg/joda/time/base/BaseLocal;->compareTo(Lorg/joda/time/ReadablePartial;)I

    move-result v1

    goto :goto_3
.end method

.method public dayOfMonth()Lorg/joda/time/LocalDate$Property;
    .registers 3

    .prologue
    .line 1769
    new-instance v0, Lorg/joda/time/LocalDate$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDate$Property;-><init>(Lorg/joda/time/LocalDate;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public dayOfWeek()Lorg/joda/time/LocalDate$Property;
    .registers 3

    .prologue
    .line 1778
    new-instance v0, Lorg/joda/time/LocalDate$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDate$Property;-><init>(Lorg/joda/time/LocalDate;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public dayOfYear()Lorg/joda/time/LocalDate$Property;
    .registers 3

    .prologue
    .line 1760
    new-instance v0, Lorg/joda/time/LocalDate$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->dayOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDate$Property;-><init>(Lorg/joda/time/LocalDate;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 616
    if-ne p0, p1, :cond_4

    .line 625
    :goto_3
    return v1

    .line 619
    :cond_4
    instance-of v0, p1, Lorg/joda/time/LocalDate;

    if-eqz v0, :cond_22

    move-object v0, p1

    .line 620
    check-cast v0, Lorg/joda/time/LocalDate;

    .line 621
    iget-object v2, p0, Lorg/joda/time/LocalDate;->iChronology:Lorg/joda/time/Chronology;

    iget-object v3, v0, Lorg/joda/time/LocalDate;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 622
    iget-wide v2, p0, Lorg/joda/time/LocalDate;->iLocalMillis:J

    iget-wide v4, v0, Lorg/joda/time/LocalDate;->iLocalMillis:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_20

    move v0, v1

    :goto_1e
    move v1, v0

    goto :goto_3

    :cond_20
    const/4 v0, 0x0

    goto :goto_1e

    .line 625
    :cond_22
    invoke-super {p0, p1}, Lorg/joda/time/base/BaseLocal;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3
.end method

.method public era()Lorg/joda/time/LocalDate$Property;
    .registers 3

    .prologue
    .line 1688
    new-instance v0, Lorg/joda/time/LocalDate$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->era()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDate$Property;-><init>(Lorg/joda/time/LocalDate;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public get(Lorg/joda/time/DateTimeFieldType;)I
    .registers 6

    .prologue
    .line 536
    if-nez p1, :cond_a

    .line 537
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The DateTimeFieldType must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_a
    invoke-virtual {p0, p1}, Lorg/joda/time/LocalDate;->isSupported(Lorg/joda/time/DateTimeFieldType;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 540
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

    .line 542
    :cond_2f
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getCenturyOfEra()I
    .registers 5

    .prologue
    .line 1405
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->centuryOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getChronology()Lorg/joda/time/Chronology;
    .registers 2

    .prologue
    .line 603
    iget-object v0, p0, Lorg/joda/time/LocalDate;->iChronology:Lorg/joda/time/Chronology;

    return-object v0
.end method

.method public getDayOfMonth()I
    .registers 5

    .prologue
    .line 1490
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getDayOfWeek()I
    .registers 5

    .prologue
    .line 1501
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getDayOfYear()I
    .registers 5

    .prologue
    .line 1479
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getEra()I
    .registers 5

    .prologue
    .line 1396
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->era()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method protected getField(ILorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;
    .registers 6

    .prologue
    .line 483
    packed-switch p1, :pswitch_data_2c

    .line 491
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

    .line 485
    :pswitch_1c
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    .line 489
    :goto_20
    return-object v0

    .line 487
    :pswitch_21
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    goto :goto_20

    .line 489
    :pswitch_26
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    goto :goto_20

    .line 483
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_21
        :pswitch_26
    .end packed-switch
.end method

.method protected getLocalMillis()J
    .registers 3

    .prologue
    .line 594
    iget-wide v0, p0, Lorg/joda/time/LocalDate;->iLocalMillis:J

    return-wide v0
.end method

.method public getMonthOfYear()I
    .registers 5

    .prologue
    .line 1456
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getValue(I)I
    .registers 6

    .prologue
    .line 508
    packed-switch p1, :pswitch_data_50

    .line 516
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

    .line 510
    :pswitch_1c
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    .line 514
    :goto_2c
    return v0

    .line 512
    :pswitch_2d
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    goto :goto_2c

    .line 514
    :pswitch_3e
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    goto :goto_2c

    .line 508
    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_2d
        :pswitch_3e
    .end packed-switch
.end method

.method public getWeekOfWeekyear()I
    .registers 5

    .prologue
    .line 1470
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weekOfWeekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getWeekyear()I
    .registers 5

    .prologue
    .line 1447
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getYear()I
    .registers 5

    .prologue
    .line 1432
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getYearOfCentury()I
    .registers 5

    .prologue
    .line 1423
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->yearOfCentury()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getYearOfEra()I
    .registers 5

    .prologue
    .line 1414
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->yearOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 635
    iget v0, p0, Lorg/joda/time/LocalDate;->iHash:I

    .line 636
    if-nez v0, :cond_a

    .line 637
    invoke-super {p0}, Lorg/joda/time/base/BaseLocal;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/joda/time/LocalDate;->iHash:I

    .line 639
    :cond_a
    return v0
.end method

.method public isSupported(Lorg/joda/time/DateTimeFieldType;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 554
    if-nez p1, :cond_4

    .line 563
    :cond_3
    :goto_3
    return v0

    .line 557
    :cond_4
    invoke-virtual {p1}, Lorg/joda/time/DateTimeFieldType;->getDurationType()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    .line 558
    sget-object v2, Lorg/joda/time/LocalDate;->DATE_DURATION_TYPES:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/joda/time/DurationFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/DurationField;->getUnitMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->days()Lorg/joda/time/DurationField;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/DurationField;->getUnitMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_3

    .line 561
    :cond_2c
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->isSupported()Z

    move-result v0

    goto :goto_3
.end method

.method public isSupported(Lorg/joda/time/DurationFieldType;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 574
    if-nez p1, :cond_4

    .line 582
    :cond_3
    :goto_3
    return v0

    .line 577
    :cond_4
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/joda/time/DurationFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;

    move-result-object v1

    .line 578
    sget-object v2, Lorg/joda/time/LocalDate;->DATE_DURATION_TYPES:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual {v1}, Lorg/joda/time/DurationField;->getUnitMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/Chronology;->days()Lorg/joda/time/DurationField;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/DurationField;->getUnitMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    .line 580
    :cond_28
    invoke-virtual {v1}, Lorg/joda/time/DurationField;->isSupported()Z

    move-result v0

    goto :goto_3
.end method

.method public minus(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/LocalDate;
    .registers 3

    .prologue
    .line 1274
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/LocalDate;->withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public minusDays(I)Lorg/joda/time/LocalDate;
    .registers 6

    .prologue
    .line 1363
    if-nez p1, :cond_3

    .line 1367
    :goto_2
    return-object p0

    .line 1366
    :cond_3
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->days()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    .line 1367
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object p0

    goto :goto_2
.end method

.method public minusMonths(I)Lorg/joda/time/LocalDate;
    .registers 6

    .prologue
    .line 1317
    if-nez p1, :cond_3

    .line 1321
    :goto_2
    return-object p0

    .line 1320
    :cond_3
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->months()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    .line 1321
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object p0

    goto :goto_2
.end method

.method public minusWeeks(I)Lorg/joda/time/LocalDate;
    .registers 6

    .prologue
    .line 1340
    if-nez p1, :cond_3

    .line 1344
    :goto_2
    return-object p0

    .line 1343
    :cond_3
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weeks()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    .line 1344
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object p0

    goto :goto_2
.end method

.method public minusYears(I)Lorg/joda/time/LocalDate;
    .registers 6

    .prologue
    .line 1294
    if-nez p1, :cond_3

    .line 1298
    :goto_2
    return-object p0

    .line 1297
    :cond_3
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->years()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    .line 1298
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object p0

    goto :goto_2
.end method

.method public monthOfYear()Lorg/joda/time/LocalDate$Property;
    .registers 3

    .prologue
    .line 1742
    new-instance v0, Lorg/joda/time/LocalDate$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDate$Property;-><init>(Lorg/joda/time/LocalDate;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public plus(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/LocalDate;
    .registers 3

    .prologue
    .line 1160
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/LocalDate;->withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public plusDays(I)Lorg/joda/time/LocalDate;
    .registers 6

    .prologue
    .line 1249
    if-nez p1, :cond_3

    .line 1253
    :goto_2
    return-object p0

    .line 1252
    :cond_3
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->days()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 1253
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object p0

    goto :goto_2
.end method

.method public plusMonths(I)Lorg/joda/time/LocalDate;
    .registers 6

    .prologue
    .line 1203
    if-nez p1, :cond_3

    .line 1207
    :goto_2
    return-object p0

    .line 1206
    :cond_3
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->months()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 1207
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object p0

    goto :goto_2
.end method

.method public plusWeeks(I)Lorg/joda/time/LocalDate;
    .registers 6

    .prologue
    .line 1226
    if-nez p1, :cond_3

    .line 1230
    :goto_2
    return-object p0

    .line 1229
    :cond_3
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weeks()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 1230
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object p0

    goto :goto_2
.end method

.method public plusYears(I)Lorg/joda/time/LocalDate;
    .registers 6

    .prologue
    .line 1180
    if-nez p1, :cond_3

    .line 1184
    :goto_2
    return-object p0

    .line 1183
    :cond_3
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->years()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 1184
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object p0

    goto :goto_2
.end method

.method public property(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/LocalDate$Property;
    .registers 5

    .prologue
    .line 1380
    if-nez p1, :cond_a

    .line 1381
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The DateTimeFieldType must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1383
    :cond_a
    invoke-virtual {p0, p1}, Lorg/joda/time/LocalDate;->isSupported(Lorg/joda/time/DateTimeFieldType;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1384
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

    .line 1386
    :cond_2f
    new-instance v0, Lorg/joda/time/LocalDate$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDate$Property;-><init>(Lorg/joda/time/LocalDate;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 470
    const/4 v0, 0x3

    return v0
.end method

.method public toDate()Ljava/util/Date;
    .registers 11

    .prologue
    const-wide/16 v8, 0x3e8

    .line 983
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getDayOfMonth()I

    move-result v2

    .line 984
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, -0x76c

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getMonthOfYear()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v1, v0, v3, v2}, Ljava/util/Date;-><init>(III)V

    .line 985
    invoke-static {v1}, Lorg/joda/time/LocalDate;->fromDateFields(Ljava/util/Date;)Lorg/joda/time/LocalDate;

    move-result-object v0

    .line 986
    invoke-virtual {v0, p0}, Lorg/joda/time/LocalDate;->isBefore(Lorg/joda/time/ReadablePartial;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 989
    :goto_21
    invoke-virtual {v0, p0}, Lorg/joda/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 990
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/32 v6, 0x36ee80

    add-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 991
    invoke-static {v1}, Lorg/joda/time/LocalDate;->fromDateFields(Ljava/util/Date;)Lorg/joda/time/LocalDate;

    move-result-object v0

    goto :goto_21

    .line 994
    :cond_37
    :goto_37
    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v0

    if-ne v0, v2, :cond_46

    .line 995
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v4, v8

    invoke-virtual {v1, v4, v5}, Ljava/util/Date;->setTime(J)V

    goto :goto_37

    .line 998
    :cond_46
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    add-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Ljava/util/Date;->setTime(J)V

    move-object v0, v1

    .line 1006
    :cond_4f
    :goto_4f
    return-object v0

    .line 999
    :cond_50
    invoke-virtual {v0, p0}, Lorg/joda/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 1001
    new-instance v0, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v3

    int-to-long v6, v3

    sub-long/2addr v4, v6

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 1002
    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v3

    if-eq v3, v2, :cond_4f

    :cond_6f
    move-object v0, v1

    goto :goto_4f
.end method

.method public toDateMidnight()Lorg/joda/time/DateMidnight;
    .registers 2

    .prologue
    .line 824
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/joda/time/LocalDate;->toDateMidnight(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateMidnight;

    move-result-object v0

    return-object v0
.end method

.method public toDateMidnight(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateMidnight;
    .registers 7

    .prologue
    .line 845
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 846
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 847
    new-instance v1, Lorg/joda/time/DateMidnight;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getMonthOfYear()I

    move-result v3

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getDayOfMonth()I

    move-result v4

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/joda/time/DateMidnight;-><init>(IIILorg/joda/time/Chronology;)V

    return-object v1
.end method

.method public toDateTime(Lorg/joda/time/LocalTime;)Lorg/joda/time/DateTime;
    .registers 3

    .prologue
    .line 897
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/LocalDate;->toDateTime(Lorg/joda/time/LocalTime;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public toDateTime(Lorg/joda/time/LocalTime;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;
    .registers 7

    .prologue
    .line 919
    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    if-eq v0, v1, :cond_14

    .line 920
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The chronology of the time does not match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 922
    :cond_14
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v2

    .line 923
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    .line 924
    invoke-virtual {v2, p0, v0, v1}, Lorg/joda/time/Chronology;->set(Lorg/joda/time/ReadablePartial;J)J

    move-result-wide v0

    .line 925
    if-eqz p1, :cond_2a

    .line 926
    invoke-virtual {v2, p1, v0, v1}, Lorg/joda/time/Chronology;->set(Lorg/joda/time/ReadablePartial;J)J

    move-result-wide v0

    .line 928
    :cond_2a
    new-instance v3, Lorg/joda/time/DateTime;

    invoke-direct {v3, v0, v1, v2}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    return-object v3
.end method

.method public toDateTimeAtCurrentTime()Lorg/joda/time/DateTime;
    .registers 2

    .prologue
    .line 779
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/joda/time/LocalDate;->toDateTimeAtCurrentTime(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public toDateTimeAtCurrentTime(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;
    .registers 6

    .prologue
    .line 799
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 800
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 801
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v2

    .line 802
    invoke-virtual {v0, p0, v2, v3}, Lorg/joda/time/Chronology;->set(Lorg/joda/time/ReadablePartial;J)J

    move-result-wide v2

    .line 803
    new-instance v1, Lorg/joda/time/DateTime;

    invoke-direct {v1, v2, v3, v0}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    return-object v1
.end method

.method public toDateTimeAtMidnight()Lorg/joda/time/DateTime;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 737
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/joda/time/LocalDate;->toDateTimeAtMidnight(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public toDateTimeAtMidnight(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 760
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 761
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v8

    .line 762
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getMonthOfYear()I

    move-result v2

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getDayOfMonth()I

    move-result v3

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/DateTime;-><init>(IIIIIIILorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public toDateTimeAtStartOfDay()Lorg/joda/time/DateTime;
    .registers 2

    .prologue
    .line 690
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/joda/time/LocalDate;->toDateTimeAtStartOfDay(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public toDateTimeAtStartOfDay(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;
    .registers 8

    .prologue
    .line 712
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 713
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v1

    .line 714
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1499700

    add-long/2addr v2, v4

    .line 715
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lorg/joda/time/DateTimeZone;->convertLocalToUTC(JZ)J

    move-result-wide v2

    .line 716
    invoke-virtual {v1}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide v2

    .line 717
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0, v2, v3, v1}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public toInterval()Lorg/joda/time/Interval;
    .registers 2

    .prologue
    .line 944
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/joda/time/LocalDate;->toInterval(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Interval;

    move-result-object v0

    return-object v0
.end method

.method public toInterval(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Interval;
    .registers 5

    .prologue
    .line 959
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 960
    invoke-virtual {p0, v0}, Lorg/joda/time/LocalDate;->toDateTimeAtStartOfDay(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v1

    .line 961
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/joda/time/LocalDate;->plusDays(I)Lorg/joda/time/LocalDate;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/joda/time/LocalDate;->toDateTimeAtStartOfDay(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v0

    .line 962
    new-instance v2, Lorg/joda/time/Interval;

    invoke-direct {v2, v1, v0}, Lorg/joda/time/Interval;-><init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)V

    return-object v2
.end method

.method public toLocalDateTime(Lorg/joda/time/LocalTime;)Lorg/joda/time/LocalDateTime;
    .registers 6

    .prologue
    .line 868
    if-nez p1, :cond_a

    .line 869
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The time must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 871
    :cond_a
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    if-eq v0, v1, :cond_1c

    .line 872
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The chronology of the time does not match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 874
    :cond_1c
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 875
    new-instance v2, Lorg/joda/time/LocalDateTime;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lorg/joda/time/LocalDateTime;-><init>(JLorg/joda/time/Chronology;)V

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 2
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    .prologue
    .line 1789
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->date()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 1799
    if-nez p1, :cond_7

    .line 1800
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1802
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
    .line 1813
    if-nez p1, :cond_7

    .line 1814
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1816
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

.method public weekOfWeekyear()Lorg/joda/time/LocalDate$Property;
    .registers 3

    .prologue
    .line 1751
    new-instance v0, Lorg/joda/time/LocalDate$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->weekOfWeekyear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDate$Property;-><init>(Lorg/joda/time/LocalDate;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public weekyear()Lorg/joda/time/LocalDate$Property;
    .registers 3

    .prologue
    .line 1733
    new-instance v0, Lorg/joda/time/LocalDate$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->weekyear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDate$Property;-><init>(Lorg/joda/time/LocalDate;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public withCenturyOfEra(I)Lorg/joda/time/LocalDate;
    .registers 6

    .prologue
    .line 1532
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->centuryOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfMonth(I)Lorg/joda/time/LocalDate;
    .registers 6

    .prologue
    .line 1663
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfWeek(I)Lorg/joda/time/LocalDate;
    .registers 6

    .prologue
    .line 1678
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfYear(I)Lorg/joda/time/LocalDate;
    .registers 6

    .prologue
    .line 1648
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public withEra(I)Lorg/joda/time/LocalDate;
    .registers 6

    .prologue
    .line 1517
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->era()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public withField(Lorg/joda/time/DateTimeFieldType;I)Lorg/joda/time/LocalDate;
    .registers 7

    .prologue
    .line 1065
    if-nez p1, :cond_a

    .line 1066
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1068
    :cond_a
    invoke-virtual {p0, p1}, Lorg/joda/time/LocalDate;->isSupported(Lorg/joda/time/DateTimeFieldType;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1069
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

    .line 1071
    :cond_2f
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p2}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    .line 1072
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/LocalDate;
    .registers 7

    .prologue
    .line 1094
    if-nez p1, :cond_a

    .line 1095
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1097
    :cond_a
    invoke-virtual {p0, p1}, Lorg/joda/time/LocalDate;->isSupported(Lorg/joda/time/DurationFieldType;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1098
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

    .line 1100
    :cond_2f
    if-nez p2, :cond_32

    .line 1104
    :goto_31
    return-object p0

    .line 1103
    :cond_32
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DurationFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p2}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 1104
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object p0

    goto :goto_31
.end method

.method public withFields(Lorg/joda/time/ReadablePartial;)Lorg/joda/time/LocalDate;
    .registers 6

    .prologue
    .line 1040
    if-nez p1, :cond_3

    .line 1043
    :goto_2
    return-object p0

    :cond_3
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lorg/joda/time/Chronology;->set(Lorg/joda/time/ReadablePartial;J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object p0

    goto :goto_2
.end method

.method withLocalMillis(J)Lorg/joda/time/LocalDate;
    .registers 8

    .prologue
    .line 1021
    iget-object v0, p0, Lorg/joda/time/LocalDate;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide v2

    .line 1022
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_13

    :goto_12
    return-object p0

    :cond_13
    new-instance v0, Lorg/joda/time/LocalDate;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/joda/time/LocalDate;-><init>(JLorg/joda/time/Chronology;)V

    move-object p0, v0

    goto :goto_12
.end method

.method public withMonthOfYear(I)Lorg/joda/time/LocalDate;
    .registers 6

    .prologue
    .line 1613
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/LocalDate;
    .registers 11

    .prologue
    .line 1127
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 1139
    :cond_4
    :goto_4
    return-object p0

    .line 1130
    :cond_5
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    .line 1131
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    .line 1132
    const/4 v0, 0x0

    :goto_e
    invoke-interface {p1}, Lorg/joda/time/ReadablePeriod;->size()I

    move-result v4

    if-ge v0, v4, :cond_32

    .line 1133
    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePeriod;->getValue(I)I

    move-result v4

    invoke-static {v4, p2}, Lorg/joda/time/field/FieldUtils;->safeMultiply(II)I

    move-result v4

    int-to-long v4, v4

    .line 1134
    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePeriod;->getFieldType(I)Lorg/joda/time/DurationFieldType;

    move-result-object v6

    .line 1135
    invoke-virtual {p0, v6}, Lorg/joda/time/LocalDate;->isSupported(Lorg/joda/time/DurationFieldType;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 1136
    invoke-virtual {v6, v1}, Lorg/joda/time/DurationFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;

    move-result-object v6

    invoke-virtual {v6, v2, v3, v4, v5}, Lorg/joda/time/DurationField;->add(JJ)J

    move-result-wide v2

    .line 1132
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1139
    :cond_32
    invoke-virtual {p0, v2, v3}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object p0

    goto :goto_4
.end method

.method public withWeekOfWeekyear(I)Lorg/joda/time/LocalDate;
    .registers 6

    .prologue
    .line 1633
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weekOfWeekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public withWeekyear(I)Lorg/joda/time/LocalDate;
    .registers 6

    .prologue
    .line 1598
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public withYear(I)Lorg/joda/time/LocalDate;
    .registers 6

    .prologue
    .line 1577
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public withYearOfCentury(I)Lorg/joda/time/LocalDate;
    .registers 6

    .prologue
    .line 1562
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->yearOfCentury()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public withYearOfEra(I)Lorg/joda/time/LocalDate;
    .registers 6

    .prologue
    .line 1547
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->yearOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public year()Lorg/joda/time/LocalDate$Property;
    .registers 3

    .prologue
    .line 1724
    new-instance v0, Lorg/joda/time/LocalDate$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDate$Property;-><init>(Lorg/joda/time/LocalDate;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public yearOfCentury()Lorg/joda/time/LocalDate$Property;
    .registers 3

    .prologue
    .line 1706
    new-instance v0, Lorg/joda/time/LocalDate$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->yearOfCentury()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDate$Property;-><init>(Lorg/joda/time/LocalDate;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public yearOfEra()Lorg/joda/time/LocalDate$Property;
    .registers 3

    .prologue
    .line 1715
    new-instance v0, Lorg/joda/time/LocalDate$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->yearOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDate$Property;-><init>(Lorg/joda/time/LocalDate;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method
