.class public Lorg/joda/time/DateTimeUtils;
.super Ljava/lang/Object;
.source "DateTimeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/DateTimeUtils$OffsetMillisProvider;,
        Lorg/joda/time/DateTimeUtils$FixedMillisProvider;,
        Lorg/joda/time/DateTimeUtils$SystemMillisProvider;,
        Lorg/joda/time/DateTimeUtils$MillisProvider;
    }
.end annotation


# static fields
.field private static final SYSTEM_MILLIS_PROVIDER:Lorg/joda/time/DateTimeUtils$SystemMillisProvider;

.field private static volatile cMillisProvider:Lorg/joda/time/DateTimeUtils$MillisProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    new-instance v0, Lorg/joda/time/DateTimeUtils$SystemMillisProvider;

    invoke-direct {v0}, Lorg/joda/time/DateTimeUtils$SystemMillisProvider;-><init>()V

    sput-object v0, Lorg/joda/time/DateTimeUtils;->SYSTEM_MILLIS_PROVIDER:Lorg/joda/time/DateTimeUtils$SystemMillisProvider;

    .line 37
    sget-object v0, Lorg/joda/time/DateTimeUtils;->SYSTEM_MILLIS_PROVIDER:Lorg/joda/time/DateTimeUtils$SystemMillisProvider;

    sput-object v0, Lorg/joda/time/DateTimeUtils;->cMillisProvider:Lorg/joda/time/DateTimeUtils$MillisProvider;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method private static checkPermission()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_10

    .line 131
    new-instance v1, Lorg/joda/time/JodaTimePermission;

    const-string v2, "CurrentTime.setProvider"

    invoke-direct {v1, v2}, Lorg/joda/time/JodaTimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 133
    :cond_10
    return-void
.end method

.method public static final currentTimeMillis()J
    .registers 2

    .prologue
    .line 56
    sget-object v0, Lorg/joda/time/DateTimeUtils;->cMillisProvider:Lorg/joda/time/DateTimeUtils$MillisProvider;

    invoke-interface {v0}, Lorg/joda/time/DateTimeUtils$MillisProvider;->getMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;
    .registers 1

    .prologue
    .line 252
    if-nez p0, :cond_6

    .line 253
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object p0

    .line 255
    :cond_6
    return-object p0
.end method

.method public static final getDateFormatSymbols(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;
    .registers 6

    .prologue
    .line 365
    :try_start_0
    const-class v0, Ljava/text/DateFormatSymbols;

    const-string v1, "getInstance"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/util/Locale;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 366
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 368
    :goto_1d
    return-object v0

    .line 367
    :catch_1e
    move-exception v0

    .line 368
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0, p0}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    goto :goto_1d
.end method

.method public static final getDurationMillis(Lorg/joda/time/ReadableDuration;)J
    .registers 3

    .prologue
    .line 303
    if-nez p0, :cond_5

    .line 304
    const-wide/16 v0, 0x0

    .line 306
    :goto_4
    return-wide v0

    :cond_5
    invoke-interface {p0}, Lorg/joda/time/ReadableDuration;->getMillis()J

    move-result-wide v0

    goto :goto_4
.end method

.method public static final getInstantChronology(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Chronology;
    .registers 2

    .prologue
    .line 164
    if-nez p0, :cond_7

    .line 165
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    .line 171
    :cond_6
    :goto_6
    return-object v0

    .line 167
    :cond_7
    invoke-interface {p0}, Lorg/joda/time/ReadableInstant;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    .line 168
    if-nez v0, :cond_6

    .line 169
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    goto :goto_6
.end method

.method public static final getInstantMillis(Lorg/joda/time/ReadableInstant;)J
    .registers 3

    .prologue
    .line 146
    if-nez p0, :cond_7

    .line 147
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    .line 149
    :goto_6
    return-wide v0

    :cond_7
    invoke-interface {p0}, Lorg/joda/time/ReadableInstant;->getMillis()J

    move-result-wide v0

    goto :goto_6
.end method

.method public static final getIntervalChronology(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Chronology;
    .registers 3

    .prologue
    .line 187
    const/4 v0, 0x0

    .line 188
    if-eqz p0, :cond_e

    .line 189
    invoke-interface {p0}, Lorg/joda/time/ReadableInstant;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    .line 193
    :cond_7
    :goto_7
    if-nez v0, :cond_d

    .line 194
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    .line 196
    :cond_d
    return-object v0

    .line 190
    :cond_e
    if-eqz p1, :cond_7

    .line 191
    invoke-interface {p1}, Lorg/joda/time/ReadableInstant;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    goto :goto_7
.end method

.method public static final getIntervalChronology(Lorg/joda/time/ReadableInterval;)Lorg/joda/time/Chronology;
    .registers 2

    .prologue
    .line 211
    if-nez p0, :cond_7

    .line 212
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    .line 218
    :cond_6
    :goto_6
    return-object v0

    .line 214
    :cond_7
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    .line 215
    if-nez v0, :cond_6

    .line 216
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    goto :goto_6
.end method

.method public static final getPeriodType(Lorg/joda/time/PeriodType;)Lorg/joda/time/PeriodType;
    .registers 1

    .prologue
    .line 286
    if-nez p0, :cond_6

    .line 287
    invoke-static {}, Lorg/joda/time/PeriodType;->standard()Lorg/joda/time/PeriodType;

    move-result-object p0

    .line 289
    :cond_6
    return-object p0
.end method

.method public static final getReadableInterval(Lorg/joda/time/ReadableInterval;)Lorg/joda/time/ReadableInterval;
    .registers 3

    .prologue
    .line 234
    if-nez p0, :cond_b

    .line 235
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    .line 236
    new-instance p0, Lorg/joda/time/Interval;

    invoke-direct {p0, v0, v1, v0, v1}, Lorg/joda/time/Interval;-><init>(JJ)V

    .line 238
    :cond_b
    return-object p0
.end method

.method public static final getZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;
    .registers 1

    .prologue
    .line 269
    if-nez p0, :cond_6

    .line 270
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object p0

    .line 272
    :cond_6
    return-object p0
.end method

.method public static final isContiguous(Lorg/joda/time/ReadablePartial;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 334
    if-nez p0, :cond_b

    .line 335
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Partial must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_b
    const/4 v0, 0x0

    move-object v2, v0

    move v0, v1

    .line 338
    :goto_e
    invoke-interface {p0}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v3

    if-ge v0, v3, :cond_30

    .line 339
    invoke-interface {p0, v0}, Lorg/joda/time/ReadablePartial;->getField(I)Lorg/joda/time/DateTimeField;

    move-result-object v3

    .line 340
    if-lez v0, :cond_25

    .line 341
    invoke-virtual {v3}, Lorg/joda/time/DateTimeField;->getRangeDurationField()Lorg/joda/time/DurationField;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/DurationField;->getType()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    if-eq v4, v2, :cond_25

    .line 347
    :goto_24
    return v1

    .line 345
    :cond_25
    invoke-virtual {v3}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/DurationField;->getType()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 347
    :cond_30
    const/4 v1, 0x1

    goto :goto_24
.end method

.method public static final setCurrentMillisFixed(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->checkPermission()V

    .line 83
    new-instance v0, Lorg/joda/time/DateTimeUtils$FixedMillisProvider;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/DateTimeUtils$FixedMillisProvider;-><init>(J)V

    sput-object v0, Lorg/joda/time/DateTimeUtils;->cMillisProvider:Lorg/joda/time/DateTimeUtils$MillisProvider;

    .line 84
    return-void
.end method

.method public static final setCurrentMillisOffset(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->checkPermission()V

    .line 98
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_e

    .line 99
    sget-object v0, Lorg/joda/time/DateTimeUtils;->SYSTEM_MILLIS_PROVIDER:Lorg/joda/time/DateTimeUtils$SystemMillisProvider;

    sput-object v0, Lorg/joda/time/DateTimeUtils;->cMillisProvider:Lorg/joda/time/DateTimeUtils$MillisProvider;

    .line 103
    :goto_d
    return-void

    .line 101
    :cond_e
    new-instance v0, Lorg/joda/time/DateTimeUtils$OffsetMillisProvider;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/DateTimeUtils$OffsetMillisProvider;-><init>(J)V

    sput-object v0, Lorg/joda/time/DateTimeUtils;->cMillisProvider:Lorg/joda/time/DateTimeUtils$MillisProvider;

    goto :goto_d
.end method

.method public static final setCurrentMillisProvider(Lorg/joda/time/DateTimeUtils$MillisProvider;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 116
    if-nez p0, :cond_a

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The MillisProvider must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_a
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->checkPermission()V

    .line 120
    sput-object p0, Lorg/joda/time/DateTimeUtils;->cMillisProvider:Lorg/joda/time/DateTimeUtils$MillisProvider;

    .line 121
    return-void
.end method

.method public static final setCurrentMillisSystem()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->checkPermission()V

    .line 69
    sget-object v0, Lorg/joda/time/DateTimeUtils;->SYSTEM_MILLIS_PROVIDER:Lorg/joda/time/DateTimeUtils$SystemMillisProvider;

    sput-object v0, Lorg/joda/time/DateTimeUtils;->cMillisProvider:Lorg/joda/time/DateTimeUtils$MillisProvider;

    .line 70
    return-void
.end method
