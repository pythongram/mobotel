.class Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lorg/joda/time/format/DateTimePrinter;
.implements Lorg/joda/time/format/DateTimeParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Fraction"
.end annotation


# instance fields
.field private final iFieldType:Lorg/joda/time/DateTimeFieldType;

.field protected iMaxDigits:I

.field protected iMinDigits:I


# direct methods
.method protected constructor <init>(Lorg/joda/time/DateTimeFieldType;II)V
    .registers 5

    .prologue
    const/16 v0, 0x12

    .line 1857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1858
    iput-object p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    .line 1860
    if-le p3, v0, :cond_a

    move p3, v0

    .line 1863
    :cond_a
    iput p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iMinDigits:I

    .line 1864
    iput p3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iMaxDigits:I

    .line 1865
    return-void
.end method

.method private getFractionData(JLorg/joda/time/DateTimeField;)[J
    .registers 13

    .prologue
    .line 1990
    invoke-virtual {p3}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DurationField;->getUnitMillis()J

    move-result-wide v4

    .line 1992
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iMaxDigits:I

    move v2, v0

    .line 1994
    :goto_b
    packed-switch v2, :pswitch_data_7e

    .line 1995
    const-wide/16 v0, 0x1

    .line 2015
    :goto_10
    mul-long v6, v4, v0

    div-long/2addr v6, v0

    cmp-long v3, v6, v4

    if-nez v3, :cond_7a

    .line 2022
    const/4 v3, 0x2

    new-array v3, v3, [J

    const/4 v6, 0x0

    mul-long/2addr v0, p1

    div-long/2addr v0, v4

    aput-wide v0, v3, v6

    const/4 v0, 0x1

    int-to-long v4, v2

    aput-wide v4, v3, v0

    return-object v3

    .line 1996
    :pswitch_24
    const-wide/16 v0, 0xa

    goto :goto_10

    .line 1997
    :pswitch_27
    const-wide/16 v0, 0x64

    goto :goto_10

    .line 1998
    :pswitch_2a
    const-wide/16 v0, 0x3e8

    goto :goto_10

    .line 1999
    :pswitch_2d
    const-wide/16 v0, 0x2710

    goto :goto_10

    .line 2000
    :pswitch_30
    const-wide/32 v0, 0x186a0

    goto :goto_10

    .line 2001
    :pswitch_34
    const-wide/32 v0, 0xf4240

    goto :goto_10

    .line 2002
    :pswitch_38
    const-wide/32 v0, 0x989680

    goto :goto_10

    .line 2003
    :pswitch_3c
    const-wide/32 v0, 0x5f5e100

    goto :goto_10

    .line 2004
    :pswitch_40
    const-wide/32 v0, 0x3b9aca00

    goto :goto_10

    .line 2005
    :pswitch_44
    const-wide v0, 0x2540be400L

    goto :goto_10

    .line 2006
    :pswitch_4a
    const-wide v0, 0x174876e800L

    goto :goto_10

    .line 2007
    :pswitch_50
    const-wide v0, 0xe8d4a51000L

    goto :goto_10

    .line 2008
    :pswitch_56
    const-wide v0, 0x9184e72a000L

    goto :goto_10

    .line 2009
    :pswitch_5c
    const-wide v0, 0x5af3107a4000L

    goto :goto_10

    .line 2010
    :pswitch_62
    const-wide v0, 0x38d7ea4c68000L

    goto :goto_10

    .line 2011
    :pswitch_68
    const-wide v0, 0x2386f26fc10000L

    goto :goto_10

    .line 2012
    :pswitch_6e
    const-wide v0, 0x16345785d8a0000L

    goto :goto_10

    .line 2013
    :pswitch_74
    const-wide v0, 0xde0b6b3a7640000L

    goto :goto_10

    .line 2019
    :cond_7a
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    .line 2020
    goto :goto_b

    .line 1994
    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_34
        :pswitch_38
        :pswitch_3c
        :pswitch_40
        :pswitch_44
        :pswitch_4a
        :pswitch_50
        :pswitch_56
        :pswitch_5c
        :pswitch_62
        :pswitch_68
        :pswitch_6e
        :pswitch_74
    .end packed-switch
.end method


# virtual methods
.method public estimateParsedLength()I
    .registers 2

    .prologue
    .line 2026
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iMaxDigits:I

    return v0
.end method

.method public estimatePrintedLength()I
    .registers 2

    .prologue
    .line 1868
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iMaxDigits:I

    return v0
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/String;I)I
    .registers 16

    .prologue
    const-wide/16 v10, 0xa

    .line 2030
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeParserBucket;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v1

    .line 2032
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iMaxDigits:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 2034
    const-wide/16 v4, 0x0

    .line 2035
    invoke-virtual {v1}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DurationField;->getUnitMillis()J

    move-result-wide v2

    mul-long/2addr v2, v10

    .line 2036
    const/4 v0, 0x0

    .line 2037
    :goto_23
    if-ge v0, v6, :cond_33

    .line 2038
    add-int v7, p3, v0

    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 2039
    const/16 v8, 0x30

    if-lt v7, v8, :cond_33

    const/16 v8, 0x39

    if-le v7, v8, :cond_3a

    .line 2048
    :cond_33
    div-long v2, v4, v10

    .line 2050
    if-nez v0, :cond_43

    .line 2051
    xor-int/lit8 v0, p3, -0x1

    .line 2065
    :goto_39
    return v0

    .line 2042
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    .line 2043
    div-long/2addr v2, v10

    .line 2044
    add-int/lit8 v7, v7, -0x30

    int-to-long v8, v7

    mul-long/2addr v8, v2

    add-long/2addr v4, v8

    .line 2046
    goto :goto_23

    .line 2054
    :cond_43
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-lez v4, :cond_4d

    .line 2055
    xor-int/lit8 v0, p3, -0x1

    goto :goto_39

    .line 2058
    :cond_4d
    new-instance v4, Lorg/joda/time/field/PreciseDateTimeField;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->millisOfSecond()Lorg/joda/time/DateTimeFieldType;

    move-result-object v5

    sget-object v6, Lorg/joda/time/field/MillisDurationField;->INSTANCE:Lorg/joda/time/DurationField;

    invoke-virtual {v1}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v1

    invoke-direct {v4, v5, v6, v1}, Lorg/joda/time/field/PreciseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)V

    .line 2063
    long-to-int v1, v2

    invoke-virtual {p1, v4, v1}, Lorg/joda/time/format/DateTimeParserBucket;->saveField(Lorg/joda/time/DateTimeField;I)V

    .line 2065
    add-int/2addr v0, p3

    goto :goto_39
.end method

.method public printTo(Ljava/io/Writer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1884
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->printTo(Ljava/lang/StringBuffer;Ljava/io/Writer;JLorg/joda/time/Chronology;)V

    .line 1885
    return-void
.end method

.method public printTo(Ljava/io/Writer;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1901
    invoke-interface {p2}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p2, v2, v3}, Lorg/joda/time/Chronology;->set(Lorg/joda/time/ReadablePartial;J)J

    move-result-wide v4

    .line 1902
    const/4 v2, 0x0

    invoke-interface {p2}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v6

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->printTo(Ljava/lang/StringBuffer;Ljava/io/Writer;JLorg/joda/time/Chronology;)V

    .line 1903
    return-void
.end method

.method public printTo(Ljava/lang/StringBuffer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .registers 16

    .prologue
    .line 1875
    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-object v6, p4

    :try_start_5
    invoke-virtual/range {v1 .. v6}, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->printTo(Ljava/lang/StringBuffer;Ljava/io/Writer;JLorg/joda/time/Chronology;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_9

    .line 1879
    :goto_8
    return-void

    .line 1876
    :catch_9
    move-exception v0

    goto :goto_8
.end method

.method protected printTo(Ljava/lang/StringBuffer;Ljava/io/Writer;JLorg/joda/time/Chronology;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1908
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v0, p5}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    .line 1909
    iget v3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iMinDigits:I

    .line 1913
    :try_start_8
    invoke-virtual {v0, p3, p4}, Lorg/joda/time/DateTimeField;->remainder(J)J
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_b} :catch_1e

    move-result-wide v4

    .line 1923
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_33

    .line 1924
    if-eqz p1, :cond_29

    .line 1925
    :goto_14
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_24

    .line 1926
    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_14

    .line 1914
    :catch_1e
    move-exception v0

    .line 1915
    if-eqz p1, :cond_25

    .line 1916
    invoke-static {p1, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendUnknownString(Ljava/lang/StringBuffer;I)V

    .line 1987
    :cond_24
    :goto_24
    return-void

    .line 1918
    :cond_25
    invoke-static {p2, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->printUnknownString(Ljava/io/Writer;I)V

    goto :goto_24

    .line 1929
    :cond_29
    :goto_29
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_24

    .line 1930
    const/16 v0, 0x30

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_29

    .line 1937
    :cond_33
    invoke-direct {p0, v4, v5, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->getFractionData(JLorg/joda/time/DateTimeField;)[J

    move-result-object v0

    .line 1938
    const/4 v1, 0x0

    aget-wide v4, v0, v1

    .line 1939
    const/4 v1, 0x1

    aget-wide v0, v0, v1

    long-to-int v1, v0

    .line 1941
    const-wide/32 v6, 0x7fffffff

    and-long/2addr v6, v4

    cmp-long v0, v6, v4

    if-nez v0, :cond_5d

    .line 1942
    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1947
    :goto_4b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1949
    :goto_4f
    if-ge v2, v1, :cond_68

    .line 1950
    if-eqz p1, :cond_62

    .line 1951
    const/16 v4, 0x30

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1955
    :goto_58
    add-int/lit8 v3, v3, -0x1

    .line 1956
    add-int/lit8 v1, v1, -0x1

    .line 1957
    goto :goto_4f

    .line 1944
    :cond_5d
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    .line 1953
    :cond_62
    const/16 v4, 0x30

    invoke-virtual {p2, v4}, Ljava/io/Writer;->write(I)V

    goto :goto_58

    .line 1959
    :cond_68
    if-ge v3, v1, :cond_a0

    .line 1961
    :goto_6a
    if-ge v3, v1, :cond_79

    .line 1962
    const/4 v4, 0x1

    if-le v2, v4, :cond_79

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-eq v4, v5, :cond_8e

    .line 1968
    :cond_79
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_a0

    .line 1969
    if-eqz p1, :cond_93

    .line 1970
    const/4 v1, 0x0

    :goto_82
    if-ge v1, v2, :cond_24

    .line 1971
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1970
    add-int/lit8 v1, v1, 0x1

    goto :goto_82

    .line 1965
    :cond_8e
    add-int/lit8 v1, v1, -0x1

    .line 1966
    add-int/lit8 v2, v2, -0x1

    .line 1967
    goto :goto_6a

    .line 1974
    :cond_93
    const/4 v1, 0x0

    :goto_94
    if-ge v1, v2, :cond_24

    .line 1975
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(I)V

    .line 1974
    add-int/lit8 v1, v1, 0x1

    goto :goto_94

    .line 1982
    :cond_a0
    if-eqz p1, :cond_a7

    .line 1983
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_24

    .line 1985
    :cond_a7
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_24
.end method

.method public printTo(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .registers 11

    .prologue
    .line 1890
    invoke-interface {p2}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p2, v2, v3}, Lorg/joda/time/Chronology;->set(Lorg/joda/time/ReadablePartial;J)J

    move-result-wide v4

    .line 1892
    const/4 v3, 0x0

    :try_start_b
    invoke-interface {p2}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->printTo(Ljava/lang/StringBuffer;Ljava/io/Writer;JLorg/joda/time/Chronology;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_14} :catch_15

    .line 1896
    :goto_14
    return-void

    .line 1893
    :catch_15
    move-exception v0

    goto :goto_14
.end method
