.class public abstract Lorg/joda/time/field/ImpreciseDateTimeField;
.super Lorg/joda/time/field/BaseDateTimeField;
.source "ImpreciseDateTimeField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/field/ImpreciseDateTimeField$LinkedDurationField;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x63caa39367f81d54L


# instance fields
.field private final iDurationField:Lorg/joda/time/DurationField;

.field final iUnitMillis:J


# direct methods
.method public constructor <init>(Lorg/joda/time/DateTimeFieldType;J)V
    .registers 6

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/joda/time/field/BaseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;)V

    .line 56
    iput-wide p2, p0, Lorg/joda/time/field/ImpreciseDateTimeField;->iUnitMillis:J

    .line 57
    new-instance v0, Lorg/joda/time/field/ImpreciseDateTimeField$LinkedDurationField;

    invoke-virtual {p1}, Lorg/joda/time/DateTimeFieldType;->getDurationType()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/field/ImpreciseDateTimeField$LinkedDurationField;-><init>(Lorg/joda/time/field/ImpreciseDateTimeField;Lorg/joda/time/DurationFieldType;)V

    iput-object v0, p0, Lorg/joda/time/field/ImpreciseDateTimeField;->iDurationField:Lorg/joda/time/DurationField;

    .line 58
    return-void
.end method


# virtual methods
.method public abstract add(JI)J
.end method

.method public abstract add(JJ)J
.end method

.method public abstract get(J)I
.end method

.method public getDifference(JJ)I
    .registers 8

    .prologue
    .line 91
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/joda/time/field/ImpreciseDateTimeField;->getDifferenceAsLong(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeToInt(J)I

    move-result v0

    return v0
.end method

.method public getDifferenceAsLong(JJ)J
    .registers 12

    .prologue
    const-wide/16 v4, 0x1

    .line 118
    cmp-long v0, p1, p3

    if-gez v0, :cond_c

    .line 119
    invoke-virtual {p0, p3, p4, p1, p2}, Lorg/joda/time/field/ImpreciseDateTimeField;->getDifferenceAsLong(JJ)J

    move-result-wide v0

    neg-long v0, v0

    .line 133
    :cond_b
    :goto_b
    return-wide v0

    .line 122
    :cond_c
    sub-long v0, p1, p3

    iget-wide v2, p0, Lorg/joda/time/field/ImpreciseDateTimeField;->iUnitMillis:J

    div-long/2addr v0, v2

    .line 123
    invoke-virtual {p0, p3, p4, v0, v1}, Lorg/joda/time/field/ImpreciseDateTimeField;->add(JJ)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-gez v2, :cond_24

    .line 125
    :cond_19
    add-long/2addr v0, v4

    .line 126
    invoke-virtual {p0, p3, p4, v0, v1}, Lorg/joda/time/field/ImpreciseDateTimeField;->add(JJ)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_19

    .line 127
    sub-long/2addr v0, v4

    .line 128
    goto :goto_b

    :cond_24
    invoke-virtual {p0, p3, p4, v0, v1}, Lorg/joda/time/field/ImpreciseDateTimeField;->add(JJ)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_b

    .line 130
    :cond_2c
    sub-long/2addr v0, v4

    .line 131
    invoke-virtual {p0, p3, p4, v0, v1}, Lorg/joda/time/field/ImpreciseDateTimeField;->add(JJ)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-gtz v2, :cond_2c

    goto :goto_b
.end method

.method public final getDurationField()Lorg/joda/time/DurationField;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lorg/joda/time/field/ImpreciseDateTimeField;->iDurationField:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method protected final getDurationUnitMillis()J
    .registers 3

    .prologue
    .line 145
    iget-wide v0, p0, Lorg/joda/time/field/ImpreciseDateTimeField;->iUnitMillis:J

    return-wide v0
.end method

.method public abstract getRangeDurationField()Lorg/joda/time/DurationField;
.end method

.method public abstract roundFloor(J)J
.end method

.method public abstract set(JI)J
.end method
