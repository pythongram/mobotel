.class Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;
.super Ljava/lang/Object;
.source "PeriodFormatterBuilder.java"

# interfaces
.implements Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/PeriodFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PluralAffix"
.end annotation


# instance fields
.field private final iPluralText:Ljava/lang/String;

.field private final iSingularText:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 916
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 917
    iput-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iSingularText:Ljava/lang/String;

    .line 918
    iput-object p2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iPluralText:Ljava/lang/String;

    .line 919
    return-void
.end method


# virtual methods
.method public calculatePrintedLength(I)I
    .registers 3

    .prologue
    .line 922
    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iSingularText:Ljava/lang/String;

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    :cond_a
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iPluralText:Ljava/lang/String;

    goto :goto_5
.end method

.method public parse(Ljava/lang/String;I)I
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 934
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iPluralText:Ljava/lang/String;

    .line 935
    iget-object v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iSingularText:Ljava/lang/String;

    .line 937
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_3a

    move-object v6, v0

    move-object v3, v2

    .line 944
    :goto_12
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 946
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    .line 953
    :goto_23
    return v0

    .line 948
    :cond_24
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move v2, p2

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 950
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    goto :goto_23

    .line 953
    :cond_37
    xor-int/lit8 v0, p2, -0x1

    goto :goto_23

    :cond_3a
    move-object v6, v2

    move-object v3, v0

    goto :goto_12
.end method

.method public printTo(Ljava/io/Writer;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 930
    const/4 v0, 0x1

    if-ne p2, v0, :cond_9

    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iSingularText:Ljava/lang/String;

    :goto_5
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 931
    return-void

    .line 930
    :cond_9
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iPluralText:Ljava/lang/String;

    goto :goto_5
.end method

.method public printTo(Ljava/lang/StringBuffer;I)V
    .registers 4

    .prologue
    .line 926
    const/4 v0, 0x1

    if-ne p2, v0, :cond_9

    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iSingularText:Ljava/lang/String;

    :goto_5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 927
    return-void

    .line 926
    :cond_9
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iPluralText:Ljava/lang/String;

    goto :goto_5
.end method

.method public scan(Ljava/lang/String;I)I
    .registers 16

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 957
    iget-object v9, p0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iPluralText:Ljava/lang/String;

    .line 958
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iSingularText:Ljava/lang/String;

    .line 960
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_38

    move-object v3, v0

    .line 967
    :goto_11
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 968
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    .line 970
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    move v2, p2

    .line 971
    :goto_1e
    if-ge v2, v12, :cond_35

    move-object v0, p1

    .line 972
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 979
    :cond_27
    :goto_27
    return v2

    :cond_28
    move-object v6, p1

    move v7, v1

    move v8, v2

    move v10, v4

    .line 975
    invoke-virtual/range {v6 .. v11}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_27

    .line 971
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 979
    :cond_35
    xor-int/lit8 v2, p2, -0x1

    goto :goto_27

    :cond_38
    move-object v3, v9

    move-object v9, v0

    goto :goto_11
.end method
