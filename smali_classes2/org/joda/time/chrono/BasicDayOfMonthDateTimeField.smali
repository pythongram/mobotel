.class final Lorg/joda/time/chrono/BasicDayOfMonthDateTimeField;
.super Lorg/joda/time/field/PreciseDurationDateTimeField;
.source "BasicDayOfMonthDateTimeField.java"


# static fields
.field private static final serialVersionUID:J = -0x40e8d647222328cbL


# instance fields
.field private final iChronology:Lorg/joda/time/chrono/BasicChronology;


# direct methods
.method constructor <init>(Lorg/joda/time/chrono/BasicChronology;Lorg/joda/time/DurationField;)V
    .registers 4

    .prologue
    .line 41
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfMonth()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/joda/time/field/PreciseDurationDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;)V

    .line 42
    iput-object p1, p0, Lorg/joda/time/chrono/BasicDayOfMonthDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    .line 43
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lorg/joda/time/chrono/BasicDayOfMonthDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get(J)I
    .registers 4

    .prologue
    .line 47
    iget-object v0, p0, Lorg/joda/time/chrono/BasicDayOfMonthDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getDayOfMonth(J)I

    move-result v0

    return v0
.end method

.method public getMaximumValue()I
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lorg/joda/time/chrono/BasicDayOfMonthDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->getDaysInMonthMax()I

    move-result v0

    return v0
.end method

.method public getMaximumValue(J)I
    .registers 4

    .prologue
    .line 63
    iget-object v0, p0, Lorg/joda/time/chrono/BasicDayOfMonthDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getDaysInMonthMax(J)I

    move-result v0

    return v0
.end method

.method public getMaximumValue(Lorg/joda/time/ReadablePartial;)I
    .registers 5

    .prologue
    .line 67
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->isSupported(Lorg/joda/time/DateTimeFieldType;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 68
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->get(Lorg/joda/time/DateTimeFieldType;)I

    move-result v0

    .line 69
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/joda/time/ReadablePartial;->isSupported(Lorg/joda/time/DateTimeFieldType;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 70
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/joda/time/ReadablePartial;->get(Lorg/joda/time/DateTimeFieldType;)I

    move-result v1

    .line 71
    iget-object v2, p0, Lorg/joda/time/chrono/BasicDayOfMonthDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v2, v1, v0}, Lorg/joda/time/chrono/BasicChronology;->getDaysInYearMonth(II)I

    move-result v0

    .line 75
    :goto_2a
    return v0

    .line 73
    :cond_2b
    iget-object v1, p0, Lorg/joda/time/chrono/BasicDayOfMonthDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v1, v0}, Lorg/joda/time/chrono/BasicChronology;->getDaysInMonthMax(I)I

    move-result v0

    goto :goto_2a

    .line 75
    :cond_32
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicDayOfMonthDateTimeField;->getMaximumValue()I

    move-result v0

    goto :goto_2a
.end method

.method public getMaximumValue(Lorg/joda/time/ReadablePartial;[I)I
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v2

    move v1, v0

    .line 80
    :goto_6
    if-ge v1, v2, :cond_36

    .line 81
    invoke-interface {p1, v1}, Lorg/joda/time/ReadablePartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v4

    if-ne v3, v4, :cond_33

    .line 82
    aget v1, p2, v1

    .line 83
    :goto_14
    if-ge v0, v2, :cond_2c

    .line 84
    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object v4

    if-ne v3, v4, :cond_29

    .line 85
    aget v0, p2, v0

    .line 86
    iget-object v2, p0, Lorg/joda/time/chrono/BasicDayOfMonthDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v2, v0, v1}, Lorg/joda/time/chrono/BasicChronology;->getDaysInYearMonth(II)I

    move-result v0

    .line 92
    :goto_28
    return v0

    .line 83
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 89
    :cond_2c
    iget-object v0, p0, Lorg/joda/time/chrono/BasicDayOfMonthDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, v1}, Lorg/joda/time/chrono/BasicChronology;->getDaysInMonthMax(I)I

    move-result v0

    goto :goto_28

    .line 80
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 92
    :cond_36
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicDayOfMonthDateTimeField;->getMaximumValue()I

    move-result v0

    goto :goto_28
.end method

.method protected getMaximumValueForSet(JI)I
    .registers 5

    .prologue
    .line 96
    iget-object v0, p0, Lorg/joda/time/chrono/BasicDayOfMonthDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/chrono/BasicChronology;->getDaysInMonthMaxForSet(JI)I

    move-result v0

    return v0
.end method

.method public getMinimumValue()I
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public getRangeDurationField()Lorg/joda/time/DurationField;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lorg/joda/time/chrono/BasicDayOfMonthDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->months()Lorg/joda/time/DurationField;

    move-result-object v0

    return-object v0
.end method
