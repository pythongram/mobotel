.class public abstract Lorg/joda/time/base/AbstractDateTime;
.super Lorg/joda/time/base/AbstractInstant;
.source "AbstractDateTime.java"

# interfaces
.implements Lorg/joda/time/ReadableDateTime;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/joda/time/base/AbstractInstant;-><init>()V

    .line 52
    return-void
.end method


# virtual methods
.method public get(Lorg/joda/time/DateTimeFieldType;)I
    .registers 6

    .prologue
    .line 66
    if-nez p1, :cond_a

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The DateTimeFieldType must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_a
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getCenturyOfEra()I
    .registers 5

    .prologue
    .line 88
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->centuryOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getDayOfMonth()I
    .registers 5

    .prologue
    .line 173
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getDayOfWeek()I
    .registers 5

    .prologue
    .line 184
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getDayOfYear()I
    .registers 5

    .prologue
    .line 162
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getEra()I
    .registers 5

    .prologue
    .line 79
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->era()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getHourOfDay()I
    .registers 5

    .prologue
    .line 194
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->hourOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getMillisOfDay()I
    .registers 5

    .prologue
    .line 239
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getMillisOfSecond()I
    .registers 5

    .prologue
    .line 248
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millisOfSecond()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getMinuteOfDay()I
    .registers 5

    .prologue
    .line 203
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->minuteOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getMinuteOfHour()I
    .registers 5

    .prologue
    .line 212
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->minuteOfHour()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getMonthOfYear()I
    .registers 5

    .prologue
    .line 139
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getSecondOfDay()I
    .registers 5

    .prologue
    .line 221
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->secondOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getSecondOfMinute()I
    .registers 5

    .prologue
    .line 230
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->secondOfMinute()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getWeekOfWeekyear()I
    .registers 5

    .prologue
    .line 153
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weekOfWeekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getWeekyear()I
    .registers 5

    .prologue
    .line 130
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getYear()I
    .registers 5

    .prologue
    .line 115
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getYearOfCentury()I
    .registers 5

    .prologue
    .line 106
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->yearOfCentury()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getYearOfEra()I
    .registers 5

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->yearOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public toCalendar(Ljava/util/Locale;)Ljava/util/Calendar;
    .registers 4

    .prologue
    .line 270
    if-nez p1, :cond_6

    .line 271
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 273
    :cond_6
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Lorg/joda/time/DateTimeZone;->toTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 275
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->toDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 276
    return-object v0
.end method

.method public toGregorianCalendar()Ljava/util/GregorianCalendar;
    .registers 3

    .prologue
    .line 294
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 295
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeZone;->toTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 296
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->toDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 297
    return-object v1
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 308
    if-nez p1, :cond_7

    .line 309
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    :goto_6
    return-object v0

    :cond_7
    invoke-static {p1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadableInstant;)Ljava/lang/String;

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
    .line 322
    if-nez p1, :cond_7

    .line 323
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    :goto_6
    return-object v0

    :cond_7
    invoke-static {p1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/joda/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadableInstant;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
