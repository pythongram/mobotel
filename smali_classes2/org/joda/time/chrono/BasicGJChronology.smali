.class abstract Lorg/joda/time/chrono/BasicGJChronology;
.super Lorg/joda/time/chrono/BasicChronology;
.source "BasicGJChronology.java"


# static fields
.field private static final FEB_29:J = 0x12fd73400L

.field private static final MAX_DAYS_PER_MONTH_ARRAY:[I

.field private static final MAX_TOTAL_MILLIS_BY_MONTH_ARRAY:[J

.field private static final MIN_DAYS_PER_MONTH_ARRAY:[I

.field private static final MIN_TOTAL_MILLIS_BY_MONTH_ARRAY:[J

.field private static final serialVersionUID:J = 0x7d53cd7eccL


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const-wide/32 v8, 0x5265c00

    const-wide/16 v2, 0x0

    const/16 v1, 0xc

    .line 42
    new-array v0, v1, [I

    fill-array-data v0, :array_42

    sput-object v0, Lorg/joda/time/chrono/BasicGJChronology;->MIN_DAYS_PER_MONTH_ARRAY:[I

    .line 45
    new-array v0, v1, [I

    fill-array-data v0, :array_5e

    sput-object v0, Lorg/joda/time/chrono/BasicGJChronology;->MAX_DAYS_PER_MONTH_ARRAY:[I

    .line 53
    new-array v0, v1, [J

    sput-object v0, Lorg/joda/time/chrono/BasicGJChronology;->MIN_TOTAL_MILLIS_BY_MONTH_ARRAY:[J

    .line 54
    new-array v0, v1, [J

    sput-object v0, Lorg/joda/time/chrono/BasicGJChronology;->MAX_TOTAL_MILLIS_BY_MONTH_ARRAY:[J

    .line 58
    const/4 v0, 0x0

    move-wide v4, v2

    :goto_1f
    const/16 v1, 0xb

    if-ge v0, v1, :cond_40

    .line 59
    sget-object v1, Lorg/joda/time/chrono/BasicGJChronology;->MIN_DAYS_PER_MONTH_ARRAY:[I

    aget v1, v1, v0

    int-to-long v6, v1

    mul-long/2addr v6, v8

    .line 61
    add-long/2addr v4, v6

    .line 62
    sget-object v1, Lorg/joda/time/chrono/BasicGJChronology;->MIN_TOTAL_MILLIS_BY_MONTH_ARRAY:[J

    add-int/lit8 v6, v0, 0x1

    aput-wide v4, v1, v6

    .line 64
    sget-object v1, Lorg/joda/time/chrono/BasicGJChronology;->MAX_DAYS_PER_MONTH_ARRAY:[I

    aget v1, v1, v0

    int-to-long v6, v1

    mul-long/2addr v6, v8

    .line 66
    add-long/2addr v2, v6

    .line 67
    sget-object v1, Lorg/joda/time/chrono/BasicGJChronology;->MAX_TOTAL_MILLIS_BY_MONTH_ARRAY:[J

    add-int/lit8 v6, v0, 0x1

    aput-wide v2, v1, v6

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 69
    :cond_40
    return-void

    .line 42
    nop

    :array_42
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data

    .line 45
    :array_5e
    .array-data 4
        0x1f
        0x1d
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data
.end method

.method constructor <init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V
    .registers 4

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/chrono/BasicChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V

    .line 76
    return-void
.end method


# virtual methods
.method getDaysInMonthMax(I)I
    .registers 4

    .prologue
    .line 129
    sget-object v0, Lorg/joda/time/chrono/BasicGJChronology;->MAX_DAYS_PER_MONTH_ARRAY:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method getDaysInMonthMaxForSet(JI)I
    .registers 5

    .prologue
    const/16 v0, 0x1c

    .line 134
    if-le p3, v0, :cond_8

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicGJChronology;->getDaysInMonthMax(J)I

    move-result v0

    :cond_8
    return v0
.end method

.method getDaysInYearMonth(II)I
    .registers 5

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/BasicGJChronology;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 121
    sget-object v0, Lorg/joda/time/chrono/BasicGJChronology;->MAX_DAYS_PER_MONTH_ARRAY:[I

    add-int/lit8 v1, p2, -0x1

    aget v0, v0, v1

    .line 123
    :goto_c
    return v0

    :cond_d
    sget-object v0, Lorg/joda/time/chrono/BasicGJChronology;->MIN_DAYS_PER_MONTH_ARRAY:[I

    add-int/lit8 v1, p2, -0x1

    aget v0, v0, v1

    goto :goto_c
.end method

.method getMonthOfYear(JI)I
    .registers 13

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    const/16 v4, 0xa

    .line 88
    invoke-virtual {p0, p3}, Lorg/joda/time/chrono/BasicGJChronology;->getYearMillis(I)J

    move-result-wide v6

    sub-long v6, p1, v6

    shr-long/2addr v6, v4

    long-to-int v5, v6

    .line 93
    invoke-virtual {p0, p3}, Lorg/joda/time/chrono/BasicGJChronology;->isLeapYear(I)Z

    move-result v6

    if-eqz v6, :cond_66

    const v6, 0xea515a

    if-ge v5, v6, :cond_3d

    const v4, 0x7528ad

    if-ge v5, v4, :cond_2d

    const v3, 0x27e949

    if-ge v5, v3, :cond_24

    :cond_23
    :goto_23
    return v0

    :cond_24
    const v0, 0x4d3f64

    if-ge v5, v0, :cond_2b

    move v0, v1

    goto :goto_23

    :cond_2b
    move v0, v2

    goto :goto_23

    :cond_2d
    const v0, 0x9bc85f

    if-ge v5, v0, :cond_34

    move v0, v3

    goto :goto_23

    :cond_34
    const v0, 0xc3b1a8

    if-ge v5, v0, :cond_3b

    const/4 v0, 0x5

    goto :goto_23

    :cond_3b
    const/4 v0, 0x6

    goto :goto_23

    :cond_3d
    const v0, 0x160c39e

    if-ge v5, v0, :cond_54

    const v0, 0x1123aa3

    if-ge v5, v0, :cond_49

    const/4 v0, 0x7

    goto :goto_23

    :cond_49
    const v0, 0x13a23ec

    if-ge v5, v0, :cond_51

    const/16 v0, 0x8

    goto :goto_23

    :cond_51
    const/16 v0, 0x9

    goto :goto_23

    :cond_54
    const v0, 0x188ace7

    if-ge v5, v0, :cond_5b

    move v0, v4

    goto :goto_23

    :cond_5b
    const v0, 0x1af4c99

    if-ge v5, v0, :cond_63

    const/16 v0, 0xb

    goto :goto_23

    :cond_63
    const/16 v0, 0xc

    goto :goto_23

    :cond_66
    const v6, 0xe907c3

    if-ge v5, v6, :cond_8e

    const v4, 0x73df16

    if-ge v5, v4, :cond_7e

    const v3, 0x27e949

    if-lt v5, v3, :cond_23

    const v0, 0x4bf5cd

    if-ge v5, v0, :cond_7c

    move v0, v1

    goto :goto_23

    :cond_7c
    move v0, v2

    goto :goto_23

    :cond_7e
    const v0, 0x9a7ec8

    if-ge v5, v0, :cond_85

    move v0, v3

    goto :goto_23

    :cond_85
    const v0, 0xc26811

    if-ge v5, v0, :cond_8c

    const/4 v0, 0x5

    goto :goto_23

    :cond_8c
    const/4 v0, 0x6

    goto :goto_23

    :cond_8e
    const v0, 0x15f7a07

    if-ge v5, v0, :cond_a6

    const v0, 0x110f10c

    if-ge v5, v0, :cond_9a

    const/4 v0, 0x7

    goto :goto_23

    :cond_9a
    const v0, 0x138da55

    if-ge v5, v0, :cond_a2

    const/16 v0, 0x8

    goto :goto_23

    :cond_a2
    const/16 v0, 0x9

    goto/16 :goto_23

    :cond_a6
    const v0, 0x1876350

    if-ge v5, v0, :cond_ae

    move v0, v4

    goto/16 :goto_23

    :cond_ae
    const v0, 0x1ae0302

    if-ge v5, v0, :cond_b7

    const/16 v0, 0xb

    goto/16 :goto_23

    :cond_b7
    const/16 v0, 0xc

    goto/16 :goto_23
.end method

.method getTotalMillisByYearMonth(II)J
    .registers 5

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/BasicGJChronology;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 140
    sget-object v0, Lorg/joda/time/chrono/BasicGJChronology;->MAX_TOTAL_MILLIS_BY_MONTH_ARRAY:[J

    add-int/lit8 v1, p2, -0x1

    aget-wide v0, v0, v1

    .line 142
    :goto_c
    return-wide v0

    :cond_d
    sget-object v0, Lorg/joda/time/chrono/BasicGJChronology;->MIN_TOTAL_MILLIS_BY_MONTH_ARRAY:[J

    add-int/lit8 v1, p2, -0x1

    aget-wide v0, v0, v1

    goto :goto_c
.end method

.method getYearDifference(JJ)J
    .registers 14

    .prologue
    .line 148
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicGJChronology;->getYear(J)I

    move-result v6

    .line 149
    invoke-virtual {p0, p3, p4}, Lorg/joda/time/chrono/BasicGJChronology;->getYear(J)I

    move-result v7

    .line 152
    invoke-virtual {p0, v6}, Lorg/joda/time/chrono/BasicGJChronology;->getYearMillis(I)J

    move-result-wide v0

    sub-long v2, p1, v0

    .line 153
    invoke-virtual {p0, v7}, Lorg/joda/time/chrono/BasicGJChronology;->getYearMillis(I)J

    move-result-wide v0

    sub-long v0, p3, v0

    .line 156
    const-wide v4, 0x12fd73400L

    cmp-long v4, v0, v4

    if-ltz v4, :cond_4f

    .line 157
    invoke-virtual {p0, v7}, Lorg/joda/time/chrono/BasicGJChronology;->isLeapYear(I)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 158
    invoke-virtual {p0, v6}, Lorg/joda/time/chrono/BasicGJChronology;->isLeapYear(I)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 159
    const-wide/32 v4, 0x5265c00

    sub-long/2addr v0, v4

    move-wide v4, v2

    move-wide v2, v0

    .line 166
    :goto_2f
    sub-int v0, v6, v7

    .line 167
    cmp-long v1, v4, v2

    if-gez v1, :cond_37

    .line 168
    add-int/lit8 v0, v0, -0x1

    .line 170
    :cond_37
    int-to-long v0, v0

    return-wide v0

    .line 161
    :cond_39
    const-wide v4, 0x12fd73400L

    cmp-long v4, v2, v4

    if-ltz v4, :cond_4f

    invoke-virtual {p0, v6}, Lorg/joda/time/chrono/BasicGJChronology;->isLeapYear(I)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 162
    const-wide/32 v4, 0x5265c00

    sub-long/2addr v2, v4

    move-wide v4, v2

    move-wide v2, v0

    goto :goto_2f

    :cond_4f
    move-wide v4, v2

    move-wide v2, v0

    goto :goto_2f
.end method

.method setYear(JI)J
    .registers 9

    .prologue
    .line 175
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicGJChronology;->getYear(J)I

    move-result v1

    .line 176
    invoke-virtual {p0, p1, p2, v1}, Lorg/joda/time/chrono/BasicGJChronology;->getDayOfYear(JI)I

    move-result v0

    .line 177
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicGJChronology;->getMillisOfDay(J)I

    move-result v2

    .line 179
    const/16 v3, 0x3b

    if-le v0, v3, :cond_1e

    .line 180
    invoke-virtual {p0, v1}, Lorg/joda/time/chrono/BasicGJChronology;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 182
    invoke-virtual {p0, p3}, Lorg/joda/time/chrono/BasicGJChronology;->isLeapYear(I)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 184
    add-int/lit8 v0, v0, -0x1

    .line 195
    :cond_1e
    :goto_1e
    const/4 v1, 0x1

    invoke-virtual {p0, p3, v1, v0}, Lorg/joda/time/chrono/BasicGJChronology;->getYearMonthDayMillis(III)J

    move-result-wide v0

    .line 196
    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 198
    return-wide v0

    .line 188
    :cond_26
    invoke-virtual {p0, p3}, Lorg/joda/time/chrono/BasicGJChronology;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e
.end method
