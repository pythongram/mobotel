.class public abstract Lorg/joda/time/field/PreciseDurationDateTimeField;
.super Lorg/joda/time/field/BaseDateTimeField;
.source "PreciseDurationDateTimeField.java"


# static fields
.field private static final serialVersionUID:J = 0x4573a34c210f9bb3L


# instance fields
.field private final iUnitField:Lorg/joda/time/DurationField;

.field final iUnitMillis:J


# direct methods
.method public constructor <init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;)V
    .registers 7

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/joda/time/field/BaseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;)V

    .line 50
    invoke-virtual {p2}, Lorg/joda/time/DurationField;->isPrecise()Z

    move-result v0

    if-nez v0, :cond_11

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unit duration field must be precise"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_11
    invoke-virtual {p2}, Lorg/joda/time/DurationField;->getUnitMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/field/PreciseDurationDateTimeField;->iUnitMillis:J

    .line 55
    iget-wide v0, p0, Lorg/joda/time/field/PreciseDurationDateTimeField;->iUnitMillis:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_27

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The unit milliseconds must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_27
    iput-object p2, p0, Lorg/joda/time/field/PreciseDurationDateTimeField;->iUnitField:Lorg/joda/time/DurationField;

    .line 60
    return-void
.end method


# virtual methods
.method public getDurationField()Lorg/joda/time/DurationField;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lorg/joda/time/field/PreciseDurationDateTimeField;->iUnitField:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method protected getMaximumValueForSet(JI)I
    .registers 5

    .prologue
    .line 163
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/field/PreciseDurationDateTimeField;->getMaximumValue(J)I

    move-result v0

    return v0
.end method

.method public getMinimumValue()I
    .registers 2

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public final getUnitMillis()J
    .registers 3

    .prologue
    .line 154
    iget-wide v0, p0, Lorg/joda/time/field/PreciseDurationDateTimeField;->iUnitMillis:J

    return-wide v0
.end method

.method public isLenient()Z
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public remainder(J)J
    .registers 10

    .prologue
    const-wide/16 v4, 0x1

    .line 126
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_d

    .line 127
    iget-wide v0, p0, Lorg/joda/time/field/PreciseDurationDateTimeField;->iUnitMillis:J

    rem-long v0, p1, v0

    .line 129
    :goto_c
    return-wide v0

    :cond_d
    add-long v0, p1, v4

    iget-wide v2, p0, Lorg/joda/time/field/PreciseDurationDateTimeField;->iUnitMillis:J

    rem-long/2addr v0, v2

    iget-wide v2, p0, Lorg/joda/time/field/PreciseDurationDateTimeField;->iUnitMillis:J

    add-long/2addr v0, v2

    sub-long/2addr v0, v4

    goto :goto_c
.end method

.method public roundCeiling(J)J
    .registers 8

    .prologue
    .line 109
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_13

    .line 110
    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    .line 111
    iget-wide v2, p0, Lorg/joda/time/field/PreciseDurationDateTimeField;->iUnitMillis:J

    rem-long v2, v0, v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lorg/joda/time/field/PreciseDurationDateTimeField;->iUnitMillis:J

    add-long/2addr v0, v2

    .line 113
    :goto_12
    return-wide v0

    :cond_13
    iget-wide v0, p0, Lorg/joda/time/field/PreciseDurationDateTimeField;->iUnitMillis:J

    rem-long v0, p1, v0

    sub-long v0, p1, v0

    goto :goto_12
.end method

.method public roundFloor(J)J
    .registers 8

    .prologue
    .line 92
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_d

    .line 93
    iget-wide v0, p0, Lorg/joda/time/field/PreciseDurationDateTimeField;->iUnitMillis:J

    rem-long v0, p1, v0

    sub-long v0, p1, v0

    .line 96
    :goto_c
    return-wide v0

    .line 95
    :cond_d
    const-wide/16 v0, 0x1

    add-long/2addr v0, p1

    .line 96
    iget-wide v2, p0, Lorg/joda/time/field/PreciseDurationDateTimeField;->iUnitMillis:J

    rem-long v2, v0, v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lorg/joda/time/field/PreciseDurationDateTimeField;->iUnitMillis:J

    sub-long/2addr v0, v2

    goto :goto_c
.end method

.method public set(JI)J
    .registers 9

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/joda/time/field/PreciseDurationDateTimeField;->getMinimumValue()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/field/PreciseDurationDateTimeField;->getMaximumValueForSet(JI)I

    move-result v1

    invoke-static {p0, p3, v0, v1}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeField;III)V

    .line 80
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/field/PreciseDurationDateTimeField;->get(J)I

    move-result v0

    sub-int v0, p3, v0

    int-to-long v0, v0

    iget-wide v2, p0, Lorg/joda/time/field/PreciseDurationDateTimeField;->iUnitMillis:J

    mul-long/2addr v0, v2

    add-long/2addr v0, p1

    return-wide v0
.end method
