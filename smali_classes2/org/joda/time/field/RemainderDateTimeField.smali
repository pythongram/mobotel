.class public Lorg/joda/time/field/RemainderDateTimeField;
.super Lorg/joda/time/field/DecoratedDateTimeField;
.source "RemainderDateTimeField.java"


# static fields
.field private static final serialVersionUID:J = 0x4f37bf28eb0078e6L


# instance fields
.field final iDivisor:I

.field final iRangeField:Lorg/joda/time/DurationField;


# direct methods
.method public constructor <init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;I)V
    .registers 7

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lorg/joda/time/field/DecoratedDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;)V

    .line 54
    const/4 v0, 0x2

    if-ge p3, v0, :cond_e

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The divisor must be at least 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_e
    invoke-virtual {p1}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    .line 59
    if-nez v0, :cond_1a

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/joda/time/field/RemainderDateTimeField;->iRangeField:Lorg/joda/time/DurationField;

    .line 66
    :goto_17
    iput p3, p0, Lorg/joda/time/field/RemainderDateTimeField;->iDivisor:I

    .line 67
    return-void

    .line 62
    :cond_1a
    new-instance v1, Lorg/joda/time/field/ScaledDurationField;

    invoke-virtual {p2}, Lorg/joda/time/DateTimeFieldType;->getRangeDurationType()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    invoke-direct {v1, v0, v2, p3}, Lorg/joda/time/field/ScaledDurationField;-><init>(Lorg/joda/time/DurationField;Lorg/joda/time/DurationFieldType;I)V

    iput-object v1, p0, Lorg/joda/time/field/RemainderDateTimeField;->iRangeField:Lorg/joda/time/DurationField;

    goto :goto_17
.end method

.method public constructor <init>(Lorg/joda/time/field/DividedDateTimeField;)V
    .registers 3

    .prologue
    .line 76
    invoke-virtual {p1}, Lorg/joda/time/field/DividedDateTimeField;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/joda/time/field/RemainderDateTimeField;-><init>(Lorg/joda/time/field/DividedDateTimeField;Lorg/joda/time/DateTimeFieldType;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/field/DividedDateTimeField;Lorg/joda/time/DateTimeFieldType;)V
    .registers 4

    .prologue
    .line 87
    invoke-virtual {p1}, Lorg/joda/time/field/DividedDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/joda/time/field/DecoratedDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;)V

    .line 88
    iget v0, p1, Lorg/joda/time/field/DividedDateTimeField;->iDivisor:I

    iput v0, p0, Lorg/joda/time/field/RemainderDateTimeField;->iDivisor:I

    .line 89
    iget-object v0, p1, Lorg/joda/time/field/DividedDateTimeField;->iDurationField:Lorg/joda/time/DurationField;

    iput-object v0, p0, Lorg/joda/time/field/RemainderDateTimeField;->iRangeField:Lorg/joda/time/DurationField;

    .line 90
    return-void
.end method

.method private getDivided(I)I
    .registers 4

    .prologue
    .line 195
    if-ltz p1, :cond_7

    .line 196
    iget v0, p0, Lorg/joda/time/field/RemainderDateTimeField;->iDivisor:I

    div-int v0, p1, v0

    .line 198
    :goto_6
    return v0

    :cond_7
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lorg/joda/time/field/RemainderDateTimeField;->iDivisor:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_6
.end method


# virtual methods
.method public addWrapField(JI)J
    .registers 7

    .prologue
    .line 118
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/field/RemainderDateTimeField;->get(J)I

    move-result v0

    const/4 v1, 0x0

    iget v2, p0, Lorg/joda/time/field/RemainderDateTimeField;->iDivisor:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, p3, v1, v2}, Lorg/joda/time/field/FieldUtils;->getWrappedValue(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/field/RemainderDateTimeField;->set(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public get(J)I
    .registers 6

    .prologue
    .line 100
    invoke-virtual {p0}, Lorg/joda/time/field/RemainderDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    .line 101
    if-ltz v0, :cond_e

    .line 102
    iget v1, p0, Lorg/joda/time/field/RemainderDateTimeField;->iDivisor:I

    rem-int/2addr v0, v1

    .line 104
    :goto_d
    return v0

    :cond_e
    iget v1, p0, Lorg/joda/time/field/RemainderDateTimeField;->iDivisor:I

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lorg/joda/time/field/RemainderDateTimeField;->iDivisor:I

    rem-int/2addr v0, v2

    add-int/2addr v0, v1

    goto :goto_d
.end method

.method public getDivisor()I
    .registers 2

    .prologue
    .line 191
    iget v0, p0, Lorg/joda/time/field/RemainderDateTimeField;->iDivisor:I

    return v0
.end method

.method public getMaximumValue()I
    .registers 2

    .prologue
    .line 158
    iget v0, p0, Lorg/joda/time/field/RemainderDateTimeField;->iDivisor:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getMinimumValue()I
    .registers 2

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public getRangeDurationField()Lorg/joda/time/DurationField;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lorg/joda/time/field/RemainderDateTimeField;->iRangeField:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public remainder(J)J
    .registers 6

    .prologue
    .line 182
    invoke-virtual {p0}, Lorg/joda/time/field/RemainderDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->remainder(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundCeiling(J)J
    .registers 6

    .prologue
    .line 166
    invoke-virtual {p0}, Lorg/joda/time/field/RemainderDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundCeiling(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundFloor(J)J
    .registers 6

    .prologue
    .line 162
    invoke-virtual {p0}, Lorg/joda/time/field/RemainderDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundHalfCeiling(J)J
    .registers 6

    .prologue
    .line 174
    invoke-virtual {p0}, Lorg/joda/time/field/RemainderDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundHalfCeiling(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundHalfEven(J)J
    .registers 6

    .prologue
    .line 178
    invoke-virtual {p0}, Lorg/joda/time/field/RemainderDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundHalfEven(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundHalfFloor(J)J
    .registers 6

    .prologue
    .line 170
    invoke-virtual {p0}, Lorg/joda/time/field/RemainderDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundHalfFloor(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public set(JI)J
    .registers 7

    .prologue
    .line 130
    const/4 v0, 0x0

    iget v1, p0, Lorg/joda/time/field/RemainderDateTimeField;->iDivisor:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, p3, v0, v1}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeField;III)V

    .line 131
    invoke-virtual {p0}, Lorg/joda/time/field/RemainderDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/joda/time/field/RemainderDateTimeField;->getDivided(I)I

    move-result v0

    .line 132
    invoke-virtual {p0}, Lorg/joda/time/field/RemainderDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget v2, p0, Lorg/joda/time/field/RemainderDateTimeField;->iDivisor:I

    mul-int/2addr v0, v2

    add-int/2addr v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    return-wide v0
.end method
