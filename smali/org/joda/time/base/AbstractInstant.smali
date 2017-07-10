.class public abstract Lorg/joda/time/base/AbstractInstant;
.super Ljava/lang/Object;
.source "AbstractInstant.java"

# interfaces
.implements Lorg/joda/time/ReadableInstant;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 55
    check-cast p1, Lorg/joda/time/ReadableInstant;

    invoke-virtual {p0, p1}, Lorg/joda/time/base/AbstractInstant;->compareTo(Lorg/joda/time/ReadableInstant;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/joda/time/ReadableInstant;)I
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 296
    if-ne p0, p1, :cond_4

    .line 310
    :cond_3
    :goto_3
    return v0

    .line 300
    :cond_4
    invoke-interface {p1}, Lorg/joda/time/ReadableInstant;->getMillis()J

    move-result-wide v2

    .line 301
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInstant;->getMillis()J

    move-result-wide v4

    .line 304
    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    .line 307
    cmp-long v0, v4, v2

    if-gez v0, :cond_16

    .line 308
    const/4 v0, -0x1

    goto :goto_3

    .line 310
    :cond_16
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 259
    if-ne p0, p1, :cond_5

    .line 266
    :cond_4
    :goto_4
    return v0

    .line 262
    :cond_5
    instance-of v2, p1, Lorg/joda/time/ReadableInstant;

    if-nez v2, :cond_b

    move v0, v1

    .line 263
    goto :goto_4

    .line 265
    :cond_b
    check-cast p1, Lorg/joda/time/ReadableInstant;

    .line 266
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInstant;->getMillis()J

    move-result-wide v2

    invoke-interface {p1}, Lorg/joda/time/ReadableInstant;->getMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_27

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInstant;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v2

    invoke-interface {p1}, Lorg/joda/time/ReadableInstant;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/joda/time/field/FieldUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_27
    move v0, v1

    goto :goto_4
.end method

.method public get(Lorg/joda/time/DateTimeField;)I
    .registers 4

    .prologue
    .line 124
    if-nez p1, :cond_a

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The DateTimeField must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_a
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInstant;->getMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public get(Lorg/joda/time/DateTimeFieldType;)I
    .registers 6

    .prologue
    .line 89
    if-nez p1, :cond_a

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The DateTimeFieldType must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_a
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInstant;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInstant;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getZone()Lorg/joda/time/DateTimeZone;
    .registers 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInstant;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 278
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInstant;->getMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInstant;->getMillis()J

    move-result-wide v2

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInstant;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isAfter(J)Z
    .registers 6

    .prologue
    .line 323
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInstant;->getMillis()J

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
    .line 344
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v0

    .line 345
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/base/AbstractInstant;->isAfter(J)Z

    move-result v0

    return v0
.end method

.method public isAfterNow()Z
    .registers 3

    .prologue
    .line 333
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/base/AbstractInstant;->isAfter(J)Z

    move-result v0

    return v0
.end method

.method public isBefore(J)Z
    .registers 6

    .prologue
    .line 357
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInstant;->getMillis()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gez v0, :cond_a

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
    .line 378
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v0

    .line 379
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/base/AbstractInstant;->isBefore(J)Z

    move-result v0

    return v0
.end method

.method public isBeforeNow()Z
    .registers 3

    .prologue
    .line 367
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/base/AbstractInstant;->isBefore(J)Z

    move-result v0

    return v0
.end method

.method public isEqual(J)Z
    .registers 6

    .prologue
    .line 391
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInstant;->getMillis()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isEqual(Lorg/joda/time/ReadableInstant;)Z
    .registers 4

    .prologue
    .line 412
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v0

    .line 413
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/base/AbstractInstant;->isEqual(J)Z

    move-result v0

    return v0
.end method

.method public isEqualNow()Z
    .registers 3

    .prologue
    .line 401
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/base/AbstractInstant;->isEqual(J)Z

    move-result v0

    return v0
.end method

.method public isSupported(Lorg/joda/time/DateTimeFieldType;)Z
    .registers 3

    .prologue
    .line 103
    if-nez p1, :cond_4

    .line 104
    const/4 v0, 0x0

    .line 106
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInstant;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->isSupported()Z

    move-result v0

    goto :goto_3
.end method

.method public toDate()Ljava/util/Date;
    .registers 5

    .prologue
    .line 235
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInstant;->getMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public toDateTime()Lorg/joda/time/DateTime;
    .registers 5

    .prologue
    .line 146
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInstant;->getMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInstant;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    return-object v0
.end method

.method public toDateTime(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTime;
    .registers 6

    .prologue
    .line 177
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInstant;->getMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, p1}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public toDateTime(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;
    .registers 6

    .prologue
    .line 165
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInstant;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 166
    invoke-virtual {v0, p1}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 167
    new-instance v1, Lorg/joda/time/DateTime;

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInstant;->getMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    return-object v1
.end method

.method public toDateTimeISO()Lorg/joda/time/DateTime;
    .registers 5

    .prologue
    .line 155
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInstant;->getMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInstant;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-static {v1}, Lorg/joda/time/chrono/ISOChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ISOChronology;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public toInstant()Lorg/joda/time/Instant;
    .registers 5

    .prologue
    .line 137
    new-instance v0, Lorg/joda/time/Instant;

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInstant;->getMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/joda/time/Instant;-><init>(J)V

    return-object v0
.end method

.method public toMutableDateTime()Lorg/joda/time/MutableDateTime;
    .registers 5

    .prologue
    .line 191
    new-instance v0, Lorg/joda/time/MutableDateTime;

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInstant;->getMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInstant;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/joda/time/MutableDateTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    return-object v0
.end method

.method public toMutableDateTime(Lorg/joda/time/Chronology;)Lorg/joda/time/MutableDateTime;
    .registers 6

    .prologue
    .line 222
    new-instance v0, Lorg/joda/time/MutableDateTime;

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInstant;->getMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, p1}, Lorg/joda/time/MutableDateTime;-><init>(JLorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public toMutableDateTime(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/MutableDateTime;
    .registers 6

    .prologue
    .line 210
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInstant;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 211
    invoke-virtual {v0, p1}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 212
    new-instance v1, Lorg/joda/time/MutableDateTime;

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInstant;->getMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0}, Lorg/joda/time/MutableDateTime;-><init>(JLorg/joda/time/Chronology;)V

    return-object v1
.end method

.method public toMutableDateTimeISO()Lorg/joda/time/MutableDateTime;
    .registers 5

    .prologue
    .line 200
    new-instance v0, Lorg/joda/time/MutableDateTime;

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInstant;->getMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInstant;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-static {v1}, Lorg/joda/time/chrono/ISOChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ISOChronology;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/joda/time/MutableDateTime;-><init>(JLorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    .prologue
    .line 424
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadableInstant;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lorg/joda/time/format/DateTimeFormatter;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 436
    if-nez p1, :cond_7

    .line 437
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInstant;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p1, p0}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadableInstant;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
