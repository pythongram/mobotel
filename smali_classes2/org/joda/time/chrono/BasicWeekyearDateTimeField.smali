.class final Lorg/joda/time/chrono/BasicWeekyearDateTimeField;
.super Lorg/joda/time/field/ImpreciseDateTimeField;
.source "BasicWeekyearDateTimeField.java"


# static fields
.field private static final WEEK_53:J = 0x7528ad000L

.field private static final serialVersionUID:J = 0x56405a6e978d8324L


# instance fields
.field private final iChronology:Lorg/joda/time/chrono/BasicChronology;


# direct methods
.method constructor <init>(Lorg/joda/time/chrono/BasicChronology;)V
    .registers 6

    .prologue
    .line 44
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekyear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p1}, Lorg/joda/time/chrono/BasicChronology;->getAverageMillisPerYear()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lorg/joda/time/field/ImpreciseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;J)V

    .line 45
    iput-object p1, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    .line 46
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 250
    iget-object v0, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->weekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(JI)J
    .registers 5

    .prologue
    .line 72
    if-nez p3, :cond_3

    .line 75
    :goto_2
    return-wide p1

    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->get(J)I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->set(JI)J

    move-result-wide p1

    goto :goto_2
.end method

.method public add(JJ)J
    .registers 8

    .prologue
    .line 79
    invoke-static {p3, p4}, Lorg/joda/time/field/FieldUtils;->safeToInt(J)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->add(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public addWrapField(JI)J
    .registers 7

    .prologue
    .line 92
    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->add(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public get(J)I
    .registers 4

    .prologue
    .line 60
    iget-object v0, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getWeekyear(J)I

    move-result v0

    return v0
.end method

.method public getDifferenceAsLong(JJ)J
    .registers 14

    .prologue
    .line 96
    cmp-long v0, p1, p3

    if-gez v0, :cond_b

    .line 97
    invoke-virtual {p0, p3, p4, p1, p2}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->getDifference(JJ)I

    move-result v0

    neg-int v0, v0

    int-to-long v0, v0

    .line 115
    :goto_a
    return-wide v0

    .line 100
    :cond_b
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->get(J)I

    move-result v4

    .line 101
    invoke-virtual {p0, p3, p4}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->get(J)I

    move-result v5

    .line 103
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->remainder(J)J

    move-result-wide v6

    .line 104
    invoke-virtual {p0, p3, p4}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->remainder(J)J

    move-result-wide v0

    .line 107
    const-wide v2, 0x7528ad000L

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3d

    iget-object v2, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v2, v4}, Lorg/joda/time/chrono/BasicChronology;->getWeeksInYear(I)I

    move-result v2

    const/16 v3, 0x34

    if-gt v2, v3, :cond_3d

    .line 108
    const-wide/32 v2, 0x240c8400

    sub-long/2addr v0, v2

    move-wide v2, v0

    .line 111
    :goto_33
    sub-int v0, v4, v5

    .line 112
    cmp-long v1, v6, v2

    if-gez v1, :cond_3b

    .line 113
    add-int/lit8 v0, v0, -0x1

    .line 115
    :cond_3b
    int-to-long v0, v0

    goto :goto_a

    :cond_3d
    move-wide v2, v0

    goto :goto_33
.end method

.method public getLeapAmount(J)I
    .registers 6

    .prologue
    .line 216
    iget-object v0, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    iget-object v1, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v1, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getWeekyear(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/joda/time/chrono/BasicChronology;->getWeeksInYear(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x34

    return v0
.end method

.method public getLeapDurationField()Lorg/joda/time/DurationField;
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->weeks()Lorg/joda/time/DurationField;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumValue()I
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->getMaxYear()I

    move-result v0

    return v0
.end method

.method public getMinimumValue()I
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->getMinYear()I

    move-result v0

    return v0
.end method

.method public getRangeDurationField()Lorg/joda/time/DurationField;
    .registers 2

    .prologue
    .line 208
    const/4 v0, 0x0

    return-object v0
.end method

.method public isLeap(J)Z
    .registers 6

    .prologue
    .line 212
    iget-object v0, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    iget-object v1, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v1, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getWeekyear(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/joda/time/chrono/BasicChronology;->getWeeksInYear(I)I

    move-result v0

    const/16 v1, 0x34

    if-le v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isLenient()Z
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public remainder(J)J
    .registers 6

    .prologue
    .line 243
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->roundFloor(J)J

    move-result-wide v0

    sub-long v0, p1, v0

    return-wide v0
.end method

.method public roundFloor(J)J
    .registers 10

    .prologue
    .line 234
    iget-object v0, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->weekOfWeekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide v0

    .line 235
    iget-object v2, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v2, v0, v1}, Lorg/joda/time/chrono/BasicChronology;->getWeekOfWeekyear(J)I

    move-result v2

    .line 236
    const/4 v3, 0x1

    if-le v2, v3, :cond_1b

    .line 237
    const-wide/32 v4, 0x240c8400

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 239
    :cond_1b
    return-wide v0
.end method

.method public set(JI)J
    .registers 13

    .prologue
    const-wide/32 v6, 0x240c8400

    .line 128
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v1}, Lorg/joda/time/chrono/BasicChronology;->getMinYear()I

    move-result v1

    iget-object v2, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v2}, Lorg/joda/time/chrono/BasicChronology;->getMaxYear()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeField;III)V

    .line 133
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->get(J)I

    move-result v0

    .line 134
    if-ne v0, p3, :cond_1d

    .line 204
    :goto_1c
    return-wide p1

    .line 140
    :cond_1d
    iget-object v1, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v1, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getDayOfWeek(J)I

    move-result v4

    .line 144
    iget-object v1, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v1, v0}, Lorg/joda/time/chrono/BasicChronology;->getWeeksInYear(I)I

    move-result v1

    .line 145
    iget-object v0, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p3}, Lorg/joda/time/chrono/BasicChronology;->getWeeksInYear(I)I

    move-result v0

    .line 146
    if-ge v0, v1, :cond_5b

    .line 154
    :goto_31
    iget-object v1, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v1, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getWeekOfWeekyear(J)I

    move-result v1

    .line 155
    if-le v1, v0, :cond_61

    .line 168
    :goto_39
    iget-object v1, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v1, p1, p2, p3}, Lorg/joda/time/chrono/BasicChronology;->setYear(JI)J

    move-result-wide v2

    .line 173
    invoke-virtual {p0, v2, v3}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->get(J)I

    move-result v1

    .line 179
    if-ge v1, p3, :cond_5d

    .line 180
    add-long/2addr v2, v6

    .line 189
    :cond_46
    :goto_46
    iget-object v1, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/chrono/BasicChronology;->getWeekOfWeekyear(J)I

    move-result v1

    .line 191
    sub-int/2addr v0, v1

    int-to-long v0, v0

    mul-long/2addr v0, v6

    add-long/2addr v0, v2

    .line 200
    iget-object v2, p0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v2}, Lorg/joda/time/chrono/BasicChronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide p1

    goto :goto_1c

    :cond_5b
    move v0, v1

    .line 146
    goto :goto_31

    .line 181
    :cond_5d
    if-le v1, p3, :cond_46

    .line 182
    sub-long/2addr v2, v6

    goto :goto_46

    :cond_61
    move v0, v1

    goto :goto_39
.end method
