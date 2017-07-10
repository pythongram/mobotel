.class Lorg/joda/time/chrono/ISOYearOfEraDateTimeField;
.super Lorg/joda/time/field/DecoratedDateTimeField;
.source "ISOYearOfEraDateTimeField.java"


# static fields
.field static final INSTANCE:Lorg/joda/time/DateTimeField;

.field private static final serialVersionUID:J = 0x61aa4edab52f7f95L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    new-instance v0, Lorg/joda/time/chrono/ISOYearOfEraDateTimeField;

    invoke-direct {v0}, Lorg/joda/time/chrono/ISOYearOfEraDateTimeField;-><init>()V

    sput-object v0, Lorg/joda/time/chrono/ISOYearOfEraDateTimeField;->INSTANCE:Lorg/joda/time/DateTimeField;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 46
    invoke-static {}, Lorg/joda/time/chrono/GregorianChronology;->getInstanceUTC()Lorg/joda/time/chrono/GregorianChronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/chrono/GregorianChronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->yearOfEra()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/joda/time/field/DecoratedDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;)V

    .line 47
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 110
    sget-object v0, Lorg/joda/time/chrono/ISOYearOfEraDateTimeField;->INSTANCE:Lorg/joda/time/DateTimeField;

    return-object v0
.end method


# virtual methods
.method public add(JI)J
    .registers 7

    .prologue
    .line 55
    invoke-virtual {p0}, Lorg/joda/time/chrono/ISOYearOfEraDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public add(JJ)J
    .registers 8

    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/joda/time/chrono/ISOYearOfEraDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->add(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public addWrapField(JI)J
    .registers 7

    .prologue
    .line 63
    invoke-virtual {p0}, Lorg/joda/time/chrono/ISOYearOfEraDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->addWrapField(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public addWrapField(Lorg/joda/time/ReadablePartial;I[II)[I
    .registers 6

    .prologue
    .line 67
    invoke-virtual {p0}, Lorg/joda/time/chrono/ISOYearOfEraDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->addWrapField(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object v0

    return-object v0
.end method

.method public get(J)I
    .registers 4

    .prologue
    .line 50
    invoke-virtual {p0}, Lorg/joda/time/chrono/ISOYearOfEraDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    .line 51
    if-gez v0, :cond_b

    neg-int v0, v0

    :cond_b
    return v0
.end method

.method public getDifference(JJ)I
    .registers 6

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/joda/time/chrono/ISOYearOfEraDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->getDifference(JJ)I

    move-result v0

    return v0
.end method

.method public getDifferenceAsLong(JJ)J
    .registers 8

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/joda/time/chrono/ISOYearOfEraDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->getDifferenceAsLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaximumValue()I
    .registers 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/joda/time/chrono/ISOYearOfEraDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getMaximumValue()I

    move-result v0

    return v0
.end method

.method public getMinimumValue()I
    .registers 2

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public remainder(J)J
    .registers 6

    .prologue
    .line 103
    invoke-virtual {p0}, Lorg/joda/time/chrono/ISOYearOfEraDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->remainder(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundCeiling(J)J
    .registers 6

    .prologue
    .line 99
    invoke-virtual {p0}, Lorg/joda/time/chrono/ISOYearOfEraDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundCeiling(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundFloor(J)J
    .registers 6

    .prologue
    .line 95
    invoke-virtual {p0}, Lorg/joda/time/chrono/ISOYearOfEraDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public set(JI)J
    .registers 7

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/joda/time/chrono/ISOYearOfEraDateTimeField;->getMaximumValue()I

    move-result v1

    invoke-static {p0, p3, v0, v1}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeField;III)V

    .line 80
    invoke-virtual {p0}, Lorg/joda/time/chrono/ISOYearOfEraDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    if-gez v0, :cond_13

    .line 81
    neg-int p3, p3

    .line 83
    :cond_13
    invoke-super {p0, p1, p2, p3}, Lorg/joda/time/field/DecoratedDateTimeField;->set(JI)J

    move-result-wide v0

    return-wide v0
.end method
