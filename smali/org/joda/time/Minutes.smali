.class public final Lorg/joda/time/Minutes;
.super Lorg/joda/time/base/BaseSingleFieldPeriod;
.source "Minutes.java"


# static fields
.field public static final MAX_VALUE:Lorg/joda/time/Minutes;

.field public static final MIN_VALUE:Lorg/joda/time/Minutes;

.field public static final ONE:Lorg/joda/time/Minutes;

.field private static final PARSER:Lorg/joda/time/format/PeriodFormatter;

.field public static final THREE:Lorg/joda/time/Minutes;

.field public static final TWO:Lorg/joda/time/Minutes;

.field public static final ZERO:Lorg/joda/time/Minutes;

.field private static final serialVersionUID:J = 0x136f3c64899417fL


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 45
    new-instance v0, Lorg/joda/time/Minutes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/joda/time/Minutes;-><init>(I)V

    sput-object v0, Lorg/joda/time/Minutes;->ZERO:Lorg/joda/time/Minutes;

    .line 47
    new-instance v0, Lorg/joda/time/Minutes;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/joda/time/Minutes;-><init>(I)V

    sput-object v0, Lorg/joda/time/Minutes;->ONE:Lorg/joda/time/Minutes;

    .line 49
    new-instance v0, Lorg/joda/time/Minutes;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/joda/time/Minutes;-><init>(I)V

    sput-object v0, Lorg/joda/time/Minutes;->TWO:Lorg/joda/time/Minutes;

    .line 51
    new-instance v0, Lorg/joda/time/Minutes;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/joda/time/Minutes;-><init>(I)V

    sput-object v0, Lorg/joda/time/Minutes;->THREE:Lorg/joda/time/Minutes;

    .line 53
    new-instance v0, Lorg/joda/time/Minutes;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Lorg/joda/time/Minutes;-><init>(I)V

    sput-object v0, Lorg/joda/time/Minutes;->MAX_VALUE:Lorg/joda/time/Minutes;

    .line 55
    new-instance v0, Lorg/joda/time/Minutes;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1}, Lorg/joda/time/Minutes;-><init>(I)V

    sput-object v0, Lorg/joda/time/Minutes;->MIN_VALUE:Lorg/joda/time/Minutes;

    .line 58
    invoke-static {}, Lorg/joda/time/format/ISOPeriodFormat;->standard()Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/PeriodType;->minutes()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatter;->withParseType(Lorg/joda/time/PeriodType;)Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/Minutes;->PARSER:Lorg/joda/time/format/PeriodFormatter;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lorg/joda/time/base/BaseSingleFieldPeriod;-><init>(I)V

    .line 199
    return-void
.end method

.method public static minutes(I)Lorg/joda/time/Minutes;
    .registers 2

    .prologue
    .line 72
    sparse-switch p0, :sswitch_data_1c

    .line 86
    new-instance v0, Lorg/joda/time/Minutes;

    invoke-direct {v0, p0}, Lorg/joda/time/Minutes;-><init>(I)V

    :goto_8
    return-object v0

    .line 74
    :sswitch_9
    sget-object v0, Lorg/joda/time/Minutes;->ZERO:Lorg/joda/time/Minutes;

    goto :goto_8

    .line 76
    :sswitch_c
    sget-object v0, Lorg/joda/time/Minutes;->ONE:Lorg/joda/time/Minutes;

    goto :goto_8

    .line 78
    :sswitch_f
    sget-object v0, Lorg/joda/time/Minutes;->TWO:Lorg/joda/time/Minutes;

    goto :goto_8

    .line 80
    :sswitch_12
    sget-object v0, Lorg/joda/time/Minutes;->THREE:Lorg/joda/time/Minutes;

    goto :goto_8

    .line 82
    :sswitch_15
    sget-object v0, Lorg/joda/time/Minutes;->MAX_VALUE:Lorg/joda/time/Minutes;

    goto :goto_8

    .line 84
    :sswitch_18
    sget-object v0, Lorg/joda/time/Minutes;->MIN_VALUE:Lorg/joda/time/Minutes;

    goto :goto_8

    .line 72
    nop

    :sswitch_data_1c
    .sparse-switch
        -0x80000000 -> :sswitch_18
        0x0 -> :sswitch_9
        0x1 -> :sswitch_c
        0x2 -> :sswitch_f
        0x3 -> :sswitch_12
        0x7fffffff -> :sswitch_15
    .end sparse-switch
.end method

.method public static minutesBetween(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Minutes;
    .registers 3

    .prologue
    .line 101
    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/joda/time/base/BaseSingleFieldPeriod;->between(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;Lorg/joda/time/DurationFieldType;)I

    move-result v0

    .line 102
    invoke-static {v0}, Lorg/joda/time/Minutes;->minutes(I)Lorg/joda/time/Minutes;

    move-result-object v0

    return-object v0
.end method

.method public static minutesBetween(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;)Lorg/joda/time/Minutes;
    .registers 8

    .prologue
    .line 118
    instance-of v0, p0, Lorg/joda/time/LocalTime;

    if-eqz v0, :cond_29

    instance-of v0, p1, Lorg/joda/time/LocalTime;

    if-eqz v0, :cond_29

    .line 119
    invoke-interface {p0}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->minutes()Lorg/joda/time/DurationField;

    move-result-object v0

    check-cast p1, Lorg/joda/time/LocalTime;

    invoke-virtual {p1}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v2

    check-cast p0, Lorg/joda/time/LocalTime;

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/joda/time/DurationField;->getDifference(JJ)I

    move-result v0

    .line 122
    invoke-static {v0}, Lorg/joda/time/Minutes;->minutes(I)Lorg/joda/time/Minutes;

    move-result-object v0

    .line 125
    :goto_28
    return-object v0

    .line 124
    :cond_29
    sget-object v0, Lorg/joda/time/Minutes;->ZERO:Lorg/joda/time/Minutes;

    invoke-static {p0, p1, v0}, Lorg/joda/time/base/BaseSingleFieldPeriod;->between(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePeriod;)I

    move-result v0

    .line 125
    invoke-static {v0}, Lorg/joda/time/Minutes;->minutes(I)Lorg/joda/time/Minutes;

    move-result-object v0

    goto :goto_28
.end method

.method public static minutesIn(Lorg/joda/time/ReadableInterval;)Lorg/joda/time/Minutes;
    .registers 4

    .prologue
    .line 137
    if-nez p0, :cond_5

    .line 138
    sget-object v0, Lorg/joda/time/Minutes;->ZERO:Lorg/joda/time/Minutes;

    .line 141
    :goto_4
    return-object v0

    .line 140
    :cond_5
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getStart()Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getEnd()Lorg/joda/time/DateTime;

    move-result-object v1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/joda/time/base/BaseSingleFieldPeriod;->between(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;Lorg/joda/time/DurationFieldType;)I

    move-result v0

    .line 141
    invoke-static {v0}, Lorg/joda/time/Minutes;->minutes(I)Lorg/joda/time/Minutes;

    move-result-object v0

    goto :goto_4
.end method

.method public static parseMinutes(Ljava/lang/String;)Lorg/joda/time/Minutes;
    .registers 2
    .annotation runtime Lorg/joda/convert/FromString;
    .end annotation

    .prologue
    .line 182
    if-nez p0, :cond_5

    .line 183
    sget-object v0, Lorg/joda/time/Minutes;->ZERO:Lorg/joda/time/Minutes;

    .line 186
    :goto_4
    return-object v0

    .line 185
    :cond_5
    sget-object v0, Lorg/joda/time/Minutes;->PARSER:Lorg/joda/time/format/PeriodFormatter;

    invoke-virtual {v0, p0}, Lorg/joda/time/format/PeriodFormatter;->parsePeriod(Ljava/lang/String;)Lorg/joda/time/Period;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lorg/joda/time/Period;->getMinutes()I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Minutes;->minutes(I)Lorg/joda/time/Minutes;

    move-result-object v0

    goto :goto_4
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 207
    invoke-virtual {p0}, Lorg/joda/time/Minutes;->getValue()I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Minutes;->minutes(I)Lorg/joda/time/Minutes;

    move-result-object v0

    return-object v0
.end method

.method public static standardMinutesIn(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/Minutes;
    .registers 3

    .prologue
    .line 165
    const-wide/32 v0, 0xea60

    invoke-static {p0, v0, v1}, Lorg/joda/time/base/BaseSingleFieldPeriod;->standardPeriodIn(Lorg/joda/time/ReadablePeriod;J)I

    move-result v0

    .line 166
    invoke-static {v0}, Lorg/joda/time/Minutes;->minutes(I)Lorg/joda/time/Minutes;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dividedBy(I)Lorg/joda/time/Minutes;
    .registers 3

    .prologue
    .line 414
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 417
    :goto_3
    return-object p0

    :cond_4
    invoke-virtual {p0}, Lorg/joda/time/Minutes;->getValue()I

    move-result v0

    div-int/2addr v0, p1

    invoke-static {v0}, Lorg/joda/time/Minutes;->minutes(I)Lorg/joda/time/Minutes;

    move-result-object p0

    goto :goto_3
.end method

.method public getFieldType()Lorg/joda/time/DurationFieldType;
    .registers 2

    .prologue
    .line 217
    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    return-object v0
.end method

.method public getMinutes()I
    .registers 2

    .prologue
    .line 323
    invoke-virtual {p0}, Lorg/joda/time/Minutes;->getValue()I

    move-result v0

    return v0
.end method

.method public getPeriodType()Lorg/joda/time/PeriodType;
    .registers 2

    .prologue
    .line 226
    invoke-static {}, Lorg/joda/time/PeriodType;->minutes()Lorg/joda/time/PeriodType;

    move-result-object v0

    return-object v0
.end method

.method public isGreaterThan(Lorg/joda/time/Minutes;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 439
    if-nez p1, :cond_d

    .line 440
    invoke-virtual {p0}, Lorg/joda/time/Minutes;->getValue()I

    move-result v2

    if-lez v2, :cond_b

    .line 442
    :cond_a
    :goto_a
    return v0

    :cond_b
    move v0, v1

    .line 440
    goto :goto_a

    .line 442
    :cond_d
    invoke-virtual {p0}, Lorg/joda/time/Minutes;->getValue()I

    move-result v2

    invoke-virtual {p1}, Lorg/joda/time/Minutes;->getValue()I

    move-result v3

    if-gt v2, v3, :cond_a

    move v0, v1

    goto :goto_a
.end method

.method public isLessThan(Lorg/joda/time/Minutes;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 452
    if-nez p1, :cond_d

    .line 453
    invoke-virtual {p0}, Lorg/joda/time/Minutes;->getValue()I

    move-result v2

    if-gez v2, :cond_b

    .line 455
    :cond_a
    :goto_a
    return v0

    :cond_b
    move v0, v1

    .line 453
    goto :goto_a

    .line 455
    :cond_d
    invoke-virtual {p0}, Lorg/joda/time/Minutes;->getValue()I

    move-result v2

    invoke-virtual {p1}, Lorg/joda/time/Minutes;->getValue()I

    move-result v3

    if-lt v2, v3, :cond_a

    move v0, v1

    goto :goto_a
.end method

.method public minus(I)Lorg/joda/time/Minutes;
    .registers 3

    .prologue
    .line 370
    invoke-static {p1}, Lorg/joda/time/field/FieldUtils;->safeNegate(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/Minutes;->plus(I)Lorg/joda/time/Minutes;

    move-result-object v0

    return-object v0
.end method

.method public minus(Lorg/joda/time/Minutes;)Lorg/joda/time/Minutes;
    .registers 3

    .prologue
    .line 383
    if-nez p1, :cond_3

    .line 386
    :goto_2
    return-object p0

    :cond_3
    invoke-virtual {p1}, Lorg/joda/time/Minutes;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/Minutes;->minus(I)Lorg/joda/time/Minutes;

    move-result-object p0

    goto :goto_2
.end method

.method public multipliedBy(I)Lorg/joda/time/Minutes;
    .registers 3

    .prologue
    .line 400
    invoke-virtual {p0}, Lorg/joda/time/Minutes;->getValue()I

    move-result v0

    invoke-static {v0, p1}, Lorg/joda/time/field/FieldUtils;->safeMultiply(II)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Minutes;->minutes(I)Lorg/joda/time/Minutes;

    move-result-object v0

    return-object v0
.end method

.method public negated()Lorg/joda/time/Minutes;
    .registers 2

    .prologue
    .line 428
    invoke-virtual {p0}, Lorg/joda/time/Minutes;->getValue()I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/field/FieldUtils;->safeNegate(I)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Minutes;->minutes(I)Lorg/joda/time/Minutes;

    move-result-object v0

    return-object v0
.end method

.method public plus(I)Lorg/joda/time/Minutes;
    .registers 3

    .prologue
    .line 337
    if-nez p1, :cond_3

    .line 340
    :goto_2
    return-object p0

    :cond_3
    invoke-virtual {p0}, Lorg/joda/time/Minutes;->getValue()I

    move-result v0

    invoke-static {v0, p1}, Lorg/joda/time/field/FieldUtils;->safeAdd(II)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Minutes;->minutes(I)Lorg/joda/time/Minutes;

    move-result-object p0

    goto :goto_2
.end method

.method public plus(Lorg/joda/time/Minutes;)Lorg/joda/time/Minutes;
    .registers 3

    .prologue
    .line 353
    if-nez p1, :cond_3

    .line 356
    :goto_2
    return-object p0

    :cond_3
    invoke-virtual {p1}, Lorg/joda/time/Minutes;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/Minutes;->plus(I)Lorg/joda/time/Minutes;

    move-result-object p0

    goto :goto_2
.end method

.method public toStandardDays()Lorg/joda/time/Days;
    .registers 2

    .prologue
    .line 261
    invoke-virtual {p0}, Lorg/joda/time/Minutes;->getValue()I

    move-result v0

    div-int/lit16 v0, v0, 0x5a0

    invoke-static {v0}, Lorg/joda/time/Days;->days(I)Lorg/joda/time/Days;

    move-result-object v0

    return-object v0
.end method

.method public toStandardDuration()Lorg/joda/time/Duration;
    .registers 7

    .prologue
    .line 312
    invoke-virtual {p0}, Lorg/joda/time/Minutes;->getValue()I

    move-result v0

    int-to-long v0, v0

    .line 313
    new-instance v2, Lorg/joda/time/Duration;

    const-wide/32 v4, 0xea60

    mul-long/2addr v0, v4

    invoke-direct {v2, v0, v1}, Lorg/joda/time/Duration;-><init>(J)V

    return-object v2
.end method

.method public toStandardHours()Lorg/joda/time/Hours;
    .registers 2

    .prologue
    .line 277
    invoke-virtual {p0}, Lorg/joda/time/Minutes;->getValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Lorg/joda/time/Hours;->hours(I)Lorg/joda/time/Hours;

    move-result-object v0

    return-object v0
.end method

.method public toStandardSeconds()Lorg/joda/time/Seconds;
    .registers 3

    .prologue
    .line 294
    invoke-virtual {p0}, Lorg/joda/time/Minutes;->getValue()I

    move-result v0

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeMultiply(II)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Seconds;->seconds(I)Lorg/joda/time/Seconds;

    move-result-object v0

    return-object v0
.end method

.method public toStandardWeeks()Lorg/joda/time/Weeks;
    .registers 2

    .prologue
    .line 244
    invoke-virtual {p0}, Lorg/joda/time/Minutes;->getValue()I

    move-result v0

    div-int/lit16 v0, v0, 0x2760

    invoke-static {v0}, Lorg/joda/time/Weeks;->weeks(I)Lorg/joda/time/Weeks;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    .prologue
    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/Minutes;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
