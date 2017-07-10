.class Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;
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
    name = "TextField"
.end annotation


# static fields
.field private static cParseCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/util/Map",
            "<",
            "Lorg/joda/time/DateTimeFieldType;",
            "[",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final iFieldType:Lorg/joda/time/DateTimeFieldType;

.field private final iShort:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1710
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->cParseCache:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lorg/joda/time/DateTimeFieldType;Z)V
    .registers 3

    .prologue
    .line 1716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1717
    iput-object p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    .line 1718
    iput-boolean p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iShort:Z

    .line 1719
    return-void
.end method

.method private print(JLorg/joda/time/Chronology;Ljava/util/Locale;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 1762
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v0, p3}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    .line 1763
    iget-boolean v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iShort:Z

    if-eqz v1, :cond_f

    .line 1764
    invoke-virtual {v0, p1, p2, p4}, Lorg/joda/time/DateTimeField;->getAsShortText(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1766
    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {v0, p1, p2, p4}, Lorg/joda/time/DateTimeField;->getAsText(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method private print(Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 1771
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->isSupported(Lorg/joda/time/DateTimeFieldType;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1772
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    .line 1773
    iget-boolean v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iShort:Z

    if-eqz v1, :cond_1b

    .line 1774
    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getAsShortText(Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1779
    :goto_1a
    return-object v0

    .line 1776
    :cond_1b
    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getAsText(Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 1779
    :cond_20
    const-string v0, "\ufffd"

    goto :goto_1a
.end method


# virtual methods
.method public estimateParsedLength()I
    .registers 2

    .prologue
    .line 1784
    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->estimatePrintedLength()I

    move-result v0

    return v0
.end method

.method public estimatePrintedLength()I
    .registers 2

    .prologue
    .line 1722
    iget-boolean v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iShort:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    :goto_5
    return v0

    :cond_6
    const/16 v0, 0x14

    goto :goto_5
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/String;I)I
    .registers 13

    .prologue
    const/16 v8, 0x20

    .line 1789
    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeParserBucket;->getLocale()Ljava/util/Locale;

    move-result-object v4

    .line 1794
    sget-object v5, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->cParseCache:Ljava/util/Map;

    monitor-enter v5

    .line 1795
    :try_start_9
    sget-object v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->cParseCache:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1796
    if-nez v0, :cond_105

    .line 1797
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1798
    sget-object v1, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->cParseCache:Ljava/util/Map;

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v0

    .line 1800
    :goto_1e
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 1801
    if-nez v0, :cond_ec

    .line 1802
    new-instance v1, Ljava/util/HashSet;

    const/16 v0, 0x20

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 1803
    new-instance v0, Lorg/joda/time/MutableDateTime;

    const-wide/16 v6, 0x0

    sget-object v2, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-direct {v0, v6, v7, v2}, Lorg/joda/time/MutableDateTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    .line 1804
    iget-object v2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v0, v2}, Lorg/joda/time/MutableDateTime;->property(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/MutableDateTime$Property;

    move-result-object v6

    .line 1805
    invoke-virtual {v6}, Lorg/joda/time/MutableDateTime$Property;->getMinimumValueOverall()I

    move-result v2

    .line 1806
    invoke-virtual {v6}, Lorg/joda/time/MutableDateTime$Property;->getMaximumValueOverall()I

    move-result v7

    .line 1807
    sub-int v0, v7, v2

    if-le v0, v8, :cond_4e

    .line 1808
    xor-int/lit8 v0, p3, -0x1

    monitor-exit v5

    .line 1844
    :goto_4d
    return v0

    .line 1810
    :cond_4e
    invoke-virtual {v6, v4}, Lorg/joda/time/MutableDateTime$Property;->getMaximumTextLength(Ljava/util/Locale;)I

    move-result v0

    .line 1811
    :goto_52
    if-gt v2, v7, :cond_94

    .line 1812
    invoke-virtual {v6, v2}, Lorg/joda/time/MutableDateTime$Property;->set(I)Lorg/joda/time/MutableDateTime;

    .line 1813
    invoke-virtual {v6, v4}, Lorg/joda/time/MutableDateTime$Property;->getAsShortText(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1814
    invoke-virtual {v6, v4}, Lorg/joda/time/MutableDateTime$Property;->getAsShortText(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1815
    invoke-virtual {v6, v4}, Lorg/joda/time/MutableDateTime$Property;->getAsShortText(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1816
    invoke-virtual {v6, v4}, Lorg/joda/time/MutableDateTime$Property;->getAsText(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1817
    invoke-virtual {v6, v4}, Lorg/joda/time/MutableDateTime$Property;->getAsText(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1818
    invoke-virtual {v6, v4}, Lorg/joda/time/MutableDateTime$Property;->getAsText(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1811
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 1820
    :cond_94
    const-string v2, "en"

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bd

    iget-object v2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->era()Lorg/joda/time/DateTimeFieldType;

    move-result-object v6

    if-ne v2, v6, :cond_bd

    .line 1822
    const-string v0, "BCE"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1823
    const-string v0, "bce"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1824
    const-string v0, "CE"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1825
    const-string v0, "ce"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1826
    const/4 v0, 0x3

    .line 1828
    :cond_bd
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v2, v6

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v6

    .line 1829
    iget-object v6, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1834
    :goto_cf
    monitor-exit v5
    :try_end_d0
    .catchall {:try_start_9 .. :try_end_d0} :catchall_fb

    .line 1836
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, p3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1837
    :goto_d9
    if-le v0, p3, :cond_101

    .line 1838
    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1839
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fe

    .line 1840
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {p1, v1, v2, v4}, Lorg/joda/time/format/DateTimeParserBucket;->saveField(Lorg/joda/time/DateTimeFieldType;Ljava/lang/String;Ljava/util/Locale;)V

    goto/16 :goto_4d

    .line 1831
    :cond_ec
    const/4 v1, 0x0

    :try_start_ed
    aget-object v1, v0, v1

    check-cast v1, Ljava/util/Set;

    .line 1832
    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_cf

    .line 1834
    :catchall_fb
    move-exception v0

    monitor-exit v5
    :try_end_fd
    .catchall {:try_start_ed .. :try_end_fd} :catchall_fb

    throw v0

    .line 1837
    :cond_fe
    add-int/lit8 v0, v0, -0x1

    goto :goto_d9

    .line 1844
    :cond_101
    xor-int/lit8 v0, p3, -0x1

    goto/16 :goto_4d

    :cond_105
    move-object v3, v0

    goto/16 :goto_1e
.end method

.method public printTo(Ljava/io/Writer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1739
    :try_start_0
    invoke-direct {p0, p2, p3, p4, p7}, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->print(JLorg/joda/time/Chronology;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1743
    :goto_7
    return-void

    .line 1740
    :catch_8
    move-exception v0

    .line 1741
    const v0, 0xfffd

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_7
.end method

.method public printTo(Ljava/io/Writer;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1755
    :try_start_0
    invoke-direct {p0, p2, p3}, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->print(Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1759
    :goto_7
    return-void

    .line 1756
    :catch_8
    move-exception v0

    .line 1757
    const v0, 0xfffd

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_7
.end method

.method public printTo(Ljava/lang/StringBuffer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .registers 10

    .prologue
    .line 1729
    :try_start_0
    invoke-direct {p0, p2, p3, p4, p7}, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->print(JLorg/joda/time/Chronology;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1733
    :goto_7
    return-void

    .line 1730
    :catch_8
    move-exception v0

    .line 1731
    const v0, 0xfffd

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7
.end method

.method public printTo(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .registers 5

    .prologue
    .line 1747
    :try_start_0
    invoke-direct {p0, p2, p3}, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->print(Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1751
    :goto_7
    return-void

    .line 1748
    :catch_8
    move-exception v0

    .line 1749
    const v0, 0xfffd

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7
.end method
