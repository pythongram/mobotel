.class Lorg/joda/time/format/DateTimeFormatterBuilder$FixedNumber;
.super Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FixedNumber"
.end annotation


# direct methods
.method protected constructor <init>(Lorg/joda/time/DateTimeFieldType;IZ)V
    .registers 4

    .prologue
    .line 1484
    invoke-direct {p0, p1, p2, p3, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;-><init>(Lorg/joda/time/DateTimeFieldType;IZI)V

    .line 1485
    return-void
.end method


# virtual methods
.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/String;I)I
    .registers 8

    .prologue
    .line 1488
    invoke-super {p0, p1, p2, p3}, Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;->parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/String;I)I

    move-result v0

    .line 1489
    if-gez v0, :cond_7

    .line 1508
    :cond_6
    :goto_6
    return v0

    .line 1492
    :cond_7
    iget v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$FixedNumber;->iMaxParsedDigits:I

    add-int/2addr v1, p3

    .line 1493
    if-eq v0, v1, :cond_6

    .line 1494
    iget-boolean v2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$FixedNumber;->iSigned:Z

    if-eqz v2, :cond_1e

    .line 1495
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1496
    const/16 v3, 0x2d

    if-eq v2, v3, :cond_1c

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_1e

    .line 1497
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    .line 1500
    :cond_1e
    if-le v0, v1, :cond_25

    .line 1502
    add-int/lit8 v0, v1, 0x1

    xor-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1503
    :cond_25
    if-ge v0, v1, :cond_6

    .line 1505
    xor-int/lit8 v0, v0, -0x1

    goto :goto_6
.end method
