.class Lorg/joda/time/format/PeriodFormatterBuilder$Literal;
.super Ljava/lang/Object;
.source "PeriodFormatterBuilder.java"

# interfaces
.implements Lorg/joda/time/format/PeriodPrinter;
.implements Lorg/joda/time/format/PeriodParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/PeriodFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Literal"
.end annotation


# static fields
.field static final EMPTY:Lorg/joda/time/format/PeriodFormatterBuilder$Literal;


# instance fields
.field private final iText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1541
    new-instance v0, Lorg/joda/time/format/PeriodFormatterBuilder$Literal;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder$Literal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/joda/time/format/PeriodFormatterBuilder$Literal;->EMPTY:Lorg/joda/time/format/PeriodFormatterBuilder$Literal;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1545
    iput-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Literal;->iText:Ljava/lang/String;

    .line 1546
    return-void
.end method


# virtual methods
.method public calculatePrintedLength(Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)I
    .registers 4

    .prologue
    .line 1553
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Literal;->iText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public countFieldsToPrint(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I
    .registers 5

    .prologue
    .line 1549
    const/4 v0, 0x0

    return v0
.end method

.method public parseInto(Lorg/joda/time/ReadWritablePeriod;Ljava/lang/String;ILjava/util/Locale;)I
    .registers 11

    .prologue
    .line 1567
    const/4 v1, 0x1

    iget-object v3, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Literal;->iText:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Literal;->iText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p2

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1568
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Literal;->iText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p3

    .line 1570
    :goto_19
    return v0

    :cond_1a
    xor-int/lit8 v0, p3, -0x1

    goto :goto_19
.end method

.method public printTo(Ljava/io/Writer;Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1561
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Literal;->iText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1562
    return-void
.end method

.method public printTo(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)V
    .registers 5

    .prologue
    .line 1557
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Literal;->iText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1558
    return-void
.end method
