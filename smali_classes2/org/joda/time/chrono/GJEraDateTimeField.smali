.class final Lorg/joda/time/chrono/GJEraDateTimeField;
.super Lorg/joda/time/field/BaseDateTimeField;
.source "GJEraDateTimeField.java"


# static fields
.field private static final serialVersionUID:J = 0x3adb02c66a0dae08L


# instance fields
.field private final iChronology:Lorg/joda/time/chrono/BasicChronology;


# direct methods
.method constructor <init>(Lorg/joda/time/chrono/BasicChronology;)V
    .registers 3

    .prologue
    .line 46
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->era()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/time/field/BaseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;)V

    .line 47
    iput-object p1, p0, Lorg/joda/time/chrono/GJEraDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    .line 48
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lorg/joda/time/chrono/GJEraDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->era()Lorg/joda/time/DateTimeField;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get(J)I
    .registers 4

    .prologue
    .line 60
    iget-object v0, p0, Lorg/joda/time/chrono/GJEraDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result v0

    if-gtz v0, :cond_a

    .line 61
    const/4 v0, 0x0

    .line 63
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public getAsText(ILjava/util/Locale;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 68
    invoke-static {p2}, Lorg/joda/time/chrono/GJLocaleSymbols;->forLocale(Ljava/util/Locale;)Lorg/joda/time/chrono/GJLocaleSymbols;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/chrono/GJLocaleSymbols;->eraValueToText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDurationField()Lorg/joda/time/DurationField;
    .registers 2

    .prologue
    .line 127
    invoke-static {}, Lorg/joda/time/DurationFieldType;->eras()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/field/UnsupportedDurationField;->getInstance(Lorg/joda/time/DurationFieldType;)Lorg/joda/time/field/UnsupportedDurationField;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumTextLength(Ljava/util/Locale;)I
    .registers 3

    .prologue
    .line 143
    invoke-static {p1}, Lorg/joda/time/chrono/GJLocaleSymbols;->forLocale(Ljava/util/Locale;)Lorg/joda/time/chrono/GJLocaleSymbols;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/chrono/GJLocaleSymbols;->getEraMaxTextLength()I

    move-result v0

    return v0
.end method

.method public getMaximumValue()I
    .registers 2

    .prologue
    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public getMinimumValue()I
    .registers 2

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public getRangeDurationField()Lorg/joda/time/DurationField;
    .registers 2

    .prologue
    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public isLenient()Z
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public roundCeiling(J)J
    .registers 8

    .prologue
    .line 104
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJEraDateTimeField;->get(J)I

    move-result v0

    if-nez v0, :cond_10

    .line 105
    iget-object v0, p0, Lorg/joda/time/chrono/GJEraDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lorg/joda/time/chrono/BasicChronology;->setYear(JI)J

    move-result-wide v0

    .line 107
    :goto_f
    return-wide v0

    :cond_10
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_f
.end method

.method public roundFloor(J)J
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 96
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJEraDateTimeField;->get(J)I

    move-result v0

    if-ne v0, v1, :cond_10

    .line 97
    iget-object v0, p0, Lorg/joda/time/chrono/GJEraDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lorg/joda/time/chrono/BasicChronology;->setYear(JI)J

    move-result-wide v0

    .line 99
    :goto_f
    return-wide v0

    :cond_10
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_f
.end method

.method public roundHalfCeiling(J)J
    .registers 6

    .prologue
    .line 118
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJEraDateTimeField;->roundFloor(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundHalfEven(J)J
    .registers 6

    .prologue
    .line 123
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJEraDateTimeField;->roundFloor(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundHalfFloor(J)J
    .registers 6

    .prologue
    .line 113
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJEraDateTimeField;->roundFloor(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public set(JI)J
    .registers 7

    .prologue
    .line 80
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p3, v0, v1}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeField;III)V

    .line 82
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJEraDateTimeField;->get(J)I

    move-result v0

    .line 83
    if-eq v0, p3, :cond_18

    .line 84
    iget-object v0, p0, Lorg/joda/time/chrono/GJEraDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result v0

    .line 85
    iget-object v1, p0, Lorg/joda/time/chrono/GJEraDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    neg-int v0, v0

    invoke-virtual {v1, p1, p2, v0}, Lorg/joda/time/chrono/BasicChronology;->setYear(JI)J

    move-result-wide p1

    .line 87
    :cond_18
    return-wide p1
.end method

.method public set(JLjava/lang/String;Ljava/util/Locale;)J
    .registers 8

    .prologue
    .line 92
    invoke-static {p4}, Lorg/joda/time/chrono/GJLocaleSymbols;->forLocale(Ljava/util/Locale;)Lorg/joda/time/chrono/GJLocaleSymbols;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/joda/time/chrono/GJLocaleSymbols;->eraTextToValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/GJEraDateTimeField;->set(JI)J

    move-result-wide v0

    return-wide v0
.end method
