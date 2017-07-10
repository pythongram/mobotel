.class public final Lorg/joda/time/chrono/JulianChronology;
.super Lorg/joda/time/chrono/BasicGJChronology;
.source "JulianChronology.java"


# static fields
.field private static final INSTANCE_UTC:Lorg/joda/time/chrono/JulianChronology;

.field private static final MAX_YEAR:I = 0x116bbb60

.field private static final MILLIS_PER_MONTH:J = 0x9cbf9040L

.field private static final MILLIS_PER_YEAR:J = 0x758fac300L

.field private static final MIN_YEAR:I = -0x116babfe

.field private static final cCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/joda/time/DateTimeZone;",
            "[",
            "Lorg/joda/time/chrono/JulianChronology;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x792ae22fcd5d139fL


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/joda/time/chrono/JulianChronology;->cCache:Ljava/util/Map;

    .line 74
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-static {v0}, Lorg/joda/time/chrono/JulianChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/JulianChronology;

    move-result-object v0

    sput-object v0, Lorg/joda/time/chrono/JulianChronology;->INSTANCE_UTC:Lorg/joda/time/chrono/JulianChronology;

    .line 75
    return-void
.end method

.method constructor <init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V
    .registers 4

    .prologue
    .line 162
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/chrono/BasicGJChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V

    .line 163
    return-void
.end method

.method static adjustYearForSet(I)I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 78
    if-gtz p0, :cond_15

    .line 79
    if-nez p0, :cond_13

    .line 80
    new-instance v0, Lorg/joda/time/IllegalFieldValueException;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3, v3}, Lorg/joda/time/IllegalFieldValueException;-><init>(Lorg/joda/time/DateTimeFieldType;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 83
    :cond_13
    add-int/lit8 p0, p0, 0x1

    .line 85
    :cond_15
    return p0
.end method

.method public static getInstance()Lorg/joda/time/chrono/JulianChronology;
    .registers 2

    .prologue
    .line 104
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/joda/time/chrono/JulianChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/JulianChronology;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/JulianChronology;
    .registers 2

    .prologue
    .line 114
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lorg/joda/time/chrono/JulianChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/JulianChronology;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/JulianChronology;
    .registers 7

    .prologue
    .line 125
    if-nez p0, :cond_6

    .line 126
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object p0

    .line 129
    :cond_6
    sget-object v2, Lorg/joda/time/chrono/JulianChronology;->cCache:Ljava/util/Map;

    monitor-enter v2

    .line 130
    :try_start_9
    sget-object v0, Lorg/joda/time/chrono/JulianChronology;->cCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/joda/time/chrono/JulianChronology;

    .line 131
    if-nez v0, :cond_1b

    .line 132
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/joda/time/chrono/JulianChronology;

    .line 133
    sget-object v1, Lorg/joda/time/chrono/JulianChronology;->cCache:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_4d

    :cond_1b
    move-object v1, v0

    .line 136
    add-int/lit8 v0, p1, -0x1

    :try_start_1e
    aget-object v0, v1, v0
    :try_end_20
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1e .. :try_end_20} :catch_33
    .catchall {:try_start_1e .. :try_end_20} :catchall_4d

    .line 141
    if-nez v0, :cond_31

    .line 142
    :try_start_22
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    if-ne p0, v0, :cond_50

    .line 143
    new-instance v0, Lorg/joda/time/chrono/JulianChronology;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, p1}, Lorg/joda/time/chrono/JulianChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V

    .line 149
    :goto_2d
    add-int/lit8 v3, p1, -0x1

    aput-object v0, v1, v3

    .line 151
    :cond_31
    monitor-exit v2

    .line 152
    return-object v0

    .line 137
    :catch_33
    move-exception v0

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid min days in first week: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :catchall_4d
    move-exception v0

    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_22 .. :try_end_4f} :catchall_4d

    throw v0

    .line 145
    :cond_50
    :try_start_50
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-static {v0, p1}, Lorg/joda/time/chrono/JulianChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/JulianChronology;

    move-result-object v3

    .line 146
    new-instance v0, Lorg/joda/time/chrono/JulianChronology;

    invoke-static {v3, p0}, Lorg/joda/time/chrono/ZonedChronology;->getInstance(Lorg/joda/time/Chronology;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ZonedChronology;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, p1}, Lorg/joda/time/chrono/JulianChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V
    :try_end_60
    .catchall {:try_start_50 .. :try_end_60} :catchall_4d

    goto :goto_2d
.end method

.method public static getInstanceUTC()Lorg/joda/time/chrono/JulianChronology;
    .registers 1

    .prologue
    .line 95
    sget-object v0, Lorg/joda/time/chrono/JulianChronology;->INSTANCE_UTC:Lorg/joda/time/chrono/JulianChronology;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 169
    invoke-virtual {p0}, Lorg/joda/time/chrono/JulianChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v1

    .line 170
    invoke-virtual {p0}, Lorg/joda/time/chrono/JulianChronology;->getMinimumDaysInFirstWeek()I

    move-result v0

    .line 171
    if-nez v0, :cond_b

    const/4 v0, 0x4

    .line 172
    :cond_b
    if-nez v1, :cond_14

    sget-object v1, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-static {v1, v0}, Lorg/joda/time/chrono/JulianChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/JulianChronology;

    move-result-object v0

    :goto_13
    return-object v0

    :cond_14
    invoke-virtual {v1}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/joda/time/chrono/JulianChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/JulianChronology;

    move-result-object v0

    goto :goto_13
.end method


# virtual methods
.method protected assemble(Lorg/joda/time/chrono/AssembledChronology$Fields;)V
    .registers 4

    .prologue
    .line 265
    invoke-virtual {p0}, Lorg/joda/time/chrono/JulianChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 266
    invoke-super {p0, p1}, Lorg/joda/time/chrono/BasicGJChronology;->assemble(Lorg/joda/time/chrono/AssembledChronology$Fields;)V

    .line 268
    new-instance v0, Lorg/joda/time/field/SkipDateTimeField;

    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->year:Lorg/joda/time/DateTimeField;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/field/SkipDateTimeField;-><init>(Lorg/joda/time/Chronology;Lorg/joda/time/DateTimeField;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->year:Lorg/joda/time/DateTimeField;

    .line 269
    new-instance v0, Lorg/joda/time/field/SkipDateTimeField;

    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyear:Lorg/joda/time/DateTimeField;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/field/SkipDateTimeField;-><init>(Lorg/joda/time/Chronology;Lorg/joda/time/DateTimeField;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyear:Lorg/joda/time/DateTimeField;

    .line 271
    :cond_1b
    return-void
.end method

.method calculateFirstDayOfYearMillis(I)J
    .registers 8

    .prologue
    .line 219
    add-int/lit16 v1, p1, -0x7b0

    .line 221
    if-gtz v1, :cond_19

    .line 224
    add-int/lit8 v0, v1, 0x3

    shr-int/lit8 v0, v0, 0x2

    .line 233
    :cond_8
    :goto_8
    int-to-long v2, v1

    const-wide/16 v4, 0x16d

    mul-long/2addr v2, v4

    int-to-long v0, v0

    add-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    .line 237
    const-wide v2, 0xe71960800L

    sub-long/2addr v0, v2

    return-wide v0

    .line 226
    :cond_19
    shr-int/lit8 v0, v1, 0x2

    .line 228
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/JulianChronology;->isLeapYear(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method getApproxMillisAtEpochDividedByTwo()J
    .registers 3

    .prologue
    .line 261
    const-wide v0, 0x1c453aba2980L

    return-wide v0
.end method

.method getAverageMillisPerMonth()J
    .registers 3

    .prologue
    .line 257
    const-wide v0, 0x9cbf9040L

    return-wide v0
.end method

.method getAverageMillisPerYear()J
    .registers 3

    .prologue
    .line 249
    const-wide v0, 0x758fac300L

    return-wide v0
.end method

.method getAverageMillisPerYearDividedByTwo()J
    .registers 3

    .prologue
    .line 253
    const-wide v0, 0x3ac7d6180L

    return-wide v0
.end method

.method getDateMidnightMillis(III)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-static {p1}, Lorg/joda/time/chrono/JulianChronology;->adjustYearForSet(I)I

    move-result v0

    invoke-super {p0, v0, p2, p3}, Lorg/joda/time/chrono/BasicGJChronology;->getDateMidnightMillis(III)J

    move-result-wide v0

    return-wide v0
.end method

.method getMaxYear()I
    .registers 2

    .prologue
    .line 245
    const v0, 0x116bbb60

    return v0
.end method

.method getMinYear()I
    .registers 2

    .prologue
    .line 241
    const v0, -0x116babfe

    return v0
.end method

.method isLeapYear(I)Z
    .registers 3

    .prologue
    .line 211
    and-int/lit8 v0, p1, 0x3

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public withUTC()Lorg/joda/time/Chronology;
    .registers 2

    .prologue
    .line 185
    sget-object v0, Lorg/joda/time/chrono/JulianChronology;->INSTANCE_UTC:Lorg/joda/time/chrono/JulianChronology;

    return-object v0
.end method

.method public withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;
    .registers 3

    .prologue
    .line 195
    if-nez p1, :cond_6

    .line 196
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object p1

    .line 198
    :cond_6
    invoke-virtual {p0}, Lorg/joda/time/chrono/JulianChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    if-ne p1, v0, :cond_d

    .line 201
    :goto_c
    return-object p0

    :cond_d
    invoke-static {p1}, Lorg/joda/time/chrono/JulianChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/JulianChronology;

    move-result-object p0

    goto :goto_c
.end method
